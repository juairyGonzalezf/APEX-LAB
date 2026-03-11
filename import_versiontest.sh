#!/bin/bash

# --- CONFIGURACIÓN LABORATORIO ---
DB_USER="APEX_240100"
DB_PASS="123"
DB_HOST="server21"
DB_PORT="31521"
DB_SERVICE="oraclepdb2"
SQLCL_CMD="sqlcl"

# Rutas
NFS_SOURCE_DIR="/home/tomcat/export/apex_240200/xepdb1"
LOCAL_WORK_DIR="/home/tomcat/import"
PATCH_DIR="${LOCAL_WORK_DIR}/patched_files" # <--- NUEVA CARPETA PARA LOS ARCHIVOS MODIFICADOS

# Cadena de conexión
CONN_STR="${DB_USER}/${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_SERVICE}"
IMPORT_SQL="${LOCAL_WORK_DIR}/import.sql"
WORKSPACES_LIST="${LOCAL_WORK_DIR}/workspaces.lst"

# --- VERSIÓN OBJETIVO (Firma interna de APEX 24.1) ---
TARGET_APEX_VERSION="2024.05.31"

# --- INICIO ---
mkdir -p "${LOCAL_WORK_DIR}"
mkdir -p "${PATCH_DIR}"

echo "=== 1. Obteniendo lista de Workspaces existentes en BBDD ==="
"${SQLCL_CMD}" -s ${CONN_STR} <<EOF
set pagesize 0
set heading off
set feedback off
set verify off
spool ${WORKSPACES_LIST}
select workspace from apex_workspaces;
spool off
exit
EOF

echo "=== 2. Generando script de importación y parcheando archivos ==="
# Inicializar script SQL
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

        # Crear subcarpeta para el workspace en el directorio de parcheo
        WS_PATCH_DIR="${PATCH_DIR}/${WORKSPACE}"
        mkdir -p "${WS_PATCH_DIR}"

        # Obtener nombres de ficheros clave
        WS_FILE_SQL=$(basename $(find "${WS_PATH}" -maxdepth 1 -name "w*.sql" | head -n 1))
        STATIC_FILES_SQL=$(basename $(find "${WS_PATH}" -maxdepth 1 -name "*file*.sql" | head -n 1))
        REMOTE_SERVERS_SQL=$(basename $(find "${WS_PATH}" -maxdepth 1 -name "remote_servers.sql" | head -n 1))

        CHECK_WORKSPACE=$(grep -w "^${WORKSPACE}$" "${WORKSPACES_LIST}")

        echo "Procesando: ${WORKSPACE} | En BBDD: $(if [ -z "$CHECK_WORKSPACE" ]; then echo "NO"; else echo "SI"; fi)"

        # --- FUNCIÓN DE PARCHEO RÁPIDA ---
        # Engañamos a APEX cambiando p_version_yyyy_mm_dd=>'2024.11.20' (o la que sea) a '2024.05.31'
        patch_file() {
            local SOURCE_FILE="$1"
            local DEST_FILE="$2"
            if [ -f "${SOURCE_FILE}" ]; then
                echo "  -> Parcheando versión en $(basename ${SOURCE_FILE})..."
                sed -E "s/p_version_yyyy_mm_dd\s*=>\s*'[^']+'/p_version_yyyy_mm_dd=>'${TARGET_APEX_VERSION}'/g" "${SOURCE_FILE}" > "${DEST_FILE}"
            fi
        }

        # --- BLOQUE 1: Crear Workspace (SOLO SI NO EXISTE) ---
        if [ -z "$CHECK_WORKSPACE" ] && [ -n "$WS_FILE_SQL" ]; then
            patch_file "${WS_PATH}/${WS_FILE_SQL}" "${WS_PATCH_DIR}/${WS_FILE_SQL}"
            echo "PROMPT --- Creando Workspace ${WORKSPACE}" >> "${IMPORT_SQL}"
            echo "@${WS_PATCH_DIR}/${WS_FILE_SQL}" >> "${IMPORT_SQL}"
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
        echo "end;" >> "${IMPORT_SQL}"
        echo "/" >> "${IMPORT_SQL}"

        # --- BLOQUE 3: Importar Remote Servers ---
        if [ -n "$REMOTE_SERVERS_SQL" ]; then
             patch_file "${WS_PATH}/${REMOTE_SERVERS_SQL}" "${WS_PATCH_DIR}/${REMOTE_SERVERS_SQL}"
             echo "PROMPT --- Configurando Remote Servers (Overrides)" >> "${IMPORT_SQL}"
             echo "@${WS_PATCH_DIR}/${REMOTE_SERVERS_SQL}" >> "${IMPORT_SQL}"
        fi

        # --- BLOQUE 4: Ficheros Estáticos ---
        if [ -n "$STATIC_FILES_SQL" ]; then
            patch_file "${WS_PATH}/${STATIC_FILES_SQL}" "${WS_PATCH_DIR}/${STATIC_FILES_SQL}"
            echo "PROMPT --- Importando Ficheros Estáticos" >> "${IMPORT_SQL}"
            echo "@${WS_PATCH_DIR}/${STATIC_FILES_SQL}" >> "${IMPORT_SQL}"
        fi

        # --- BLOQUE 5: Aplicaciones ---
        echo "PROMPT --- Importando Aplicaciones" >> "${IMPORT_SQL}"
        find "${WS_PATH}" -maxdepth 1 -name "f[0-9]*.sql" | sort | while read APP_FULL_PATH; do
            if [ -e "${APP_FULL_PATH}" ]; then
                APP_FILE=$(basename "${APP_FULL_PATH}")
                patch_file "${APP_FULL_PATH}" "${WS_PATCH_DIR}/${APP_FILE}"
                echo "@${WS_PATCH_DIR}/${APP_FILE}" >> "${IMPORT_SQL}"
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