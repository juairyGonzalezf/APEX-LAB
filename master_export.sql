spool /home/tomcat/export/export_execution.log
PROMPT Iniciando exportacion masiva...
PROMPT Procesando Workspace: LAB [6819352504253381]
apex export -workspaceid 6819352504253381 -expWorkspace -expTeamDevData -dir /home/tomcat/export/apex_240200/oraclepdb2/LAB
apex export -workspaceid 6819352504253381 -expFiles -dir /home/tomcat/export/apex_240200/oraclepdb2/LAB
apex export -workspaceid 6819352504253381 -dir /home/tomcat/export/apex_240200/oraclepdb2/LAB
PROMPT Procesando Workspace: TEST [5401601323772619]
apex export -workspaceid 5401601323772619 -expWorkspace -expTeamDevData -dir /home/tomcat/export/apex_240200/oraclepdb2/TEST
apex export -workspaceid 5401601323772619 -expFiles -dir /home/tomcat/export/apex_240200/oraclepdb2/TEST
apex export -workspaceid 5401601323772619 -dir /home/tomcat/export/apex_240200/oraclepdb2/TEST
PROMPT Procesando Workspace: TEST2 [7605142232319369]
apex export -workspaceid 7605142232319369 -expWorkspace -expTeamDevData -dir /home/tomcat/export/apex_240200/oraclepdb2/TEST2
apex export -workspaceid 7605142232319369 -expFiles -dir /home/tomcat/export/apex_240200/oraclepdb2/TEST2
apex export -workspaceid 7605142232319369 -dir /home/tomcat/export/apex_240200/oraclepdb2/TEST2
PROMPT Procesando Workspace: TESTWORKSPACE [3200966620849279]
apex export -workspaceid 3200966620849279 -expWorkspace -expTeamDevData -dir /home/tomcat/export/apex_240200/oraclepdb2/TESTWORKSPACE
apex export -workspaceid 3200966620849279 -expFiles -dir /home/tomcat/export/apex_240200/oraclepdb2/TESTWORKSPACE
apex export -workspaceid 3200966620849279 -dir /home/tomcat/export/apex_240200/oraclepdb2/TESTWORKSPACE

PROMPT Finalizado.
SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') AS FIN_BACKUP FROM DUAL;
spool off
exit

