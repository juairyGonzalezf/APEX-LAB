#!/bin/bash

# --- CONFIGURACIÓN LABORATORIO ---
DB_USER="APEX_240200"
DB_PASS="123"
DB_HOST="server21"
DB_PORT="31521"
DB_SERVICE="oraclepdb1"
SOURCE_ENV="xepdb1"
SQLCL_CMD="sqlcl"

# Rutas
NFS_SOURCE_DIR="/home/tomcat/export/apex_240200/${SOURCE_ENV}"
LOCAL_WORK_DIR="/home/tomcat/import"

# Cadena de conexión
CONN_STR="${DB_USER}/${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_SERVICE}"
IMPORT_SQL="${LOCAL_WORK_DIR}/import.sql"
WORKSPACES_LIST="${LOCAL_WORK_DIR}/workspaces.lst"

# --- INICIO ---
mkdir -p "${LOCAL_WORK_DIR}"

echo "=== 1. Obteniendo lista de Workspaces existentes en BBDD ==="
"${SQLCL_CMD}" -s ${CONN_STR} <<EOF
set pagesize 0
set linesize 1000
set trimspool on
set heading off
set feedback off
set verify off
spool ${WORKSPACES_LIST}
select trim(workspace) from apex_workspaces;
spool off
exit
EOF

# --- Limpieza extrema del fichero de workspaces ---
sed -i 's/\r//g' "${WORKSPACES_LIST}"
sed -i 's/^[ \t]*//;s/[ \t]*$//' "${WORKSPACES_LIST}"
sed -i '/^$/d' "${WORKSPACES_LIST}"
# --------------------------------------------------

echo "=== 2. Generando script de importación ==="
# DESTRUIR el fichero viejo por si acaso y crearlo de nuevo
rm -f "${IMPORT_SQL}"
echo "set define off" > "${IMPORT_SQL}"
echo "WHENEVER SQLERROR CONTINUE" >> "${IMPORT_SQL}"
echo "spool ${LOCAL_WORK_DIR}/import_execution.log" >> "${IMPORT_SQL}"

# Bucle original adaptado
for WS_PATH in "${NFS_SOURCE_DIR}"/*; do
    if [ -d "${WS_PATH}" ]; then
        WORKSPACE=$(basename "${WS_PATH}")

        # Filtros de carpetas basura
        if [[ "${WORKSPACE}" == *"__________"* || "${WORKSPACE}" == "WORKSPACE" ]]; then
             continue
        fi

        # Obtener nombres de ficheros clave
        WS_FILE_SQL=$(basename $(find "${WS_PATH}" -maxdepth 1 -name "w*.sql" | head -n 1))
        STATIC_FILES_SQL=$(basename $(find "${WS_PATH}" -maxdepth 1 -name "*file*.sql" | head -n 1))
        REMOTE_SERVERS_SQL=$(basename $(find "${WS_PATH}" -maxdepth 1 -name "remote_servers.sql" | head -n 1))

        # Comprobar si existe en la lista de BBDD
        CHECK_WORKSPACE=$(grep -w "^${WORKSPACE}$" "${WORKSPACES_LIST}")

        echo "Procesando: ${WORKSPACE} | En BBDD: $(if [ -z "$CHECK_WORKSPACE" ]; then echo "NO"; else echo "SI"; fi)"

        # --- BLOQUE 1: Crear Workspace (SOLO SI NO EXISTE) ---
        if [ -z "$CHECK_WORKSPACE" ] && [ -n "$WS_FILE_SQL" ]; then
            echo "PROMPT --- Creando Workspace ${WORKSPACE}" >> "${IMPORT_SQL}"
            echo "@${WS_PATH}/${WS_FILE_SQL}" >> "${IMPORT_SQL}"
        else
             if [ -n "$CHECK_WORKSPACE" ]; then
                echo "PROMPT --- Workspace ${WORKSPACE} ya existe. Saltando creación." >> "${IMPORT_SQL}"
             fi
        fi

        # --- BLOQUE 2: Configurar Sesión ---
        echo "PROMPT --- Configurando Sesión para ${WORKSPACE}" >> "${IMPORT_SQL}"
        echo "begin" >> "${IMPORT_SQL}"
        echo "  apex_application_install.set_workspace('${WORKSPACE}');" >> "${IMPORT_SQL}"
        echo "  apex_application_install.generate_offset();" >> "${IMPORT_SQL}"
        
        # --- PARCHE PARA REMOTE SERVERS (EVITA ORA-20001) ---
        echo "  apex_application_install.set_remote_server(" >> "${IMPORT_SQL}"
        echo "      p_static_id => 'Print_server'," >> "${IMPORT_SQL}"
        echo "      p_base_url  => 'http://localhost:8080/ords/'" >> "${IMPORT_SQL}"
        echo "  );" >> "${IMPORT_SQL}"
        # ----------------------------------------------------
        echo "end;" >> "${IMPORT_SQL}"
        echo "/" >> "${IMPORT_SQL}"

        # --- BLOQUE 3: Importar Remote Servers exportados ---
        if [ -n "$REMOTE_SERVERS_SQL" ]; then
             echo "PROMPT --- Configurando Remote Servers (Overrides)" >> "${IMPORT_SQL}"
             echo "@${WS_PATH}/${REMOTE_SERVERS_SQL}" >> "${IMPORT_SQL}"
        fi
        # -------------------------------------------------

        # --- BLOQUE 4: Ficheros Estáticos ---
        if [ -n "$STATIC_FILES_SQL" ]; then
            echo "PROMPT --- Importando Ficheros Estáticos" >> "${IMPORT_SQL}"
            echo "@${WS_PATH}/${STATIC_FILES_SQL}" >> "${IMPORT_SQL}"
        fi

        # --- BLOQUE 5: Aplicaciones ---
        echo "PROMPT --- Importando Aplicaciones" >> "${IMPORT_SQL}"
        find "${WS_PATH}" -maxdepth 1 -name "f[0-9]*.sql" | sort | while read APP_FULL_PATH; do
            if [ -e "${APP_FULL_PATH}" ]; then
                echo "@${APP_FULL_PATH}" >> "${IMPORT_SQL}"
            fi
        done
        echo "" >> "${IMPORT_SQL}"
    fi
done

# Cierre del script
echo "PROMPT Fin del proceso." >> "${IMPORT_SQL}"
echo "spool off" >> "${IMPORT_SQL}"
echo "exit" >> "${IMPORT_SQL}"

echo "=== 3. Ejecutando importación ==="
"${SQLCL_CMD}" /nolog <<EOF
connect ${CONN_STR}
@${IMPORT_SQL}
EOF