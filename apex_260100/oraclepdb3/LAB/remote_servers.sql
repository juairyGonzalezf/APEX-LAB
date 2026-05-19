PROMPT Configurando Remote Servers para LAB
BEGIN
  APEX_APPLICATION_INSTALL.SET_REMOTE_SERVER(p_static_id => 'Servidor_Pruebas_Export', p_base_url => 'http://server-remoto:8010/ords_oraclepdb1/');
  APEX_APPLICATION_INSTALL.SET_REMOTE_SERVER(p_static_id => 'OData_Flexible_Remote_Server', p_base_url => '#host#');
  APEX_APPLICATION_INSTALL.SET_REMOTE_SERVER(p_static_id => 'flexible_remote_servers', p_base_url => '#host#');
  APEX_APPLICATION_INSTALL.SET_REMOTE_SERVER(p_static_id => 'api_themoviedb_org_3_search', p_base_url => 'https://api.themoviedb.org/3/search/');
  APEX_APPLICATION_INSTALL.SET_REMOTE_SERVER(p_static_id => 'api_themoviedb_org_3_2_', p_base_url => 'https://api.themoviedb.org/3');
  APEX_APPLICATION_INSTALL.SET_REMOTE_SERVER(p_static_id => 'Sample_Application___Github_Repositories', p_base_url => 'https://api.github.com/');
END;
/

