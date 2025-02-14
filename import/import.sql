--- import workspace1
-------- WorkSpace
@../export/export/testworkspace/W3200966620849279.sql
--set Workspace
begin
apex_application_install.set_workspace('TESTWORKSPACE');
apex_application_install.generate_offset();
end;
/
commit;
-------- StaticFiles
@../export241124/exports/WKSPAYROLLD/files_2401600436321755.sql
-------- Aplications
@/home/tomcat/export/exports/TESTWORKSPACE/f101.sql
@../export241124/exports/WKSPAYROLLD/f128.sql
@../export241124/exports/WKSPAYROLLD/f222.sql
exit;
