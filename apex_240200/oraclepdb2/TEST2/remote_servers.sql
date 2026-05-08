PROMPT Configurando Remote Servers para TEST2
BEGIN
  APEX_APPLICATION_INSTALL.SET_REMOTE_SERVER(p_static_id => 'Servidor_Prueba_Lab', p_base_url => 'https://httpbin.org/');
END;
/

