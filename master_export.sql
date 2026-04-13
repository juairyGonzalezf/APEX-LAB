spool /home/tomcat/export/export_execution.log
PROMPT Iniciando exportacion masiva...
PROMPT Procesando Workspace: LAB [2998791338437546]
apex export -workspaceid 2998791338437546 -expWorkspace -expTeamDevData -dir /home/tomcat/export/apex_240100/oraclepdb1/LAB
apex export -workspaceid 2998791338437546 -expFiles -dir /home/tomcat/export/apex_240100/oraclepdb1/LAB
apex export -workspaceid 2998791338437546 -dir /home/tomcat/export/apex_240100/oraclepdb1/LAB

PROMPT Finalizado.
SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') AS FIN_BACKUP FROM DUAL;
spool off
exit

