set define off
WHENEVER SQLERROR CONTINUE
spool /home/tomcat/import/import_execution.log
PROMPT --- Creando Workspace TEST
@/home/tomcat/export/apex_240200/xepdb1/TEST/w5401601323772619.sql
PROMPT --- Configurando Sesión para TEST
begin
  apex_application_install.set_workspace('TEST');
  apex_application_install.generate_offset();
  apex_application_install.set_remote_server(
      p_static_id => 'Print_server',
      p_base_url  => 'http://localhost:8080/ords/'
  );
end;
/
PROMPT --- Configurando Remote Servers (Overrides)
@/home/tomcat/export/apex_240200/xepdb1/TEST/remote_servers.sql
PROMPT --- Importando Ficheros Estáticos
@/home/tomcat/export/apex_240200/xepdb1/TEST/files_5401601323772619.sql
PROMPT --- Importando Aplicaciones
@/home/tomcat/export/apex_240200/xepdb1/TEST/f101.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f120.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f200.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f201.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f202.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f203.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f204.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f205.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f206.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f207.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f208.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f209.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f210.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f211.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f212.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f213.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f214.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST/f215.sql

PROMPT --- Creando Workspace TEST2
@/home/tomcat/export/apex_240200/xepdb1/TEST2/w7605142232319369.sql
PROMPT --- Configurando Sesión para TEST2
begin
  apex_application_install.set_workspace('TEST2');
  apex_application_install.generate_offset();
  apex_application_install.set_remote_server(
      p_static_id => 'Print_server',
      p_base_url  => 'http://localhost:8080/ords/'
  );
end;
/
PROMPT --- Configurando Remote Servers (Overrides)
@/home/tomcat/export/apex_240200/xepdb1/TEST2/remote_servers.sql
PROMPT --- Importando Ficheros Estáticos
@/home/tomcat/export/apex_240200/xepdb1/TEST2/files_7605142232319369.sql
PROMPT --- Importando Aplicaciones
@/home/tomcat/export/apex_240200/xepdb1/TEST2/f100.sql
@/home/tomcat/export/apex_240200/xepdb1/TEST2/f103.sql

PROMPT --- Creando Workspace TESTWORKSPACE
@/home/tomcat/export/apex_240200/xepdb1/TESTWORKSPACE/w3200966620849279.sql
PROMPT --- Configurando Sesión para TESTWORKSPACE
begin
  apex_application_install.set_workspace('TESTWORKSPACE');
  apex_application_install.generate_offset();
  apex_application_install.set_remote_server(
      p_static_id => 'Print_server',
      p_base_url  => 'http://localhost:8080/ords/'
  );
end;
/
PROMPT --- Configurando Remote Servers (Overrides)
@/home/tomcat/export/apex_240200/xepdb1/TESTWORKSPACE/remote_servers.sql
PROMPT --- Importando Ficheros Estáticos
@/home/tomcat/export/apex_240200/xepdb1/TESTWORKSPACE/files_3200966620849279.sql
PROMPT --- Importando Aplicaciones
@/home/tomcat/export/apex_240200/xepdb1/TESTWORKSPACE/f104.sql
@/home/tomcat/export/apex_240200/xepdb1/TESTWORKSPACE/f105.sql

PROMPT Fin del proceso.
spool off
exit
