spool //home/tomcat/exports/export append

--Workspace
apex export -expWorkspace -expteamdevdata -workspaceId 3200966620849279 -dir /home/tomcat/export/exports/TESTWORKSPACE;

--workspace statics files (including images, CSS files, and other files which must be managed independently)
apex export -expFiles -workspaceId 3200966620849279 -dir /home/tomcat/export/exports/TESTWORKSPACE;

--aplicaciones
apex export -workspaceId 3200966620849279 -dir /home/tomcat/export/exports/TESTWORKSPACE;

SELECT TO_CHAR
(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') "Fin BackUp"
FROM DUAL;

spool off;

exit;
