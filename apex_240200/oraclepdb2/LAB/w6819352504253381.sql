prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_default_workspace_id=>6819352504253381
);
end;
/
prompt  WORKSPACE 6819352504253381
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   07:51 Friday May 8, 2026
--   Exported By:     APEX_240200
--   Export Type:     Workspace Export
--   Version:         24.2.14
--   Instance ID:     716633571178843
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>6819352504253381);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace LAB...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 6819413983253395
 ,p_provisioning_company_id => 6819352504253381
 ,p_short_name => 'LAB'
 ,p_display_name => 'LAB'
 ,p_first_schema_provisioned => 'APEXPDB'
 ,p_company_schemas => 'APEXPDB'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'LAB'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'LAB'
 ,p_files_version => 1
 ,p_is_extension_yn => 'N'
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1423729765350258,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1423603717350258,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1423593361350257,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '6819256616253381',
  p_user_name                    => 'GONZALEZFJU',
  p_first_name                   => 'Juairy',
  p_last_name                    => 'Gonzalez Flette',
  p_description                  => '',
  p_email_address                => 'juairy.gonzalezf@outlook.com',
  p_web_password                 => '3F5C6251732327F2CFC6E230D2C7D9146176E664E607231D7CF68EC5475D7DCF0EC4BC278FCC5D9C6B29688CBF94864FCC868C20ADDE18D5581B66E18CEB58E1',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'APEXPDB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202604050810','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 6819616170253419,
    p_user_id => 6819256616253381,
    p_password => '3F5C6251732327F2CFC6E230D2C7D9146176E664E607231D7CF68EC5475D7DCF0EC4BC278FCC5D9C6B29688CBF94864FCC868C20ADDE18D5581B66E18CEB58E1');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 16273560565608985,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 16264939562569814,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17822571758738987,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P5300_W1385544900308016',
    p_attribute_value => '3586703646772446____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 19017068647219048,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4000_P1621_R117792038112505908_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 19017114939219050,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4000_P1621_R117792568458505913_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6824894988258976,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7432433323444810,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '101',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8216968016746328,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '2',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7017189820527358,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX$RDS_4000_9801_1957406633376301_active_tab',
    p_attribute_value => 'SHOW_ALL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7432198699444732,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8222091325822302,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '400:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8222150123824565,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '290:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8222234371824569,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '272:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17418918481078958,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4850_P190_W4402214405520520',
    p_attribute_value => '1606130693443833____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17618215475429216,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P971_W9832206744401027',
    p_attribute_value => '15125345793568912____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17618014310426032,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P970_W9766127603736090',
    p_attribute_value => '13441434626944710____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17822748162796419,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P5301_W3188881929144548',
    p_attribute_value => '4093080940754962____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 19025355066885358,
    p_user_id => 'gonzalezfju',
    p_preference_name => 'FSP102_P41_R782089978008819587_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8017594161685988,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '400:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 16273748344611253,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9020150011036933,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 16274183345669505,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P2300_W2050828593861326',
    p_attribute_value => '2117833588027975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 16273998185667700,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P4070_W47949429235486335',
    p_attribute_value => '47951124794493113____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 16274369937669512,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P2300_W92468021968325911',
    p_attribute_value => '95148537308558700____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8016815308646784,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17417278628064778,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R4876236258998332_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17417393979064781,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R15607707130231509_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17417439125064784,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R10424237842079440_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17417576241068426,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P100_R6335901170146534_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17419190542084315,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4850_P110_W345304742814156446',
    p_attribute_value => '349792885320463043____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17419392665084461,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4850_P150_W1131851802868154106',
    p_attribute_value => '1136339945374460703____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 18617434632666723,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1620_W312277037396040233',
    p_attribute_value => '312279461465115193____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 10623665227772516
    ,p_query_owner => 'APEXPDB'
    ,p_title => 'Robot  (DBMS_SCHEDULER)'
 ,p_qb_sql => 
