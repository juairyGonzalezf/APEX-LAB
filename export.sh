#!/bin/bash

# --- CONFIGURACIÓN PARA ISSES-AP25302VD (GESTIOD_PDB) ---
DB_USER="APEX_240100"
DB_PASS="123"
DB_HOST="server21"
DB_PORT="31521"
DB_SERVICE="oraclepdb1"

# Como indicaste que el usuario de conexión es el dueño del esquema:
APEX_SCHEMA_OWNER="$DB_USER" 

CONN_STR="${DB_USER}/${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_SERVICE}"
LOCAL_WORK_DIR="/home/tomcat/export"
NFS_DEST_DIR="/home/tomcat/export/apex_240100/${DB_SERVICE}"

mkdir -p "${LOCAL_WORK_DIR}"
mkdir -p "${NFS_DEST_DIR}"

echo "=== Iniciando Backup APEX para ${DB_SERVICE} ==="
echo "Fecha: $(date)"

# 1. Generar lista de Workspaces
echo "
set pagesize 0
set heading off
set feedback off
set verify off
set termout off
set trimout on
spool ${LOCAL_WORK_DIR}/workspaces_list.txt
SELECT WORKSPACE_ID || '|' || WORKSPACE
FROM ${APEX_SCHEMA_OWNER}.apex_workspaces
WHERE WORKSPACE_ID NOT IN (10, 11, 12)
ORDER BY WORKSPACE;
spool off
exit
" > ${LOCAL_WORK_DIR}/get_workspaces.sql

sqlcl -s "${CONN_STR}" @${LOCAL_WORK_DIR}/get_workspaces.sql

# 2. Script Maestro de Exportación
MASTER_SQL="${LOCAL_WORK_DIR}/master_export.sql"
echo "spool ${LOCAL_WORK_DIR}/export_execution.log" > "${MASTER_SQL}"
echo "PROMPT Iniciando exportacion masiva..." >> "${MASTER_SQL}"

while IFS='|' read -r WS_ID WS_NAME; do
    WS_ID=$(echo "${WS_ID}" | xargs)
    WS_NAME=$(echo "${WS_NAME}" | xargs)

    if [[ -n "${WS_ID}" && -n "${WS_NAME}" ]]; then
        WS_NFS_DIR="${NFS_DEST_DIR}/${WS_NAME}"
        mkdir -p "${WS_NFS_DIR}"
        rm -f "${WS_NFS_DIR}/f"*.sql "${WS_NFS_DIR}/w"*.sql "${WS_NFS_DIR}/remote_servers.sql"

        echo "PROMPT Procesando Workspace: ${WS_NAME} [${WS_ID}]" >> "${MASTER_SQL}"

        # --- LÓGICA CORREGIDA: Generar 'remote_servers.sql' ---
        # Ahora comprueba si existen registros antes de escribir el BEGIN/END
        REMOTE_GEN_SQL="${LOCAL_WORK_DIR}/gen_remote_${WS_ID}.sql"
        echo "
        set feedback off
        set heading off
        set termout off
        set verify off
        set serveroutput on size unlimited
        spool ${WS_NFS_DIR}/remote_servers.sql
        DECLARE
            v_count NUMBER;
        BEGIN
            -- 1. Contamos si existen remote servers para este workspace
            SELECT count(*) INTO v_count
            FROM ${APEX_SCHEMA_OWNER}.APEX_WORKSPACE_REMOTE_SERVERS
            WHERE WORKSPACE = '${WS_NAME}';

            -- 2. Solo generamos el bloque PL/SQL si hay registros
            IF v_count > 0 THEN
                DBMS_OUTPUT.PUT_LINE('PROMPT Configurando Remote Servers para ${WS_NAME}');
                DBMS_OUTPUT.PUT_LINE('BEGIN');
                
                FOR rec IN (
                    SELECT '  APEX_APPLICATION_INSTALL.SET_REMOTE_SERVER(p_static_id => ''' || REMOTE_SERVER_STATIC_ID || ''', p_base_url => ''' || BASE_URL || ''');' AS cmd
                    FROM ${APEX_SCHEMA_OWNER}.APEX_WORKSPACE_REMOTE_SERVERS
                    WHERE WORKSPACE = '${WS_NAME}'
                    GROUP BY REMOTE_SERVER_STATIC_ID, BASE_URL
                ) LOOP
                    DBMS_OUTPUT.PUT_LINE(rec.cmd);
                END LOOP;
                
                DBMS_OUTPUT.PUT_LINE('END;');
                DBMS_OUTPUT.PUT_LINE('/');
            ELSE
                -- Si no hay, escribimos un comentario inofensivo
                DBMS_OUTPUT.PUT_LINE('PROMPT No Remote Servers found for ${WS_NAME} (Skipping configuration)');
            END IF;
        END;
        /
        spool off
        exit
        " > "${REMOTE_GEN_SQL}"

        sqlcl -s "${CONN_STR}" @${REMOTE_GEN_SQL}
        rm -f "${REMOTE_GEN_SQL}"
        # ------------------------------------------------

        # Comandos de exportación estándar
        echo "apex export -workspaceid ${WS_ID} -expWorkspace -expTeamDevData -dir ${WS_NFS_DIR}" >> "${MASTER_SQL}"
        echo "apex export -workspaceid ${WS_ID} -expFiles -dir ${WS_NFS_DIR}" >> "${MASTER_SQL}"
        echo "apex export -workspaceid ${WS_ID} -dir ${WS_NFS_DIR}" >> "${MASTER_SQL}"
    fi
done < "${LOCAL_WORK_DIR}/workspaces_list.txt"

echo "
PROMPT Finalizado.
SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') AS FIN_BACKUP FROM DUAL;
spool off
exit
" >> "${MASTER_SQL}"

echo "Ejecutando exportaciones en SQLcl..."
sqlcl -s "${CONN_STR}" @${MASTER_SQL}
echo "=== Backup finalizado para ${DB_SERVICE} ==="
