
set pagesize 0
set heading off
set feedback off
set verify off
set termout off
set trimout on
spool /home/tomcat/export/workspaces_list.txt
SELECT WORKSPACE_ID || '|' || WORKSPACE
FROM APEX_240200.apex_workspaces
WHERE WORKSPACE_ID NOT IN (10, 11, 12)
ORDER BY WORKSPACE;
spool off
exit