'BEGIN'||wwv_flow.LF||
'    DBMS_SCHEDULER.CREATE_JOB ('||wwv_flow.LF||
'        job_name        => ''JOB_ACTUALIZAR_VECTORES'','||wwv_flow.LF||
'        job_type        => ''STORED_PROCEDURE'','||wwv_flow.LF||
'        job_action      => ''actualizar_vectores_diccionario'','||wwv_flow.LF||
'        start_date      => SYSTIMESTAMP,'||wwv_flow.LF||
'        repeat_interval => ''FREQ=DAILY; BYHOUR=2; BYMINUTE=0'', -- Se ejecuta cada día a las 2:00 AM'||wwv_flow.LF||
'        enabled         => TRUE'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061148','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'GONZALEZFJU'
    ,p_last_updated_on => to_date('202604061148','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 9616792961313486
    ,p_query_owner => 'APEXPDB'
    ,p_title => 'Base_conocimiento'
 ,p_qb_sql => 
'CREATE OR REPLACE PROCEDURE actualizar_vectores_diccionario IS'||wwv_flow.LF||
'    v_texto    VARCHAR2(4000);'||wwv_flow.LF||
'    v_vector   VECTOR;'||wwv_flow.LF||
'    v_columnas VARCHAR2(3000);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    DELETE FROM base_conocimiento WHERE documento_nombre = ''diccionario_esquema'';'||wwv_flow.LF||
''||wwv_flow.LF||
'    FOR t IN (SELECT table_name FROM user_tables) LOOP'||wwv_flow.LF||
'        v_columnas := '''';'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        FOR c IN (SELECT column_name, data_type FROM user_tab_columns WHE'||
'RE table_name = t.table_name ORDER BY column_id) LOOP'||wwv_flow.LF||
'            v_columnas := v_columnas || c.column_name || '' ('' || c.data_type || ''), '';'||wwv_flow.LF||
'        END LOOP;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        v_columnas := RTRIM(v_columnas, '', '');'||wwv_flow.LF||
'        v_texto := ''En el esquema de la base de datos existe una tabla llamada '' || t.table_name || ''. Columnas: '' || v_columnas || ''.'';'||wwv_flow.LF||
''||wwv_flow.LF||
'        BEGIN'||wwv_flow.LF||
'            v_vector := APEX_AI.G'||
'ET_VECTOR_EMBEDDINGS('||wwv_flow.LF||
'                p_value => v_texto, '||wwv_flow.LF||
'                p_service_static_id => ''gemini_embeddings'' '||wwv_flow.LF||
'            );'||wwv_flow.LF||
'            '||wwv_flow.LF||
'            INSERT INTO base_conocimiento (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'            VALUES (''diccionario_esquema'', v_texto, v_vector);'||wwv_flow.LF||
'        EXCEPTION WHEN OTHERS THEN'||wwv_flow.LF||
'            NULL; -- Ignoramos errores individuales para qu'||
'e el proceso no se detenga'||wwv_flow.LF||
'        END;'||wwv_flow.LF||
'    END LOOP;'||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604051302','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'GONZALEZFJU'
    ,p_last_updated_on => to_date('202604061152','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 9216704256144767
    ,p_query_owner => 'APEXPDB'
    ,p_title => 'Llenar la base de conocimiento'
 ,p_qb_sql => 
'DECLARE'||wwv_flow.LF||
'    v_texto1 VARCHAR2(4000) := ''El servidor server6 fue reiniciado por última vez el 2 de abril de 2026. Sus servicios principales son NodeManager y AdminServer.'';'||wwv_flow.LF||
'    v_texto2 VARCHAR2(4000) := ''La política de la empresa indica que los despliegues a producción solo se pueden hacer los martes y jueves a las 02:00 AM.'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Insertamos el primer dato'||wwv_flow.LF||
'    INSERT INTO base_conocimient'||
'o (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'    VALUES ('||wwv_flow.LF||
'        ''servidores.txt'', '||wwv_flow.LF||
'        v_texto1, '||wwv_flow.LF||
'        APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto1, p_service_static_id => ''gemini_embeddings'')'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Insertamos el segundo dato'||wwv_flow.LF||
'    INSERT INTO base_conocimiento (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'    VALUES ('||wwv_flow.LF||
'        ''politicas.txt'', '||wwv_flow.LF||
'        v_tex'||
'to2, '||wwv_flow.LF||
'        APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto2, p_service_static_id => ''gemini_embeddings'')'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''¡Conocimiento inyectado y vectorizado con éxito!'');'||wwv_flow.LF||
'END;'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604051234','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'GONZALEZFJU'
    ,p_last_updated_on => to_date('202604051235','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 10624719784843972
    ,p_query_owner => 'APEXPDB'
    ,p_title => 'Robot (DBMS_SCHEDULER) Table changed'
 ,p_qb_sql => 
'CREATE OR REPLACE TRIGGER TRG_ACTUALIZAR_VECTORES_DDL'||wwv_flow.LF||
'AFTER CREATE OR ALTER OR DROP ON SCHEMA'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Solo actuamos si el objeto modificado es una TABLA'||wwv_flow.LF||
'    IF ora_dict_obj_type = ''TABLE'' THEN'||wwv_flow.LF||
'        -- Lanzamos el Job en segundo plano para actualizar el diccionario'||wwv_flow.LF||
'        DBMS_SCHEDULER.RUN_JOB(''JOB_ACTUALIZAR_VECTORES'', use_current_session => FALSE);'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061200','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'GONZALEZFJU'
    ,p_last_updated_on => to_date('202604061200','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_qb_saved_query (
    p_id => 10623870748784978
    ,p_query_owner => 'APEXPDB'
    ,p_title => 'Robot  (DBMS_SCHEDULER) (Reinicio)'
 ,p_qb_sql => 
'CREATE OR REPLACE TRIGGER TRG_ACTUALIZAR_VECTORES_STARTUP'||wwv_flow.LF||
'AFTER STARTUP ON DATABASE'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Lanzamos el Job que ya creamos para que se ejecute inmediatamente en segundo plano'||wwv_flow.LF||
'    DBMS_SCHEDULER.RUN_JOB(''JOB_ACTUALIZAR_VECTORES'', use_current_session => FALSE);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061150','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'GONZALEZFJU'
    ,p_last_updated_on => to_date('202604061150','YYYYMMDDHH24MI'));
end;
/
----------------
--sql scripts
--
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '435245415445204F52205245504C4143452050524F4345445552452061637475616C697A61725F636F6E6F63696D69656E746F5F62642049530D0A20202020765F746578746F5F646573637269707469766F2056415243484152322834303030293B0D0A';
wwv_flow_imp.g_varchar2_table(2) := '424547494E0D0A202020202D2D20426F7272616D6F7320656C20636F6E6F63696D69656E746F20616E746967756F20736F627265207461626C61732070617261206E6F206475706C696361720D0A2020202044454C4554452046524F4D20626173655F63';
wwv_flow_imp.g_varchar2_table(3) := '6F6E6F63696D69656E746F20574845524520646F63756D656E746F5F6E6F6D627265203D202764696363696F6E6172696F5F7461626C6173273B0D0A0D0A202020202D2D205265636F7272656D6F7320746F646173206C6173207461626C61732064656C';
wwv_flow_imp.g_varchar2_table(4) := '207573756172696F2061637475616C0D0A20202020464F52207420494E202853454C454354207461626C655F6E616D652046524F4D20757365725F7461626C657329204C4F4F500D0A20202020202020202D2D20437265616D6F7320756E612066726173';
wwv_flow_imp.g_varchar2_table(5) := '65206E61747572616C20717565206C6120494120656E7469656E64612070657266656374616D656E74650D0A2020202020202020765F746578746F5F646573637269707469766F203A3D2027456E20656C20576F726B7370616365206578697374652075';
wwv_flow_imp.g_varchar2_table(6) := '6E61207461626C61206C6C616D6164612027207C7C20742E7461626C655F6E616D65207C7C20272E205369727665207061726120616C6D6163656E6172206461746F732064656C2073697374656D612E273B0D0A20202020202020200D0A202020202020';
wwv_flow_imp.g_varchar2_table(7) := '20202D2D20417175C3AD20706F6472C3AD617320686163657220756E206275636C652065787472612070617261206C65657220555345525F5441425F434F4C554D4E5320792061C3B161646972206C617320636F6C756D6E61732061206C612066726173';
wwv_flow_imp.g_varchar2_table(8) := '650D0A20202020202020200D0A20202020202020202D2D20496E73657274616D6F73207920766563746F72697A616D6F7320616C207675656C6F0D0A2020202020202020494E5345525420494E544F20626173655F636F6E6F63696D69656E746F202864';
wwv_flow_imp.g_varchar2_table(9) := '6F63756D656E746F5F6E6F6D6272652C20667261676D656E746F5F746578746F2C20766563746F725F656D62656464696E67290D0A202020202020202056414C55455320280D0A2020202020202020202020202764696363696F6E6172696F5F7461626C';
wwv_flow_imp.g_varchar2_table(10) := '6173272C200D0A202020202020202020202020765F746578746F5F646573637269707469766F2C200D0A202020202020202020202020415045585F41492E4745545F564543544F525F454D42454444494E475328705F76616C7565203D3E20765F746578';
wwv_flow_imp.g_varchar2_table(11) := '746F5F646573637269707469766F2C20705F736572766963655F7374617469635F6964203D3E202747454D494E495F454D42454444494E475327290D0A2020202020202020293B0D0A20202020454E44204C4F4F503B0D0A202020200D0A20202020434F';
wwv_flow_imp.g_varchar2_table(12) := '4D4D49543B0D0A454E443B0D0A2F';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 9017213503035106,
    p_flow_id => 4500,
    p_name => '9017213503035106/Base de conocimiento',
    p_pathid => null,
    p_filename => 'Base de conocimiento',
    p_title => 'Base de conocimiento',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'GONZALEZFJU',
    p_created_on => to_date('202604051216','YYYYMMDDHH24MI'),
    p_updated_by => 'GONZALEZFJU',
    p_updated_on => to_date('202604051218','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9022792754050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 2
    ,p_src_line_number => 25
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9020313020050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE PROCEDURE actualizar_conocimiento_bd IS '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9020496741050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 60
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    v_texto_descriptivo VARCHAR2(4000); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9020515029050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 101
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9020610039050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 108
    ,p_length => 70
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Borramos el conocimiento antiguo sobre tablas para no duplicar '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9020776283050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 179
    ,p_length => 81
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    DELETE FROM base_conocimiento WHERE documento_nombre = ''diccionario_tablas''; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9020826850050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 261
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9020982552050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 263
    ,p_length => 54
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Recorremos todas las tablas del usuario actual '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021001002050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 318
    ,p_length => 55
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    FOR t IN (SELECT table_name FROM user_tables) LOOP '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021150376050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 374
    ,p_length => 70
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Creamos una frase natural que la IA entienda perfectamente '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021265980050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 445
    ,p_length => 139
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        v_texto_descriptivo := ''En el Workspace existe una tabla llamada '' || t.table_name || ''. Sirve para almacenar datos del sistema.''; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021381694050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 585
    ,p_length => 9
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '         '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021413481050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 12
    ,p_offset => 595
    ,p_length => 105
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Aquí podrías hacer un bucle extra para leer USER_TAB_COLUMNS y añadir las columnas a la frase '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021501405050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 13
    ,p_offset => 701
    ,p_length => 9
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '         '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021674130050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 14
    ,p_offset => 711
    ,p_length => 46
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Insertamos y vectorizamos al vuelo '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021774272050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 15
    ,p_offset => 758
    ,p_length => 92
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        INSERT INTO base_conocimiento (documento_nombre, fragmento_texto, vector_embedding) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021800322050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 16
    ,p_offset => 851
    ,p_length => 17
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        VALUES ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9021918758050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 17
    ,p_offset => 869
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            ''diccionario_tablas'',  '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9022031311050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 18
    ,p_offset => 905
    ,p_length => 34
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            v_texto_descriptivo,  '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9022178370050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 19
    ,p_offset => 940
    ,p_length => 118
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto_descriptivo, p_service_static_id => ''GEMINI_EMBEDDINGS'') '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9022233468050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 20
    ,p_offset => 1059
    ,p_length => 11
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        ); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9022305197050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 21
    ,p_offset => 1071
    ,p_length => 14
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END LOOP; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9022420216050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 22
    ,p_offset => 1086
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9022511513050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 23
    ,p_offset => 1092
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    COMMIT; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 9022613205050865
    ,p_file_id => 9017213503035106
    ,p_stmt_number => 1
    ,p_src_line_number => 24
    ,p_offset => 1105
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 9019922533036911,
    p_file_id => 9017213503035106,
    p_job_id => null,
    p_run_by => 'GONZALEZFJU',
    p_run_as => 'APEXPDB',
    p_started => to_date('202604051216','YYYYMMDDHH24MI'),
    p_start_time => 1036915,
    p_ended => to_date('202604051216','YYYYMMDDHH24MI'),
    p_end_time => 1036932,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 9020022113036915
    ,p_result_id => 9019922533036911
    ,p_file_id => 9017213503035106
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE PROCEDURE actualizar_conocimiento_bd IS '||wwv_flow.LF||
'    v_texto_descriptivo VARCHAR2(4000); '||wwv_flow.LF||
'BEGIN '||wwv_flow.LF||
'    -- Borramos el conocimiento antiguo sobre tablas para no duplicar '||wwv_flow.LF||
'    DELETE FROM base_conocimiento WHERE documento_nombre = ''diccionario_tablas''; '||wwv_flow.LF||
' '||wwv_flow.LF||
'    -- Recorremos todas las tablas del usuario actual '||wwv_flow.LF||
'    FOR t IN (SELECT table_name FROM user_tables) LOOP '||wwv_flow.LF||
'        -- Creamos una fras'||
'e natural que la IA entienda perfectamente '||wwv_flow.LF||
'        v_texto_descriptivo := ''En el Workspace existe una tabla llamada '' || t.table_name || ''. Sirve para almacenar datos del sistema.''; '||wwv_flow.LF||
'         '||wwv_flow.LF||
'        -- Aquí podrías hacer un bucle extra para leer USER_TAB_COLUMNS y añadir las columnas a la frase '||wwv_flow.LF||
'         '||wwv_flow.LF||
'        -- Insertamos y vectorizamos al vuelo '||wwv_flow.LF||
'        INSERT INTO base_conocimiento (docu'||
'mento_nombre, fragmento_texto, vector_embedding) '||wwv_flow.LF||
'        VALUES ( '||wwv_flow.LF||
'            ''diccionario_tablas'',  '||wwv_flow.LF||
'            v_texto_descriptivo,  '||wwv_flow.LF||
'            APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto_descriptivo, p_service_static_id => ''GEMINI_EMBEDDINGS'') '||wwv_flow.LF||
'        ); '||wwv_flow.LF||
'    END LOOP; '||wwv_flow.LF||
'     '||wwv_flow.LF||
'    COMMIT; '||wwv_flow.LF||
'END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Procedure created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202604051216','YYYYMMDDHH24MI')
    ,p_start_time => 1036915
    ,p_ended => to_date('202604051216','YYYYMMDDHH24MI')
    ,p_end_time => 1036931
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202604051216','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 9022835855052374,
    p_file_id => 9017213503035106,
    p_job_id => null,
    p_run_by => 'GONZALEZFJU',
    p_run_as => 'APEXPDB',
    p_started => to_date('202604051219','YYYYMMDDHH24MI'),
    p_start_time => 1052374,
    p_ended => to_date('202604051219','YYYYMMDDHH24MI'),
    p_end_time => 1052375,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 9022908044052374
    ,p_result_id => 9022835855052374
    ,p_file_id => 9017213503035106
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE PROCEDURE actualizar_conocimiento_bd IS '||wwv_flow.LF||
'    v_texto_descriptivo VARCHAR2(4000); '||wwv_flow.LF||
'BEGIN '||wwv_flow.LF||
'    -- Borramos el conocimiento antiguo sobre tablas para no duplicar '||wwv_flow.LF||
'    DELETE FROM base_conocimiento WHERE documento_nombre = ''diccionario_tablas''; '||wwv_flow.LF||
' '||wwv_flow.LF||
'    -- Recorremos todas las tablas del usuario actual '||wwv_flow.LF||
'    FOR t IN (SELECT table_name FROM user_tables) LOOP '||wwv_flow.LF||
'        -- Creamos una fras'||
'e natural que la IA entienda perfectamente '||wwv_flow.LF||
'        v_texto_descriptivo := ''En el Workspace existe una tabla llamada '' || t.table_name || ''. Sirve para almacenar datos del sistema.''; '||wwv_flow.LF||
'         '||wwv_flow.LF||
'        -- Aquí podrías hacer un bucle extra para leer USER_TAB_COLUMNS y añadir las columnas a la frase '||wwv_flow.LF||
'         '||wwv_flow.LF||
'        -- Insertamos y vectorizamos al vuelo '||wwv_flow.LF||
'        INSERT INTO base_conocimiento (docu'||
'mento_nombre, fragmento_texto, vector_embedding) '||wwv_flow.LF||
'        VALUES ( '||wwv_flow.LF||
'            ''diccionario_tablas'',  '||wwv_flow.LF||
'            v_texto_descriptivo,  '||wwv_flow.LF||
'            APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto_descriptivo, p_service_static_id => ''GEMINI_EMBEDDINGS'') '||wwv_flow.LF||
'        ); '||wwv_flow.LF||
'    END LOOP; '||wwv_flow.LF||
'     '||wwv_flow.LF||
'    COMMIT; '||wwv_flow.LF||
'END; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Procedure created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202604051219','YYYYMMDDHH24MI')
    ,p_start_time => 1052374
    ,p_ended => to_date('202604051219','YYYYMMDDHH24MI')
    ,p_end_time => 1052375
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202604051219','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 8017464661685207
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'    v_texto1 VARCHAR2(4000) := ''El servidor server6 fue reiniciado por última vez el 2 de abril de 2026. Sus servicios principales son NodeManager y AdminServer.'';'||wwv_flow.LF||
'    v_texto2 VARCHAR2(4000) := ''La política de la empresa indica que los despliegues a producción solo se pueden hacer los martes y jueves a las 02:00 AM.'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Insertamos el primer dato'||wwv_flow.LF||
'    INSERT INTO base_conocimient'||
'o (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'    VALUES ('||wwv_flow.LF||
'        ''servidores.txt'', '||wwv_flow.LF||
'        v_texto1, '||wwv_flow.LF||
'        APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto1, p_service_static_id => ''GEMINI_EMBEDDINGS'')'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Insertamos el segundo dato'||wwv_flow.LF||
'    INSERT INTO base_conocimiento (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'    VALUES ('||wwv_flow.LF||
'        ''politicas.txt'', '||wwv_flow.LF||
'        v_tex'||
'to2, '||wwv_flow.LF||
'        APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto2, p_service_static_id => ''GEMINI_EMBEDDINGS'')'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''¡Conocimiento inyectado y vectorizado con éxito!'');'||wwv_flow.LF||
'END;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604051117','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9217041947152634
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'    v_texto1 VARCHAR2(4000) := ''El servidor server6 fue reiniciado por última vez el 2 de abril de 2026. Sus servicios principales son NodeManager y AdminServer.'';'||wwv_flow.LF||
'    v_texto2 VARCHAR2(4000) := ''La política de la empresa indica que los despliegues a producción solo se pueden hacer los martes y jueves a las 02:00 AM.'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Insertamos el primer dato'||wwv_flow.LF||
'    INSERT INTO base_conocimient'||
'o (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'    VALUES ('||wwv_flow.LF||
'        ''servidores.txt'', '||wwv_flow.LF||
'        v_texto1, '||wwv_flow.LF||
'        APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto1, p_service_static_id => ''gemini_embeddings'')'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Insertamos el segundo dato'||wwv_flow.LF||
'    INSERT INTO base_conocimiento (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'    VALUES ('||wwv_flow.LF||
'        ''politicas.txt'', '||wwv_flow.LF||
'        v_tex'||
'to2, '||wwv_flow.LF||
'        APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto2, p_service_static_id => ''gemini_embeddings'')'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''¡Conocimiento inyectado y vectorizado con éxito!'');'||wwv_flow.LF||
'END;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604051235','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9416842931279875
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'    v_texto1 VARCHAR2(4000) := ''El servidor server6 fue reiniciado por última vez el 2 de abril de 2026. Sus servicios principales son NodeManager y AdminServer.'';'||wwv_flow.LF||
'    v_texto2 VARCHAR2(4000) := ''La política de la empresa indica que los despliegues a producción solo se pueden hacer los martes y jueves a las 02:00 AM.'';'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Insertamos el primer dato'||wwv_flow.LF||
'    INSERT INTO base_conocimient'||
'o (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'    VALUES ('||wwv_flow.LF||
'        ''servidores.txt'', '||wwv_flow.LF||
'        v_texto1, '||wwv_flow.LF||
'        APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto1, p_service_static_id => ''gemini_embeddings'')'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Insertamos el segundo dato'||wwv_flow.LF||
'    INSERT INTO base_conocimiento (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'    VALUES ('||wwv_flow.LF||
'        ''politicas.txt'', '||wwv_flow.LF||
'        v_tex'||
'to2, '||wwv_flow.LF||
'        APEX_AI.GET_VECTOR_EMBEDDINGS(p_value => v_texto2, p_service_static_id => ''gemini_embeddings'')'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''¡Conocimiento inyectado y vectorizado con éxito!'');'||wwv_flow.LF||
'END;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604051256','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9616967521315102
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'    v_texto    VARCHAR2(4000);'||wwv_flow.LF||
'    v_vector   VECTOR;'||wwv_flow.LF||
'    v_columnas VARCHAR2(3000);'||wwv_flow.LF||
'    v_exitos   NUMBER := 0;'||wwv_flow.LF||
'    v_fallos   NUMBER := 0;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Limpiamos solo los datos del diccionario anterior para no duplicar'||wwv_flow.LF||
'    DELETE FROM base_conocimiento WHERE documento_nombre = ''diccionario_esquema'';'||wwv_flow.LF||
''||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Iniciando escaneo de tablas y columnas...'');'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 1. Recorr'||
'emos todas las tablas del usuario actual'||wwv_flow.LF||
'    FOR t IN (SELECT table_name FROM user_tables) LOOP'||wwv_flow.LF||
'        v_columnas := '''';'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        -- 2. Recorremos las columnas de esa tabla'||wwv_flow.LF||
'        FOR c IN (SELECT column_name, data_type FROM user_tab_columns WHERE table_name = t.table_name ORDER BY column_id) LOOP'||wwv_flow.LF||
'            v_columnas := v_columnas || c.column_name || '' ('' || c.data_type || ''), '';'||wwv_flow.LF||
'    '||
'    END LOOP;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        -- Quitamos la última coma y espacio sobrante'||wwv_flow.LF||
'        v_columnas := RTRIM(v_columnas, '', '');'||wwv_flow.LF||
''||wwv_flow.LF||
'        -- 3. Redactamos la frase natural para que la IA la entienda a la perfección'||wwv_flow.LF||
'        v_texto := ''En el esquema de la base de datos existe una tabla llamada '' || t.table_name || ''. '' ||'||wwv_flow.LF||
'                   ''Esta tabla está compuesta por las siguientes columnas y tipos '||
'de datos: '' || v_columnas || ''.'';'||wwv_flow.LF||
''||wwv_flow.LF||
'        -- 4. Vectorizamos y guardamos'||wwv_flow.LF||
'        BEGIN'||wwv_flow.LF||
'            v_vector := APEX_AI.GET_VECTOR_EMBEDDINGS('||wwv_flow.LF||
'                p_value => v_texto, '||wwv_flow.LF||
'                p_service_static_id => ''gemini_embeddings'' '||wwv_flow.LF||
'            );'||wwv_flow.LF||
'            '||wwv_flow.LF||
'            INSERT INTO base_conocimiento (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'            VALUES (''diccionario_esq'||
'uema'', v_texto, v_vector);'||wwv_flow.LF||
'            '||wwv_flow.LF||
'            v_exitos := v_exitos + 1;'||wwv_flow.LF||
'        EXCEPTION WHEN OTHERS THEN'||wwv_flow.LF||
'            v_fallos := v_fallos + 1;'||wwv_flow.LF||
'            DBMS_OUTPUT.PUT_LINE(''Error vectorizando la tabla '' || t.table_name || '': '' || SQLERRM);'||wwv_flow.LF||
'        END;'||wwv_flow.LF||
'    END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''======================================'');'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''¡DICCIONARIO V'||
'ECTORIZADO CON ÉXITO!'');'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Tablas guardadas: '' || v_exitos);'||wwv_flow.LF||
'    DBMS_OUTPUT.PUT_LINE(''Errores: '' || v_fallos);'||wwv_flow.LF||
'END;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604051302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10624118106797617
 ,p_command => 
'CREATE OR REPLACE PROCEDURE actualizar_vectores_diccionario IS'||wwv_flow.LF||
'    v_texto    VARCHAR2(4000);'||wwv_flow.LF||
'    v_vector   VECTOR;'||wwv_flow.LF||
'    v_columnas VARCHAR2(3000);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    DELETE FROM base_conocimiento WHERE documento_nombre = ''diccionario_esquema'';'||wwv_flow.LF||
''||wwv_flow.LF||
'    FOR t IN (SELECT table_name FROM user_tables) LOOP'||wwv_flow.LF||
'        v_columnas := '''';'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        FOR c IN (SELECT column_name, data_type FROM user_tab_columns WHE'||
'RE table_name = t.table_name ORDER BY column_id) LOOP'||wwv_flow.LF||
'            v_columnas := v_columnas || c.column_name || '' ('' || c.data_type || ''), '';'||wwv_flow.LF||
'        END LOOP;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        v_columnas := RTRIM(v_columnas, '', '');'||wwv_flow.LF||
'        v_texto := ''En el esquema de la base de datos existe una tabla llamada '' || t.table_name || ''. Columnas: '' || v_columnas || ''.'';'||wwv_flow.LF||
''||wwv_flow.LF||
'        BEGIN'||wwv_flow.LF||
'            v_vector := APEX_AI.G'||
'ET_VECTOR_EMBEDDINGS('||wwv_flow.LF||
'                p_value => v_texto, '||wwv_flow.LF||
'                p_service_static_id => ''gemini_embeddings'' '||wwv_flow.LF||
'            );'||wwv_flow.LF||
'            '||wwv_flow.LF||
'            INSERT INTO base_conocimiento (documento_nombre, fragmento_texto, vector_embedding)'||wwv_flow.LF||
'            VALUES (''diccionario_esquema'', v_texto, v_vector);'||wwv_flow.LF||
'        EXCEPTION WHEN OTHERS THEN'||wwv_flow.LF||
'            NULL; -- Ignoramos errores individuales para qu'||
'e el proceso no se detenga'||wwv_flow.LF||
'        END;'||wwv_flow.LF||
'    END LOOP;'||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061152','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10624296514804603
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    DBMS_SCHEDULER.CREATE_JOB ('||wwv_flow.LF||
'        job_name        => ''JOB_ACTUALIZAR_VECTORES'','||wwv_flow.LF||
'        job_type        => ''STORED_PROCEDURE'','||wwv_flow.LF||
'        job_action      => ''actualizar_vectores_diccionario'','||wwv_flow.LF||
'        start_date      => SYSTIMESTAMP,'||wwv_flow.LF||
'        repeat_interval => ''FREQ=DAILY; BYHOUR=2; BYMINUTE=0'', -- Se ejecuta cada día a las 2:00 AM'||wwv_flow.LF||
'        enabled         => TRUE'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061153','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10624340987806095
 ,p_command => 
'CREATE OR REPLACE TRIGGER TRG_ACTUALIZAR_VECTORES_STARTUP'||wwv_flow.LF||
'AFTER STARTUP ON DATABASE'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Lanzamos el Job que ya creamos para que se ejecute inmediatamente en segundo plano'||wwv_flow.LF||
'    DBMS_SCHEDULER.RUN_JOB(''JOB_ACTUALIZAR_VECTORES'', use_current_session => FALSE);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061153','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10624431883816419
 ,p_command => 
'CREATE OR REPLACE TRIGGER TRG_ACTUALIZAR_VECTORES_STARTUP'||wwv_flow.LF||
'AFTER STARTUP ON DATABASE'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Lanzamos el Job que ya creamos para que se ejecute inmediatamente en segundo plano'||wwv_flow.LF||
'    DBMS_SCHEDULER.RUN_JOB(''JOB_ACTUALIZAR_VECTORES'', use_current_session => FALSE);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061155','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10624514721837981
 ,p_command => 
'CREATE OR REPLACE TRIGGER TRG_ACTUALIZAR_VECTORES_DDL'||wwv_flow.LF||
'AFTER CREATE OR ALTER OR DROP ON SCHEMA'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Solo actuamos si el objeto modificado es una TABLA'||wwv_flow.LF||
'    IF ora_dict_obj_type = ''TABLE'' THEN'||wwv_flow.LF||
'        -- Lanzamos el Job en segundo plano para actualizar el diccionario'||wwv_flow.LF||
'        DBMS_SCHEDULER.RUN_JOB(''JOB_ACTUALIZAR_VECTORES'', use_current_session => FALSE);'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061159','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10624614470838566
 ,p_command => 
'CREATE OR REPLACE TRIGGER TRG_ACTUALIZAR_VECTORES_DDL'||wwv_flow.LF||
'AFTER CREATE OR ALTER OR DROP ON SCHEMA'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Solo actuamos si el objeto modificado es una TABLA'||wwv_flow.LF||
'    IF ora_dict_obj_type = ''TABLE'' THEN'||wwv_flow.LF||
'        -- Lanzamos el Job en segundo plano para actualizar el diccionario'||wwv_flow.LF||
'        DBMS_SCHEDULER.RUN_JOB(''JOB_ACTUALIZAR_VECTORES'', use_current_session => FALSE);'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202604061159','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604230732','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.107',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604231039','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.107',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'APEX Auth',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604231046','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.107',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 110,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604231105','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.107',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604270819','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'JUAN',
    p_auth_method => 'LDAP',
    p_app => 110,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604270847','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604270900','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.117',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604290638','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604300804','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'admin',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300826','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604300827','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300920','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300927','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300936','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300936','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300937','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'gonzalezfju',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300944','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300936','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604300936','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 109,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604301002','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 110,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604230735','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.107',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604231042','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.107',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'admin',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604290658','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'APEX Auth',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604290702','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604290723','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'admin',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300917','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'JUAN',
    p_auth_method => 'LDAP',
    p_app => 110,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604270844','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'admin',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604290659','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604290735','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'JUAN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 110,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300809','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'JUAN',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 110,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300809','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300919','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604300959','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604300959','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'admin',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300959','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 101,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604231044','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.107',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'LDAP',
    p_app => 110,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604270823','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'JUAN',
    p_auth_method => 'LDAP',
    p_app => 110,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604270845','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604271012','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.117',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'juan',
    p_auth_method => 'Keycloak SSO',
    p_app => 111,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604290738','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'gonzalezfju',
    p_auth_method => 'Keycloak SSO',
    p_app => 100,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604290740','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'gonzalezfju',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300955','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'admin',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604300956','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'gonzalezfju',
    p_auth_method => 'Keycloak SSO',
    p_app => 102,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202604301000','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202605080646','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
wwv_flow_team_api.create_issue_template (
  p_id => 6823418688258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Plantilla de bug'
 ,p_template_description => 'Plantilla utilizada para registrar un bug.'
 ,p_template_text => 
'**Comportamiento esperado**'||chr(10)||
'- Díganos qué cree que debería suceder.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Comportamiento actual**'||chr(10)||
'- Díganos qué sucede.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**A quién afecta**'||chr(10)||
'- Díganos quién o qué está afectado. '||chr(10)||
''||chr(10)||
'**Posible solución**'||chr(10)||
'- Si lo sabe, sugiera cómo corregir este bug.'||chr(10)||
''||chr(10)||
'**Pasos para reproducirlo**'||chr(10)||
'- Proporcione un conjunto inequívoco de pasos para reproducirlo, incluyendo capturas de pantalla y fragmentos de código, si co'||
'rresponde.'||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
''||chr(10)||
'**Contexto**'||chr(10)||
'- ¿Qué estaba intentando hacer cuando ocurrió el bug? ¿El bug solo sucede bajo ciertas condiciones, o a ciertas horas del día, de forma sucesiva?'||chr(10)||
''||chr(10)||
'**Entorno**'||chr(10)||
''||chr(10)||
'- Versión: '||chr(10)||
'- Plataforma: '||chr(10)||
'- Subsistema:'||chr(10)||
''||chr(10)||
'______'||chr(10)||
''||chr(10)||
'_**NOTA:** Para asociar una incidencia con una aplicación y/o página, registre primero la incidencia; a continuación, use el menú desplegable **ACCIONES** p'||
'ara asociar la aplicación y la página._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 6823500266258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Plantilla de solicitud de función'
 ,p_template_description => 'Plantilla utilizada para registrar una solicitud de función.'
 ,p_template_text => 
'**Resumen de funciones**'||chr(10)||
' - Proporcione un resumen general de un párrafo de la solicitud de función.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Contexto**'||chr(10)||
' - ¿Está relacionada esta solicitud con una situación o proceso específico? Por ejemplo, "Siempre me siento frustrado cuando [...]"'||chr(10)||
''||chr(10)||
''||chr(10)||
' - Proporcione cualquier información de apoyo, incluyendo capturas de pantalla, casos de uso, etc.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Solución preferida**'||chr(10)||
'- Proporcione una descripc'||
'ión clara de lo que le gustaría implantar.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Soluciones alternativas**'||chr(10)||
'- Proporcione una descripción de las soluciones o funciones alternativas consideradas, o de las soluciones alternativas empleadas.'||chr(10)||
''||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTA:** Para asociar una incidencia con una aplicación y/o página, registre primero la incidencia; a continuación, use el menú desplegable **ACCIONES** para asociar la aplicación y la '||
'página._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 6823688537258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Cómo puedo ...'
 ,p_template_description => 'Plantilla utilizada para hacer una pregunta de procedimiento.'
 ,p_template_text => 
'**Pregunta**'||chr(10)||
'- Exponga su pregunta o solicitud de la manera más concisa posible.'||chr(10)||
''||chr(10)||
'**Contexto general**'||chr(10)||
'- ¿Qué está tratando de hacer? '||chr(10)||
''||chr(10)||
''||chr(10)||
'- ¿Dónde más ha mirado o con quién se ha puesto en contacto para encontrar una respuesta? '||chr(10)||
''||chr(10)||
''||chr(10)||
'**Entorno** '||chr(10)||
'¿Es esta pregunta específica de un entorno, lenguaje de programación u otra área?'||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTA:** Para asociar un problema con una aplicación y/o página, '||
'registre primero el problema; a continuación, use el menú desplegable **ACCIONES** para asociar la aplicación y la página._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 6823707182258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug creado'
 ,p_template_description => 'Se ha creado un bug.'
 ,p_template_text => 
'Se ha archivado un **bug** en el sistema externo adecuado.'||chr(10)||
''||chr(10)||
'- Sistema de seguimiento de bugs: '||chr(10)||
'- ID de bug: '||chr(10)||
'- URL al bug: '||chr(10)||
''||chr(10)||
'Comentarios:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 6823852631258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Sin acción'
 ,p_template_description => 'Este problema no generará ninguna acción'
 ,p_template_text => 
'Después de una cuidadosa consideración, **no se llevarán a cabo más acciones para este problema**. '||chr(10)||
''||chr(10)||
'Comentarios:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 6823976975258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Solicitud de función archivada'
 ,p_template_description => 'Se ha archivado una solicitud de función.'
 ,p_template_text => 
'Se ha archivado una **solicitud de función** en el sistema externo adecuado.'||chr(10)||
''||chr(10)||
'- Sistema de seguimiento de funciones: '||chr(10)||
'- ID de función: '||chr(10)||
'- URL a la definición de función: '||chr(10)||
''||chr(10)||
'Comentarios:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 6824006808258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Problema conocido'
 ,p_template_description => 'Referencia a un problema conocido.'
 ,p_template_text => 
'Después de su revisión, se ha determinado que se trata de un problema conocido; consulte los detalles a continuación.'||chr(10)||
''||chr(10)||
'- Sistema de seguimiento de bugs: '||chr(10)||
'- ID de bug: '||chr(10)||
'- URL al bug: '||chr(10)||
''||chr(10)||
'Comentarios: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 6824107754258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Necesita más información'
 ,p_template_description => 'Solicitud de más información.'
 ,p_template_text => 
'**Se necesita más información sobre este problema:**'||chr(10)||
''||chr(10)||
'Proporcione la información que se solicita a continuación. Sin ella, será difícil clasificar y abordar el problema más a fondo.'||chr(10)||
''||chr(10)||
''||chr(10)||
'Comentarios:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 6824272350258940 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Necesita acción de seguimiento'
 ,p_template_description => 'Se necesita una acción de seguimiento.'
 ,p_template_text => 
'Realice las siguientes acciones: '||chr(10)||
''||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
'4.'||chr(10)||
''||chr(10)||
'Comentarios: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 6824767915258945 + wwv_flow_team_api.g_id_offset
 ,p_user_id => 'GONZALEZFJU'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20260405081050','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081050','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 6820029229258937 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Área funcional'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Área funcional afectada por el problema.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 6820945317258939 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Categoría'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Categoría asignada al problema.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 6821879370258939 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importancia'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Nivel de importancia asignado al problema.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 6822459898258939 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Nivel de esfuerzo'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Nivel de esfuerzo para abordar el problema.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 6822842477258939 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Progreso'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Progreso frente al problema.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 6820162565258938 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820029229258937
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6820298135258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820029229258937
 ,p_label_name => 'Base de Datos'
 ,p_label_desc => 'Base de Datos'
 ,p_label_slug => 'base-de-datos'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6820351711258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820029229258937
 ,p_label_name => 'Integración de REST'
 ,p_label_desc => 'Integración de REST'
 ,p_label_slug => 'integración-de-rest'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6820491716258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820029229258937
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6820593783258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820029229258937
 ,p_label_name => 'Acciones dinámicas / JavaScript'
 ,p_label_desc => 'Acciones dinámicas / JavaScript'
 ,p_label_slug => 'acciones-dinámicas-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6820696830258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820029229258937
 ,p_label_name => 'Seguridad'
 ,p_label_desc => 'Seguridad'
 ,p_label_slug => 'seguridad'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6820729830258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820029229258937
 ,p_label_name => 'Administración'
 ,p_label_desc => 'Administración'
 ,p_label_slug => 'administración'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6820863077258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820029229258937
 ,p_label_name => 'Integración de sistema externo'
 ,p_label_desc => 'Integración de sistema externo'
 ,p_label_slug => 'integración-de-sistema-externo'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821024630258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820945317258939
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821141420258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820945317258939
 ,p_label_name => 'Solicitud de Mejora'
 ,p_label_desc => 'Solicitud de Mejora'
 ,p_label_slug => 'solicitud-de-mejora'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821263171258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820945317258939
 ,p_label_name => 'Solicitud de función'
 ,p_label_desc => 'Solicitud de función'
 ,p_label_slug => 'solicitud-de-función'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821339190258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820945317258939
 ,p_label_name => 'Problema de seguridad'
 ,p_label_desc => 'Problema de seguridad'
 ,p_label_slug => 'problema-de-seguridad'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821432495258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820945317258939
 ,p_label_name => 'Problema de rendimiento'
 ,p_label_desc => 'Problema de rendimiento'
 ,p_label_slug => 'problema-de-rendimiento'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821549387258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820945317258939
 ,p_label_name => 'Problema de instalación'
 ,p_label_desc => 'Problema de instalación'
 ,p_label_slug => 'problema-de-instalación'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821678739258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820945317258939
 ,p_label_name => 'Problema de documentación'
 ,p_label_desc => 'Problema de documentación'
 ,p_label_slug => 'problema-de-documentación'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821724629258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6820945317258939
 ,p_label_name => 'Problema de formación'
 ,p_label_desc => 'Problema de formación'
 ,p_label_slug => 'problema-de-formación'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6821910008258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6821879370258939
 ,p_label_name => 'Crítico'
 ,p_label_desc => 'Crítico'
 ,p_label_slug => 'crítico'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6822079262258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6821879370258939
 ,p_label_name => 'Importante'
 ,p_label_desc => 'Importante'
 ,p_label_slug => 'importante'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6822125134258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6821879370258939
 ,p_label_name => 'Normal'
 ,p_label_desc => 'Normal'
 ,p_label_slug => 'normal'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6822231137258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6821879370258939
 ,p_label_name => 'Atraso'
 ,p_label_desc => 'Atraso'
 ,p_label_slug => 'atraso'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6822304292258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6821879370258939
 ,p_label_name => 'No se abordará'
 ,p_label_desc => 'No se abordará'
 ,p_label_slug => 'no-se-abordará'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6822590212258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6822459898258939
 ,p_label_name => 'Solución fácil'
 ,p_label_desc => 'Solución fácil'
 ,p_label_slug => 'solución-fácil'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6822660273258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6822459898258939
 ,p_label_name => 'Esfuerzo moderado'
 ,p_label_desc => 'Esfuerzo moderado'
 ,p_label_slug => 'esfuerzo-moderado'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6822724887258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6822459898258939
 ,p_label_name => 'Gran esfuerzo de desarrollo'
 ,p_label_desc => 'Gran esfuerzo de desarrollo'
 ,p_label_slug => 'gran-esfuerzo-de-desarrollo'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6822973856258939 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6822842477258939
 ,p_label_name => 'Trabajando en ello'
 ,p_label_desc => 'Trabajando en ello'
 ,p_label_slug => 'trabajando-en-ello'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6823067171258940 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6822842477258939
 ,p_label_name => 'Necesita más información'
 ,p_label_desc => 'Necesita más información'
 ,p_label_slug => 'necesita-más-información'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6823147758258940 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6822842477258939
 ,p_label_name => 'A la espera de un tercero'
 ,p_label_desc => 'A la espera de un tercero'
 ,p_label_slug => 'a-la-espera-de-un-tercero'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6823280264258940 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6822842477258939
 ,p_label_name => 'No se puede reparar'
 ,p_label_desc => 'No se puede reparar'
 ,p_label_slug => 'no-se-puede-reparar'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 6823378095258940 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 6822842477258939
 ,p_label_name => 'Terminado'
 ,p_label_desc => 'Terminado'
 ,p_label_slug => 'terminado'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 6824323827258941 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Congelación del Código'
 ,p_milestone_date => to_date('20260420081049','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'congelación-del-código'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_milestone (
  p_id => 6824447127258941 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Congelación de IU'
 ,p_milestone_date => to_date('20260505081049','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'congelación-de-iu'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_milestone (
  p_id => 6824544125258941 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Versión final'
 ,p_milestone_date => to_date('20260520081049','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'versión-final'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 6824697979258942 + wwv_flow_team_api.g_id_offset
 ,p_title => 'Welcome to Team Development in Oracle APEX!'
 ,p_slug => 'welcome-to-team-development-in-oracle-apex'
 ,p_issue_text => 
'Hi there! '||chr(10)||
''||chr(10)||
'This is your very first issue! You can create issues to keep track of tasks, features, bugs, and feedback for all of your APEX projects!  You can add labels to issues, add assignees, set milestones, and even apply formatting using Markdown shorthand!  '||chr(10)||
''||chr(10)||
'Below is a quick sample of what you can do with Markdown:'||chr(10)||
'# Orionis bellica Stygias partes'||chr(10)||
' '||chr(10)||
'## Solibus an rutilis cornu'||chr(10)||
' '||chr(10)||
'Lorem markd'||
'ownum formosae. [Est medio](http://www.modomarte.com/cantu) et illi adunca? Miserum Phaethon, Editus, abrupta colonos; Aeeta annum; facere pruniceum '||chr(10)||
'**domat**, discussisque saevo, Tereo. _Quid noctis adhuc, nisi nemo dignos, aures sonus mentae conspecta?_ '||chr(10)||
' '||chr(10)||
'```js '||chr(10)||
'device_intranet_cloud(page_disk); '||chr(10)||
'if (81 >= scanner + realityHoneypot + intellectual_heuristic) { '||chr(10)||
'    ataDataWeb -= fileWormCamera '||
'+ hypertext; '||chr(10)||
'    hdtv(-3 - 2); '||chr(10)||
'    folder(controlHtml, model - 5); '||chr(10)||
'} '||chr(10)||
'``` '||chr(10)||
' '||chr(10)||
'## Consortia dum mea aethere Deionidenque vixque est '||chr(10)||
' '||chr(10)||
'Forma duris igne duritiem Minervaetransformabantur, moriemur manibusque nulla eripienda est rima grave tu. Illis succedat fit. Ter amo quod plurima, non ab alimentaque adest videbitur at. Avidissima agam qui superba a partem [crines precantia limen](http://totover'||
'tice.com/vertice) in **ignibus spernit ritusque** iamdudum. '||chr(10)||
' '||chr(10)||
'> Arcum aristis arsit generosior in cum laevum suae, ferebat, hoc. Manus faciat, '||chr(10)||
'> nec inpetus sua silvas ossa? Incursant Nereide diversaeque velut signumque '||chr(10)||
'> Hectora, convellere caede hostesque oppida, diu viriles. Isdem **sacra**, '||chr(10)||
'> facta, in viximus alimentaque quae patria, ut derigere vires. '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'### Inde erat dicente viribus '||chr(10)||
''||
' '||chr(10)||
'Nomina aevumque pepercit ridet, vellet stetit tibi, Alcyone a Lelex adductis flumine stetit. *Fides* caeli gloria aquis neget meritis subitis tumulumque carmina illius non satis arces. Repressit volantes egesta, `et ira poscit` lacertis ita timidi. '||chr(10)||
' '||chr(10)||
'### Causam nec plagamque Minyis '||chr(10)||
' '||chr(10)||
'Venit caput vel sublimis haud causa et audire, terraeque sed, per duce gaudete Niobe fierent quantusque villis.'||
' Non **vallibus quinque vaga** densum si meruisse ponit olim terras saepe? Saxum sidera regia; feram hastarum os vigor sponte hinnitus inter est. '||chr(10)||
' '||chr(10)||
'- Vere furta ut exegi '||chr(10)||
'- Tempora poenaeque temptanti '||chr(10)||
'- Misisset est nec vicit edita hic '||chr(10)||
' '||chr(10)||
'Si ista Abantiades pennis, nusquam tu ira ego per. Ille sit, cum aditum culmine, primaque quae mira! Vix herbae volanti caeli, [quisquis](http://bello.org/ripa'||
'e-maenalon), et capillis coepisse iacta, tibi anum, tum iam persequar. Videtur quotiensque vires. Firmo ocius coepta ipsum ignoro, Matri nec regni quod, stimulosque quam librata. '||chr(10)||
' '||chr(10)||
'1. Ille citaeque illo ille Crotonis terra '||chr(10)||
'2. Formatae lancea hac de iuvabat bicolor et '||chr(10)||
'3. Vastator consistere pondere te carmen consorti ex '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'| In ante metus dictum at tempor   | Luctus accumsan | Bibendum | Conse'||
'quat | '||chr(10)||
'|----------------------------------|----------------:|:--------:|-----------:| '||chr(10)||
'| Lectus arcu bibendum at varius   |            37.5 |   quam   |       .07 | '||chr(10)||
'| justo eget magna fermentum       |           127.2 |   lacus  |       .88 | '||chr(10)||
'| Platea dictumst quisque sagittis |            33.0 |   quam   |       .39 | '
 ,p_row_version => 1
 ,p_status => 'OPEN'
 ,p_issue_number => 1
 ,p_deleted => 'N'
 ,p_created_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260405081049','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'APEXPDB';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA APEXPDB - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_240200
-- Exported 07:51 Friday May 8, 2026 by: 
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 07:51 Friday May 8, 2026 by: 
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'LAB';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
