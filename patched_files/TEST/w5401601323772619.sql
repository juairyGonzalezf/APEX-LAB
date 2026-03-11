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
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_default_workspace_id=>5401601323772619
);
end;
/
prompt  WORKSPACE 5401601323772619
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   14:44 Tuesday March 3, 2026
--   Exported By:     APEX_240200
--   Export Type:     Workspace Export
--   Version:         24.2.4
--   Instance ID:     1200103825375009
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>5401601323772619);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace TEST...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 5401778170772623
 ,p_provisioning_company_id => 5401601323772619
 ,p_short_name => 'TEST'
 ,p_display_name => 'TEST'
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
 ,p_source_identifier => 'TEST'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'TEST'
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
  p_id => 21417002225555065,
  p_GROUP_NAME => 'admin',
  p_SECURITY_GROUP_ID => 5401601323772619,
  p_GROUP_DESC => '');
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
  p_user_id                      => '5401566605772619',
  p_user_name                    => 'GONZALEZFJU',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'a@a.com',
  p_web_password                 => 'BCE7D7CB62DA5AA611D374D924DAA4928CC3AAF862E623466C5B393562E234198D9226EF382C3EF08A31A6EF84DBB034A02D68085B4F9F07D518461AB5290FA4',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'APEXPDB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202602121132','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '21414699597477315',
  p_user_name                    => 'GONZALEZFJU2',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'a@a.com',
  p_web_password                 => '6187620B81A99905C84F0D61A42A160EF374C6A0D767CE8A3B19B1AD27947074697DC3AC1BDEC9B03915585CE126F9BFDE3968ED62C73C541A9F84743BD6C9E0',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '21417002225555065:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'APEXPDB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202511031444','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 1,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
prompt  Importing Blueprint DEMO...
begin
wwv_flow_fnd_user_api.import_dg_blueprint (
  p_bp_clob => 
'{"blueprint_format_version":"0.1","blueprint":"DEMO","display_name":"demo","description":null,"lang":"en","default_schema":"APEXPDB","data_sources":[{"name":"SHIRT_SIZES","data_source_type":"SQL_QUERY","table":null,"preserve_case":"Y","sql_query":"select ''S'' shirt_size,''18'' width,''28'' length from sys.dual union all select ''M'' shirt_size,''20'' width,''29'' length from sys.dual union all select ''L'' shi'||
'rt_size,''22'' width,''30'' length from sys.dual","where_clause":null,"inline_data":null,"order_by_column":null}],"tables":[{"sequence":10,"table_name":"EMPLOYEES_TBL","preserve_case":"Y","display_name":"Employees_Tbl","singular_name":null,"plural_name":null,"rows":50,"max_rows":null,"columns":[{"sequence":10,"column_name":"ID","preserve_case":"Y","display_name":"Id","multi_value":"N","mv_format":null'||
',"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"SEQUENCE","data_source":null,"ds_preserve_case":null,"min_numeric_value":1,"max_numeric_value":10,"numeric_precision":0,"min_date_value":null,"max_date_value":null,"format_mask":"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_start_with":0,"sequence_increment":1,"formula":null,"f'||
'ormula_lang":null,"percent_blank":0,"max_length":null},{"sequence":20,"column_name":"FIRST_NAME","preserve_case":"Y","display_name":"First_Name","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"person.first_name","ds_preserve_case":null,"min_numeric_value":null,"max'||
'_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":0,"max_length":4000},{"sequence":30,"column_name":"LAST_NAME","preserve_case":"Y","display_name":"Last_Name","multi_value":"N","mv_format":null,"mv_unique":nul'||
'l,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"person.last_name","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_start_with":null,"sequence_increment":null,"formu'||
'la":null,"formula_lang":null,"percent_blank":0,"max_length":4000},{"sequence":40,"column_name":"EMAIL","preserve_case":"Y","display_name":"Email","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"FORMULA","data_source":null,"ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value'||
'":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_start_with":null,"sequence_increment":null,"formula":"lower( {FIRST_NAME} || ''.'' || {LAST_NAME} ) || ''@company.com''","formula_lang":"PLSQL","percent_blank":0,"max_length":null},{"sequence":50,"column_name":"BIRTHDAY","preserve_case":"Y","display_name":"Birthday","mul'||
'ti_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"date.random_past","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_sta'||
'rt_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":15,"max_length":null},{"sequence":60,"column_name":"SKILLSET","preserve_case":"Y","display_name":"Skillset","multi_value":"Y","mv_format":"DELIMITED","mv_unique":"Y","mv_delimiter":":","mv_min_entries":1,"mv_max_entries":6,"mv_partition_by":null,"data_source_type":"INLINE","data_source":"JavaScript,4;PLSQL,4'||
';Java,2;HTML,6;CSS,3;JQuery,4;Angular,2;NodeJS,2","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":40,"max_length":null},{"sequence":70,"column_name":"SALA'||
'RY","preserve_case":"Y","display_name":"Salary","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"number.random","ds_preserve_case":null,"min_numeric_value":1000,"max_numeric_value":8000,"numeric_precision":2,"min_date_value":null,"max_date_value":null,"format_mask":'||
'"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":75,"max_length":null},{"sequence":80,"column_name":"SHIRT_SIZE","preserve_case":"Y","display_name":"Shirt_Size","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source'||
'_type":"DATA_SOURCE","data_source":"SHIRT_SIZES.SHIRT_SIZE","ds_preserve_case":"Y","min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":50,"max_length":null}]}]}'
);
end;
/
prompt  Importing Blueprint EMPLOYES...
begin
wwv_flow_fnd_user_api.import_dg_blueprint (
  p_bp_clob => 
'{"blueprint_format_version":"0.1","blueprint":"EMPLOYES","display_name":"Employes","description":"Generated using existing tables.","lang":"en","default_schema":"APEXPDB","data_sources":null,"tables":[{"sequence":100,"table_name":"EMPLOYEE","preserve_case":"Y","display_name":null,"singular_name":null,"plural_name":null,"rows":50,"max_rows":null,"columns":[{"sequence":100,"column_name":"EMPID","pre'||
'serve_case":"Y","display_name":"Empid","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"number.guid","ds_preserve_case":null,"min_numeric_value":1,"max_numeric_value":10,"numeric_precision":0,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_s'||
'tart_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":null},{"sequence":200,"column_name":"FIRSTNAME","preserve_case":"Y","display_name":"Firstname","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"person.first_n'||
'ame","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":20},{"sequence":300,"column_name":"LASTNAME","preserve_case":"Y","display_name":"Lastname","multi_value":"N","mv_f'||
'ormat":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"person.last_name","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formul'||
'a":null,"formula_lang":null,"percent_blank":5,"max_length":20},{"sequence":400,"column_name":"EMAIL","preserve_case":"Y","display_name":"Email","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"person.email","ds_preserve_case":null,"min_numeric_value":null,"max_numer'||
'ic_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":25},{"sequence":500,"column_name":"PHONENO","preserve_case":"Y","display_name":"Phoneno","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":'||
'null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"phone.us_phone_number","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":25'||
'},{"sequence":600,"column_name":"SALARY","preserve_case":"Y","display_name":"Salary","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"number.guid","ds_preserve_case":null,"min_numeric_value":1,"max_numeric_value":10,"numeric_precision":0,"min_date_value":null,"max_d'||
'ate_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":null}]}]}'
);
end;
/
----------------
--Click Count Logs
--
----------------
--mail
--
begin
  wwv_imp_workspace.create_mail_queue (
    p_id => 21418598575705462
    ,p_mail_to => 'gonzalezfju2@server6.local'
    ,p_mail_from => 'gonzalezfju2@server6.local'
    ,p_mail_replyto => ''
    ,p_mail_subj => 'Oracle APEX Request'
    ,p_mail_cc => ''
    ,p_mail_bcc => ''
 ,p_mail_body => 
'Your new email address for your Oracle APEX account <strong>gonzalezfju2</strong> in workspace <strong>TEST</strong>:<br>'||wwv_flow.LF||
'a@a.com<br><br>'||wwv_flow.LF||
'https://ords.kratos150.local/ords1/'||wwv_flow.LF||
''
 ,p_mail_body_html => 
'<html><head></head><body style="font-family:Tahoma,Arial,Helvetica,Geneva,sans-serif;font-size:10pt;color:#000000;"><img src="https://ords.kratos150.local/i/email/img/oracle-o-apex.png" alt="Oracle APEX"><br /><br />Your new email address for your Oracle APEX account <strong>gonzalezfju2</strong> in workspace <strong>TEST</strong>:<br><br />'||wwv_flow.LF||
'a@a.com<br><br><br />'||wwv_flow.LF||
'<a href="https://ords.kratos150.lo'||
'cal/ords1/">https://ords.kratos150.local/ords1/</a><br />'||wwv_flow.LF||
'<br /> <br /></body></html>'
    ,p_mail_send_count => 0
    ,p_mail_send_error => ''
    ,p_includes_html => 1
    ,p_last_updated_by => 'GONZALEZFJU'
    ,p_last_updated_on => to_date('202511031522','YYYYMMDDHH24MI'));
end;
/
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
    p_id => 5401962174772633,
    p_user_id => 5401566605772619,
    p_password => 'BCE7D7CB62DA5AA611D374D924DAA4928CC3AAF862E623466C5B393562E234198D9226EF382C3EF08A31A6EF84DBB034A02D68085B4F9F07D518461AB5290FA4');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 15809202243944832,
    p_user_id => 5401566605772619,
    p_password => 'BCE7D7CB62DA5AA611D374D924DAA4928CC3AAF862E623466C5B393562E234198D9226EF382C3EF08A31A6EF84DBB034A02D68085B4F9F07D518461AB5290FA4');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 24226467758009373,
    p_user_id => 5401566605772619,
    p_password => 'BCE7D7CB62DA5AA611D374D924DAA4928CC3AAF862E623466C5B393562E234198D9226EF382C3EF08A31A6EF84DBB034A02D68085B4F9F07D518461AB5290FA4');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 11210384373011428,
    p_user_id => 5401566605772619,
    p_password => 'BCE7D7CB62DA5AA611D374D924DAA4928CC3AAF862E623466C5B393562E234198D9226EF382C3EF08A31A6EF84DBB034A02D68085B4F9F07D518461AB5290FA4');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 15009991641323242,
    p_user_id => 5401566605772619,
    p_password => 'BCE7D7CB62DA5AA611D374D924DAA4928CC3AAF862E623466C5B393562E234198D9226EF382C3EF08A31A6EF84DBB034A02D68085B4F9F07D518461AB5290FA4');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 21414707633477323,
    p_user_id => 21414699597477315,
    p_password => '6187620B81A99905C84F0D61A42A160EF374C6A0D767CE8A3B19B1AD27947074697DC3AC1BDEC9B03915585CE126F9BFDE3968ED62C73C541A9F84743BD6C9E0');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 23226521153432354,
    p_user_id => 5401566605772619,
    p_password => 'BCE7D7CB62DA5AA611D374D924DAA4928CC3AAF862E623466C5B393562E234198D9226EF382C3EF08A31A6EF84DBB034A02D68085B4F9F07D518461AB5290FA4');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6159547061821159,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_PDF_ACCESSIBLE',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6601715157168486,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6159016564813015,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '200',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6158705465812954,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4084538154189447,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4085097283195741,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_2500606111718504_CURRENT_REPORT',
    p_attribute_value => '5306711573062761:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4089946780201164,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4105576485221126,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX$RDS_4500_1100_2000395581438701_active_tab',
    p_attribute_value => 'output-sql-region',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4105748546230262,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_1906067983860548_CURRENT_REPORT',
    p_attribute_value => '1720725137294547:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6007375788287088,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '402:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 18209115526657283,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_120_P2_W14448455183364344',
    p_attribute_value => '14456391436364362____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21416723163551999,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4350_P53_W34954404769221837',
    p_attribute_value => '34956410007247564____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 22019629014597056,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13409747891885105,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12810690049034129,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4850_P130_W708529861800941074',
    p_attribute_value => '708580560525001941____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21412327660417226,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P4070_W47949429235486335',
    p_attribute_value => '47951124794493113____REPORT',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21412553290418889,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P2300_W2050828593861326',
    p_attribute_value => '2117833588027975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5025030357445238,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21412708067418895,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P2300_W92468021968325911',
    p_attribute_value => '95148537308558700____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21417864636624131,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P340_W47956924686585341',
    p_attribute_value => '47959101217609257____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7205053538070705,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5211871338082308,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 19200433798676655,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R4876236258998332_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 19200557147676658,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R15607707130231509_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 19200629536676660,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R10424237842079440_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21413469755444352,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21413861830444383,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21414032551445059,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4350_P29_W9294827650405715',
    p_attribute_value => '9296821143409975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21416294622543422,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 22021366816602791,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6603620017001466,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21413117890441867,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P44_W192971700145071263',
    p_attribute_value => '192972607003071274____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 21416970959552897,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4350_P51_W441077109644796807',
    p_attribute_value => '441077718682801782____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 22022967999834917,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4500_1901781580041201_SPLITTER_STATE',
    p_attribute_value => '335:false',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253';
wwv_flow_imp.g_varchar2_table(2) := '484952545F53495A4522292076616C75657320283130372C27436C696E746F6E272C27426A65726B65272C27636C696E746F6E2E626A65726B6540636F6D70616E792E636F6D272C746F5F646174652827313937352D30392D31315431393A33333A3531';
wwv_flow_imp.g_varchar2_table(3) := '5A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C363239352E31322C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C';
wwv_flow_imp.g_varchar2_table(4) := '4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835332C274272796E6E272C274D636B616C65272C276272796E6E2E6D63';
wwv_flow_imp.g_varchar2_table(5) := '6B616C6540636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27504C53514C272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C';
wwv_flow_imp.g_varchar2_table(6) := '222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202838302C275275';
wwv_flow_imp.g_varchar2_table(7) := '70657274272C275461726479272C277275706572742E746172647940636F6D70616E792E636F6D272C746F5F646174652827313935392D31302D31365430393A31333A32365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227';
wwv_flow_imp.g_varchar2_table(8) := '292C27272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554';
wwv_flow_imp.g_varchar2_table(9) := '222C2253414C415259222C2253484952545F53495A4522292076616C756573202832362C2745646E61272C27466F776C73746F6E272C2765646E612E666F776C73746F6E40636F6D70616E792E636F6D272C746F5F646174652827323030322D31312D32';
wwv_flow_imp.g_varchar2_table(10) := '345431313A35383A35365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C363036332E38362C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253';
wwv_flow_imp.g_varchar2_table(11) := '545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133352C27477573736965272C274B68696C6C';
wwv_flow_imp.g_varchar2_table(12) := '696E67272C276775737369652E6B68696C6C696E6740636F6D70616E792E636F6D272C746F5F646174652827323031332D31312D31315430343A35353A35325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C32';
wwv_flow_imp.g_varchar2_table(13) := '3239302E39392C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554';
wwv_flow_imp.g_varchar2_table(14) := '222C2253414C415259222C2253484952545F53495A4522292076616C75657320283130382C274A6F6E6E6965272C275370656C6C616E65272C276A6F6E6E69652E7370656C6C616E6540636F6D70616E792E636F6D272C746F5F64617465282731393532';
wwv_flow_imp.g_varchar2_table(15) := '2D30392D31385430323A32373A34375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27504C53514C272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246';
wwv_flow_imp.g_varchar2_table(16) := '495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835342C27476C61646973272C27547265';
wwv_flow_imp.g_varchar2_table(17) := '766579272C27676C616469732E74726576657940636F6D70616E792E636F6D272C746F5F646174652827313938312D30312D32305432313A34363A30375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C313835';
wwv_flow_imp.g_varchar2_table(18) := '312E30382C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C';
wwv_flow_imp.g_varchar2_table(19) := '2253414C415259222C2253484952545F53495A4522292076616C756573202838312C27486F72616365272C274B616D696E6572272C27686F726163652E6B616D696E657240636F6D70616E792E636F6D272C746F5F646174652827313939372D30352D33';
wwv_flow_imp.g_varchar2_table(20) := '305430373A35363A34355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274E6F64654A53272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C224649525354';
wwv_flow_imp.g_varchar2_table(21) := '5F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028302C2750616D272C27446F6D696E6973272C2770';
wwv_flow_imp.g_varchar2_table(22) := '616D2E646F6D696E697340636F6D70616E792E636F6D272C746F5F646174652827323031302D30332D30395432323A30363A32335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C323337372E33332C2727293B';
wwv_flow_imp.g_varchar2_table(23) := '0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C';
wwv_flow_imp.g_varchar2_table(24) := '2253484952545F53495A4522292076616C756573202832372C274A6F73656661272C275368696C74272C276A6F736566612E7368696C7440636F6D70616E792E636F6D272C746F5F646174652827313939372D31312D32395430343A33313A35345A272C';
wwv_flow_imp.g_varchar2_table(25) := '27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C';
wwv_flow_imp.g_varchar2_table(26) := '22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133362C2742656C656E272C274F6764656E272C2762656C656E2E6F6764656E40636F6D70616E';
wwv_flow_imp.g_varchar2_table(27) := '792E636F6D272C746F5F646174652827323031392D30342D30355431393A30353A32315A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C2C2727293B0D0A696E7365727420696E746F2022454D50';
wwv_flow_imp.g_varchar2_table(28) := '4C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75';
wwv_flow_imp.g_varchar2_table(29) := '657320283130392C2742656C696E6461272C27426172676572272C2762656C696E64612E62617267657240636F6D70616E792E636F6D272C746F5F646174652827323031312D31312D31325431323A33333A30345A272C27595959592D4D4D2D44442254';
wwv_flow_imp.g_varchar2_table(30) := '22484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448';
wwv_flow_imp.g_varchar2_table(31) := '444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835352C2750696E67272C274976656C272C2770696E672E6976656C40636F6D70616E792E636F6D272C746F5F646174652827313937';
wwv_flow_imp.g_varchar2_table(32) := '362D30362D31355431393A34353A33355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C224649525354';
wwv_flow_imp.g_varchar2_table(33) := '5F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202838322C275468656F646F7261272C274265617669';
wwv_flow_imp.g_varchar2_table(34) := '6E272C277468656F646F72612E62656176696E40636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C2C2727293B0D0A696E7365727420696E74';
wwv_flow_imp.g_varchar2_table(35) := '6F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522';
wwv_flow_imp.g_varchar2_table(36) := '292076616C7565732028312C27486F6E67272C2743686172746572272C27686F6E672E6368617274657240636F6D70616E792E636F6D272C746F5F646174652827313935302D30332D30385430393A33373A34345A272C27595959592D4D4D2D44442254';
wwv_flow_imp.g_varchar2_table(37) := '22484832343A4D493A5353225A2227292C27272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C2242495254';
wwv_flow_imp.g_varchar2_table(38) := '48444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202832382C27476973656C65272C274C696D74686F6E67272C27676973656C652E6C696D74686F6E6740636F6D70616E792E636F6D27';
wwv_flow_imp.g_varchar2_table(39) := '2C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27435353272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45';
wwv_flow_imp.g_varchar2_table(40) := '222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133372C2742656174726973272C2749726168657461272C27';
wwv_flow_imp.g_varchar2_table(41) := '626561747269732E6972616865746140636F6D70616E792E636F6D272C746F5F646174652827313937312D30332D30335431373A33363A33335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A';
wwv_flow_imp.g_varchar2_table(42) := '696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253';
wwv_flow_imp.g_varchar2_table(43) := '484952545F53495A4522292076616C75657320283131302C2744656C6961272C274E6F72746573616E6F272C2764656C69612E6E6F72746573616E6F40636F6D70616E792E636F6D272C746F5F646174652827313936302D30372D32345432333A31353A';
wwv_flow_imp.g_varchar2_table(44) := '33345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E41';
wwv_flow_imp.g_varchar2_table(45) := '4D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835362C27546F6363617261272C274B6F6E77696E736B69272C27746F63636172612E6B';
wwv_flow_imp.g_varchar2_table(46) := '6F6E77696E736B6940636F6D70616E792E636F6D272C746F5F646174652827313936352D30332D32305431383A33363A34355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420';
wwv_flow_imp.g_varchar2_table(47) := '696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F5349';
wwv_flow_imp.g_varchar2_table(48) := '5A4522292076616C756573202838332C274265617461272C274C6164696575272C2762656174612E6C616469657540636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A222729';
wwv_flow_imp.g_varchar2_table(49) := '2C27504C53514C272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C';
wwv_flow_imp.g_varchar2_table(50) := '534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028322C27476F6C646965272C275975736B61272C27676F6C6469652E7975736B6140636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D';
wwv_flow_imp.g_varchar2_table(51) := '4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C';
wwv_flow_imp.g_varchar2_table(52) := '224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202832392C274D617274696E65272C27466F726273272C276D617274696E652E666F72627340636F6D70616E792E636F6D';
wwv_flow_imp.g_varchar2_table(53) := '272C746F5F646174652827313935352D31322D32395430313A34313A30345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C22';
wwv_flow_imp.g_varchar2_table(54) := '2028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133382C274569';
wwv_flow_imp.g_varchar2_table(55) := '6C65656E272C274D696C6C6F7474272C2765696C65656E2E6D696C6C6F747440636F6D70616E792E636F6D272C746F5F646174652827313937392D31322D31395430343A31363A32385A272C27595959592D4D4D2D4444225422484832343A4D493A5353';
wwv_flow_imp.g_varchar2_table(56) := '225A2227292C27435353272C373930322E31332C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C22424952544844';
wwv_flow_imp.g_varchar2_table(57) := '4159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283131312C2757796E6F6E61272C2754656E6461272C2777796E6F6E612E74656E646140636F6D70616E792E636F6D272C746F5F646174';
wwv_flow_imp.g_varchar2_table(58) := '652827313936352D31322D30335431323A34383A35375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A617661536372697074272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F5442';
wwv_flow_imp.g_varchar2_table(59) := '4C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835372C2744';
wwv_flow_imp.g_varchar2_table(60) := '61726C65656E272C2743617374656E272C276461726C65656E2E63617374656E40636F6D70616E792E636F6D272C746F5F646174652827313936352D30392D32305432323A32393A35345A272C27595959592D4D4D2D4444225422484832343A4D493A53';
wwv_flow_imp.g_varchar2_table(61) := '53225A2227292C27272C363534362E37392C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159';
wwv_flow_imp.g_varchar2_table(62) := '222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202838342C27416E746F6E272C274D6577272C27616E746F6E2E6D657740636F6D70616E792E636F6D272C746F5F646174652827323030332D30';
wwv_flow_imp.g_varchar2_table(63) := '372D32375430333A35393A33355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253';
wwv_flow_imp.g_varchar2_table(64) := '545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028332C27477261636961272C2754736169272C27';
wwv_flow_imp.g_varchar2_table(65) := '6772616369612E7473616940636F6D70616E792E636F6D272C746F5F646174652827313936382D30382D31355431313A35333A33325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365';
wwv_flow_imp.g_varchar2_table(66) := '727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C225348495254';
wwv_flow_imp.g_varchar2_table(67) := '5F53495A4522292076616C756573202833302C27426173696C272C274F7572736C6572272C27626173696C2E6F7572736C657240636F6D70616E792E636F6D272C746F5F646174652827313936332D30352D33315431383A30343A33395A272C27595959';
wwv_flow_imp.g_varchar2_table(68) := '592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C363931342E35362C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45';
wwv_flow_imp.g_varchar2_table(69) := '222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133392C27416E6E696365272C274D6363726F7373656E272C27616E6E6963652E6D636372';
wwv_flow_imp.g_varchar2_table(70) := '6F7373656E40636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27435353272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C';
wwv_flow_imp.g_varchar2_table(71) := '222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283131322C2754';
wwv_flow_imp.g_varchar2_table(72) := '696666616E6579272C27426F7A6F76696368272C2774696666616E65792E626F7A6F7669636840636F6D70616E792E636F6D272C746F5F646174652827313937382D31302D30365430333A32363A34355A272C27595959592D4D4D2D4444225422484832';
wwv_flow_imp.g_varchar2_table(73) := '343A4D493A5353225A2227292C274A617661272C313730372E36382C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(74) := '2C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835382C2744616E69656C272C275374726F6E67272C2764616E69656C2E7374726F6E6740636F6D70616E792E636F';
wwv_flow_imp.g_varchar2_table(75) := '6D272C746F5F646174652827313936322D31312D32365431353A32343A32375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F5442';
wwv_flow_imp.g_varchar2_table(76) := '4C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202838352C2744';
wwv_flow_imp.g_varchar2_table(77) := '656C61696E65272C27556E74616C616E272C2764656C61696E652E756E74616C616E40636F6D70616E792E636F6D272C746F5F646174652827313935392D30332D31335431363A35353A35395A272C27595959592D4D4D2D4444225422484832343A4D49';
wwv_flow_imp.g_varchar2_table(78) := '3A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B';
wwv_flow_imp.g_varchar2_table(79) := '494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028342C2753616272696E61272C2753746F6A616E6F766963272C2773616272696E612E73746F6A616E6F76696340636F6D70616E792E636F6D272C746F5F';
wwv_flow_imp.g_varchar2_table(80) := '646174652827313934312D30332D32365431373A33303A35335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27435353272C363132352E34342C2727293B0D0A696E7365727420696E746F2022454D504C4F59454553';
wwv_flow_imp.g_varchar2_table(81) := '5F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283331';
wwv_flow_imp.g_varchar2_table(82) := '2C27466C6F79272C27437261766572272C27666C6F792E63726176657240636F6D70616E792E636F6D272C746F5F646174652827313934362D30322D32325431333A35363A31375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A';
wwv_flow_imp.g_varchar2_table(83) := '2227292C27272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C53';
wwv_flow_imp.g_varchar2_table(84) := '4554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283134302C274A6F6C6965272C274D6963616C697A7A69272C276A6F6C69652E6D6963616C697A7A6940636F6D70616E792E636F6D272C746F5F6461746528273139';
wwv_flow_imp.g_varchar2_table(85) := '39392D30312D30375430303A33343A32325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C22202822494422';
wwv_flow_imp.g_varchar2_table(86) := '2C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283131332C27416E746F6E657474';
wwv_flow_imp.g_varchar2_table(87) := '61272C2750696E736B79272C27616E746F6E657474612E70696E736B7940636F6D70616E792E636F6D272C746F5F646174652827323030372D30342D30395431363A31323A32375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A';
wwv_flow_imp.g_varchar2_table(88) := '2227292C27272C343338372E35392C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C';
wwv_flow_imp.g_varchar2_table(89) := '22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835392C2742656C6C61272C274F7374657266656C64272C2762656C6C612E6F7374657266656C6440636F6D70616E792E636F6D272C746F5F6461';
wwv_flow_imp.g_varchar2_table(90) := '74652827323032332D31322D31365431373A35323A32335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C';
wwv_flow_imp.g_varchar2_table(91) := '2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202838362C27456C61696E61272C2748';
wwv_flow_imp.g_varchar2_table(92) := '6167676C756E64272C27656C61696E612E686167676C756E6440636F6D70616E792E636F6D272C746F5F646174652827313937302D30362D30385430323A31393A31335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C';
wwv_flow_imp.g_varchar2_table(93) := '27504C53514C272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C';
wwv_flow_imp.g_varchar2_table(94) := '534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028352C27416E746F6E696F272C274B6F706572272C27616E746F6E696F2E6B6F70657240636F6D70616E792E636F6D272C746F5F646174652827272C2759595959';
wwv_flow_imp.g_varchar2_table(95) := '2D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C';
wwv_flow_imp.g_varchar2_table(96) := '222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202833322C27486F6C6C6973272C274A6F6E6461686C272C27686F6C6C69732E6A6F6E6461686C40636F6D70616E79';
wwv_flow_imp.g_varchar2_table(97) := '2E636F6D272C746F5F646174652827313936322D30312D30375430343A31323A35305A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274E6F64654A53272C2C274D27293B0D0A696E7365727420696E746F2022454D50';
wwv_flow_imp.g_varchar2_table(98) := '4C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75';
wwv_flow_imp.g_varchar2_table(99) := '657320283134312C274A7564736F6E272C274B616E747A272C276A7564736F6E2E6B616E747A40636F6D70616E792E636F6D272C746F5F646174652827313937342D30342D31325431373A34383A32335A272C27595959592D4D4D2D4444225422484832';
wwv_flow_imp.g_varchar2_table(100) := '343A4D493A5353225A2227292C274A617661536372697074272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(101) := '2C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283131342C27546F6D617361272C274F726F756B65272C27746F6D6173612E6F726F756B6540636F6D70616E792E63';
wwv_flow_imp.g_varchar2_table(102) := '6F6D272C746F5F646174652827313938332D30392D32395430373A35303A35335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F5442';
wwv_flow_imp.g_varchar2_table(103) := '4C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202838372C2743';
wwv_flow_imp.g_varchar2_table(104) := '6C6F72696E6461272C274D6174616C6B61272C27636C6F72696E64612E6D6174616C6B6140636F6D70616E792E636F6D272C746F5F646174652827313933372D30312D31305432333A32343A35315A272C27595959592D4D4D2D4444225422484832343A';
wwv_flow_imp.g_varchar2_table(105) := '4D493A5353225A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C';
wwv_flow_imp.g_varchar2_table(106) := '22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202836302C274772657461272C2753766174656B272C2767726574612E73766174656B40636F6D70616E792E636F6D272C746F5F6461746528273139';
wwv_flow_imp.g_varchar2_table(107) := '34382D30322D32325430313A32303A32345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27504C53514C272C373035392E35362C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C2220';
wwv_flow_imp.g_varchar2_table(108) := '28224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028362C27446172696F';
wwv_flow_imp.g_varchar2_table(109) := '272C27486F75736D616E272C27646172696F2E686F75736D616E40636F6D70616E792E636F6D272C746F5F646174652827323030322D30352D32365432303A30353A34335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A222729';
wwv_flow_imp.g_varchar2_table(110) := '2C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C';
wwv_flow_imp.g_varchar2_table(111) := '2253414C415259222C2253484952545F53495A4522292076616C756573202833332C274C65747479272C27526963636172646F272C276C657474792E726963636172646F40636F6D70616E792E636F6D272C746F5F646174652827323030302D30312D33';
wwv_flow_imp.g_varchar2_table(112) := '315431373A31333A34315A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274E6F64654A53272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C224649525354';
wwv_flow_imp.g_varchar2_table(113) := '5F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283134322C2750616D616C61272C274D6364657769';
wwv_flow_imp.g_varchar2_table(114) := '7474272C2770616D616C612E6D6364657769747440636F6D70616E792E636F6D272C746F5F646174652827313935302D30382D30385430363A30383A33365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C';
wwv_flow_imp.g_varchar2_table(115) := '272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253';
wwv_flow_imp.g_varchar2_table(116) := '414C415259222C2253484952545F53495A4522292076616C75657320283131352C2744616E6E69656C6C65272C27436F6E666F72746F272C2764616E6E69656C6C652E636F6E666F72746F40636F6D70616E792E636F6D272C746F5F6461746528273139';
wwv_flow_imp.g_varchar2_table(117) := '38362D30332D31385431373A33373A32375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274E6F64654A53272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C22202822494422';
wwv_flow_imp.g_varchar2_table(118) := '2C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202838382C274564726973272C274C';
wwv_flow_imp.g_varchar2_table(119) := '6966666F7264272C2765647269732E6C6966666F726440636F6D70616E792E636F6D272C746F5F646174652827313937332D30322D30325430363A31373A32335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A61';
wwv_flow_imp.g_varchar2_table(120) := '7661536372697074272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B49';
wwv_flow_imp.g_varchar2_table(121) := '4C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202836312C2754657272657361272C2748616E6861726474272C27746572726573612E68616E686172647440636F6D70616E792E636F6D272C746F5F64617465';
wwv_flow_imp.g_varchar2_table(122) := '2827323030312D30322D32385432323A30373A30375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944';
wwv_flow_imp.g_varchar2_table(123) := '222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028372C274B6576696E272C2753';
wwv_flow_imp.g_varchar2_table(124) := '61776C6976696368272C276B6576696E2E7361776C697669636840636F6D70616E792E636F6D272C746F5F646174652827323030342D30312D30335432333A33343A35395A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A222729';
wwv_flow_imp.g_varchar2_table(125) := '2C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C';
wwv_flow_imp.g_varchar2_table(126) := '2253414C415259222C2253484952545F53495A4522292076616C756573202833342C275275746865272C274E697368696F6B61272C2772757468652E6E697368696F6B6140636F6D70616E792E636F6D272C746F5F646174652827313935392D31312D32';
wwv_flow_imp.g_varchar2_table(127) := '325430363A35343A34355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27416E67756C6172272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C224649525354';
wwv_flow_imp.g_varchar2_table(128) := '5F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283134332C2752757468616E6E65272C2742757267';
wwv_flow_imp.g_varchar2_table(129) := '6F796E65272C2772757468616E6E652E627572676F796E6540636F6D70616E792E636F6D272C746F5F646174652827313937392D30372D31335430313A33363A30315A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27';
wwv_flow_imp.g_varchar2_table(130) := '4A617661536372697074272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C2253';
wwv_flow_imp.g_varchar2_table(131) := '4B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283131362C2752757373656C272C274865696E7A656C6D616E272C2772757373656C2E6865696E7A656C6D616E40636F6D70616E792E636F6D272C746F';
wwv_flow_imp.g_varchar2_table(132) := '5F646174652827313939362D30352D31345430393A33373A33355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27416E67756C6172272C333037342E35332C274D27293B0D0A696E7365727420696E746F2022454D50';
wwv_flow_imp.g_varchar2_table(133) := '4C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75';
wwv_flow_imp.g_varchar2_table(134) := '6573202838392C274777656E272C2743616B65272C276777656E2E63616B6540636F6D70616E792E636F6D272C746F5F646174652827313934322D30372D33305430313A31303A31365A272C27595959592D4D4D2D4444225422484832343A4D493A5353';
wwv_flow_imp.g_varchar2_table(135) := '225A2227292C27272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C';
wwv_flow_imp.g_varchar2_table(136) := '4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202836322C275061626C6F272C27436176656E6579272C277061626C6F2E636176656E657940636F6D70616E792E636F6D272C746F5F646174652827313937352D';
wwv_flow_imp.g_varchar2_table(137) := '31322D31395432303A32343A31325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A617661536372697074272C313533332E39392C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C';
wwv_flow_imp.g_varchar2_table(138) := '222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028382C2743616D';
wwv_flow_imp.g_varchar2_table(139) := '696C61272C2748696C6C776967272C2763616D696C612E68696C6C77696740636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A617661536372697074272C2C27';
wwv_flow_imp.g_varchar2_table(140) := '4D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C41';
wwv_flow_imp.g_varchar2_table(141) := '5259222C2253484952545F53495A4522292076616C756573202833352C2744617068696E65272C27456C6672696E6B272C2764617068696E652E656C6672696E6B40636F6D70616E792E636F6D272C746F5F646174652827313935342D30382D32375430';
wwv_flow_imp.g_varchar2_table(142) := '333A35343A32365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C';
wwv_flow_imp.g_varchar2_table(143) := '4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283134342C274C6962626965272C27526973686572272C276C6962626965';
wwv_flow_imp.g_varchar2_table(144) := '2E72697368657240636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C2220';
wwv_flow_imp.g_varchar2_table(145) := '28224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283131372C27456464';
wwv_flow_imp.g_varchar2_table(146) := '6965272C27446965747269636B272C2765646469652E646965747269636B40636F6D70616E792E636F6D272C746F5F646174652827313933372D30372D32335432313A31393A31335A272C27595959592D4D4D2D4444225422484832343A4D493A535322';
wwv_flow_imp.g_varchar2_table(147) := '5A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C';
wwv_flow_imp.g_varchar2_table(148) := '534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202839302C274A756C69616E272C2752756461636B272C276A756C69616E2E72756461636B40636F6D70616E792E636F6D272C746F5F646174652827313936382D31';
wwv_flow_imp.g_varchar2_table(149) := '322D32325430393A34363A32345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E41';
wwv_flow_imp.g_varchar2_table(150) := '4D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202836332C2744616E697461272C274865756D616E6E272C27';
wwv_flow_imp.g_varchar2_table(151) := '64616E6974612E6865756D616E6E40636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545';
wwv_flow_imp.g_varchar2_table(152) := '535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202839';
wwv_flow_imp.g_varchar2_table(153) := '2C2745646965272C2754617665726E696572272C27656469652E74617665726E69657240636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27504C53514C272C2C27';
wwv_flow_imp.g_varchar2_table(154) := '5327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C41';
wwv_flow_imp.g_varchar2_table(155) := '5259222C2253484952545F53495A4522292076616C756573202833362C274C657A6C6965272C27526F73656E7468616C6C272C276C657A6C69652E726F73656E7468616C6C40636F6D70616E792E636F6D272C746F5F646174652827313934362D31322D';
wwv_flow_imp.g_varchar2_table(156) := '30315431383A31353A34365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F';
wwv_flow_imp.g_varchar2_table(157) := '4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283134352C2742656265272C2742726F616477656C6C';
wwv_flow_imp.g_varchar2_table(158) := '272C27626562652E62726F616477656C6C40636F6D70616E792E636F6D272C746F5F646174652827313937372D30372D32305430343A30383A34325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C36';
wwv_flow_imp.g_varchar2_table(159) := '3334312E342C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554';
wwv_flow_imp.g_varchar2_table(160) := '222C2253414C415259222C2253484952545F53495A4522292076616C75657320283131382C2744616E79656C272C274761746C696E67272C2764616E79656C2E6761746C696E6740636F6D70616E792E636F6D272C746F5F646174652827313937372D30';
wwv_flow_imp.g_varchar2_table(161) := '322D31375430363A34343A30375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27504C53514C272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253';
wwv_flow_imp.g_varchar2_table(162) := '545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202839312C2742656C7661272C274F6C64272C2762';
wwv_flow_imp.g_varchar2_table(163) := '656C76612E6F6C6440636F6D70616E792E636F6D272C746F5F646174652827313936342D30372D32395430363A30363A32345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C274C27293B0D0A696E';
wwv_flow_imp.g_varchar2_table(164) := '7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C22534849';
wwv_flow_imp.g_varchar2_table(165) := '52545F53495A4522292076616C756573202836342C2743656C6961272C2753636F74686F726E272C2763656C69612E73636F74686F726E40636F6D70616E792E636F6D272C746F5F646174652827323030342D31312D31365432303A30323A30335A272C';
wwv_flow_imp.g_varchar2_table(166) := '27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C343234352E31372C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C22';
wwv_flow_imp.g_varchar2_table(167) := '4C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202831302C2747696E676572272C275A6F726D616E272C2767696E676572';
wwv_flow_imp.g_varchar2_table(168) := '2E7A6F726D616E40636F6D70616E792E636F6D272C746F5F646174652827313933352D30392D31395431343A34363A30305A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C2727293B0D0A696E7365';
wwv_flow_imp.g_varchar2_table(169) := '727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C225348495254';
wwv_flow_imp.g_varchar2_table(170) := '5F53495A4522292076616C756573202833372C2744617261272C27426F6E6E656175272C27646172612E626F6E6E65617540636F6D70616E792E636F6D272C746F5F646174652827313937342D30392D32335430363A34343A34325A272C27595959592D';
wwv_flow_imp.g_varchar2_table(171) := '4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C';
wwv_flow_imp.g_varchar2_table(172) := '222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283134362C274461726369272C27476C6173736E6572272C2764617263692E676C6173736E657240636F6D70616E';
wwv_flow_imp.g_varchar2_table(173) := '792E636F6D272C746F5F646174652827313937352D30392D30345430393A31303A31325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C313339352E39312C274D27293B0D0A696E7365727420696E746F202245';
wwv_flow_imp.g_varchar2_table(174) := '4D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A452229207661';
wwv_flow_imp.g_varchar2_table(175) := '6C75657320283131392C274A6F6E6174686F6E272C27426F746E6572272C276A6F6E6174686F6E2E626F746E657240636F6D70616E792E636F6D272C746F5F646174652827323032312D30372D32365431373A34333A32305A272C27595959592D4D4D2D';
wwv_flow_imp.g_varchar2_table(176) := '4444225422484832343A4D493A5353225A2227292C27435353272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(177) := '2C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202839322C2742656E6564696374272C274C6176657279272C2762656E65646963742E6C617665727940636F6D70616E';
wwv_flow_imp.g_varchar2_table(178) := '792E636F6D272C746F5F646174652827323030312D30372D33315430353A30363A35375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F';
wwv_flow_imp.g_varchar2_table(179) := '594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573';
wwv_flow_imp.g_varchar2_table(180) := '202836352C27446172656E272C2742726176617264272C27646172656E2E6272617661726440636F6D70616E792E636F6D272C746F5F646174652827313935382D30362D30395431383A33313A31365A272C27595959592D4D4D2D444422542248483234';
wwv_flow_imp.g_varchar2_table(181) := '3A4D493A5353225A2227292C274A5175657279272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C22424952';
wwv_flow_imp.g_varchar2_table(182) := '5448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202831312C27536162696E65272C27426F6E616775696469272C27736162696E652E626F6E61677569646940636F6D70616E792E63';
wwv_flow_imp.g_varchar2_table(183) := '6F6D272C746F5F646174652827323030322D31302D31345431313A33323A31375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C363835312E332C274D27293B0D0A696E7365727420696E746F2022454D504C4F';
wwv_flow_imp.g_varchar2_table(184) := '594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573';
wwv_flow_imp.g_varchar2_table(185) := '202833382C274461726E656C6C272C275261696E626F77272C276461726E656C6C2E7261696E626F7740636F6D70616E792E636F6D272C746F5F646174652827313935382D31312D32375430333A30303A34335A272C27595959592D4D4D2D4444225422';
wwv_flow_imp.g_varchar2_table(186) := '484832343A4D493A5353225A2227292C2748544D4C272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C2242';
wwv_flow_imp.g_varchar2_table(187) := '49525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283134372C2742656175272C27446565726D616E272C27626561752E646565726D616E40636F6D70616E792E636F6D272C74';
wwv_flow_imp.g_varchar2_table(188) := '6F5F646174652827323032332D30332D32385430303A30393A31365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028';
wwv_flow_imp.g_varchar2_table(189) := '224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283132302C2744617269';
wwv_flow_imp.g_varchar2_table(190) := '61272C274865617265272C2764617269612E686561726540636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274E6F64654A53272C2C275327293B0D0A696E736572';
wwv_flow_imp.g_varchar2_table(191) := '7420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F';
wwv_flow_imp.g_varchar2_table(192) := '53495A4522292076616C756573202839332C2744617272656E272C27536574746C6572272C2764617272656E2E736574746C657240636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A53';
wwv_flow_imp.g_varchar2_table(193) := '53225A2227292C274A5175657279272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159';
wwv_flow_imp.g_varchar2_table(194) := '222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202836362C27416E6E6D61726965272C2745736D6179272C27616E6E6D617269652E65736D617940636F6D70616E792E636F6D272C746F5F6461';
wwv_flow_imp.g_varchar2_table(195) := '74652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F';
wwv_flow_imp.g_varchar2_table(196) := '4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202831322C274461726C61272C274A756E676C696E67272C276461726C612E6A756E67';
wwv_flow_imp.g_varchar2_table(197) := '6C696E6740636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C22202822';
wwv_flow_imp.g_varchar2_table(198) := '4944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202833392C274672616E272C';
wwv_flow_imp.g_varchar2_table(199) := '2753696262616C64272C276672616E2E73696262616C6440636F6D70616E792E636F6D272C746F5F646174652827313934352D31312D30335430313A35383A33315A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2727';
wwv_flow_imp.g_varchar2_table(200) := '2C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C225341';
wwv_flow_imp.g_varchar2_table(201) := '4C415259222C2253484952545F53495A4522292076616C75657320283134382C274D61727368616C6C272C274C6F77657279272C276D61727368616C6C2E6C6F7765727940636F6D70616E792E636F6D272C746F5F646174652827313935312D30392D30';
wwv_flow_imp.g_varchar2_table(202) := '355431343A32363A34345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D4522';
wwv_flow_imp.g_varchar2_table(203) := '2C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283132312C2747696C626572746F272C2757656962656C272C2767';
wwv_flow_imp.g_varchar2_table(204) := '696C626572746F2E77656962656C40636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A617661536372697074272C2C274C27293B0D0A696E7365727420696E74';
wwv_flow_imp.g_varchar2_table(205) := '6F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522';
wwv_flow_imp.g_varchar2_table(206) := '292076616C756573202839342C274564656C6D697261272C275769646D616E272C276564656C6D6972612E7769646D616E40636F6D70616E792E636F6D272C746F5F646174652827323031352D31302D32375430353A30393A35385A272C27595959592D';
wwv_flow_imp.g_varchar2_table(207) := '4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(208) := '2C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202836372C27416E6E65747461272C274A756261636B272C27616E6E657474612E6A756261636B40636F6D70616E792E';
wwv_flow_imp.g_varchar2_table(209) := '636F6D272C746F5F646174652827313935342D30322D30335430333A32303A35375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F';
wwv_flow_imp.g_varchar2_table(210) := '54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202831332C';
wwv_flow_imp.g_varchar2_table(211) := '274D61727961272C275261736F272C276D617279612E7261736F40636F6D70616E792E636F6D272C746F5F646174652827313937392D30382D31375431333A35383A31345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A222729';
wwv_flow_imp.g_varchar2_table(212) := '2C274A617661536372697074272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C';
wwv_flow_imp.g_varchar2_table(213) := '22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202834302C275665726F6E696361272C274175627265636874272C277665726F6E6963612E617562726563687440636F6D70616E792E636F6D272C74';
wwv_flow_imp.g_varchar2_table(214) := '6F5F646174652827313932362D30372D30325432333A33393A31325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274E6F64654A53272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F';
wwv_flow_imp.g_varchar2_table(215) := '54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C7565732028313232';
wwv_flow_imp.g_varchar2_table(216) := '2C27506F7273636865272C2753686970706565272C27706F72736368652E7368697070656540636F6D70616E792E636F6D272C746F5F646174652827313939322D30362D31315432323A35353A34375A272C27595959592D4D4D2D444422542248483234';
wwv_flow_imp.g_varchar2_table(217) := '3A4D493A5353225A2227292C27435353272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C22424952544844';
wwv_flow_imp.g_varchar2_table(218) := '4159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202839352C274275636B272C2743616D70696F6E272C276275636B2E63616D70696F6E40636F6D70616E792E636F6D272C746F5F64617465';
wwv_flow_imp.g_varchar2_table(219) := '2827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E41';
wwv_flow_imp.g_varchar2_table(220) := '4D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202836382C274A616E6E65747465272C27426162696E6F272C276A616E6E657474652E6261';
wwv_flow_imp.g_varchar2_table(221) := '62696E6F40636F6D70616E792E636F6D272C746F5F646174652827323030302D30392D31355431323A32353A30345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C274D27293B0D0A696E73657274';
wwv_flow_imp.g_varchar2_table(222) := '20696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53';
wwv_flow_imp.g_varchar2_table(223) := '495A4522292076616C75657320283134392C27416E746F6E6961272C274D636C6163686C616E272C27616E746F6E69612E6D636C6163686C616E40636F6D70616E792E636F6D272C746F5F646174652827313936302D31302D31375432313A32303A3439';
wwv_flow_imp.g_varchar2_table(224) := '5A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C323133352E39322C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C';
wwv_flow_imp.g_varchar2_table(225) := '4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202831342C2747726973656C6461272C274B75726F68617261272C27677269';
wwv_flow_imp.g_varchar2_table(226) := '73656C64612E6B75726F6861726140636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C2727293B0D0A696E7365727420696E746F2022454D504C';
wwv_flow_imp.g_varchar2_table(227) := '4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C7565';
wwv_flow_imp.g_varchar2_table(228) := '73202834312C2754686572657365272C275A6165736B65272C27746865726573652E7A6165736B6540636F6D70616E792E636F6D272C746F5F646174652827313932372D30312D30395430313A31393A35355A272C27595959592D4D4D2D444422542248';
wwv_flow_imp.g_varchar2_table(229) := '4832343A4D493A5353225A2227292C27416E67756C6172272C373839362E36382C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C2245';
wwv_flow_imp.g_varchar2_table(230) := '4D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283132332C275275667573272C274D6F72616973272C2772756675732E6D6F7261697340636F6D70616E';
wwv_flow_imp.g_varchar2_table(231) := '792E636F6D272C746F5F646174652827313934372D30392D32325430333A32363A32355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C313430342E37322C2727293B0D0A696E7365727420696E746F';
wwv_flow_imp.g_varchar2_table(232) := '2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A452229';
wwv_flow_imp.g_varchar2_table(233) := '2076616C756573202839362C2744616E69656C6C272C274772756D6E6579272C2764616E69656C6C2E6772756D6E657940636F6D70616E792E636F6D272C746F5F646174652827323031352D30342D30375431393A33333A31395A272C27595959592D4D';
wwv_flow_imp.g_varchar2_table(234) := '4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22';
wwv_flow_imp.g_varchar2_table(235) := '454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202836392C275665726E697461272C274B756C696B272C277665726E6974612E6B756C696B40636F6D70';
wwv_flow_imp.g_varchar2_table(236) := '616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253';
wwv_flow_imp.g_varchar2_table(237) := '545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283135302C2750616D272C27446F6D696E697327';
wwv_flow_imp.g_varchar2_table(238) := '2C2770616D2E646F6D696E697340636F6D70616E792E636F6D272C746F5F646174652827313938342D30322D32315432333A32383A33345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C27532729';
wwv_flow_imp.g_varchar2_table(239) := '3B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C41525922';
wwv_flow_imp.g_varchar2_table(240) := '2C2253484952545F53495A4522292076616C756573202831352C27476C61647973272C274C61756768657279272C27676C616479732E6C6175676865727940636F6D70616E792E636F6D272C746F5F646174652827313939362D30312D31385431323A34';
wwv_flow_imp.g_varchar2_table(241) := '373A35315A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C415354';
wwv_flow_imp.g_varchar2_table(242) := '5F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202834322C274C65746861272C274B6F736972272C276C657468612E6B6F73697240';
wwv_flow_imp.g_varchar2_table(243) := '636F6D70616E792E636F6D272C746F5F646174652827313938322D30332D30315431313A31363A32395A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A617661536372697074272C2C2727293B0D0A696E73657274';
wwv_flow_imp.g_varchar2_table(244) := '20696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53';
wwv_flow_imp.g_varchar2_table(245) := '495A4522292076616C75657320283132342C2744616E6E272C275769646572736B69272C2764616E6E2E7769646572736B6940636F6D70616E792E636F6D272C746F5F646174652827313933352D30352D31375432323A30313A32315A272C2759595959';
wwv_flow_imp.g_varchar2_table(246) := '2D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C';
wwv_flow_imp.g_varchar2_table(247) := '222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202839372C274D617276656C6C61272C2753616C656D69272C276D617276656C6C612E73616C656D6940636F6D7061';
wwv_flow_imp.g_varchar2_table(248) := '6E792E636F6D272C746F5F646174652827313934382D31302D32395430353A32373A32365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A617661272C2C274C27293B0D0A696E7365727420696E746F2022454D50';
wwv_flow_imp.g_varchar2_table(249) := '4C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75';
wwv_flow_imp.g_varchar2_table(250) := '6573202837302C27426173696C272C2748616E6167616E272C27626173696C2E68616E6167616E40636F6D70616E792E636F6D272C746F5F646174652827313934352D30332D31325430353A30373A33395A272C27595959592D4D4D2D44442254224848';
wwv_flow_imp.g_varchar2_table(251) := '32343A4D493A5353225A2227292C274A5175657279272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C2242';
wwv_flow_imp.g_varchar2_table(252) := '49525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202831362C274672616E636573636F272C27456C6C616E64272C276672616E636573636F2E656C6C616E6440636F6D70616E79';
wwv_flow_imp.g_varchar2_table(253) := '2E636F6D272C746F5F646174652827313938352D30382D31315431313A31343A31335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27435353272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F59';
wwv_flow_imp.g_varchar2_table(254) := '4545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320';
wwv_flow_imp.g_varchar2_table(255) := '2834332C27477265676F726961272C2752616D6F746172272C27677265676F7269612E72616D6F74617240636F6D70616E792E636F6D272C746F5F646174652827313935332D30352D31375430303A31353A34395A272C27595959592D4D4D2D44442254';
wwv_flow_imp.g_varchar2_table(256) := '22484832343A4D493A5353225A2227292C27435353272C353536322E38382C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D';
wwv_flow_imp.g_varchar2_table(257) := '41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283132352C2744616E696B61272C274B6572616E73272C2764616E696B612E6B6572616E7340636F6D7061';
wwv_flow_imp.g_varchar2_table(258) := '6E792E636F6D272C746F5F646174652827323030302D31312D33305431393A30303A30375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C373736382E32392C274D27293B0D0A696E7365727420696E746F2022';
wwv_flow_imp.g_varchar2_table(259) := '454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076';
wwv_flow_imp.g_varchar2_table(260) := '616C756573202839382C2743616D656C6C6961272C2741726368756C65747461272C2763616D656C6C69612E61726368756C6574746140636F6D70616E792E636F6D272C746F5F646174652827313938362D30372D32315430333A30353A33335A272C27';
wwv_flow_imp.g_varchar2_table(261) := '595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C2245';
wwv_flow_imp.g_varchar2_table(262) := '4D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202837312C274A6172726564272C2749737261656C73656E272C276A61727265642E69737261656C73656E';
wwv_flow_imp.g_varchar2_table(263) := '40636F6D70616E792E636F6D272C746F5F646174652827313932392D30362D30375430323A35393A32365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27504C53514C272C343337392E37382C2727293B0D0A696E73';
wwv_flow_imp.g_varchar2_table(264) := '65727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952';
wwv_flow_imp.g_varchar2_table(265) := '545F53495A4522292076616C756573202831372C27466C6F72696461272C2747696C6C69616E64272C27666C6F726964612E67696C6C69616E6440636F6D70616E792E636F6D272C746F5F646174652827323030302D31302D32305432303A33303A3435';
wwv_flow_imp.g_varchar2_table(266) := '5A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153';
wwv_flow_imp.g_varchar2_table(267) := '545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202834342C2744656C62657274272C274B686174616B272C2764656C626572742E';
wwv_flow_imp.g_varchar2_table(268) := '6B686174616B40636F6D70616E792E636F6D272C746F5F646174652827323032342D31302D32385430353A32373A33305A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C2727293B0D0A696E736572';
wwv_flow_imp.g_varchar2_table(269) := '7420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F';
wwv_flow_imp.g_varchar2_table(270) := '53495A4522292076616C75657320283132362C2759766F6E6E65272C274170706C656D616E272C2779766F6E6E652E6170706C656D616E40636F6D70616E792E636F6D272C746F5F646174652827313936302D30362D30385430393A30303A34375A272C';
wwv_flow_imp.g_varchar2_table(271) := '27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E41';
wwv_flow_imp.g_varchar2_table(272) := '4D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202839392C2754696D696B61272C27576F6D626C6573272C2774696D696B612E776F6D626C';
wwv_flow_imp.g_varchar2_table(273) := '657340636F6D70616E792E636F6D272C746F5F646174652827313939392D31312D30385431393A33323A30355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27416E67756C6172272C2C275327293B0D0A696E736572';
wwv_flow_imp.g_varchar2_table(274) := '7420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F';
wwv_flow_imp.g_varchar2_table(275) := '53495A4522292076616C756573202837322C274B69736861272C274C6576656E272C276B697368612E6C6576656E40636F6D70616E792E636F6D272C746F5F646174652827313934342D30342D32355432313A34383A32385A272C27595959592D4D4D2D';
wwv_flow_imp.g_varchar2_table(276) := '4444225422484832343A4D493A5353225A2227292C27435353272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C';
wwv_flow_imp.g_varchar2_table(277) := '222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202831382C274772616E76696C6C65272C274D636D757272696E272C276772616E76696C6C652E6D636D757272696E';
wwv_flow_imp.g_varchar2_table(278) := '40636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C323637342E312C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C2220';
wwv_flow_imp.g_varchar2_table(279) := '28224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202834352C2752757374';
wwv_flow_imp.g_varchar2_table(280) := '79272C274E65736C616E64272C2772757374792E6E65736C616E6440636F6D70616E792E636F6D272C746F5F646174652827313934332D31302D33315432303A33373A32335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227';
wwv_flow_imp.g_varchar2_table(281) := '292C27435353272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C';
wwv_flow_imp.g_varchar2_table(282) := '534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283132372C27416E746F696E65272C274170706C6F6E6965272C27616E746F696E652E6170706C6F6E696540636F6D70616E792E636F6D272C746F5F6461746528';
wwv_flow_imp.g_varchar2_table(283) := '27313934312D30372D33305430363A35343A33375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C224649';
wwv_flow_imp.g_varchar2_table(284) := '5253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283130302C2744616E69656C65272C275468';
wwv_flow_imp.g_varchar2_table(285) := '6F727374656E272C2764616E69656C652E74686F727374656E40636F6D70616E792E636F6D272C746F5F646174652827313937312D30382D31345431343A35333A33325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C';
wwv_flow_imp.g_varchar2_table(286) := '274E6F64654A53272C343832312E39352C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159';
wwv_flow_imp.g_varchar2_table(287) := '222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202837332C274D617274696E272C274D7573756C696E272C276D617274696E2E6D7573756C696E40636F6D70616E792E636F6D272C746F5F6461';
wwv_flow_imp.g_varchar2_table(288) := '74652827323031362D30372D32315432303A34373A34335A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C323439302E33372C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C22';
wwv_flow_imp.g_varchar2_table(289) := '2028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202831392C27426172';
wwv_flow_imp.g_varchar2_table(290) := '74272C27446574756C6C696F272C27626172742E646574756C6C696F40636F6D70616E792E636F6D272C746F5F646174652827313934392D30372D32315431383A35343A35365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A22';
wwv_flow_imp.g_varchar2_table(291) := '27292C274A617661536372697074272C363335392E372C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C22424952';
wwv_flow_imp.g_varchar2_table(292) := '5448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202834362C274461726C656E65272C27506973616E6F272C276461726C656E652E706973616E6F40636F6D70616E792E636F6D272C';
wwv_flow_imp.g_varchar2_table(293) := '746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C';
wwv_flow_imp.g_varchar2_table(294) := '4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283132382C274A616E796365272C27446169676E61756C74272C276A616E';
wwv_flow_imp.g_varchar2_table(295) := '7963652E646169676E61756C7440636F6D70616E792E636F6D272C746F5F646174652827323030362D30342D30355432333A33353A32365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A61766153637269707427';
wwv_flow_imp.g_varchar2_table(296) := '2C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C225341';
wwv_flow_imp.g_varchar2_table(297) := '4C415259222C2253484952545F53495A4522292076616C75657320283130312C2747726168616D272C274368616D62657273272C2767726168616D2E6368616D6265727340636F6D70616E792E636F6D272C746F5F646174652827323031392D31312D31';
wwv_flow_imp.g_varchar2_table(298) := '385430363A30363A35365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A617661536372697074272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C224649';
wwv_flow_imp.g_varchar2_table(299) := '5253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202837342C274A616E697461272C2745736B61';
wwv_flow_imp.g_varchar2_table(300) := '72616E272C276A616E6974612E65736B6172616E40636F6D70616E792E636F6D272C746F5F646174652827313938382D31312D32355431363A35333A34355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27416E6775';
wwv_flow_imp.g_varchar2_table(301) := '6C6172272C2C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554';
wwv_flow_imp.g_varchar2_table(302) := '222C2253414C415259222C2253484952545F53495A4522292076616C756573202832302C274A6F7368272C27536C6F6D6572272C276A6F73682E736C6F6D657240636F6D70616E792E636F6D272C746F5F646174652827313932362D30392D3238543034';
wwv_flow_imp.g_varchar2_table(303) := '3A34363A34375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C';
wwv_flow_imp.g_varchar2_table(304) := '224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202834372C2753796C766573746572272C274B6973746572272C277379';
wwv_flow_imp.g_varchar2_table(305) := '6C7665737465722E6B697374657240636F6D70616E792E636F6D272C746F5F646174652827313933312D31302D31305431393A31343A34315A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A69';
wwv_flow_imp.g_varchar2_table(306) := '6E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C225348';
wwv_flow_imp.g_varchar2_table(307) := '4952545F53495A4522292076616C75657320283132392C275068796C6973272C27416E646F6E69616E272C277068796C69732E616E646F6E69616E40636F6D70616E792E636F6D272C746F5F646174652827313937352D30372D30335432303A35373A31';
wwv_flow_imp.g_varchar2_table(308) := '345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153';
wwv_flow_imp.g_varchar2_table(309) := '545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283130322C27456C616E6F72272C275368696E73656C272C27656C616E6F722E';
wwv_flow_imp.g_varchar2_table(310) := '7368696E73656C40636F6D70616E792E636F6D272C746F5F646174652827323030352D30382D31375430353A31373A31325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C275327293B0D0A696E73';
wwv_flow_imp.g_varchar2_table(311) := '65727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952';
wwv_flow_imp.g_varchar2_table(312) := '545F53495A4522292076616C756573202837352C275479272C27466C6F75726E6179272C2774792E666C6F75726E617940636F6D70616E792E636F6D272C746F5F646174652827313933382D31322D30355431363A31353A30375A272C27595959592D4D';
wwv_flow_imp.g_varchar2_table(313) := '4D2D4444225422484832343A4D493A5353225A2227292C27272C363439332E39362C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C';
wwv_flow_imp.g_varchar2_table(314) := '22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202832312C27436C6576656C616E64272C2747617373657274272C27636C6576656C616E642E676173';
wwv_flow_imp.g_varchar2_table(315) := '7365727440636F6D70616E792E636F6D272C746F5F646174652827313932392D30392D30335430303A31393A33325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C2727293B0D0A696E7365727420';
wwv_flow_imp.g_varchar2_table(316) := '696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F5349';
wwv_flow_imp.g_varchar2_table(317) := '5A4522292076616C756573202834382C275279616E272C274D6F6E746F7269272C277279616E2E6D6F6E746F726940636F6D70616E792E636F6D272C746F5F646174652827313936352D30392D32395430393A30333A35385A272C27595959592D4D4D2D';
wwv_flow_imp.g_varchar2_table(318) := '4444225422484832343A4D493A5353225A2227292C274E6F64654A53272C373636332E31352C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D';
wwv_flow_imp.g_varchar2_table(319) := '45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133302C27446172636965272C2748616D6D272C276461726369652E68616D6D40636F6D';
wwv_flow_imp.g_varchar2_table(320) := '70616E792E636F6D272C746F5F646174652827313934342D30322D31325431373A35323A30365A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F59';
wwv_flow_imp.g_varchar2_table(321) := '4545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320';
wwv_flow_imp.g_varchar2_table(322) := '283130332C274A6F7368272C2756616E6465727374656C74272C276A6F73682E76616E6465727374656C7440636F6D70616E792E636F6D272C746F5F646174652827313933342D30312D30385430353A35363A33345A272C27595959592D4D4D2D444422';
wwv_flow_imp.g_varchar2_table(323) := '5422484832343A4D493A5353225A2227292C274E6F64654A53272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C';
wwv_flow_imp.g_varchar2_table(324) := '222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202837362C274B69726279272C27486F6E65796D616E272C276B697262792E686F6E65796D616E40636F6D70616E79';
wwv_flow_imp.g_varchar2_table(325) := '2E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E41';
wwv_flow_imp.g_varchar2_table(326) := '4D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202832322C27416E6E656C69657365272C274E616D64617227';
wwv_flow_imp.g_varchar2_table(327) := '2C27616E6E656C696573652E6E616D64617240636F6D70616E792E636F6D272C746F5F646174652827313937332D31312D30395432303A35383A35385A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27504C53514C27';
wwv_flow_imp.g_varchar2_table(328) := '2C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C225341';
wwv_flow_imp.g_varchar2_table(329) := '4C415259222C2253484952545F53495A4522292076616C756573202834392C274275666679272C274D656C656E272C2762756666792E6D656C656E40636F6D70616E792E636F6D272C746F5F646174652827313934322D30392D31355432323A34313A35';
wwv_flow_imp.g_varchar2_table(330) := '395A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A617661536372697074272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45';
wwv_flow_imp.g_varchar2_table(331) := '222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133312C27547972656C6C272C275A75656C6B65272C277479';
wwv_flow_imp.g_varchar2_table(332) := '72656C6C2E7A75656C6B6540636F6D70616E792E636F6D272C746F5F646174652827323030342D30322D30325430383A32363A30345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274D27293B0D0A696E73';
wwv_flow_imp.g_varchar2_table(333) := '65727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952';
wwv_flow_imp.g_varchar2_table(334) := '545F53495A4522292076616C75657320283130342C27436861647769636B272C2748656E736368656964272C27636861647769636B2E68656E73636865696440636F6D70616E792E636F6D272C746F5F646174652827313932352D30362D31395430303A';
wwv_flow_imp.g_varchar2_table(335) := '30363A33305A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C363632392E37392C274D27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C224649525354';
wwv_flow_imp.g_varchar2_table(336) := '5F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202837372C27546F6D6D79272C2753746F6F72272C27';
wwv_flow_imp.g_varchar2_table(337) := '746F6D6D792E73746F6F7240636F6D70616E792E636F6D272C746F5F646174652827313933352D30312D32395431343A33303A34305A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C2C274D2729';
wwv_flow_imp.g_varchar2_table(338) := '3B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C41525922';
wwv_flow_imp.g_varchar2_table(339) := '2C2253484952545F53495A4522292076616C756573202832332C27436F6C6279272C2753616E6167757374696E272C27636F6C62792E73616E6167757374696E40636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444';
wwv_flow_imp.g_varchar2_table(340) := '225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C22424952';
wwv_flow_imp.g_varchar2_table(341) := '5448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835302C274564797468272C275370696E646C65272C2765647974682E7370696E646C6540636F6D70616E792E636F6D272C746F';
wwv_flow_imp.g_varchar2_table(342) := '5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153';
wwv_flow_imp.g_varchar2_table(343) := '545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133322C27477261636961272C27536F6C646176696E69272C276772616369';
wwv_flow_imp.g_varchar2_table(344) := '612E736F6C646176696E6940636F6D70616E792E636F6D272C746F5F646174652827313935382D30382D32395431343A32373A31325A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27435353272C2C2727293B0D0A69';
wwv_flow_imp.g_varchar2_table(345) := '6E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C225348';
wwv_flow_imp.g_varchar2_table(346) := '4952545F53495A4522292076616C75657320283130352C274265636B79272C2746616C7365747469272C276265636B792E66616C736574746940636F6D70616E792E636F6D272C746F5F646174652827272C27595959592D4D4D2D444422542248483234';
wwv_flow_imp.g_varchar2_table(347) := '3A4D493A5353225A2227292C274A617661536372697074272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C22';
wwv_flow_imp.g_varchar2_table(348) := '4249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202837382C2743616C6C6965272C27416E74726F6E696361272C2763616C6C69652E616E74726F6E69636140636F6D70616E';
wwv_flow_imp.g_varchar2_table(349) := '792E636F6D272C746F5F646174652827272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C2C2727293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246';
wwv_flow_imp.g_varchar2_table(350) := '495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202832342C2744616E696C6C65272C275665';
wwv_flow_imp.g_varchar2_table(351) := '726265636B272C2764616E696C6C652E7665726265636B40636F6D70616E792E636F6D272C746F5F646174652827313937332D30382D31355430323A30353A31355A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2727';
wwv_flow_imp.g_varchar2_table(352) := '2C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253';
wwv_flow_imp.g_varchar2_table(353) := '414C415259222C2253484952545F53495A4522292076616C756573202835312C274A616E696E65272C27507275646F6D272C276A616E696E652E707275646F6D40636F6D70616E792E636F6D272C746F5F646174652827313932392D30332D3238543139';
wwv_flow_imp.g_varchar2_table(354) := '3A30393A31395A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C2C275327293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D';
wwv_flow_imp.g_varchar2_table(355) := '45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C75657320283133332C274564697468272C274D6F6E74627269616E6427';
wwv_flow_imp.g_varchar2_table(356) := '2C2765646974682E6D6F6E74627269616E6440636F6D70616E792E636F6D272C746F5F646174652827313935372D30352D30345431393A33353A31375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C274C27';
wwv_flow_imp.g_varchar2_table(357) := '293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259';
wwv_flow_imp.g_varchar2_table(358) := '222C2253484952545F53495A4522292076616C75657320283130362C27456672656E272C2757616C6C656E74696E65272C27656672656E2E77616C6C656E74696E6540636F6D70616E792E636F6D272C746F5F646174652827323031312D30362D323154';
wwv_flow_imp.g_varchar2_table(359) := '30383A35373A33375A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27416E67756C6172272C2C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F';
wwv_flow_imp.g_varchar2_table(360) := '4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202835322C2742756E6E79272C274F67696E736B69272C';
wwv_flow_imp.g_varchar2_table(361) := '2762756E6E792E6F67696E736B6940636F6D70616E792E636F6D272C746F5F646174652827313935322D31322D30365431383A33333A30315A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C27272C2C2727293B0D0A69';
wwv_flow_imp.g_varchar2_table(362) := '6E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C225348';
wwv_flow_imp.g_varchar2_table(363) := '4952545F53495A4522292076616C756573202837392C2742756C61272C274573706572616E7A61272C2762756C612E6573706572616E7A6140636F6D70616E792E636F6D272C746F5F646174652827313934302D30382D33305430313A34303A33355A27';
wwv_flow_imp.g_varchar2_table(364) := '2C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C274A5175657279272C323631362E30392C274C27293B0D0A696E7365727420696E746F2022454D504C4F594545535F54424C222028224944222C2246495253545F4E414D45';
wwv_flow_imp.g_varchar2_table(365) := '222C224C4153545F4E414D45222C22454D41494C222C224249525448444159222C22534B494C4C534554222C2253414C415259222C2253484952545F53495A4522292076616C756573202832352C2747756472756E272C27536E61746572272C27677564';
wwv_flow_imp.g_varchar2_table(366) := '72756E2E736E6174657240636F6D70616E792E636F6D272C746F5F646174652827313933372D30392D31305431383A33393A33345A272C27595959592D4D4D2D4444225422484832343A4D493A5353225A2227292C2748544D4C272C2C2727293B0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 4039220267188741,
    p_flow_id => 4500,
    p_name => '4039220267188741/demo',
    p_pathid => null,
    p_filename => 'demo',
    p_title => 'demo',
    p_mime_type => 'application/x-sql',
    p_dad_charset => 'UTF-8',
    p_created_by => 'GONZALEZFJU',
    p_created_on => to_date('202502201619','YYYYMMDDHH24MI'),
    p_updated_by => 'GONZALEZFJU',
    p_updated_on => to_date('202502201619','YYYYMMDDHH24MI'),
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
    p_id => 4043344467189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 41
    ,p_src_line_number => 21
    ,p_offset => 4817
    ,p_length => 214
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (2,''Goldie'',''Yuska'',''goldie.yuska@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043485973189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 42
    ,p_src_line_number => 21
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043502156189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 43
    ,p_src_line_number => 22
    ,p_offset => 5034
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (29,''Martine'',''Forbs'',''martine.forbs@company.com'',to_date(''1955-12-29T01:41:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043625241189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 44
    ,p_src_line_number => 22
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043796130189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 45
    ,p_src_line_number => 23
    ,p_offset => 5274
    ,p_length => 250
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (138,''Eileen'',''Millott'',''eileen.millott@company.com'',to_date(''1979-12-19T04:16:28Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',7902.13,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043895722189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 46
    ,p_src_line_number => 23
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043927846189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 47
    ,p_src_line_number => 24
    ,p_offset => 5527
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (111,''Wynona'',''Tenda'',''wynona.tenda@company.com'',to_date(''1965-12-03T12:48:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044061907189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 48
    ,p_src_line_number => 24
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044171892189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 49
    ,p_src_line_number => 25
    ,p_offset => 5776
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (57,''Darleen'',''Casten'',''darleen.casten@company.com'',to_date(''1965-09-20T22:29:54Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6546.79,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044211937189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 50
    ,p_src_line_number => 25
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044390201189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 51
    ,p_src_line_number => 26
    ,p_offset => 6025
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (84,''Anton'',''Mew'',''anton.mew@company.com'',to_date(''2003-07-27T03:59:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044471786189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 52
    ,p_src_line_number => 26
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044594238189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 53
    ,p_src_line_number => 27
    ,p_offset => 6262
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (3,''Gracia'',''Tsai'',''gracia.tsai@company.com'',to_date(''1968-08-15T11:53:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044649166189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 54
    ,p_src_line_number => 27
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044724327189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 55
    ,p_src_line_number => 28
    ,p_offset => 6497
    ,p_length => 244
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (30,''Basil'',''Oursler'',''basil.oursler@company.com'',to_date(''1963-05-31T18:04:39Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6914.56,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044879466189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 56
    ,p_src_line_number => 28
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4044905185189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 57
    ,p_src_line_number => 29
    ,p_offset => 6744
    ,p_length => 228
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (139,''Annice'',''Mccrossen'',''annice.mccrossen@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045072355189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 58
    ,p_src_line_number => 29
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045121412189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 59
    ,p_src_line_number => 30
    ,p_offset => 6975
    ,p_length => 257
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (112,''Tiffaney'',''Bozovich'',''tiffaney.bozovich@company.com'',to_date(''1978-10-06T03:26:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Java'',1707.68,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045261517189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 60
    ,p_src_line_number => 30
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045352954189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 61
    ,p_src_line_number => 31
    ,p_offset => 7235
    ,p_length => 238
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (58,''Daniel'',''Strong'',''daniel.strong@company.com'',to_date(''1962-11-26T15:24:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045451646189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 62
    ,p_src_line_number => 31
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045563689189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 63
    ,p_src_line_number => 32
    ,p_offset => 7476
    ,p_length => 241
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (85,''Delaine'',''Untalan'',''delaine.untalan@company.com'',to_date(''1959-03-13T16:55:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045673093189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 64
    ,p_src_line_number => 32
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045756492189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 65
    ,p_src_line_number => 33
    ,p_offset => 7720
    ,p_length => 256
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (4,''Sabrina'',''Stojanovic'',''sabrina.stojanovic@company.com'',to_date(''1941-03-26T17:30:53Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',6125.44,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045825047189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 66
    ,p_src_line_number => 33
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4045974662189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 67
    ,p_src_line_number => 34
    ,p_offset => 7979
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (31,''Floy'',''Craver'',''floy.craver@company.com'',to_date(''1946-02-22T13:56:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046069409189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 68
    ,p_src_line_number => 34
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046174493189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 69
    ,p_src_line_number => 35
    ,p_offset => 8216
    ,p_length => 249
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (140,''Jolie'',''Micalizzi'',''jolie.micalizzi@company.com'',to_date(''1999-01-07T00:34:22Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046299690189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 70
    ,p_src_line_number => 35
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046307331189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 71
    ,p_src_line_number => 36
    ,p_offset => 8468
    ,p_length => 252
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (113,''Antonetta'',''Pinsky'',''antonetta.pinsky@company.com'',to_date(''2007-04-09T16:12:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',4387.59,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046490283189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 72
    ,p_src_line_number => 36
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046594375189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 73
    ,p_src_line_number => 37
    ,p_offset => 8723
    ,p_length => 241
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (59,''Bella'',''Osterfeld'',''bella.osterfeld@company.com'',to_date(''2023-12-16T17:52:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046673377189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 74
    ,p_src_line_number => 37
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046715724189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 75
    ,p_src_line_number => 38
    ,p_offset => 8967
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (86,''Elaina'',''Hagglund'',''elaina.hagglund@company.com'',to_date(''1970-06-08T02:19:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046855144189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 76
    ,p_src_line_number => 38
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4046982192189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 77
    ,p_src_line_number => 39
    ,p_offset => 9217
    ,p_length => 216
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (5,''Antonio'',''Koper'',''antonio.koper@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047090419189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 78
    ,p_src_line_number => 39
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047164698189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 79
    ,p_src_line_number => 40
    ,p_offset => 9436
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (32,''Hollis'',''Jondahl'',''hollis.jondahl@company.com'',to_date(''1962-01-07T04:12:50Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047228455189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 80
    ,p_src_line_number => 40
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047328657189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 81
    ,p_src_line_number => 41
    ,p_offset => 9685
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (141,''Judson'',''Kantz'',''judson.kantz@company.com'',to_date(''1974-04-12T17:48:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047491703189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 82
    ,p_src_line_number => 41
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047573170189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 83
    ,p_src_line_number => 42
    ,p_offset => 9935
    ,p_length => 238
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (114,''Tomasa'',''Orouke'',''tomasa.orouke@company.com'',to_date(''1983-09-29T07:50:53Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047694791189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 84
    ,p_src_line_number => 42
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047781663189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 85
    ,p_src_line_number => 43
    ,p_offset => 10176
    ,p_length => 244
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (87,''Clorinda'',''Matalka'',''clorinda.matalka@company.com'',to_date(''1937-01-10T23:24:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047801528189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 86
    ,p_src_line_number => 43
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4047999808189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 87
    ,p_src_line_number => 44
    ,p_offset => 10423
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (60,''Greta'',''Svatek'',''greta.svatek@company.com'',to_date(''1948-02-22T01:20:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',7059.56,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048085455189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 88
    ,p_src_line_number => 44
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048139038189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 89
    ,p_src_line_number => 45
    ,p_offset => 10673
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (6,''Dario'',''Housman'',''dario.housman@company.com'',to_date(''2002-05-26T20:05:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048226330189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 90
    ,p_src_line_number => 45
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048327165189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 91
    ,p_src_line_number => 46
    ,p_offset => 10912
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (33,''Letty'',''Riccardo'',''letty.riccardo@company.com'',to_date(''2000-01-31T17:13:41Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048420097189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 92
    ,p_src_line_number => 46
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048535922189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 93
    ,p_src_line_number => 47
    ,p_offset => 11161
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (142,''Pamala'',''Mcdewitt'',''pamala.mcdewitt@company.com'',to_date(''1950-08-08T06:08:36Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048613904189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 94
    ,p_src_line_number => 47
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048794789189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 95
    ,p_src_line_number => 48
    ,p_offset => 11410
    ,p_length => 255
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (115,''Dannielle'',''Conforto'',''dannielle.conforto@company.com'',to_date(''1986-03-18T17:37:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048828627189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 96
    ,p_src_line_number => 48
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4048997883189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 97
    ,p_src_line_number => 49
    ,p_offset => 11668
    ,p_length => 248
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (88,''Edris'',''Lifford'',''edris.lifford@company.com'',to_date(''1973-02-02T06:17:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049016840189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 98
    ,p_src_line_number => 49
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049174165189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 99
    ,p_src_line_number => 50
    ,p_offset => 11919
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (61,''Terresa'',''Hanhardt'',''terresa.hanhardt@company.com'',to_date(''2001-02-28T22:07:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049290128189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 100
    ,p_src_line_number => 50
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049361127189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 101
    ,p_src_line_number => 51
    ,p_offset => 12169
    ,p_length => 240
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (7,''Kevin'',''Sawlivich'',''kevin.sawlivich@company.com'',to_date(''2004-01-03T23:34:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049462699189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 102
    ,p_src_line_number => 51
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049525746189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 103
    ,p_src_line_number => 52
    ,p_offset => 12412
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (34,''Ruthe'',''Nishioka'',''ruthe.nishioka@company.com'',to_date(''1959-11-22T06:54:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049642989189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 104
    ,p_src_line_number => 52
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049729673189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 105
    ,p_src_line_number => 53
    ,p_offset => 12661
    ,p_length => 257
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (143,''Ruthanne'',''Burgoyne'',''ruthanne.burgoyne@company.com'',to_date(''1979-07-13T01:36:01Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049874696189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 106
    ,p_src_line_number => 53
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4049939335189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 107
    ,p_src_line_number => 54
    ,p_offset => 12921
    ,p_length => 261
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (116,''Russel'',''Heinzelman'',''russel.heinzelman@company.com'',to_date(''1996-05-14T09:37:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',3074.53,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050072998189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 108
    ,p_src_line_number => 54
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050161960189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 109
    ,p_src_line_number => 55
    ,p_offset => 13185
    ,p_length => 230
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (89,''Gwen'',''Cake'',''gwen.cake@company.com'',to_date(''1942-07-30T01:10:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050232487189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 110
    ,p_src_line_number => 55
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050375449189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 111
    ,p_src_line_number => 56
    ,p_offset => 13418
    ,p_length => 254
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (62,''Pablo'',''Caveney'',''pablo.caveney@company.com'',to_date(''1975-12-19T20:24:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',1533.99,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050487374189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 112
    ,p_src_line_number => 56
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050557904189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 113
    ,p_src_line_number => 57
    ,p_offset => 13675
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (8,''Camila'',''Hillwig'',''camila.hillwig@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050686749189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 114
    ,p_src_line_number => 57
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050711000189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 115
    ,p_src_line_number => 58
    ,p_offset => 13907
    ,p_length => 242
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (35,''Daphine'',''Elfrink'',''daphine.elfrink@company.com'',to_date(''1954-08-27T03:54:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050830838189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 116
    ,p_src_line_number => 58
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4050933939189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 117
    ,p_src_line_number => 59
    ,p_offset => 14152
    ,p_length => 218
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (144,''Libbie'',''Risher'',''libbie.risher@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051070099189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 118
    ,p_src_line_number => 59
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051108787189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 119
    ,p_src_line_number => 60
    ,p_offset => 14373
    ,p_length => 241
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (117,''Eddie'',''Dietrick'',''eddie.dietrick@company.com'',to_date(''1937-07-23T21:19:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055665371189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 164
    ,p_src_line_number => 82
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055392208189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 161
    ,p_src_line_number => 81
    ,p_offset => 19448
    ,p_length => 220
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (12,''Darla'',''Jungling'',''darla.jungling@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055484321189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 162
    ,p_src_line_number => 81
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055553928189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 163
    ,p_src_line_number => 82
    ,p_offset => 19671
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (39,''Fran'',''Sibbald'',''fran.sibbald@company.com'',to_date(''1945-11-03T01:58:31Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055772284189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 165
    ,p_src_line_number => 83
    ,p_offset => 19909
    ,p_length => 243
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (148,''Marshall'',''Lowery'',''marshall.lowery@company.com'',to_date(''1951-09-05T14:26:44Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055830693189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 166
    ,p_src_line_number => 83
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055946984189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 167
    ,p_src_line_number => 84
    ,p_offset => 20155
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (121,''Gilberto'',''Weibel'',''gilberto.weibel@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056098977189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 168
    ,p_src_line_number => 84
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056117286189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 169
    ,p_src_line_number => 85
    ,p_offset => 20391
    ,p_length => 241
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (94,''Edelmira'',''Widman'',''edelmira.widman@company.com'',to_date(''2015-10-27T05:09:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056290389189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 170
    ,p_src_line_number => 85
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056361662189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 171
    ,p_src_line_number => 86
    ,p_offset => 20635
    ,p_length => 240
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (67,''Annetta'',''Juback'',''annetta.juback@company.com'',to_date(''1954-02-03T03:20:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056451866189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 172
    ,p_src_line_number => 86
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056594143189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 173
    ,p_src_line_number => 87
    ,p_offset => 20878
    ,p_length => 242
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (13,''Marya'',''Raso'',''marya.raso@company.com'',to_date(''1979-08-17T13:58:14Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056657338189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 174
    ,p_src_line_number => 87
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056707504189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 175
    ,p_src_line_number => 88
    ,p_offset => 21123
    ,p_length => 252
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (40,''Veronica'',''Aubrecht'',''veronica.aubrecht@company.com'',to_date(''1926-07-02T23:39:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056866470189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 176
    ,p_src_line_number => 88
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4056962034189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 177
    ,p_src_line_number => 89
    ,p_offset => 21378
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (122,''Porsche'',''Shippee'',''porsche.shippee@company.com'',to_date(''1992-06-11T22:55:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057087116189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 178
    ,p_src_line_number => 89
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057198757189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 179
    ,p_src_line_number => 90
    ,p_offset => 21627
    ,p_length => 216
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (95,''Buck'',''Campion'',''buck.campion@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057219952189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 180
    ,p_src_line_number => 90
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057309330189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 181
    ,p_src_line_number => 91
    ,p_offset => 21846
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (68,''Jannette'',''Babino'',''jannette.babino@company.com'',to_date(''2000-09-15T12:25:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057481769189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 182
    ,p_src_line_number => 91
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057542650189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 183
    ,p_src_line_number => 92
    ,p_offset => 22095
    ,p_length => 254
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (149,''Antonia'',''Mclachlan'',''antonia.mclachlan@company.com'',to_date(''1960-10-17T21:20:49Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2135.92,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057657244189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 184
    ,p_src_line_number => 92
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057703819189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 185
    ,p_src_line_number => 93
    ,p_offset => 22352
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (14,''Griselda'',''Kurohara'',''griselda.kurohara@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057823458189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 186
    ,p_src_line_number => 93
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4057992971189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 187
    ,p_src_line_number => 94
    ,p_offset => 22584
    ,p_length => 253
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (41,''Therese'',''Zaeske'',''therese.zaeske@company.com'',to_date(''1927-01-09T01:19:55Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',7896.68,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058013753189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 188
    ,p_src_line_number => 94
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058139083189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 189
    ,p_src_line_number => 95
    ,p_offset => 22840
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (123,''Rufus'',''Morais'',''rufus.morais@company.com'',to_date(''1947-09-22T03:26:25Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',1404.72,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058220451189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 190
    ,p_src_line_number => 95
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058323637189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 191
    ,p_src_line_number => 96
    ,p_offset => 23090
    ,p_length => 248
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (96,''Daniell'',''Grumney'',''daniell.grumney@company.com'',to_date(''2015-04-07T19:33:19Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058452894189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 192
    ,p_src_line_number => 96
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058559021189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 193
    ,p_src_line_number => 97
    ,p_offset => 23341
    ,p_length => 218
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (69,''Vernita'',''Kulik'',''vernita.kulik@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058685215189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 194
    ,p_src_line_number => 97
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058755460189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 195
    ,p_src_line_number => 98
    ,p_offset => 23562
    ,p_length => 239
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (150,''Pam'',''Dominis'',''pam.dominis@company.com'',to_date(''1984-02-21T23:28:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058870932189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 196
    ,p_src_line_number => 98
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4058934707189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 197
    ,p_src_line_number => 99
    ,p_offset => 23804
    ,p_length => 242
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (15,''Gladys'',''Laughery'',''gladys.laughery@company.com'',to_date(''1996-01-18T12:47:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059014392189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 198
    ,p_src_line_number => 99
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059162871189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 199
    ,p_src_line_number => 100
    ,p_offset => 24049
    ,p_length => 243
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (42,''Letha'',''Kosir'',''letha.kosir@company.com'',to_date(''1982-03-01T11:16:29Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059200721189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 200
    ,p_src_line_number => 100
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051597046189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 123
    ,p_src_line_number => 62
    ,p_offset => 14858
    ,p_length => 219
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (63,''Danita'',''Heumann'',''danita.heumann@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051222092189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 120
    ,p_src_line_number => 60
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051352641189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 121
    ,p_src_line_number => 61
    ,p_offset => 14617
    ,p_length => 238
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (90,''Julian'',''Rudack'',''julian.rudack@company.com'',to_date(''1968-12-22T09:46:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051496738189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 122
    ,p_src_line_number => 61
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051688589189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 124
    ,p_src_line_number => 62
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051747725189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 125
    ,p_src_line_number => 63
    ,p_offset => 15080
    ,p_length => 224
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (9,''Edie'',''Tavernier'',''edie.tavernier@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051813202189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 126
    ,p_src_line_number => 63
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4051962890189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 127
    ,p_src_line_number => 64
    ,p_offset => 15307
    ,p_length => 250
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (36,''Lezlie'',''Rosenthall'',''lezlie.rosenthall@company.com'',to_date(''1946-12-01T18:15:46Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052018421189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 128
    ,p_src_line_number => 64
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052180074189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 129
    ,p_src_line_number => 65
    ,p_offset => 15560
    ,p_length => 251
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (145,''Bebe'',''Broadwell'',''bebe.broadwell@company.com'',to_date(''1977-07-20T04:08:42Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',6341.4,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052203997189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 130
    ,p_src_line_number => 65
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052396172189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 131
    ,p_src_line_number => 66
    ,p_offset => 15814
    ,p_length => 245
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (118,''Danyel'',''Gatling'',''danyel.gatling@company.com'',to_date(''1977-02-17T06:44:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052403715189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 132
    ,p_src_line_number => 66
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052580545189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 133
    ,p_src_line_number => 67
    ,p_offset => 16062
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (91,''Belva'',''Old'',''belva.old@company.com'',to_date(''1964-07-29T06:06:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052610125189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 134
    ,p_src_line_number => 67
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052774262189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 135
    ,p_src_line_number => 68
    ,p_offset => 16299
    ,p_length => 251
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (64,''Celia'',''Scothorn'',''celia.scothorn@company.com'',to_date(''2004-11-16T20:02:03Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',4245.17,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052868071189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 136
    ,p_src_line_number => 68
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4052925391189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 137
    ,p_src_line_number => 69
    ,p_offset => 16553
    ,p_length => 241
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (10,''Ginger'',''Zorman'',''ginger.zorman@company.com'',to_date(''1935-09-19T14:46:00Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053029477189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 138
    ,p_src_line_number => 69
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053165127189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 139
    ,p_src_line_number => 70
    ,p_offset => 16797
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (37,''Dara'',''Bonneau'',''dara.bonneau@company.com'',to_date(''1974-09-23T06:44:42Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053284286189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 140
    ,p_src_line_number => 70
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053381330189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 141
    ,p_src_line_number => 71
    ,p_offset => 17036
    ,p_length => 248
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (146,''Darci'',''Glassner'',''darci.glassner@company.com'',to_date(''1975-09-04T09:10:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',1395.91,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053466394189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 142
    ,p_src_line_number => 71
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053573155189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 143
    ,p_src_line_number => 72
    ,p_offset => 17287
    ,p_length => 245
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (119,''Jonathon'',''Botner'',''jonathon.botner@company.com'',to_date(''2021-07-26T17:43:20Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053673688189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 144
    ,p_src_line_number => 72
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053744391189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 145
    ,p_src_line_number => 73
    ,p_offset => 17535
    ,p_length => 245
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (92,''Benedict'',''Lavery'',''benedict.lavery@company.com'',to_date(''2001-07-31T05:06:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053864332189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 146
    ,p_src_line_number => 73
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4053916153189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 147
    ,p_src_line_number => 74
    ,p_offset => 17783
    ,p_length => 244
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (65,''Daren'',''Bravard'',''daren.bravard@company.com'',to_date(''1958-06-09T18:31:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054015710189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 148
    ,p_src_line_number => 74
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054128532189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 149
    ,p_src_line_number => 75
    ,p_offset => 18030
    ,p_length => 250
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (11,''Sabine'',''Bonaguidi'',''sabine.bonaguidi@company.com'',to_date(''2002-10-14T11:32:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6851.3,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054233073189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 150
    ,p_src_line_number => 75
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054338540189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 151
    ,p_src_line_number => 76
    ,p_offset => 18283
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (38,''Darnell'',''Rainbow'',''darnell.rainbow@company.com'',to_date(''1958-11-27T03:00:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054473682189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 152
    ,p_src_line_number => 76
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054541133189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 153
    ,p_src_line_number => 77
    ,p_offset => 18532
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (147,''Beau'',''Deerman'',''beau.deerman@company.com'',to_date(''2023-03-28T00:09:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054661768189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 154
    ,p_src_line_number => 77
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054769897189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 155
    ,p_src_line_number => 78
    ,p_offset => 18772
    ,p_length => 221
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (120,''Daria'',''Heare'',''daria.heare@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054804069189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 156
    ,p_src_line_number => 78
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4054926582189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 157
    ,p_src_line_number => 79
    ,p_offset => 18996
    ,p_length => 226
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (93,''Darren'',''Settler'',''darren.settler@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055031808189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 158
    ,p_src_line_number => 79
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055105163189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 159
    ,p_src_line_number => 80
    ,p_offset => 19225
    ,p_length => 220
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (66,''Annmarie'',''Esmay'',''annmarie.esmay@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4055281074189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 160
    ,p_src_line_number => 80
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4039685945189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 4
    ,p_src_line_number => 2
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4039328358189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 248
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (107,''Clinton'',''Bjerke'',''clinton.bjerke@company.com'',to_date(''1975-09-11T19:33:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6295.12,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4039483128189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 2
    ,p_src_line_number => 1
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4039560564189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 3
    ,p_src_line_number => 2
    ,p_offset => 252
    ,p_length => 220
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (53,''Brynn'',''Mckale'',''brynn.mckale@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4039765374189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 5
    ,p_src_line_number => 3
    ,p_offset => 475
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (80,''Rupert'',''Tardy'',''rupert.tardy@company.com'',to_date(''1959-10-16T09:13:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4039893004189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 6
    ,p_src_line_number => 3
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4039927808189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 7
    ,p_src_line_number => 4
    ,p_offset => 714
    ,p_length => 245
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (26,''Edna'',''Fowlston'',''edna.fowlston@company.com'',to_date(''2002-11-24T11:58:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6063.86,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040099596189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 8
    ,p_src_line_number => 4
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040100540189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 9
    ,p_src_line_number => 5
    ,p_offset => 962
    ,p_length => 249
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (135,''Gussie'',''Khilling'',''gussie.khilling@company.com'',to_date(''2013-11-11T04:55:52Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2290.99,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040225670189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 10
    ,p_src_line_number => 5
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040376089189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 11
    ,p_src_line_number => 6
    ,p_offset => 1214
    ,p_length => 248
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (108,''Jonnie'',''Spellane'',''jonnie.spellane@company.com'',to_date(''1952-09-18T02:27:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040496209189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 12
    ,p_src_line_number => 6
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040506879189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 13
    ,p_src_line_number => 7
    ,p_offset => 1465
    ,p_length => 244
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (54,''Gladis'',''Trevey'',''gladis.trevey@company.com'',to_date(''1981-01-20T21:46:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',1851.08,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040645562189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 14
    ,p_src_line_number => 7
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040738632189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 15
    ,p_src_line_number => 8
    ,p_offset => 1712
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (81,''Horace'',''Kaminer'',''horace.kaminer@company.com'',to_date(''1997-05-30T07:56:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040882894189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 16
    ,p_src_line_number => 8
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4040986976189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 17
    ,p_src_line_number => 9
    ,p_offset => 1961
    ,p_length => 239
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (0,''Pam'',''Dominis'',''pam.dominis@company.com'',to_date(''2010-03-09T22:06:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2377.33,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041020841189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 18
    ,p_src_line_number => 9
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041100137189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 19
    ,p_src_line_number => 10
    ,p_offset => 2203
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (27,''Josefa'',''Shilt'',''josefa.shilt@company.com'',to_date(''1997-11-29T04:31:54Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041252881189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 20
    ,p_src_line_number => 10
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041359845189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 21
    ,p_src_line_number => 11
    ,p_offset => 2442
    ,p_length => 240
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (136,''Belen'',''Ogden'',''belen.ogden@company.com'',to_date(''2019-04-05T19:05:21Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041473298189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 22
    ,p_src_line_number => 11
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041575527189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 23
    ,p_src_line_number => 12
    ,p_offset => 2685
    ,p_length => 240
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (109,''Belinda'',''Barger'',''belinda.barger@company.com'',to_date(''2011-11-12T12:33:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041664403189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 24
    ,p_src_line_number => 12
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041737290189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 25
    ,p_src_line_number => 13
    ,p_offset => 2928
    ,p_length => 230
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (55,''Ping'',''Ivel'',''ping.ivel@company.com'',to_date(''1976-06-15T19:45:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041814726189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 26
    ,p_src_line_number => 13
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4041967272189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 27
    ,p_src_line_number => 14
    ,p_offset => 3161
    ,p_length => 227
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (82,''Theodora'',''Beavin'',''theodora.beavin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042017959189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 28
    ,p_src_line_number => 14
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042114869189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 29
    ,p_src_line_number => 15
    ,p_offset => 3391
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (1,''Hong'',''Charter'',''hong.charter@company.com'',to_date(''1950-03-08T09:37:44Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042288598189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 30
    ,p_src_line_number => 15
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042362433189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 31
    ,p_src_line_number => 16
    ,p_offset => 3629
    ,p_length => 224
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (28,''Gisele'',''Limthong'',''gisele.limthong@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042475930189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 32
    ,p_src_line_number => 16
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042578657189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 33
    ,p_src_line_number => 17
    ,p_offset => 3856
    ,p_length => 242
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (137,''Beatris'',''Iraheta'',''beatris.iraheta@company.com'',to_date(''1971-03-03T17:36:33Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042641256189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 34
    ,p_src_line_number => 17
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042785166189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 35
    ,p_src_line_number => 18
    ,p_offset => 4101
    ,p_length => 242
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (110,''Delia'',''Nortesano'',''delia.nortesano@company.com'',to_date(''1960-07-24T23:15:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042866192189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 36
    ,p_src_line_number => 18
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4042992923189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 37
    ,p_src_line_number => 19
    ,p_offset => 4346
    ,p_length => 245
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (56,''Toccara'',''Konwinski'',''toccara.konwinski@company.com'',to_date(''1965-03-20T18:36:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043094607189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 38
    ,p_src_line_number => 19
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043194127189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 39
    ,p_src_line_number => 20
    ,p_offset => 4594
    ,p_length => 220
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (83,''Beata'',''Ladieu'',''beata.ladieu@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4043217415189157
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 40
    ,p_src_line_number => 20
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059643703189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 204
    ,p_src_line_number => 102
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059322050189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 201
    ,p_src_line_number => 101
    ,p_offset => 24295
    ,p_length => 238
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (124,''Dann'',''Widerski'',''dann.widerski@company.com'',to_date(''1935-05-17T22:01:21Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059483165189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 202
    ,p_src_line_number => 101
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059542562189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 203
    ,p_src_line_number => 102
    ,p_offset => 24536
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (97,''Marvella'',''Salemi'',''marvella.salemi@company.com'',to_date(''1948-10-29T05:27:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Java'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059796474189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 205
    ,p_src_line_number => 103
    ,p_offset => 24785
    ,p_length => 244
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (70,''Basil'',''Hanagan'',''basil.hanagan@company.com'',to_date(''1945-03-12T05:07:39Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059806918189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 206
    ,p_src_line_number => 103
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4059961991189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 207
    ,p_src_line_number => 104
    ,p_offset => 25032
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (16,''Francesco'',''Elland'',''francesco.elland@company.com'',to_date(''1985-08-11T11:14:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060071257189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 208
    ,p_src_line_number => 104
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060158881189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 209
    ,p_src_line_number => 105
    ,p_offset => 25282
    ,p_length => 254
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (43,''Gregoria'',''Ramotar'',''gregoria.ramotar@company.com'',to_date(''1953-05-17T00:15:49Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',5562.88,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060205984189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 210
    ,p_src_line_number => 105
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060347505189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 211
    ,p_src_line_number => 106
    ,p_offset => 25539
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (125,''Danika'',''Kerans'',''danika.kerans@company.com'',to_date(''2000-11-30T19:00:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',7768.29,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060451294189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 212
    ,p_src_line_number => 106
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060573863189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 213
    ,p_src_line_number => 107
    ,p_offset => 25788
    ,p_length => 249
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (98,''Camellia'',''Archuletta'',''camellia.archuletta@company.com'',to_date(''1986-07-21T03:05:33Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060611940189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 214
    ,p_src_line_number => 107
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060729948189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 215
    ,p_src_line_number => 108
    ,p_offset => 26040
    ,p_length => 255
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (71,''Jarred'',''Israelsen'',''jarred.israelsen@company.com'',to_date(''1929-06-07T02:59:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',4379.78,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060863072189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 216
    ,p_src_line_number => 108
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4060951958189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 217
    ,p_src_line_number => 109
    ,p_offset => 26298
    ,p_length => 249
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (17,''Florida'',''Gilliand'',''florida.gilliand@company.com'',to_date(''2000-10-20T20:30:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061027466189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 218
    ,p_src_line_number => 109
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061172695189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 219
    ,p_src_line_number => 110
    ,p_offset => 26550
    ,p_length => 243
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (44,''Delbert'',''Khatak'',''delbert.khatak@company.com'',to_date(''2024-10-28T05:27:30Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061208232189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 220
    ,p_src_line_number => 110
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061352408189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 221
    ,p_src_line_number => 111
    ,p_offset => 26796
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (126,''Yvonne'',''Appleman'',''yvonne.appleman@company.com'',to_date(''1960-06-08T09:00:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061426665189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 222
    ,p_src_line_number => 111
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061564237189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 223
    ,p_src_line_number => 112
    ,p_offset => 27046
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (99,''Timika'',''Wombles'',''timika.wombles@company.com'',to_date(''1999-11-08T19:32:05Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061619436189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 224
    ,p_src_line_number => 112
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061766946189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 225
    ,p_src_line_number => 113
    ,p_offset => 27296
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (72,''Kisha'',''Leven'',''kisha.leven@company.com'',to_date(''1944-04-25T21:48:28Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061835330189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 226
    ,p_src_line_number => 113
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4061961636189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 227
    ,p_src_line_number => 114
    ,p_offset => 27536
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (18,''Granville'',''Mcmurrin'',''granville.mcmurrin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2674.1,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062005417189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 228
    ,p_src_line_number => 114
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062153506189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 229
    ,p_src_line_number => 115
    ,p_offset => 27773
    ,p_length => 241
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (45,''Rusty'',''Nesland'',''rusty.nesland@company.com'',to_date(''1943-10-31T20:37:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062248998189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 230
    ,p_src_line_number => 115
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062317449189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 231
    ,p_src_line_number => 116
    ,p_offset => 28017
    ,p_length => 244
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (127,''Antoine'',''Applonie'',''antoine.applonie@company.com'',to_date(''1941-07-30T06:54:37Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062478816189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 232
    ,p_src_line_number => 116
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062558392189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 233
    ,p_src_line_number => 117
    ,p_offset => 28264
    ,p_length => 258
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (100,''Daniele'',''Thorsten'',''daniele.thorsten@company.com'',to_date(''1971-08-14T14:53:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',4821.95,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062687324189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 234
    ,p_src_line_number => 117
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062797581189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 235
    ,p_src_line_number => 118
    ,p_offset => 28525
    ,p_length => 246
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (73,''Martin'',''Musulin'',''martin.musulin@company.com'',to_date(''2016-07-21T20:47:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2490.37,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062856254189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 236
    ,p_src_line_number => 118
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4062972159189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 237
    ,p_src_line_number => 119
    ,p_offset => 28774
    ,p_length => 253
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (19,''Bart'',''Detullio'',''bart.detullio@company.com'',to_date(''1949-07-21T18:54:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',6359.7,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063065144189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 238
    ,p_src_line_number => 119
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063435971189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 242
    ,p_src_line_number => 121
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063151431189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 239
    ,p_src_line_number => 120
    ,p_offset => 29030
    ,p_length => 219
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (46,''Darlene'',''Pisano'',''darlene.pisano@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063217695189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 240
    ,p_src_line_number => 120
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063317449189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 241
    ,p_src_line_number => 121
    ,p_offset => 29252
    ,p_length => 254
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (128,''Janyce'',''Daignault'',''janyce.daignault@company.com'',to_date(''2006-04-05T23:35:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063546361189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 243
    ,p_src_line_number => 122
    ,p_offset => 29509
    ,p_length => 252
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (101,''Graham'',''Chambers'',''graham.chambers@company.com'',to_date(''2019-11-18T06:06:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063666322189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 244
    ,p_src_line_number => 122
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063726671189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 245
    ,p_src_line_number => 123
    ,p_offset => 29764
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (74,''Janita'',''Eskaran'',''janita.eskaran@company.com'',to_date(''1988-11-25T16:53:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063815943189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 246
    ,p_src_line_number => 123
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4063907039189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 247
    ,p_src_line_number => 124
    ,p_offset => 30014
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (20,''Josh'',''Slomer'',''josh.slomer@company.com'',to_date(''1926-09-28T04:46:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064005635189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 248
    ,p_src_line_number => 124
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064154973189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 249
    ,p_src_line_number => 125
    ,p_offset => 30254
    ,p_length => 243
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (47,''Sylvester'',''Kister'',''sylvester.kister@company.com'',to_date(''1931-10-10T19:14:41Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064279494189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 250
    ,p_src_line_number => 125
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064337654189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 251
    ,p_src_line_number => 126
    ,p_offset => 30500
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (129,''Phylis'',''Andonian'',''phylis.andonian@company.com'',to_date(''1975-07-03T20:57:14Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064456995189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 252
    ,p_src_line_number => 126
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064512048189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 253
    ,p_src_line_number => 127
    ,p_offset => 30750
    ,p_length => 245
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (102,''Elanor'',''Shinsel'',''elanor.shinsel@company.com'',to_date(''2005-08-17T05:17:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064628577189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 254
    ,p_src_line_number => 127
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064722547189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 255
    ,p_src_line_number => 128
    ,p_offset => 30998
    ,p_length => 241
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (75,''Ty'',''Flournay'',''ty.flournay@company.com'',to_date(''1938-12-05T16:15:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6493.96,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064865128189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 256
    ,p_src_line_number => 128
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4064929083189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 257
    ,p_src_line_number => 129
    ,p_offset => 31242
    ,p_length => 249
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (21,''Cleveland'',''Gassert'',''cleveland.gassert@company.com'',to_date(''1929-09-03T00:19:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065006445189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 258
    ,p_src_line_number => 129
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065120311189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 259
    ,p_src_line_number => 130
    ,p_offset => 31494
    ,p_length => 248
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (48,''Ryan'',''Montori'',''ryan.montori@company.com'',to_date(''1965-09-29T09:03:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',7663.15,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065271108189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 260
    ,p_src_line_number => 130
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065376888189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 261
    ,p_src_line_number => 131
    ,p_offset => 31745
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (130,''Darcie'',''Hamm'',''darcie.hamm@company.com'',to_date(''1944-02-12T17:52:06Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065423124189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 262
    ,p_src_line_number => 131
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065530956189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 263
    ,p_src_line_number => 132
    ,p_offset => 31982
    ,p_length => 251
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (103,''Josh'',''Vanderstelt'',''josh.vanderstelt@company.com'',to_date(''1934-01-08T05:56:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065621971189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 264
    ,p_src_line_number => 132
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065717918189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 265
    ,p_src_line_number => 133
    ,p_offset => 32236
    ,p_length => 219
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (76,''Kirby'',''Honeyman'',''kirby.honeyman@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065835014189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 266
    ,p_src_line_number => 133
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4065999151189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 267
    ,p_src_line_number => 134
    ,p_offset => 32458
    ,p_length => 248
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (22,''Anneliese'',''Namdar'',''anneliese.namdar@company.com'',to_date(''1973-11-09T20:58:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066056529189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 268
    ,p_src_line_number => 134
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066120354189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 269
    ,p_src_line_number => 135
    ,p_offset => 32709
    ,p_length => 244
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (49,''Buffy'',''Melen'',''buffy.melen@company.com'',to_date(''1942-09-15T22:41:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066286056189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 270
    ,p_src_line_number => 135
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066318597189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 271
    ,p_src_line_number => 136
    ,p_offset => 32956
    ,p_length => 239
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (131,''Tyrell'',''Zuelke'',''tyrell.zuelke@company.com'',to_date(''2004-02-02T08:26:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066454742189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 272
    ,p_src_line_number => 136
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066562458189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 273
    ,p_src_line_number => 137
    ,p_offset => 33198
    ,p_length => 260
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (104,''Chadwick'',''Henscheid'',''chadwick.henscheid@company.com'',to_date(''1925-06-19T00:06:30Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',6629.79,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066699239189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 274
    ,p_src_line_number => 137
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066709980189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 275
    ,p_src_line_number => 138
    ,p_offset => 33461
    ,p_length => 240
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (77,''Tommy'',''Stoor'',''tommy.stoor@company.com'',to_date(''1935-01-29T14:30:40Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066892679189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 276
    ,p_src_line_number => 138
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4066969510189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 277
    ,p_src_line_number => 139
    ,p_offset => 33704
    ,p_length => 223
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (23,''Colby'',''Sanagustin'',''colby.sanagustin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067302109189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 281
    ,p_src_line_number => 141
    ,p_offset => 34150
    ,p_length => 247
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (132,''Gracia'',''Soldavini'',''gracia.soldavini@company.com'',to_date(''1958-08-29T14:27:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067016563189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 278
    ,p_src_line_number => 139
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067156560189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 279
    ,p_src_line_number => 140
    ,p_offset => 33930
    ,p_length => 217
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (50,''Edyth'',''Spindle'',''edyth.spindle@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067271126189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 280
    ,p_src_line_number => 140
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067411275189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 282
    ,p_src_line_number => 141
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067551710189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 283
    ,p_src_line_number => 142
    ,p_offset => 34400
    ,p_length => 230
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (105,''Becky'',''Falsetti'',''becky.falsetti@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067671985189158
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 284
    ,p_src_line_number => 142
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067782594189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 285
    ,p_src_line_number => 143
    ,p_offset => 34633
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (78,''Callie'',''Antronica'',''callie.antronica@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067870395189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 286
    ,p_src_line_number => 143
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4067969849189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 287
    ,p_src_line_number => 144
    ,p_offset => 34865
    ,p_length => 242
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (24,''Danille'',''Verbeck'',''danille.verbeck@company.com'',to_date(''1973-08-15T02:05:15Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068041497189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 288
    ,p_src_line_number => 144
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068126040189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 289
    ,p_src_line_number => 145
    ,p_offset => 35110
    ,p_length => 244
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (51,''Janine'',''Prudom'',''janine.prudom@company.com'',to_date(''1929-03-28T19:09:19Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068250835189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 290
    ,p_src_line_number => 145
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068361370189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 291
    ,p_src_line_number => 146
    ,p_offset => 35357
    ,p_length => 245
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (133,''Edith'',''Montbriand'',''edith.montbriand@company.com'',to_date(''1957-05-04T19:35:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068494357189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 292
    ,p_src_line_number => 146
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068586662189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 293
    ,p_src_line_number => 147
    ,p_offset => 35605
    ,p_length => 252
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (106,''Efren'',''Wallentine'',''efren.wallentine@company.com'',to_date(''2011-06-21T08:57:37Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068613857189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 294
    ,p_src_line_number => 147
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068751611189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 295
    ,p_src_line_number => 148
    ,p_offset => 35860
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (52,''Bunny'',''Oginski'',''bunny.oginski@company.com'',to_date(''1952-12-06T18:33:01Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068854093189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 296
    ,p_src_line_number => 148
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4068952282189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 297
    ,p_src_line_number => 149
    ,p_offset => 36100
    ,p_length => 253
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (79,''Bula'',''Esperanza'',''bula.esperanza@company.com'',to_date(''1940-08-30T01:40:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',2616.09,''L'')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4069078205189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 298
    ,p_src_line_number => 149
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4069124439189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 299
    ,p_src_line_number => 150
    ,p_offset => 36356
    ,p_length => 241
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (25,''Gudrun'',''Snater'',''gudrun.snater@company.com'',to_date(''1937-09-10T18:39:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4069291922189159
    ,p_file_id => 4039220267188741
    ,p_stmt_number => 300
    ,p_src_line_number => 150
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 4069455260189423,
    p_file_id => 4039220267188741,
    p_job_id => null,
    p_run_by => 'GONZALEZFJU',
    p_run_as => 'APEXPDB',
    p_started => to_date('202502201619','YYYYMMDDHH24MI'),
    p_start_time => 9189425,
    p_ended => to_date('202502201619','YYYYMMDDHH24MI'),
    p_end_time => 9189447,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070516408189428
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 11
    ,p_stmt_num => 21
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (136,''Belen'',''Ogden'',''belen.ogden@company.com'',to_date(''2019-04-05T19:05:21Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189428
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070691266189428
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 12
    ,p_stmt_num => 23
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (109,''Belinda'',''Barger'',''belinda.barger@company.com'',to_date(''2011-11-12T12:33:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189428
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070727308189428
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 13
    ,p_stmt_num => 25
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (55,''Ping'',''Ivel'',''ping.ivel@company.com'',to_date(''1976-06-15T19:45:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/226: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189428
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070842846189428
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 14
    ,p_stmt_num => 27
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (82,''Theodora'',''Beavin'',''theodora.beavin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/224: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189428
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070962827189428
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 15
    ,p_stmt_num => 29
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (1,''Hong'',''Charter'',''hong.charter@company.com'',to_date(''1950-03-08T09:37:44Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/231: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189428
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071073188189429
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 16
    ,p_stmt_num => 31
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (28,''Gisele'',''Limthong'',''gisele.limthong@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/221: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189429
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071170199189429
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 17
    ,p_stmt_num => 33
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (137,''Beatris'',''Iraheta'',''beatris.iraheta@company.com'',to_date(''1971-03-03T17:36:33Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/239: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189429
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071200431189429
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 18
    ,p_stmt_num => 35
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (110,''Delia'',''Nortesano'',''delia.nortesano@company.com'',to_date(''1960-07-24T23:15:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/239: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189429
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071332649189429
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 19
    ,p_stmt_num => 37
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (56,''Toccara'',''Konwinski'',''toccara.konwinski@company.com'',to_date(''1965-03-20T18:36:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189429
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071408658189429
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 20
    ,p_stmt_num => 39
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (83,''Beata'',''Ladieu'',''beata.ladieu@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/217: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189429
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071502424189429
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 21
    ,p_stmt_num => 41
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (2,''Goldie'',''Yuska'',''goldie.yuska@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/211: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189429
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071637460189429
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 22
    ,p_stmt_num => 43
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (29,''Martine'',''Forbs'',''martine.forbs@company.com'',to_date(''1955-12-29T01:41:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189429
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189429
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071722139189429
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 23
    ,p_stmt_num => 45
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (138,''Eileen'',''Millott'',''eileen.millott@company.com'',to_date(''1979-12-19T04:16:28Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',7902.13,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189429
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071899600189430
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 24
    ,p_stmt_num => 47
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (111,''Wynona'',''Tenda'',''wynona.tenda@company.com'',to_date(''1965-12-03T12:48:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189430
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4071969565189430
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 25
    ,p_stmt_num => 49
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (57,''Darleen'',''Casten'',''darleen.casten@company.com'',to_date(''1965-09-20T22:29:54Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6546.79,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189430
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072085729189430
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 26
    ,p_stmt_num => 51
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (84,''Anton'',''Mew'',''anton.mew@company.com'',to_date(''2003-07-27T03:59:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/230: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189430
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072109640189430
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 27
    ,p_stmt_num => 53
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (3,''Gracia'',''Tsai'',''gracia.tsai@company.com'',to_date(''1968-08-15T11:53:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/229: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189430
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072297281189430
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 28
    ,p_stmt_num => 55
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (30,''Basil'',''Oursler'',''basil.oursler@company.com'',to_date(''1963-05-31T18:04:39Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6914.56,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189430
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072341752189430
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 29
    ,p_stmt_num => 57
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (139,''Annice'',''Mccrossen'',''annice.mccrossen@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/224: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189430
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072490687189430
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 30
    ,p_stmt_num => 59
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (112,''Tiffaney'',''Bozovich'',''tiffaney.bozovich@company.com'',to_date(''1978-10-06T03:26:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Java'',1707.68,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189430
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073583248189432
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 41
    ,p_stmt_num => 81
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (141,''Judson'',''Kantz'',''judson.kantz@company.com'',to_date(''1974-04-12T17:48:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189432
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073669777189432
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 42
    ,p_stmt_num => 83
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (114,''Tomasa'',''Orouke'',''tomasa.orouke@company.com'',to_date(''1983-09-29T07:50:53Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/235: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189432
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073700771189432
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 43
    ,p_stmt_num => 85
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (87,''Clorinda'',''Matalka'',''clorinda.matalka@company.com'',to_date(''1937-01-10T23:24:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189432
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073819469189432
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 44
    ,p_stmt_num => 87
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (60,''Greta'',''Svatek'',''greta.svatek@company.com'',to_date(''1948-02-22T01:20:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',7059.56,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189432
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073916226189432
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 45
    ,p_stmt_num => 89
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (6,''Dario'',''Housman'',''dario.housman@company.com'',to_date(''2002-05-26T20:05:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/233: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189432
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074097006189432
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 46
    ,p_stmt_num => 91
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (33,''Letty'',''Riccardo'',''letty.riccardo@company.com'',to_date(''2000-01-31T17:13:41Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189432
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074197589189432
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 47
    ,p_stmt_num => 93
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (142,''Pamala'',''Mcdewitt'',''pamala.mcdewitt@company.com'',to_date(''1950-08-08T06:08:36Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189432
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074210314189433
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 48
    ,p_stmt_num => 95
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (115,''Dannielle'',''Conforto'',''dannielle.conforto@company.com'',to_date(''1986-03-18T17:37:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/251: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189433
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189433
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074362849189433
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 49
    ,p_stmt_num => 97
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (88,''Edris'',''Lifford'',''edris.lifford@company.com'',to_date(''1973-02-02T06:17:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189433
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189433
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074464633189433
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 50
    ,p_stmt_num => 99
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (61,''Terresa'',''Hanhardt'',''terresa.hanhardt@company.com'',to_date(''2001-02-28T22:07:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189433
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189433
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072529072189430
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 31
    ,p_stmt_num => 61
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (58,''Daniel'',''Strong'',''daniel.strong@company.com'',to_date(''1962-11-26T15:24:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189430
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189430
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072605670189431
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 32
    ,p_stmt_num => 63
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (85,''Delaine'',''Untalan'',''delaine.untalan@company.com'',to_date(''1959-03-13T16:55:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189431
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072778388189431
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 33
    ,p_stmt_num => 65
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (4,''Sabrina'',''Stojanovic'',''sabrina.stojanovic@company.com'',to_date(''1941-03-26T17:30:53Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',6125.44,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189431
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072849690189431
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 34
    ,p_stmt_num => 67
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (31,''Floy'',''Craver'',''floy.craver@company.com'',to_date(''1946-02-22T13:56:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/230: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189431
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4072900795189431
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 35
    ,p_stmt_num => 69
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (140,''Jolie'',''Micalizzi'',''jolie.micalizzi@company.com'',to_date(''1999-01-07T00:34:22Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/245: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189431
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073057304189431
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 36
    ,p_stmt_num => 71
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (113,''Antonetta'',''Pinsky'',''antonetta.pinsky@company.com'',to_date(''2007-04-09T16:12:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',4387.59,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189431
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073197666189431
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 37
    ,p_stmt_num => 73
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (59,''Bella'',''Osterfeld'',''bella.osterfeld@company.com'',to_date(''2023-12-16T17:52:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189431
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073263605189431
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 38
    ,p_stmt_num => 75
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (86,''Elaina'',''Hagglund'',''elaina.hagglund@company.com'',to_date(''1970-06-08T02:19:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189431
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073370436189431
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 39
    ,p_stmt_num => 77
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (5,''Antonio'',''Koper'',''antonio.koper@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/213: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189431
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189431
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4073415831189432
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 40
    ,p_stmt_num => 79
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (32,''Hollis'',''Jondahl'',''hollis.jondahl@company.com'',to_date(''1962-01-07T04:12:50Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189432
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189432
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4069590788189426
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (107,''Clinton'',''Bjerke'',''clinton.bjerke@company.com'',to_date(''1975-09-11T19:33:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6295.12,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189426
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189426
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4069674042189427
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (53,''Brynn'',''Mckale'',''brynn.mckale@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/217: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189427
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4069769164189427
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 3
    ,p_stmt_num => 5
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (80,''Rupert'',''Tardy'',''rupert.tardy@company.com'',to_date(''1959-10-16T09:13:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/232: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189427
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4069868017189427
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 4
    ,p_stmt_num => 7
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (26,''Edna'',''Fowlston'',''edna.fowlston@company.com'',to_date(''2002-11-24T11:58:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6063.86,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189427
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4069916606189427
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 5
    ,p_stmt_num => 9
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (135,''Gussie'',''Khilling'',''gussie.khilling@company.com'',to_date(''2013-11-11T04:55:52Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2290.99,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189427
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070081417189427
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 6
    ,p_stmt_num => 11
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (108,''Jonnie'',''Spellane'',''jonnie.spellane@company.com'',to_date(''1952-09-18T02:27:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189427
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070131348189427
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 7
    ,p_stmt_num => 13
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (54,''Gladis'',''Trevey'',''gladis.trevey@company.com'',to_date(''1981-01-20T21:46:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',1851.08,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189427
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189427
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070262322189428
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 8
    ,p_stmt_num => 15
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (81,''Horace'',''Kaminer'',''horace.kaminer@company.com'',to_date(''1997-05-30T07:56:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189428
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070371799189428
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 9
    ,p_stmt_num => 17
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (0,''Pam'',''Dominis'',''pam.dominis@company.com'',to_date(''2010-03-09T22:06:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2377.33,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189428
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4070477237189428
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 10
    ,p_stmt_num => 19
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (27,''Josefa'',''Shilt'',''josefa.shilt@company.com'',to_date(''1997-11-29T04:31:54Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/232: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189428
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189428
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074596862189433
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 51
    ,p_stmt_num => 101
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (7,''Kevin'',''Sawlivich'',''kevin.sawlivich@company.com'',to_date(''2004-01-03T23:34:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189433
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189433
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074642868189433
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 52
    ,p_stmt_num => 103
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (34,''Ruthe'',''Nishioka'',''ruthe.nishioka@company.com'',to_date(''1959-11-22T06:54:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189433
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189433
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074788972189433
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 53
    ,p_stmt_num => 105
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (143,''Ruthanne'',''Burgoyne'',''ruthanne.burgoyne@company.com'',to_date(''1979-07-13T01:36:01Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/253: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189433
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189433
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074882957189433
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 54
    ,p_stmt_num => 107
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (116,''Russel'',''Heinzelman'',''russel.heinzelman@company.com'',to_date(''1996-05-14T09:37:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',3074.53,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189433
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189433
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4074979492189434
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 55
    ,p_stmt_num => 109
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (89,''Gwen'',''Cake'',''gwen.cake@company.com'',to_date(''1942-07-30T01:10:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/226: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189434
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189434
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075016288189434
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 56
    ,p_stmt_num => 111
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (62,''Pablo'',''Caveney'',''pablo.caveney@company.com'',to_date(''1975-12-19T20:24:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',1533.99,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189434
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189434
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075153194189434
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 57
    ,p_stmt_num => 113
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (8,''Camila'',''Hillwig'',''camila.hillwig@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/225: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189434
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189434
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075213927189434
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 58
    ,p_stmt_num => 115
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (35,''Daphine'',''Elfrink'',''daphine.elfrink@company.com'',to_date(''1954-08-27T03:54:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189434
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189434
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075332913189434
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 59
    ,p_stmt_num => 117
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (144,''Libbie'',''Risher'',''libbie.risher@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/215: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189434
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189434
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075456304189434
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 60
    ,p_stmt_num => 119
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (117,''Eddie'',''Dietrick'',''eddie.dietrick@company.com'',to_date(''1937-07-23T21:19:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189434
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189434
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081505058189443
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 121
    ,p_stmt_num => 241
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (128,''Janyce'',''Daignault'',''janyce.daignault@company.com'',to_date(''2006-04-05T23:35:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/251: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189443
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189443
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081635152189443
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 122
    ,p_stmt_num => 243
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (101,''Graham'',''Chambers'',''graham.chambers@company.com'',to_date(''2019-11-18T06:06:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/249: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189443
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189443
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081798590189443
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 123
    ,p_stmt_num => 245
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (74,''Janita'',''Eskaran'',''janita.eskaran@company.com'',to_date(''1988-11-25T16:53:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189443
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189443
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081849810189443
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 124
    ,p_stmt_num => 247
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (20,''Josh'',''Slomer'',''josh.slomer@company.com'',to_date(''1926-09-28T04:46:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189443
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189443
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081930358189443
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 125
    ,p_stmt_num => 249
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (47,''Sylvester'',''Kister'',''sylvester.kister@company.com'',to_date(''1931-10-10T19:14:41Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189443
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189443
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082082693189443
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 126
    ,p_stmt_num => 251
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (129,''Phylis'',''Andonian'',''phylis.andonian@company.com'',to_date(''1975-07-03T20:57:14Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189443
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189443
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082195230189443
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 127
    ,p_stmt_num => 253
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (102,''Elanor'',''Shinsel'',''elanor.shinsel@company.com'',to_date(''2005-08-17T05:17:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/241: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189443
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189444
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082256878189444
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 128
    ,p_stmt_num => 255
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (75,''Ty'',''Flournay'',''ty.flournay@company.com'',to_date(''1938-12-05T16:15:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6493.96,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189444
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189444
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082378695189444
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 129
    ,p_stmt_num => 257
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (21,''Cleveland'',''Gassert'',''cleveland.gassert@company.com'',to_date(''1929-09-03T00:19:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/246: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189444
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189444
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082413815189444
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 130
    ,p_stmt_num => 259
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (48,''Ryan'',''Montori'',''ryan.montori@company.com'',to_date(''1965-09-29T09:03:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',7663.15,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189444
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189444
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075569447189434
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 61
    ,p_stmt_num => 121
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (90,''Julian'',''Rudack'',''julian.rudack@company.com'',to_date(''1968-12-22T09:46:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189434
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189434
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075668021189434
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 62
    ,p_stmt_num => 123
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (63,''Danita'',''Heumann'',''danita.heumann@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189434
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189435
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075792078189435
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 63
    ,p_stmt_num => 125
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (9,''Edie'',''Tavernier'',''edie.tavernier@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/220: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189435
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189435
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075840080189435
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 64
    ,p_stmt_num => 127
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (36,''Lezlie'',''Rosenthall'',''lezlie.rosenthall@company.com'',to_date(''1946-12-01T18:15:46Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/246: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189435
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189435
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4075918431189435
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 65
    ,p_stmt_num => 129
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (145,''Bebe'',''Broadwell'',''bebe.broadwell@company.com'',to_date(''1977-07-20T04:08:42Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',6341.4,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189435
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189435
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076042122189435
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 66
    ,p_stmt_num => 131
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (118,''Danyel'',''Gatling'',''danyel.gatling@company.com'',to_date(''1977-02-17T06:44:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189435
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189435
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076163165189435
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 67
    ,p_stmt_num => 133
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (91,''Belva'',''Old'',''belva.old@company.com'',to_date(''1964-07-29T06:06:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/230: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189435
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189435
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076246882189435
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 68
    ,p_stmt_num => 135
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (64,''Celia'',''Scothorn'',''celia.scothorn@company.com'',to_date(''2004-11-16T20:02:03Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',4245.17,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189435
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189435
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076304120189435
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 69
    ,p_stmt_num => 137
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (10,''Ginger'',''Zorman'',''ginger.zorman@company.com'',to_date(''1935-09-19T14:46:00Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189435
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076407360189436
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 70
    ,p_stmt_num => 139
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (37,''Dara'',''Bonneau'',''dara.bonneau@company.com'',to_date(''1974-09-23T06:44:42Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/232: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189436
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076540728189436
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 71
    ,p_stmt_num => 141
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (146,''Darci'',''Glassner'',''darci.glassner@company.com'',to_date(''1975-09-04T09:10:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',1395.91,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189436
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076651186189436
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 72
    ,p_stmt_num => 143
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (119,''Jonathon'',''Botner'',''jonathon.botner@company.com'',to_date(''2021-07-26T17:43:20Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189436
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076755490189436
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 73
    ,p_stmt_num => 145
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (92,''Benedict'',''Lavery'',''benedict.lavery@company.com'',to_date(''2001-07-31T05:06:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189436
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076891216189436
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 74
    ,p_stmt_num => 147
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (65,''Daren'',''Bravard'',''daren.bravard@company.com'',to_date(''1958-06-09T18:31:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189436
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4076961569189436
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 75
    ,p_stmt_num => 149
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (11,''Sabine'',''Bonaguidi'',''sabine.bonaguidi@company.com'',to_date(''2002-10-14T11:32:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6851.3,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189436
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077055356189436
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 76
    ,p_stmt_num => 151
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (38,''Darnell'',''Rainbow'',''darnell.rainbow@company.com'',to_date(''1958-11-27T03:00:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189436
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189436
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077182892189437
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 77
    ,p_stmt_num => 153
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (147,''Beau'',''Deerman'',''beau.deerman@company.com'',to_date(''2023-03-28T00:09:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/233: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189437
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077256364189437
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 78
    ,p_stmt_num => 155
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (120,''Daria'',''Heare'',''daria.heare@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/217: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189437
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077385189189437
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 79
    ,p_stmt_num => 157
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (93,''Darren'',''Settler'',''darren.settler@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/222: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189437
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077450468189437
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 80
    ,p_stmt_num => 159
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (66,''Annmarie'',''Esmay'',''annmarie.esmay@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189437
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077564701189437
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 81
    ,p_stmt_num => 161
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (12,''Darla'',''Jungling'',''darla.jungling@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189437
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077620098189437
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 82
    ,p_stmt_num => 163
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (39,''Fran'',''Sibbald'',''fran.sibbald@company.com'',to_date(''1945-11-03T01:58:31Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/232: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189437
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077773156189437
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 83
    ,p_stmt_num => 165
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (148,''Marshall'',''Lowery'',''marshall.lowery@company.com'',to_date(''1951-09-05T14:26:44Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/239: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189437
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189437
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077846344189437
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 84
    ,p_stmt_num => 167
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (121,''Gilberto'',''Weibel'',''gilberto.weibel@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/229: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189437
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4077907906189438
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 85
    ,p_stmt_num => 169
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (94,''Edelmira'',''Widman'',''edelmira.widman@company.com'',to_date(''2015-10-27T05:09:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189438
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078062808189438
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 86
    ,p_stmt_num => 171
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (67,''Annetta'',''Juback'',''annetta.juback@company.com'',to_date(''1954-02-03T03:20:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/236: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189438
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078156383189438
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 87
    ,p_stmt_num => 173
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (13,''Marya'',''Raso'',''marya.raso@company.com'',to_date(''1979-08-17T13:58:14Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189438
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078200762189438
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 88
    ,p_stmt_num => 175
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (40,''Veronica'',''Aubrecht'',''veronica.aubrecht@company.com'',to_date(''1926-07-02T23:39:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/248: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189438
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078342580189438
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 89
    ,p_stmt_num => 177
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (122,''Porsche'',''Shippee'',''porsche.shippee@company.com'',to_date(''1992-06-11T22:55:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189438
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078459107189438
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 90
    ,p_stmt_num => 179
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (95,''Buck'',''Campion'',''buck.campion@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/212: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189438
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189438
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078535387189438
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 91
    ,p_stmt_num => 181
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (68,''Jannette'',''Babino'',''jannette.babino@company.com'',to_date(''2000-09-15T12:25:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189438
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078619684189439
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 92
    ,p_stmt_num => 183
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (149,''Antonia'',''Mclachlan'',''antonia.mclachlan@company.com'',to_date(''1960-10-17T21:20:49Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2135.92,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189439
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078783572189439
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 93
    ,p_stmt_num => 185
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (14,''Griselda'',''Kurohara'',''griselda.kurohara@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/226: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189439
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078812507189439
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 94
    ,p_stmt_num => 187
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (41,''Therese'',''Zaeske'',''therese.zaeske@company.com'',to_date(''1927-01-09T01:19:55Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',7896.68,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189439
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4078900653189439
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 95
    ,p_stmt_num => 189
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (123,''Rufus'',''Morais'',''rufus.morais@company.com'',to_date(''1947-09-22T03:26:25Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',1404.72,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189439
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079024759189439
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 96
    ,p_stmt_num => 191
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (96,''Daniell'',''Grumney'',''daniell.grumney@company.com'',to_date(''2015-04-07T19:33:19Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189439
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079132742189439
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 97
    ,p_stmt_num => 193
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (69,''Vernita'',''Kulik'',''vernita.kulik@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/214: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189439
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079278246189439
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 98
    ,p_stmt_num => 195
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (150,''Pam'',''Dominis'',''pam.dominis@company.com'',to_date(''1984-02-21T23:28:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/235: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189439
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189439
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079382372189440
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 99
    ,p_stmt_num => 197
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (15,''Gladys'',''Laughery'',''gladys.laughery@company.com'',to_date(''1996-01-18T12:47:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189440
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079403366189440
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 100
    ,p_stmt_num => 199
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (42,''Letha'',''Kosir'',''letha.kosir@company.com'',to_date(''1982-03-01T11:16:29Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189440
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079599403189440
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 101
    ,p_stmt_num => 201
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (124,''Dann'',''Widerski'',''dann.widerski@company.com'',to_date(''1935-05-17T22:01:21Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/235: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189440
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079612371189440
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 102
    ,p_stmt_num => 203
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (97,''Marvella'',''Salemi'',''marvella.salemi@company.com'',to_date(''1948-10-29T05:27:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Java'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189440
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079729324189440
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 103
    ,p_stmt_num => 205
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (70,''Basil'',''Hanagan'',''basil.hanagan@company.com'',to_date(''1945-03-12T05:07:39Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189440
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079810979189440
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 104
    ,p_stmt_num => 207
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (16,''Francesco'',''Elland'',''francesco.elland@company.com'',to_date(''1985-08-11T11:14:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189440
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4079908920189440
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 105
    ,p_stmt_num => 209
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (43,''Gregoria'',''Ramotar'',''gregoria.ramotar@company.com'',to_date(''1953-05-17T00:15:49Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',5562.88,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189440
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189440
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080044212189441
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 106
    ,p_stmt_num => 211
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (125,''Danika'',''Kerans'',''danika.kerans@company.com'',to_date(''2000-11-30T19:00:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',7768.29,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189441
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189441
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080159266189441
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 107
    ,p_stmt_num => 213
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (98,''Camellia'',''Archuletta'',''camellia.archuletta@company.com'',to_date(''1986-07-21T03:05:33Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/246: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189441
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189441
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080264461189441
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 108
    ,p_stmt_num => 215
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (71,''Jarred'',''Israelsen'',''jarred.israelsen@company.com'',to_date(''1929-06-07T02:59:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',4379.78,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189441
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189441
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080363014189441
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 109
    ,p_stmt_num => 217
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (17,''Florida'',''Gilliand'',''florida.gilliand@company.com'',to_date(''2000-10-20T20:30:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/246: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189441
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189441
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080444632189441
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 110
    ,p_stmt_num => 219
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (44,''Delbert'',''Khatak'',''delbert.khatak@company.com'',to_date(''2024-10-28T05:27:30Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189441
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189441
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080585547189441
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 111
    ,p_stmt_num => 221
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (126,''Yvonne'',''Appleman'',''yvonne.appleman@company.com'',to_date(''1960-06-08T09:00:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189441
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189441
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080633194189441
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 112
    ,p_stmt_num => 223
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (99,''Timika'',''Wombles'',''timika.wombles@company.com'',to_date(''1999-11-08T19:32:05Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189441
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189441
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080765050189441
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 113
    ,p_stmt_num => 225
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (72,''Kisha'',''Leven'',''kisha.leven@company.com'',to_date(''1944-04-25T21:48:28Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/233: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189441
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189442
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080861721189442
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 114
    ,p_stmt_num => 227
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (18,''Granville'',''Mcmurrin'',''granville.mcmurrin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2674.1,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189442
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189442
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4080906075189442
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 115
    ,p_stmt_num => 229
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (45,''Rusty'',''Nesland'',''rusty.nesland@company.com'',to_date(''1943-10-31T20:37:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189442
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189442
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081040413189442
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 116
    ,p_stmt_num => 231
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (127,''Antoine'',''Applonie'',''antoine.applonie@company.com'',to_date(''1941-07-30T06:54:37Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/241: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189442
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189442
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081186353189442
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 117
    ,p_stmt_num => 233
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (100,''Daniele'',''Thorsten'',''daniele.thorsten@company.com'',to_date(''1971-08-14T14:53:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',4821.95,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189442
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189442
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081228468189442
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 118
    ,p_stmt_num => 235
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (73,''Martin'',''Musulin'',''martin.musulin@company.com'',to_date(''2016-07-21T20:47:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2490.37,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189442
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189442
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081374088189442
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 119
    ,p_stmt_num => 237
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (19,''Bart'',''Detullio'',''bart.detullio@company.com'',to_date(''1949-07-21T18:54:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',6359.7,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189442
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189442
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4081495393189442
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 120
    ,p_stmt_num => 239
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (46,''Darlene'',''Pisano'',''darlene.pisano@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189442
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189443
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082525461189444
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 131
    ,p_stmt_num => 261
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (130,''Darcie'',''Hamm'',''darcie.hamm@company.com'',to_date(''1944-02-12T17:52:06Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/231: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189444
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189444
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082659257189444
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 132
    ,p_stmt_num => 263
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (103,''Josh'',''Vanderstelt'',''josh.vanderstelt@company.com'',to_date(''1934-01-08T05:56:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/247: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189444
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189444
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082724723189444
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 133
    ,p_stmt_num => 265
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (76,''Kirby'',''Honeyman'',''kirby.honeyman@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189444
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189444
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082856155189444
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 134
    ,p_stmt_num => 267
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (22,''Anneliese'',''Namdar'',''anneliese.namdar@company.com'',to_date(''1973-11-09T20:58:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/245: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189444
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189445
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4082907112189445
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 135
    ,p_stmt_num => 269
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (49,''Buffy'',''Melen'',''buffy.melen@company.com'',to_date(''1942-09-15T22:41:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189445
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189445
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083073906189445
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 136
    ,p_stmt_num => 271
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (131,''Tyrell'',''Zuelke'',''tyrell.zuelke@company.com'',to_date(''2004-02-02T08:26:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/235: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189445
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189445
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083165536189445
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 137
    ,p_stmt_num => 273
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (104,''Chadwick'',''Henscheid'',''chadwick.henscheid@company.com'',to_date(''1925-06-19T00:06:30Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',6629.79,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189445
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189445
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083237253189445
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 138
    ,p_stmt_num => 275
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (77,''Tommy'',''Stoor'',''tommy.stoor@company.com'',to_date(''1935-01-29T14:30:40Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/236: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189445
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189445
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083337946189445
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 139
    ,p_stmt_num => 277
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (23,''Colby'',''Sanagustin'',''colby.sanagustin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/220: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189445
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189445
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083423862189445
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 140
    ,p_stmt_num => 279
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (50,''Edyth'',''Spindle'',''edyth.spindle@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/214: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189445
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189445
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083551545189445
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 141
    ,p_stmt_num => 281
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (132,''Gracia'',''Soldavini'',''gracia.soldavini@company.com'',to_date(''1958-08-29T14:27:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189445
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189445
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083697514189446
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 142
    ,p_stmt_num => 283
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (105,''Becky'',''Falsetti'',''becky.falsetti@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/227: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189446
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083737467189446
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 143
    ,p_stmt_num => 285
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (78,''Callie'',''Antronica'',''callie.antronica@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/226: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189446
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083813764189446
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 144
    ,p_stmt_num => 287
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (24,''Danille'',''Verbeck'',''danille.verbeck@company.com'',to_date(''1973-08-15T02:05:15Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189446
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4083982148189446
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 145
    ,p_stmt_num => 289
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (51,''Janine'',''Prudom'',''janine.prudom@company.com'',to_date(''1929-03-28T19:09:19Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189446
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4084049796189446
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 146
    ,p_stmt_num => 291
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (133,''Edith'',''Montbriand'',''edith.montbriand@company.com'',to_date(''1957-05-04T19:35:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/241: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189446
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4084158340189446
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 147
    ,p_stmt_num => 293
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (106,''Efren'',''Wallentine'',''efren.wallentine@company.com'',to_date(''2011-06-21T08:57:37Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/248: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189446
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4084247941189446
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 148
    ,p_stmt_num => 295
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (52,''Bunny'',''Oginski'',''bunny.oginski@company.com'',to_date(''1952-12-06T18:33:01Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189446
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189446
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4084375773189446
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 149
    ,p_stmt_num => 297
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (79,''Bula'',''Esperanza'',''bula.esperanza@company.com'',to_date(''1940-08-30T01:40:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',2616.09,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189446
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189447
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4084491777189447
    ,p_result_id => 4069455260189423
    ,p_file_id => 4039220267188741
    ,p_seq_id => 150
    ,p_stmt_num => 299
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (25,''Gudrun'',''Snater'',''gudrun.snater@company.com'',to_date(''1937-09-10T18:39:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_start_time => 9189447
    ,p_ended => to_date('202502201619','YYYYMMDDHH24MI')
    ,p_end_time => 9189447
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201619','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 4090402370213825,
    p_file_id => 4039220267188741,
    p_job_id => null,
    p_run_by => 'GONZALEZFJU',
    p_run_as => 'APEXPDB',
    p_started => to_date('202502201623','YYYYMMDDHH24MI'),
    p_start_time => 9213825,
    p_ended => to_date('202502201623','YYYYMMDDHH24MI'),
    p_end_time => 9213844,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094500005213830
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 41
    ,p_stmt_num => 81
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (141,''Judson'',''Kantz'',''judson.kantz@company.com'',to_date(''1974-04-12T17:48:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213830
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213830
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094682381213830
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 42
    ,p_stmt_num => 83
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (114,''Tomasa'',''Orouke'',''tomasa.orouke@company.com'',to_date(''1983-09-29T07:50:53Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/235: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213830
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213830
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094745870213830
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 43
    ,p_stmt_num => 85
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (87,''Clorinda'',''Matalka'',''clorinda.matalka@company.com'',to_date(''1937-01-10T23:24:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213830
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213831
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094877750213831
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 44
    ,p_stmt_num => 87
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (60,''Greta'',''Svatek'',''greta.svatek@company.com'',to_date(''1948-02-22T01:20:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',7059.56,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213831
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213831
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094964162213831
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 45
    ,p_stmt_num => 89
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (6,''Dario'',''Housman'',''dario.housman@company.com'',to_date(''2002-05-26T20:05:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/233: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213831
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213831
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095081620213831
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 46
    ,p_stmt_num => 91
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (33,''Letty'',''Riccardo'',''letty.riccardo@company.com'',to_date(''2000-01-31T17:13:41Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213831
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213831
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095129201213831
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 47
    ,p_stmt_num => 93
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (142,''Pamala'',''Mcdewitt'',''pamala.mcdewitt@company.com'',to_date(''1950-08-08T06:08:36Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213831
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213831
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095252856213831
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 48
    ,p_stmt_num => 95
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (115,''Dannielle'',''Conforto'',''dannielle.conforto@company.com'',to_date(''1986-03-18T17:37:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/251: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213831
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213831
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095325190213831
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 49
    ,p_stmt_num => 97
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (88,''Edris'',''Lifford'',''edris.lifford@company.com'',to_date(''1973-02-02T06:17:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213831
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213831
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095485294213831
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 50
    ,p_stmt_num => 99
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (61,''Terresa'',''Hanhardt'',''terresa.hanhardt@company.com'',to_date(''2001-02-28T22:07:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213831
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213831
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4090533263213825
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (107,''Clinton'',''Bjerke'',''clinton.bjerke@company.com'',to_date(''1975-09-11T19:33:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6295.12,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213825
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213825
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4090661783213825
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (53,''Brynn'',''Mckale'',''brynn.mckale@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/217: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213825
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213825
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4090797732213825
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 3
    ,p_stmt_num => 5
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (80,''Rupert'',''Tardy'',''rupert.tardy@company.com'',to_date(''1959-10-16T09:13:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/232: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213825
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213825
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4090829200213826
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 4
    ,p_stmt_num => 7
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (26,''Edna'',''Fowlston'',''edna.fowlston@company.com'',to_date(''2002-11-24T11:58:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6063.86,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213826
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213826
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4090996540213826
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 5
    ,p_stmt_num => 9
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (135,''Gussie'',''Khilling'',''gussie.khilling@company.com'',to_date(''2013-11-11T04:55:52Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2290.99,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213826
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213826
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091066931213826
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 6
    ,p_stmt_num => 11
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (108,''Jonnie'',''Spellane'',''jonnie.spellane@company.com'',to_date(''1952-09-18T02:27:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213826
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213826
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091101568213826
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 7
    ,p_stmt_num => 13
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (54,''Gladis'',''Trevey'',''gladis.trevey@company.com'',to_date(''1981-01-20T21:46:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',1851.08,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213826
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213826
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091217514213826
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 8
    ,p_stmt_num => 15
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (81,''Horace'',''Kaminer'',''horace.kaminer@company.com'',to_date(''1997-05-30T07:56:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213826
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213826
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091305396213826
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 9
    ,p_stmt_num => 17
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (0,''Pam'',''Dominis'',''pam.dominis@company.com'',to_date(''2010-03-09T22:06:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2377.33,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213826
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213826
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091460063213826
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 10
    ,p_stmt_num => 19
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (27,''Josefa'',''Shilt'',''josefa.shilt@company.com'',to_date(''1997-11-29T04:31:54Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/232: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213826
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213826
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091583326213826
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 11
    ,p_stmt_num => 21
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (136,''Belen'',''Ogden'',''belen.ogden@company.com'',to_date(''2019-04-05T19:05:21Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213826
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213826
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091658205213827
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 12
    ,p_stmt_num => 23
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (109,''Belinda'',''Barger'',''belinda.barger@company.com'',to_date(''2011-11-12T12:33:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213827
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213827
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091749919213827
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 13
    ,p_stmt_num => 25
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (55,''Ping'',''Ivel'',''ping.ivel@company.com'',to_date(''1976-06-15T19:45:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/226: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213827
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213827
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091897226213827
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 14
    ,p_stmt_num => 27
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (82,''Theodora'',''Beavin'',''theodora.beavin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/224: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213827
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213827
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4091961607213827
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 15
    ,p_stmt_num => 29
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (1,''Hong'',''Charter'',''hong.charter@company.com'',to_date(''1950-03-08T09:37:44Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/231: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213827
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213827
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092072437213827
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 16
    ,p_stmt_num => 31
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (28,''Gisele'',''Limthong'',''gisele.limthong@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/221: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213827
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213827
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092143254213827
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 17
    ,p_stmt_num => 33
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (137,''Beatris'',''Iraheta'',''beatris.iraheta@company.com'',to_date(''1971-03-03T17:36:33Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/239: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213827
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213827
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092240451213827
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 18
    ,p_stmt_num => 35
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (110,''Delia'',''Nortesano'',''delia.nortesano@company.com'',to_date(''1960-07-24T23:15:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/239: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213827
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213827
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092355092213827
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 19
    ,p_stmt_num => 37
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (56,''Toccara'',''Konwinski'',''toccara.konwinski@company.com'',to_date(''1965-03-20T18:36:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213827
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213827
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092438670213828
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 20
    ,p_stmt_num => 39
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (83,''Beata'',''Ladieu'',''beata.ladieu@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/217: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213828
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213828
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092511309213828
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 21
    ,p_stmt_num => 41
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (2,''Goldie'',''Yuska'',''goldie.yuska@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/211: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213828
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213828
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092622742213828
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 22
    ,p_stmt_num => 43
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (29,''Martine'',''Forbs'',''martine.forbs@company.com'',to_date(''1955-12-29T01:41:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213828
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213828
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092757502213828
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 23
    ,p_stmt_num => 45
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (138,''Eileen'',''Millott'',''eileen.millott@company.com'',to_date(''1979-12-19T04:16:28Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',7902.13,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213828
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213828
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092827617213828
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 24
    ,p_stmt_num => 47
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (111,''Wynona'',''Tenda'',''wynona.tenda@company.com'',to_date(''1965-12-03T12:48:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213828
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213828
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4092987446213828
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 25
    ,p_stmt_num => 49
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (57,''Darleen'',''Casten'',''darleen.casten@company.com'',to_date(''1965-09-20T22:29:54Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6546.79,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213828
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213828
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093095672213828
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 26
    ,p_stmt_num => 51
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (84,''Anton'',''Mew'',''anton.mew@company.com'',to_date(''2003-07-27T03:59:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/230: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213828
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213828
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093114251213828
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 27
    ,p_stmt_num => 53
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (3,''Gracia'',''Tsai'',''gracia.tsai@company.com'',to_date(''1968-08-15T11:53:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/229: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213828
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213828
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093283634213829
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 28
    ,p_stmt_num => 55
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (30,''Basil'',''Oursler'',''basil.oursler@company.com'',to_date(''1963-05-31T18:04:39Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6914.56,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213829
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213829
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093362933213829
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 29
    ,p_stmt_num => 57
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (139,''Annice'',''Mccrossen'',''annice.mccrossen@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/224: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213829
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213829
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093459755213829
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 30
    ,p_stmt_num => 59
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (112,''Tiffaney'',''Bozovich'',''tiffaney.bozovich@company.com'',to_date(''1978-10-06T03:26:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Java'',1707.68,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213829
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213829
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093599599213829
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 31
    ,p_stmt_num => 61
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (58,''Daniel'',''Strong'',''daniel.strong@company.com'',to_date(''1962-11-26T15:24:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213829
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213829
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093690619213829
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 32
    ,p_stmt_num => 63
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (85,''Delaine'',''Untalan'',''delaine.untalan@company.com'',to_date(''1959-03-13T16:55:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213829
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213829
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093755895213829
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 33
    ,p_stmt_num => 65
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (4,''Sabrina'',''Stojanovic'',''sabrina.stojanovic@company.com'',to_date(''1941-03-26T17:30:53Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',6125.44,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213829
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213829
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093819415213829
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 34
    ,p_stmt_num => 67
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (31,''Floy'',''Craver'',''floy.craver@company.com'',to_date(''1946-02-22T13:56:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/230: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213829
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213829
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4093935841213829
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 35
    ,p_stmt_num => 69
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (140,''Jolie'',''Micalizzi'',''jolie.micalizzi@company.com'',to_date(''1999-01-07T00:34:22Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/245: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213829
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213830
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094047526213830
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 36
    ,p_stmt_num => 71
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (113,''Antonetta'',''Pinsky'',''antonetta.pinsky@company.com'',to_date(''2007-04-09T16:12:27Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',4387.59,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213830
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213830
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094148651213830
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 37
    ,p_stmt_num => 73
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (59,''Bella'',''Osterfeld'',''bella.osterfeld@company.com'',to_date(''2023-12-16T17:52:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213830
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213830
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094209696213830
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 38
    ,p_stmt_num => 75
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (86,''Elaina'',''Hagglund'',''elaina.hagglund@company.com'',to_date(''1970-06-08T02:19:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213830
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213830
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094343909213830
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 39
    ,p_stmt_num => 77
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (5,''Antonio'',''Koper'',''antonio.koper@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/213: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213830
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213830
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4094419794213830
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 40
    ,p_stmt_num => 79
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (32,''Hollis'',''Jondahl'',''hollis.jondahl@company.com'',to_date(''1962-01-07T04:12:50Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213830
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213830
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095503123213831
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 51
    ,p_stmt_num => 101
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (7,''Kevin'',''Sawlivich'',''kevin.sawlivich@company.com'',to_date(''2004-01-03T23:34:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213831
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213832
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095667525213832
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 52
    ,p_stmt_num => 103
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (34,''Ruthe'',''Nishioka'',''ruthe.nishioka@company.com'',to_date(''1959-11-22T06:54:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213832
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213832
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095776991213832
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 53
    ,p_stmt_num => 105
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (143,''Ruthanne'',''Burgoyne'',''ruthanne.burgoyne@company.com'',to_date(''1979-07-13T01:36:01Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/253: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213832
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213832
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095813288213832
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 54
    ,p_stmt_num => 107
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (116,''Russel'',''Heinzelman'',''russel.heinzelman@company.com'',to_date(''1996-05-14T09:37:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',3074.53,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213832
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213832
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4095915577213832
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 55
    ,p_stmt_num => 109
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (89,''Gwen'',''Cake'',''gwen.cake@company.com'',to_date(''1942-07-30T01:10:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/226: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213832
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213832
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096023619213832
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 56
    ,p_stmt_num => 111
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (62,''Pablo'',''Caveney'',''pablo.caveney@company.com'',to_date(''1975-12-19T20:24:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',1533.99,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213832
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213832
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096174192213832
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 57
    ,p_stmt_num => 113
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (8,''Camila'',''Hillwig'',''camila.hillwig@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/225: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213832
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213832
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096285342213832
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 58
    ,p_stmt_num => 115
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (35,''Daphine'',''Elfrink'',''daphine.elfrink@company.com'',to_date(''1954-08-27T03:54:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213832
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213832
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096341216213833
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 59
    ,p_stmt_num => 117
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (144,''Libbie'',''Risher'',''libbie.risher@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/215: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213833
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213833
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096426859213833
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 60
    ,p_stmt_num => 119
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (117,''Eddie'',''Dietrick'',''eddie.dietrick@company.com'',to_date(''1937-07-23T21:19:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213833
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213833
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102549725213840
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 121
    ,p_stmt_num => 241
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (128,''Janyce'',''Daignault'',''janyce.daignault@company.com'',to_date(''2006-04-05T23:35:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/251: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213840
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213840
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102685943213841
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 122
    ,p_stmt_num => 243
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (101,''Graham'',''Chambers'',''graham.chambers@company.com'',to_date(''2019-11-18T06:06:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/249: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213841
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213841
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102728026213841
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 123
    ,p_stmt_num => 245
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (74,''Janita'',''Eskaran'',''janita.eskaran@company.com'',to_date(''1988-11-25T16:53:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213841
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213841
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102800481213841
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 124
    ,p_stmt_num => 247
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (20,''Josh'',''Slomer'',''josh.slomer@company.com'',to_date(''1926-09-28T04:46:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213841
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213841
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102904357213841
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 125
    ,p_stmt_num => 249
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (47,''Sylvester'',''Kister'',''sylvester.kister@company.com'',to_date(''1931-10-10T19:14:41Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213841
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213841
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103025984213841
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 126
    ,p_stmt_num => 251
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (129,''Phylis'',''Andonian'',''phylis.andonian@company.com'',to_date(''1975-07-03T20:57:14Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213841
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213841
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103118258213841
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 127
    ,p_stmt_num => 253
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (102,''Elanor'',''Shinsel'',''elanor.shinsel@company.com'',to_date(''2005-08-17T05:17:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/241: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213841
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213841
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103233939213841
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 128
    ,p_stmt_num => 255
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (75,''Ty'',''Flournay'',''ty.flournay@company.com'',to_date(''1938-12-05T16:15:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6493.96,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213841
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213841
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103399876213841
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 129
    ,p_stmt_num => 257
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (21,''Cleveland'',''Gassert'',''cleveland.gassert@company.com'',to_date(''1929-09-03T00:19:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/246: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213841
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213842
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103401037213842
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 130
    ,p_stmt_num => 259
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (48,''Ryan'',''Montori'',''ryan.montori@company.com'',to_date(''1965-09-29T09:03:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',7663.15,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213842
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213842
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096597315213833
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 61
    ,p_stmt_num => 121
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (90,''Julian'',''Rudack'',''julian.rudack@company.com'',to_date(''1968-12-22T09:46:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213833
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213833
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096616245213833
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 62
    ,p_stmt_num => 123
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (63,''Danita'',''Heumann'',''danita.heumann@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213833
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213833
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096762654213833
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 63
    ,p_stmt_num => 125
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (9,''Edie'',''Tavernier'',''edie.tavernier@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/220: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213833
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213833
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096823666213833
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 64
    ,p_stmt_num => 127
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (36,''Lezlie'',''Rosenthall'',''lezlie.rosenthall@company.com'',to_date(''1946-12-01T18:15:46Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/246: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213833
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213833
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4096934364213833
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 65
    ,p_stmt_num => 129
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (145,''Bebe'',''Broadwell'',''bebe.broadwell@company.com'',to_date(''1977-07-20T04:08:42Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',6341.4,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213833
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213833
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097001657213833
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 66
    ,p_stmt_num => 131
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (118,''Danyel'',''Gatling'',''danyel.gatling@company.com'',to_date(''1977-02-17T06:44:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213833
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213833
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097104577213834
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 67
    ,p_stmt_num => 133
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (91,''Belva'',''Old'',''belva.old@company.com'',to_date(''1964-07-29T06:06:24Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/230: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213834
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213834
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097203806213834
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 68
    ,p_stmt_num => 135
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (64,''Celia'',''Scothorn'',''celia.scothorn@company.com'',to_date(''2004-11-16T20:02:03Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',4245.17,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213834
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213834
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097305413213834
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 69
    ,p_stmt_num => 137
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (10,''Ginger'',''Zorman'',''ginger.zorman@company.com'',to_date(''1935-09-19T14:46:00Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213834
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213834
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097487997213834
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 70
    ,p_stmt_num => 139
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (37,''Dara'',''Bonneau'',''dara.bonneau@company.com'',to_date(''1974-09-23T06:44:42Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/232: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213834
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213834
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097519997213834
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 71
    ,p_stmt_num => 141
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (146,''Darci'',''Glassner'',''darci.glassner@company.com'',to_date(''1975-09-04T09:10:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',1395.91,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213834
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213834
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097692868213834
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 72
    ,p_stmt_num => 143
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (119,''Jonathon'',''Botner'',''jonathon.botner@company.com'',to_date(''2021-07-26T17:43:20Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213834
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213834
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097710457213834
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 73
    ,p_stmt_num => 145
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (92,''Benedict'',''Lavery'',''benedict.lavery@company.com'',to_date(''2001-07-31T05:06:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213834
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213834
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097861840213834
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 74
    ,p_stmt_num => 147
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (65,''Daren'',''Bravard'',''daren.bravard@company.com'',to_date(''1958-06-09T18:31:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213834
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213835
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4097940503213835
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 75
    ,p_stmt_num => 149
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (11,''Sabine'',''Bonaguidi'',''sabine.bonaguidi@company.com'',to_date(''2002-10-14T11:32:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',6851.3,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213835
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213835
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098039649213835
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 76
    ,p_stmt_num => 151
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (38,''Darnell'',''Rainbow'',''darnell.rainbow@company.com'',to_date(''1958-11-27T03:00:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213835
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213835
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098152404213835
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 77
    ,p_stmt_num => 153
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (147,''Beau'',''Deerman'',''beau.deerman@company.com'',to_date(''2023-03-28T00:09:16Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/233: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213835
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213835
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098294520213835
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 78
    ,p_stmt_num => 155
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (120,''Daria'',''Heare'',''daria.heare@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/217: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213835
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213835
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098333104213835
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 79
    ,p_stmt_num => 157
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (93,''Darren'',''Settler'',''darren.settler@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/222: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213835
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213835
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098471316213835
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 80
    ,p_stmt_num => 159
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (66,''Annmarie'',''Esmay'',''annmarie.esmay@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213835
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213835
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098536218213835
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 81
    ,p_stmt_num => 161
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (12,''Darla'',''Jungling'',''darla.jungling@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213835
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213835
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098698739213835
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 82
    ,p_stmt_num => 163
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (39,''Fran'',''Sibbald'',''fran.sibbald@company.com'',to_date(''1945-11-03T01:58:31Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/232: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213835
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213836
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098760933213836
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 83
    ,p_stmt_num => 165
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (148,''Marshall'',''Lowery'',''marshall.lowery@company.com'',to_date(''1951-09-05T14:26:44Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/239: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213836
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213836
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098824090213836
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 84
    ,p_stmt_num => 167
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (121,''Gilberto'',''Weibel'',''gilberto.weibel@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/229: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213836
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213836
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4098943758213836
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 85
    ,p_stmt_num => 169
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (94,''Edelmira'',''Widman'',''edelmira.widman@company.com'',to_date(''2015-10-27T05:09:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213836
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213836
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099046223213836
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 86
    ,p_stmt_num => 171
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (67,''Annetta'',''Juback'',''annetta.juback@company.com'',to_date(''1954-02-03T03:20:57Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/236: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213836
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213836
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099139633213836
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 87
    ,p_stmt_num => 173
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (13,''Marya'',''Raso'',''marya.raso@company.com'',to_date(''1979-08-17T13:58:14Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213836
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213836
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099212273213836
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 88
    ,p_stmt_num => 175
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (40,''Veronica'',''Aubrecht'',''veronica.aubrecht@company.com'',to_date(''1926-07-02T23:39:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/248: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213836
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213836
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099352520213836
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 89
    ,p_stmt_num => 177
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (122,''Porsche'',''Shippee'',''porsche.shippee@company.com'',to_date(''1992-06-11T22:55:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213836
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213836
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099413170213836
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 90
    ,p_stmt_num => 179
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (95,''Buck'',''Campion'',''buck.campion@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/212: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213836
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213837
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099556652213837
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 91
    ,p_stmt_num => 181
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (68,''Jannette'',''Babino'',''jannette.babino@company.com'',to_date(''2000-09-15T12:25:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213837
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213837
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099615208213837
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 92
    ,p_stmt_num => 183
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (149,''Antonia'',''Mclachlan'',''antonia.mclachlan@company.com'',to_date(''1960-10-17T21:20:49Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2135.92,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213837
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213837
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099781104213837
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 93
    ,p_stmt_num => 185
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (14,''Griselda'',''Kurohara'',''griselda.kurohara@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/226: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213837
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213837
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099842491213837
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 94
    ,p_stmt_num => 187
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (41,''Therese'',''Zaeske'',''therese.zaeske@company.com'',to_date(''1927-01-09T01:19:55Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',7896.68,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213837
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213837
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4099939274213837
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 95
    ,p_stmt_num => 189
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (123,''Rufus'',''Morais'',''rufus.morais@company.com'',to_date(''1947-09-22T03:26:25Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',1404.72,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213837
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213837
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100000065213837
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 96
    ,p_stmt_num => 191
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (96,''Daniell'',''Grumney'',''daniell.grumney@company.com'',to_date(''2015-04-07T19:33:19Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213837
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213837
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100184500213837
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 97
    ,p_stmt_num => 193
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (69,''Vernita'',''Kulik'',''vernita.kulik@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/214: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213837
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213837
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100229962213837
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 98
    ,p_stmt_num => 195
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (150,''Pam'',''Dominis'',''pam.dominis@company.com'',to_date(''1984-02-21T23:28:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/235: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213837
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213838
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100307898213838
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 99
    ,p_stmt_num => 197
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (15,''Gladys'',''Laughery'',''gladys.laughery@company.com'',to_date(''1996-01-18T12:47:51Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213838
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213838
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100421684213838
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 100
    ,p_stmt_num => 199
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (42,''Letha'',''Kosir'',''letha.kosir@company.com'',to_date(''1982-03-01T11:16:29Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213838
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213838
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100527428213838
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 101
    ,p_stmt_num => 201
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (124,''Dann'',''Widerski'',''dann.widerski@company.com'',to_date(''1935-05-17T22:01:21Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/235: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213838
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213838
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100604022213838
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 102
    ,p_stmt_num => 203
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (97,''Marvella'',''Salemi'',''marvella.salemi@company.com'',to_date(''1948-10-29T05:27:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Java'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/242: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213838
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213838
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100751529213838
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 103
    ,p_stmt_num => 205
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (70,''Basil'',''Hanagan'',''basil.hanagan@company.com'',to_date(''1945-03-12T05:07:39Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213838
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213838
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100845023213838
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 104
    ,p_stmt_num => 207
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (16,''Francesco'',''Elland'',''francesco.elland@company.com'',to_date(''1985-08-11T11:14:13Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213838
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213838
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4100983169213838
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 105
    ,p_stmt_num => 209
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (43,''Gregoria'',''Ramotar'',''gregoria.ramotar@company.com'',to_date(''1953-05-17T00:15:49Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',5562.88,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213838
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213838
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101015961213838
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 106
    ,p_stmt_num => 211
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (125,''Danika'',''Kerans'',''danika.kerans@company.com'',to_date(''2000-11-30T19:00:07Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',7768.29,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213838
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213839
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101152548213839
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 107
    ,p_stmt_num => 213
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (98,''Camellia'',''Archuletta'',''camellia.archuletta@company.com'',to_date(''1986-07-21T03:05:33Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/246: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213839
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213839
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101239233213839
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 108
    ,p_stmt_num => 215
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (71,''Jarred'',''Israelsen'',''jarred.israelsen@company.com'',to_date(''1929-06-07T02:59:26Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',4379.78,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213839
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213839
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101333552213839
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 109
    ,p_stmt_num => 217
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (17,''Florida'',''Gilliand'',''florida.gilliand@company.com'',to_date(''2000-10-20T20:30:45Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/246: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213839
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213839
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101465494213839
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 110
    ,p_stmt_num => 219
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (44,''Delbert'',''Khatak'',''delbert.khatak@company.com'',to_date(''2024-10-28T05:27:30Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213839
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213839
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101553797213839
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 111
    ,p_stmt_num => 221
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (126,''Yvonne'',''Appleman'',''yvonne.appleman@company.com'',to_date(''1960-06-08T09:00:47Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213839
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213839
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101640644213839
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 112
    ,p_stmt_num => 223
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (99,''Timika'',''Wombles'',''timika.wombles@company.com'',to_date(''1999-11-08T19:32:05Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/243: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213839
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213839
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101784638213839
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 113
    ,p_stmt_num => 225
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (72,''Kisha'',''Leven'',''kisha.leven@company.com'',to_date(''1944-04-25T21:48:28Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/233: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213839
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213839
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101849916213840
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 114
    ,p_stmt_num => 227
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (18,''Granville'',''Mcmurrin'',''granville.mcmurrin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2674.1,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213840
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213840
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4101909502213840
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 115
    ,p_stmt_num => 229
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (45,''Rusty'',''Nesland'',''rusty.nesland@company.com'',to_date(''1943-10-31T20:37:23Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/237: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213840
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213840
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102071528213840
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 116
    ,p_stmt_num => 231
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (127,''Antoine'',''Applonie'',''antoine.applonie@company.com'',to_date(''1941-07-30T06:54:37Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/241: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213840
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213840
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102179338213840
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 117
    ,p_stmt_num => 233
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (100,''Daniele'',''Thorsten'',''daniele.thorsten@company.com'',to_date(''1971-08-14T14:53:32Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',4821.95,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213840
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213840
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102219958213840
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 118
    ,p_stmt_num => 235
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (73,''Martin'',''Musulin'',''martin.musulin@company.com'',to_date(''2016-07-21T20:47:43Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',2490.37,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213840
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213840
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102396616213840
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 119
    ,p_stmt_num => 237
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (19,''Bart'',''Detullio'',''bart.detullio@company.com'',to_date(''1949-07-21T18:54:56Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',6359.7,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213840
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213840
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4102430761213840
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 120
    ,p_stmt_num => 239
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (46,''Darlene'',''Pisano'',''darlene.pisano@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213840
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213840
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103518870213842
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 131
    ,p_stmt_num => 261
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (130,''Darcie'',''Hamm'',''darcie.hamm@company.com'',to_date(''1944-02-12T17:52:06Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/231: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213842
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213842
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103640055213842
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 132
    ,p_stmt_num => 263
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (103,''Josh'',''Vanderstelt'',''josh.vanderstelt@company.com'',to_date(''1934-01-08T05:56:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''NodeJS'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/247: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213842
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213842
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103719285213842
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 133
    ,p_stmt_num => 265
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (76,''Kirby'',''Honeyman'',''kirby.honeyman@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/216: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213842
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213842
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103860337213842
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 134
    ,p_stmt_num => 267
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (22,''Anneliese'',''Namdar'',''anneliese.namdar@company.com'',to_date(''1973-11-09T20:58:58Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''PLSQL'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/245: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213842
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213842
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4103904847213842
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 135
    ,p_stmt_num => 269
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (49,''Buffy'',''Melen'',''buffy.melen@company.com'',to_date(''1942-09-15T22:41:59Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213842
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213842
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104087889213842
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 136
    ,p_stmt_num => 271
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (131,''Tyrell'',''Zuelke'',''tyrell.zuelke@company.com'',to_date(''2004-02-02T08:26:04Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/235: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213842
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213842
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104175672213842
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 137
    ,p_stmt_num => 273
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (104,''Chadwick'',''Henscheid'',''chadwick.henscheid@company.com'',to_date(''1925-06-19T00:06:30Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',6629.79,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213843
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213843
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104281161213843
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 138
    ,p_stmt_num => 275
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (77,''Tommy'',''Stoor'',''tommy.stoor@company.com'',to_date(''1935-01-29T14:30:40Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''M'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/236: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213843
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213843
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104314686213843
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 139
    ,p_stmt_num => 277
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (23,''Colby'',''Sanagustin'',''colby.sanagustin@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/220: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213843
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213843
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104410783213843
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 140
    ,p_stmt_num => 279
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (50,''Edyth'',''Spindle'',''edyth.spindle@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/214: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213843
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213843
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104589372213843
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 141
    ,p_stmt_num => 281
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (132,''Gracia'',''Soldavini'',''gracia.soldavini@company.com'',to_date(''1958-08-29T14:27:12Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''CSS'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/244: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213843
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213843
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104667413213843
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 142
    ,p_stmt_num => 283
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (105,''Becky'',''Falsetti'',''becky.falsetti@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JavaScript'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/227: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213843
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213843
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104765994213843
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 143
    ,p_stmt_num => 285
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (78,''Callie'',''Antronica'',''callie.antronica@company.com'',to_date('''',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/226: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213843
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213843
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104893547213843
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 144
    ,p_stmt_num => 287
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (24,''Danille'',''Verbeck'',''danille.verbeck@company.com'',to_date(''1973-08-15T02:05:15Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213843
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213844
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4104913330213844
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 145
    ,p_stmt_num => 289
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (51,''Janine'',''Prudom'',''janine.prudom@company.com'',to_date(''1929-03-28T19:09:19Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',,''S'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/240: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213844
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213844
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4105070290213844
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 146
    ,p_stmt_num => 291
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (133,''Edith'',''Montbriand'',''edith.montbriand@company.com'',to_date(''1957-05-04T19:35:17Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/241: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213844
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213844
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4105125091213844
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 147
    ,p_stmt_num => 293
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (106,''Efren'',''Wallentine'',''efren.wallentine@company.com'',to_date(''2011-06-21T08:57:37Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''Angular'',,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/248: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213844
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213844
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4105205888213844
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 148
    ,p_stmt_num => 295
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (52,''Bunny'',''Oginski'',''bunny.oginski@company.com'',to_date(''1952-12-06T18:33:01Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),'''',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/234: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213844
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213844
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4105323769213844
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 149
    ,p_stmt_num => 297
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (79,''Bula'',''Esperanza'',''bula.esperanza@company.com'',to_date(''1940-08-30T01:40:35Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''JQuery'',2616.09,''L'')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/13: ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213844
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213844
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4105414669213844
    ,p_result_id => 4090402370213825
    ,p_file_id => 4039220267188741
    ,p_seq_id => 150
    ,p_stmt_num => 299
 ,p_stmt_text => 
'insert into "EMPLOYEES_TBL" ("ID","FIRST_NAME","LAST_NAME","EMAIL","BIRTHDAY","SKILLSET","SALARY","SHIRT_SIZE") values (25,''Gudrun'',''Snater'',''gudrun.snater@company.com'',to_date(''1937-09-10T18:39:34Z'',''YYYY-MM-DD"T"HH24:MI:SS"Z"''),''HTML'',,'''')'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/238: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_start_time => 9213844
    ,p_ended => to_date('202502201623','YYYYMMDDHH24MI')
    ,p_end_time => 9213844
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201623','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836';
wwv_flow_imp.g_varchar2_table(2) := '30353338313038383836323630313130393839353738363430393438372C27476973656C65272C274C696D74686F6E67272C27476973656C652E4C696D74686F6E6740696E7465726E616C6D272C272835343929203831352D35323736272C3631393230';
wwv_flow_imp.g_varchar2_table(3) := '373438363035333832323937373838343230373234353234393631313135363633293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C';
wwv_flow_imp.g_varchar2_table(4) := '2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353338333530363731343234303333393135343133353832313833392C275665726E697461272C274B756C696B272C275665726E6974612E4B756C696B40';
wwv_flow_imp.g_varchar2_table(5) := '696E7465726E616C6D6169272C272833353829203939332D39303039272C3631393230373438363035333834373135363430303539393533373833333130353238303135293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D50';
wwv_flow_imp.g_varchar2_table(6) := '4944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353338353932343536353837393536383431323438353233343139';
wwv_flow_imp.g_varchar2_table(7) := '312C27272C27416E646F6E69616E272C275068796C69732E416E646F6E69616E40696E7465726E616C6D272C272836333329203833382D39393731272C363139323037343836303533383731333334393136393931383330343136353939343033363729';
wwv_flow_imp.g_varchar2_table(8) := '3B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037';
wwv_flow_imp.g_varchar2_table(9) := '34383630353338383334323431373531383739373637303833343634363534332C2744616E697461272C274865756D616E6E272C2744616E6974612E4865756D616E6E40696E7465726E616C6D61272C272839363229203933302D34373134272C363139';
wwv_flow_imp.g_varchar2_table(10) := '3230373438363035333839353531333433333338343132333030303039333532373139293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C';
wwv_flow_imp.g_varchar2_table(11) := '222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353339303736303236393135383032363932393138343035383839352C2747726168616D272C274368616D62657273272C2747726168616D2E436861';
wwv_flow_imp.g_varchar2_table(12) := '6D6265727340696E7465726E616C6D272C272832343829203731322D37383132272C3631393230373438363035333931393639313934393737363431353538333538373635303731293B0D0A696E7365727420696E746F2022454D504C4F594545222028';
wwv_flow_imp.g_varchar2_table(13) := '22454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303533393331373831323037393732353631383735333334';
wwv_flow_imp.g_varchar2_table(14) := '37313234372C274564656C6D697261272C275769646D616E272C274564656C6D6972612E5769646D616E40696E7465726E616C6D272C272833313129203338352D33333736272C3631393230373438363035333934333837303436363136383730383136';
wwv_flow_imp.g_varchar2_table(15) := '373038313737343233293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75';
wwv_flow_imp.g_varchar2_table(16) := '6573202836313932303734383630353339353539353937323433363438353434353838323838333539392C2745696C65656E272C274D696C6C6F7474272C2745696C65656E2E4D696C6C6F747440696E7465726E616C6D61272C27272C36313932303734';
wwv_flow_imp.g_varchar2_table(17) := '38363035333936383034383938323536313030303735303537353839373735293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250';
wwv_flow_imp.g_varchar2_table(18) := '484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353339383031333832343037353731343730343233323239353935312C274A756C69616E272C2752756461636B272C274A756C69616E2E52756461636B40696E';
wwv_flow_imp.g_varchar2_table(19) := '7465726E616C6D6169272C27272C3631393230373438363035333939323232373439383935333239333333343037303032313237293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C';
wwv_flow_imp.g_varchar2_table(20) := '224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353430303433313637353731343934333936323538313730383330332C274B6576696E272C275361776C69';
wwv_flow_imp.g_varchar2_table(21) := '76696368272C274B6576696E2E5361776C697669636840696E7465726E616C6D272C272834303129203938302D36343233272C3631393230373438363035343031363430363031353334353538353931373536343134343739293B0D0A696E7365727420';
wwv_flow_imp.g_varchar2_table(22) := '696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353430323834';
wwv_flow_imp.g_varchar2_table(23) := '393532373335343137333232303933313132303635352C274461726E656C6C272C275261696E626F77272C274461726E656C6C2E5261696E626F7740696E7465726E616C6D272C272838373129203236342D33373036272C363139323037343836303534';
wwv_flow_imp.g_varchar2_table(24) := '3034303538343533313733373837383530313035383236383331293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E';
wwv_flow_imp.g_varchar2_table(25) := '4F222C2253414C41525922292076616C756573202836313932303734383630353430353236373337383939333430323437393238303533333030372C274B69736861272C274C6576656E272C274B697368612E4C6576656E40696E7465726E616C6D6169';
wwv_flow_imp.g_varchar2_table(26) := '6C272C272835353129203439372D39353133272C3631393230373438363035343036343736333034383133303137313038343535323339313833293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C224649525354';
wwv_flow_imp.g_varchar2_table(27) := '4E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353430373638353233303633323633313733373632393934353335392C2742656C6C61272C';
wwv_flow_imp.g_varchar2_table(28) := '274F7374657266656C64272C2742656C6C612E4F7374657266656C6440696E7465726E616C6D272C272838373129203330392D31303938272C3631393230373438363035343038383934313536343532323436333636383034363531353335293B0D0A69';
wwv_flow_imp.g_varchar2_table(29) := '6E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630';
wwv_flow_imp.g_varchar2_table(30) := '353431303130333038323237313836303939353937393335373731312C2742617274272C27446574756C6C696F272C27426172742E446574756C6C696F40696E7465726E616C6D6169272C272833353829203234302D35383731272C3631393230373438';
wwv_flow_imp.g_varchar2_table(31) := '363035343131333132303038303931343735363235313534303633383837293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C225048';
wwv_flow_imp.g_varchar2_table(32) := '4F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353431323532303933333931313039303235343332383737303036332C27536162696E65272C27426F6E616775696469272C27536162696E652E426F6E61677569';
wwv_flow_imp.g_varchar2_table(33) := '646940696E7465726E616C272C272838323629203732342D35393731272C3631393230373438363035343133373239383539373330373034383833353033343736323339293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D50';
wwv_flow_imp.g_varchar2_table(34) := '4944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353431343933383738353535303331393531323637383138323431';
wwv_flow_imp.g_varchar2_table(35) := '352C27476C656E6E272C27272C27476C656E6E2E4D63677261666640696E7465726E616C6D6169272C272833363529203639312D39333136272C3631393230373438363035343136313437373131333639393334313431383532383838353931293B0D0A';
wwv_flow_imp.g_varchar2_table(36) := '696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836';
wwv_flow_imp.g_varchar2_table(37) := '30353431373335363633373138393534383737313032373539343736372C275468656F646F7261272C2742656176696E272C275468656F646F72612E42656176696E40696E7465726E616C6D272C272834343929203432392D39393234272C3631393230';
wwv_flow_imp.g_varchar2_table(38) := '373438363035343138353635353633303039313633343030323032333030393433293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C';
wwv_flow_imp.g_varchar2_table(39) := '2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353431393737343438383832383737383032393337373030373131392C2754696666616E6579272C27426F7A6F76696368272C2754696666616E65792E42';
wwv_flow_imp.g_varchar2_table(40) := '6F7A6F7669636840696E7465726E61272C272836323129203831332D38303935272C3631393230373438363035343230393833343134363438333932363538353531373133323935293B0D0A696E7365727420696E746F2022454D504C4F594545222028';
wwv_flow_imp.g_varchar2_table(41) := '22454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303534323231393233343034363830303732383737323634';
wwv_flow_imp.g_varchar2_table(42) := '31393437312C27272C274B75726F68617261272C2747726973656C64612E4B75726F6861726140696E7465726E61272C272835303829203839342D39353837272C3631393230373438363035343233343031323636323837363231393136393031313235';
wwv_flow_imp.g_varchar2_table(43) := '363437293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631';
wwv_flow_imp.g_varchar2_table(44) := '3932303734383630353432343631303139323130373233363534363037353833313832332C274564646965272C27446965747269636B272C2745646469652E446965747269636B40696E7465726E616C6D61272C272837303229203331342D3131393827';
wwv_flow_imp.g_varchar2_table(45) := '2C3631393230373438363035343235383139313137393236383531313735323530353337393939293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C2245';
wwv_flow_imp.g_varchar2_table(46) := '4D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353432373032383034333734363436353830343432353234343137352C27546F6D6D79272C2753746F6F72272C27546F6D6D792E53746F6F';
wwv_flow_imp.g_varchar2_table(47) := '7240696E7465726E616C6D61696C272C272833363029203733312D37353032272C3631393230373438363035343238323336393639353636303830343333353939393530333531293B0D0A696E7365727420696E746F2022454D504C4F59454522202822';
wwv_flow_imp.g_varchar2_table(48) := '454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353432393434353839353338353639353036323737343635';
wwv_flow_imp.g_varchar2_table(49) := '363532372C275665726F6E696361272C274175627265636874272C275665726F6E6963612E417562726563687440696E7465726E61272C272837323029203535372D32343239272C36313932303734383630353433303635343832313230353330393639';
wwv_flow_imp.g_varchar2_table(50) := '31393439333632373033293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C';
wwv_flow_imp.g_varchar2_table(51) := '756573202836313932303734383630353433313836333734373032343932343332313132343036383837392C2744616E69656C272C275374726F6E67272C2744616E69656C2E5374726F6E6740696E7465726E616C6D6169272C27283732332920353834';
wwv_flow_imp.g_varchar2_table(52) := '2D32343733272C3631393230373438363035343333303732363732383434353338393530323938373735303535293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E41';
wwv_flow_imp.g_varchar2_table(53) := '4D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353433343238313539383636343135333537393437333438313233312C27416E746F6E6961272C274D636C6163686C616E27';
wwv_flow_imp.g_varchar2_table(54) := '2C27416E746F6E69612E4D636C6163686C616E40696E7465726E61272C272833383429203839312D37383134272C3631393230373438363035343335343930353234343833373638323038363438313837343037293B0D0A696E7365727420696E746F20';
wwv_flow_imp.g_varchar2_table(55) := '22454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303534333636393934353033';
wwv_flow_imp.g_varchar2_table(56) := '30333338323833373832323839333538332C274A6F6E6174686F6E272C27426F746E6572272C274A6F6E6174686F6E2E426F746E657240696E7465726E616C6D272C272834393129203738362D32353732272C3631393230373438363035343337393038';
wwv_flow_imp.g_varchar2_table(57) := '333736313232393937343636393937353939373539293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253';
wwv_flow_imp.g_varchar2_table(58) := '414C41525922292076616C756573202836313932303734383630353433393131373330313934323631323039363137323330353933352C27436C6576656C616E64272C2747617373657274272C27436C6576656C616E642E4761737365727440696E7465';
wwv_flow_imp.g_varchar2_table(59) := '726E61272C272832303429203837392D37363635272C3631393230373438363035343430333236323237373632323236373235333437303132313131293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C22464952';
wwv_flow_imp.g_varchar2_table(60) := '53544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353434313533353135333538313834313335343532313731383238372C275275746861';
wwv_flow_imp.g_varchar2_table(61) := '6E6E65272C27427572676F796E65272C2752757468616E6E652E427572676F796E6540696E7465726E61272C272836343629203237352D35393034272C363139323037343836303534343237343430373934303134353539383336393634323434363329';
wwv_flow_imp.g_varchar2_table(62) := '3B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037';
wwv_flow_imp.g_varchar2_table(63) := '34383630353434333935333030353232313037303631323837313133303633392C274C6962626965272C27526973686572272C274C69626269652E52697368657240696E7465726E616C6D6169272C272839353729203530362D39313633272C36313932';
wwv_flow_imp.g_varchar2_table(64) := '30373438363035343435313631393331303430363835323432303435383336383135293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(65) := '2C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353434363337303835363836303239393837313232303534323939312C274A616E696E65272C27507275646F6D272C274A616E696E652E507275646F6D';
wwv_flow_imp.g_varchar2_table(66) := '40696E7465726E616C6D6169272C272833333229203230392D38363136272C3631393230373438363035343437353739373832363739393134353030333935323439313637293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D';
wwv_flow_imp.g_varchar2_table(67) := '504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303534343837383837303834393935323931323935363939353533';
wwv_flow_imp.g_varchar2_table(68) := '34332C2744616E69656C65272C2754686F727374656E272C2744616E69656C652E54686F727374656E40696E7465726E616C272C272836313229203936352D37343735272C293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D';
wwv_flow_imp.g_varchar2_table(69) := '504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303534343939393736333433313931343337353837343436363135';
wwv_flow_imp.g_varchar2_table(70) := '31392C2754657272657361272C2748616E6861726474272C27546572726573612E48616E686172647440696E7465726E616C272C272838363129203337322D33353637272C36313932303734383630353435313230363536303133383735383338373931';
wwv_flow_imp.g_varchar2_table(71) := '39333637363935293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573';
wwv_flow_imp.g_varchar2_table(72) := '202836313932303734383630353435323431353438353935383337333031373039343037333837312C2744617261272C27426F6E6E656175272C27446172612E426F6E6E65617540696E7465726E616C6D61696C272C272833393629203732382D363137';
wwv_flow_imp.g_varchar2_table(73) := '38272C3631393230373438363035343533363234343131373737393837363436323638373830303437293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C';
wwv_flow_imp.g_varchar2_table(74) := '22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320282C27486F6E67272C2743686172746572272C27486F6E672E4368617274657240696E7465726E616C6D61696C272C272835333629203535322D38363832272C36';
wwv_flow_imp.g_varchar2_table(75) := '31393230373438363035343534383333333337353937363032323735343433343836323233293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41';
wwv_flow_imp.g_varchar2_table(76) := '494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353435363034323236333431373231363930343631383139323339392C27546F6D617361272C274F726F756B65272C27546F6D6173612E4F726F';
wwv_flow_imp.g_varchar2_table(77) := '756B6540696E7465726E616C6D6169272C272834383129203931322D38393936272C3631393230373438363035343537323531313839323336383331353333373932383938353735293B0D0A696E7365727420696E746F2022454D504C4F594545222028';
wwv_flow_imp.g_varchar2_table(78) := '22454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303534353834363031313530353634343631363239363736';
wwv_flow_imp.g_varchar2_table(79) := '30343735312C274A616E796365272C27446169676E61756C74272C274A616E7963652E446169676E61756C7440696E7465726E616C272C272836363929203531342D38303231272C36313932303734383630353435393636393034303837363036303739';
wwv_flow_imp.g_varchar2_table(80) := '32313432333130393237293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C';
wwv_flow_imp.g_varchar2_table(81) := '756573202836313932303734383630353436303837373936363639353637353432313331373031373130332C2750616D616C61272C274D63646577697474272C2750616D616C612E4D6364657769747440696E7465726E616C6D272C2728333536292038';
wwv_flow_imp.g_varchar2_table(82) := '36312D35383838272C3631393230373438363035343632303836383932353135323930303530343931373233323739293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C415354';
wwv_flow_imp.g_varchar2_table(83) := '4E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353436333239353831383333343930343637393636363432393435352C27466C6F79272C27437261766572272C27272C';
wwv_flow_imp.g_varchar2_table(84) := '272834353529203239372D31393331272C3631393230373438363035343634353034373434313534353139333038383431313335363331293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D';
wwv_flow_imp.g_varchar2_table(85) := '45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353436353731333636393937343133333933383031353834313830372C274A7564736F6E272C274B';
wwv_flow_imp.g_varchar2_table(86) := '616E747A272C27272C27272C3631393230373438363035343636393232353935373933373438353637313930353437393833293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C';
wwv_flow_imp.g_varchar2_table(87) := '4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353436383133313532313631333336333139363336353235343135392C275061626C6F272C27436176656E6579';
wwv_flow_imp.g_varchar2_table(88) := '272C275061626C6F2E436176656E657940696E7465726E616C6D6169272C272835353429203236382D37313935272C3631393230373438363035343639333430343437343332393737383235353339393630333335293B0D0A696E7365727420696E746F';
wwv_flow_imp.g_varchar2_table(89) := '2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035343730353439333733';
wwv_flow_imp.g_varchar2_table(90) := '3235323539323435343731343636363531312C275275746865272C274E697368696F6B61272C2752757468652E4E697368696F6B6140696E7465726E616C6D61272C272839363029203531302D34313232272C3631393230373438363035343731373538';
wwv_flow_imp.g_varchar2_table(91) := '323939303732323037303833383839333732363837293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253';
wwv_flow_imp.g_varchar2_table(92) := '414C41525922292076616C756573202836313932303734383630353437323936373232343839313832313731333036343037383836332C27466C6F72696461272C2747696C6C69616E64272C27466C6F726964612E47696C6C69616E6440696E7465726E';
wwv_flow_imp.g_varchar2_table(93) := '616C272C272839303329203534372D39323935272C3631393230373438363035343734313736313530373131343336333432323338373835303339293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253';
wwv_flow_imp.g_varchar2_table(94) := '544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353437353338353037363533313035303937313431333439313231352C2742756E6E7927';
wwv_flow_imp.g_varchar2_table(95) := '2C274F67696E736B69272C2742756E6E792E4F67696E736B6940696E7465726E616C6D6169272C272835363529203537342D37373836272C3631393230373438363035343736353934303032333530363635363030353838313937333931293B0D0A696E';
wwv_flow_imp.g_varchar2_table(96) := '7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035';
wwv_flow_imp.g_varchar2_table(97) := '3437373830323932383137303238303232393736323930333536372C274C65747479272C27526963636172646F272C274C657474792E526963636172646F40696E7465726E616C6D61272C272833333629203235352D33363435272C3631393230373438';
wwv_flow_imp.g_varchar2_table(98) := '363035343739303131383533393839383934383538393337363039373433293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C225048';
wwv_flow_imp.g_varchar2_table(99) := '4F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353438303232303737393830393530393438383131323331353931392C27456672656E272C2757616C6C656E74696E65272C27456672656E2E57616C6C656E7469';
wwv_flow_imp.g_varchar2_table(100) := '6E6540696E7465726E616C272C272834303429203430362D32363437272C3631393230373438363035343831343239373035363239313234313137323837303232303935293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D50';
wwv_flow_imp.g_varchar2_table(101) := '4944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353438323633383633313434383733383734363436313732383237';
wwv_flow_imp.g_varchar2_table(102) := '312C274772616E76696C6C65272C274D636D757272696E272C274772616E76696C6C652E4D636D757272696E40696E7465726E272C272838393029203338362D36303734272C363139323037343836303534383338343735353732363833353333373536';
wwv_flow_imp.g_varchar2_table(103) := '3336343334343437293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565';
wwv_flow_imp.g_varchar2_table(104) := '7320282C274A6F73656661272C275368696C74272C274A6F736566612E5368696C7440696E7465726E616C6D61696C272C272832323329203334362D31333435272C36313932303734383630353438353035363438333038373936383030343831313134';
wwv_flow_imp.g_varchar2_table(105) := '30363233293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836';
wwv_flow_imp.g_varchar2_table(106) := '313932303734383630353438363236353430383930373538323633333938353834363739392C2742656175272C27446565726D616E272C27426561752E446565726D616E40696E7465726E616C6D61696C272C272838393829203436342D35393632272C';
wwv_flow_imp.g_varchar2_table(107) := '293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230';
wwv_flow_imp.g_varchar2_table(108) := '3734383630353438373437343333343732373139373236333136303535323937352C2757796E6F6E61272C2754656E6461272C2757796E6F6E612E54656E646140696E7465726E616C6D61696C272C272837363129203732322D37363935272C36313932';
wwv_flow_imp.g_varchar2_table(109) := '30373438363035343838363833323630353436383131383932333335323539313531293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(110) := '2C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353438393839323138363336363432363532313530393936353332372C275275737479272C274E65736C616E64272C2752757374792E4E65736C616E64';
wwv_flow_imp.g_varchar2_table(111) := '40696E7465726E616C6D6169272C272833363129203931322D39333839272C3631393230373438363035343931313031313132313836303431313530363834363731353033293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D';
wwv_flow_imp.g_varchar2_table(112) := '504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303534393233313030333830303536353537373938353933373736';
wwv_flow_imp.g_varchar2_table(113) := '37392C274461726369272C27476C6173736E6572272C2744617263692E476C6173736E657240696E7465726E616C6D61272C272839343429203536382D38363730272C363139323037343836303534393335313839363338323532373034303930333430';
wwv_flow_imp.g_varchar2_table(114) := '3833383535293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028';
wwv_flow_imp.g_varchar2_table(115) := '36313932303734383630353439343732373838393634343838353033383230383739303033312C274672616E272C2753696262616C64272C274672616E2E53696262616C6440696E7465726E616C6D61696C272C272838343929203538392D3435353227';
wwv_flow_imp.g_varchar2_table(116) := '2C3631393230373438363035343935393336383135343634343939363637333833343936323037293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C2245';
wwv_flow_imp.g_varchar2_table(117) := '4D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353439373134353734313238343131343239363535383230323338332C27477573736965272C274B68696C6C696E67272C27477573736965';
wwv_flow_imp.g_varchar2_table(118) := '2E4B68696C6C696E6740696E7465726E616C6D272C272838323929203630342D33363031272C3631393230373438363035343938333534363637313033373238393235373332393038353539293B0D0A696E7365727420696E746F2022454D504C4F5945';
wwv_flow_imp.g_varchar2_table(119) := '4522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035343939353633353932393233333433353534';
wwv_flow_imp.g_varchar2_table(120) := '3930373631343733352C274265636B79272C2746616C7365747469272C274265636B792E46616C736574746940696E7465726E616C6D61272C272838383929203533372D37353236272C3631393230373438363035353030373732353138373432393538';
wwv_flow_imp.g_varchar2_table(121) := '313834303832333230393131293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076';
wwv_flow_imp.g_varchar2_table(122) := '616C756573202836313932303734383630353530313938313434343536323537323831333235373032373038372C275275667573272C274D6F72616973272C2752756675732E4D6F7261697340696E7465726E616C6D61696C272C272839383329203831';
wwv_flow_imp.g_varchar2_table(123) := '362D38373136272C3631393230373438363035353033313930333730333832313837343432343331373333323633293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E';
wwv_flow_imp.g_varchar2_table(124) := '414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353530343339393239363230313830323037313630363433393433392C2742756C61272C274573706572616E7A61272C27';
wwv_flow_imp.g_varchar2_table(125) := '42756C612E4573706572616E7A6140696E7465726E616C6D61272C272834363329203634312D37383235272C3631393230373438363035353035363038323232303231343136373030373831313435363135293B0D0A696E7365727420696E746F202245';
wwv_flow_imp.g_varchar2_table(126) := '4D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035353036383137313437383431';
wwv_flow_imp.g_varchar2_table(127) := '3033313332393935353835313739312C274A6172726564272C2749737261656C73656E272C274A61727265642E49737261656C73656E40696E7465726E616C272C272835303529203736372D38383733272C363139323037343836303535303830323630';
wwv_flow_imp.g_varchar2_table(128) := '3733363630363435393539313330353537393637293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C225341';
wwv_flow_imp.g_varchar2_table(129) := '4C41525922292076616C756573202836313932303734383630353530393233343939393438303236303538383330353236343134332C274265617461272C274C6164696575272C2742656174612E4C616469657540696E7465726E616C6D61696C272C27';
wwv_flow_imp.g_varchar2_table(130) := '2834333129203236392D37333037272C3631393230373438363035353130343433393235323939383735323137343739393730333139293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45';
wwv_flow_imp.g_varchar2_table(131) := '222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353531313635323835313131393438393834363635343637363439352C274A6F6E6E6965272C275370';
wwv_flow_imp.g_varchar2_table(132) := '656C6C616E65272C274A6F6E6E69652E5370656C6C616E6540696E7465726E616C6D272C272836303929203234352D36343933272C3631393230373438363035353132383631373736393339313034343735383239333832363731293B0D0A696E736572';
wwv_flow_imp.g_varchar2_table(133) := '7420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320282C27486F6C6C6973272C274A6F6E';
wwv_flow_imp.g_varchar2_table(134) := '6461686C272C27486F6C6C69732E4A6F6E6461686C40696E7465726E616C6D61272C272839383329203638352D37303633272C3631393230373438363035353134303730373032373538373139313035303034303838383437293B0D0A696E7365727420';
wwv_flow_imp.g_varchar2_table(135) := '696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353531353237';
wwv_flow_imp.g_varchar2_table(136) := '393632383537383333333733343137383739353032332C2752757373656C272C274865696E7A656C6D616E272C2752757373656C2E4865696E7A656C6D616E40696E7465726E61272C272832363029203639382D32373635272C293B0D0A696E73657274';
wwv_flow_imp.g_varchar2_table(137) := '20696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303535313634';
wwv_flow_imp.g_varchar2_table(138) := '38383535343339373934383336333335333530313139392C27272C274761746C696E67272C2744616E79656C2E4761746C696E6740696E7465726E616C6D61272C272832323529203838322D37323933272C363139323037343836303535313736393734';
wwv_flow_imp.g_varchar2_table(139) := '3830323137353632393932353238323037333735293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C225341';
wwv_flow_imp.g_varchar2_table(140) := '4C41525922292076616C756573202836313932303734383630353531383930363430363033373137373632313730323931333535312C2745646965272C2754617665726E696572272C27456469652E54617665726E69657240696E7465726E616C6D6127';
wwv_flow_imp.g_varchar2_table(141) := '2C272833393029203737352D34323931272C3631393230373438363035353230313135333331383536373932323530383737363139373237293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E41';
wwv_flow_imp.g_varchar2_table(142) := '4D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353532313332343235373637363430363838303035323332353930332C275279616E272C274D6F';
wwv_flow_imp.g_varchar2_table(143) := '6E746F7269272C275279616E2E4D6F6E746F726940696E7465726E616C6D61696C272C272838333329203532312D37373233272C3631393230373438363035353232353333313833343936303231353039323237303332303739293B0D0A696E73657274';
wwv_flow_imp.g_varchar2_table(144) := '20696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303535323337';
wwv_flow_imp.g_varchar2_table(145) := '34323130393331353633363133383430313733383235352C2743656C6961272C2753636F74686F726E272C2743656C69612E53636F74686F726E40696E7465726E616C6D61272C272838393729203832352D32313432272C363139323037343836303535';
wwv_flow_imp.g_varchar2_table(146) := '3234393531303335313335323530373637353736343434343331293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E';
wwv_flow_imp.g_varchar2_table(147) := '4F222C2253414C41525922292076616C75657320282C27477261636961272C27536F6C646176696E69272C274772616369612E536F6C646176696E6940696E7465726E616C272C27272C3631393230373438363035353236313539393630393534383635';
wwv_flow_imp.g_varchar2_table(148) := '333936373531313530363037293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076';
wwv_flow_imp.g_varchar2_table(149) := '616C75657320282C2747696E676572272C275A6F726D616E272C2747696E6765722E5A6F726D616E40696E7465726E616C6D6169272C272832313229203531372D31323436272C3631393230373438363035353237333638383836373734343830303235';
wwv_flow_imp.g_varchar2_table(150) := '393235383536373833293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75';
wwv_flow_imp.g_varchar2_table(151) := '6573202836313932303734383630353532383537373831323539343039343635353130303536323935392C27477261636961272C2754736169272C274772616369612E5473616940696E7465726E616C6D61696C272C272838333329203731312D393532';
wwv_flow_imp.g_varchar2_table(152) := '31272C3631393230373438363035353239373836373338343133373039323834323735323639313335293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C';
wwv_flow_imp.g_varchar2_table(153) := '22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353533303939353636343233333332333931333434393937353331312C274564726973272C274C6966666F7264272C2745647269732E';
wwv_flow_imp.g_varchar2_table(154) := '4C6966666F726440696E7465726E616C6D6169272C272833343329203530342D37343639272C3631393230373438363035353332323034353930303532393338353432363234363831343837293B0D0A696E7365727420696E746F2022454D504C4F5945';
wwv_flow_imp.g_varchar2_table(155) := '4522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035353333343133353135383732353533313731';
wwv_flow_imp.g_varchar2_table(156) := '3739393338373636332C2744616E6E69656C6C65272C27436F6E666F72746F272C2744616E6E69656C6C652E436F6E666F72746F40696E7465726E272C272835303829203433382D34363938272C36313932303734383630353533343632323434313639';
wwv_flow_imp.g_varchar2_table(157) := '32313637383030393734303933383339293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C415259';
wwv_flow_imp.g_varchar2_table(158) := '22292076616C756573202836313932303734383630353533353833313336373531313738323433303134383830303031352C2744656C6961272C274E6F72746573616E6F272C2744656C69612E4E6F72746573616E6F40696E7465726E616C6D272C2728';
wwv_flow_imp.g_varchar2_table(159) := '38313029203932312D33383733272C3631393230373438363035353337303430323933333331333937303539333233353036313931293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D4522';
wwv_flow_imp.g_varchar2_table(160) := '2C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353533383234393231393135313031313638383439383231323336372C274C65746861272C274B6F7369';
wwv_flow_imp.g_varchar2_table(161) := '72272C274C657468612E4B6F73697240696E7465726E616C6D61696C272C272834313229203436332D34343232272C3631393230373438363035353339343538313434393730363236333137363732393138353433293B0D0A696E7365727420696E746F';
wwv_flow_imp.g_varchar2_table(162) := '2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035353430363637303730';
wwv_flow_imp.g_varchar2_table(163) := '3739303234303934363834373632343731392C2744656C62657274272C27272C2744656C626572742E4B686174616B40696E7465726E616C6D61272C272832383029203534302D32323939272C3631393230373438363035353431383735393936363039';
wwv_flow_imp.g_varchar2_table(164) := '383535353736303232333330383935293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922';
wwv_flow_imp.g_varchar2_table(165) := '292076616C756573202836313932303734383630353534333038343932323432393437303230353139373033373037312C2742656C7661272C274F6C64272C2742656C76612E4F6C6440696E7465726E616C6D61696C272C272834333129203635332D37';
wwv_flow_imp.g_varchar2_table(166) := '363737272C3631393230373438363035353434323933383438323439303834383334333731373433323437293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45';
wwv_flow_imp.g_varchar2_table(167) := '222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353534353530323737343036383639393436333534363434393432332C27416E6E656C69657365272C274E616D646172272C2741';
wwv_flow_imp.g_varchar2_table(168) := '6E6E656C696573652E4E616D64617240696E7465726E616C272C272836373429203430322D36383632272C3631393230373438363035353436373131363939383838333134303932373231313535353939293B0D0A696E7365727420696E746F2022454D';
wwv_flow_imp.g_varchar2_table(169) := '504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303535343739323036323537303739';
wwv_flow_imp.g_varchar2_table(170) := '32383732313839353836313737352C2750696E67272C27272C2750696E672E4976656C40696E7465726E616C6D61696C272C272838353629203534322D34383238272C363139323037343836303535343931323935353135323735343333353130373035';
wwv_flow_imp.g_varchar2_table(171) := '3637393531293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028';
wwv_flow_imp.g_varchar2_table(172) := '36313932303734383630353535303333383437373334373135373938303234353237343132372C274461726C65656E272C2743617374656E272C274461726C65656E2E43617374656E40696E7465726E616C6D61272C272832303829203736332D383933';
wwv_flow_imp.g_varchar2_table(173) := '30272C3631393230373438363035353531353437343033313636373732363039343139393830333033293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C';
wwv_flow_imp.g_varchar2_table(174) := '22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320282C2747696C626572746F272C2757656962656C272C2747696C626572746F2E57656962656C40696E7465726E616C6D272C272832343829203937302D39383234';
wwv_flow_imp.g_varchar2_table(175) := '272C3631393230373438363035353532373536333238393836333837323338353934363836343739293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22';
wwv_flow_imp.g_varchar2_table(176) := '454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353535333936353235343830363030313836373736393339323635352C2744616E696B61272C274B6572616E73272C2744616E696B612E';
wwv_flow_imp.g_varchar2_table(177) := '4B6572616E7340696E7465726E616C6D6169272C272832383529203239392D31343730272C3631393230373438363035353535313734313830363235363136343936393434303938383331293B0D0A696E7365727420696E746F2022454D504C4F594545';
wwv_flow_imp.g_varchar2_table(178) := '22202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303535353633383331303634343532333131323631';
wwv_flow_imp.g_varchar2_table(179) := '31383830353030372C2744616E69656C6C272C274772756D6E6579272C2744616E69656C6C2E4772756D6E657940696E7465726E616C6D272C272838373029203338372D37393633272C3631393230373438363035353537353932303332323634383435';
wwv_flow_imp.g_varchar2_table(180) := '373535323933353131313833293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076';
wwv_flow_imp.g_varchar2_table(181) := '616C756573202836313932303734383630353535383830303935383038343436303338343436383231373335392C27456C616E6F72272C275368696E73656C272C27456C616E6F722E5368696E73656C40696E7465726E616C6D61272C27283438352920';
wwv_flow_imp.g_varchar2_table(182) := '3830352D36313135272C3631393230373438363035353630303039383833393034303735303133363432393233353335293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153';
wwv_flow_imp.g_varchar2_table(183) := '544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353536313231383830393732333638393634323831373632393731312C274A616E697461272C2745736B6172616E27';
wwv_flow_imp.g_varchar2_table(184) := '2C274A616E6974612E45736B6172616E40696E7465726E616C6D61272C272834323629203931312D37393236272C3631393230373438363035353632343237373335353433333034323731393932333335383837293B0D0A696E7365727420696E746F20';
wwv_flow_imp.g_varchar2_table(185) := '22454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303535363336333636363133';
wwv_flow_imp.g_varchar2_table(186) := '36323931383930313136373034323036332C27476C61647973272C274C61756768657279272C27476C616479732E4C6175676865727940696E7465726E616C6D272C272838313229203332312D32373838272C3631393230373438363035353634383435';
wwv_flow_imp.g_varchar2_table(187) := '353837313832353333353330333431373438323339293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253';
wwv_flow_imp.g_varchar2_table(188) := '414C41525922292076616C756573202836313932303734383630353536363035343531333030323134383135393531363435343431352C2754696D696B61272C27272C2754696D696B612E576F6D626C657340696E7465726E616C6D61272C2728353136';
wwv_flow_imp.g_varchar2_table(189) := '29203533362D36323736272C3631393230373438363035353637323633343338383231373632373838363931313630353931293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C';
wwv_flow_imp.g_varchar2_table(190) := '4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353536383437323336343634313337373431373836353836363736372C27416E6E696365272C274D6363726F73';
wwv_flow_imp.g_varchar2_table(191) := '73656E272C27416E6E6963652E4D6363726F7373656E40696E7465726E616C272C272839363829203234332D36383632272C3631393230373438363035353639363831323930343630393932303437303430353732393433293B0D0A696E736572742069';
wwv_flow_imp.g_varchar2_table(192) := '6E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035353730383930';
wwv_flow_imp.g_varchar2_table(193) := '3231363238303630363637363231353237393131392C274D617276656C6C61272C2753616C656D69272C274D617276656C6C612E53616C656D6940696E7465726E616C6D272C272836333429203330302D37343038272C36313932303734383630353537';
wwv_flow_imp.g_varchar2_table(194) := '32303939313432313030323231333035333839393835323935293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F';
wwv_flow_imp.g_varchar2_table(195) := '222C2253414C41525922292076616C756573202836313932303734383630353537333330383036373931393833353933343536343639313437312C274275636B272C2743616D70696F6E272C274275636B2E43616D70696F6E40696E7465726E616C6D61';
wwv_flow_imp.g_varchar2_table(196) := '696C272C272839323229203439322D38393631272C3631393230373438363035353734353136393933373339343530353633373339333937363437293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253';
wwv_flow_imp.g_varchar2_table(197) := '544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320282C2744616E6E272C275769646572736B69272C2744616E6E2E5769646572736B6940696E7465726E616C6D616927';
wwv_flow_imp.g_varchar2_table(198) := '2C272832303329203739362D36333233272C3631393230373438363035353735373235393139353539303635313932393134313033383233293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E41';
wwv_flow_imp.g_varchar2_table(199) := '4D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353537363933343834353337383637393832323038383830393939392C2747756472756E272C27';
wwv_flow_imp.g_varchar2_table(200) := '536E61746572272C2747756472756E2E536E6174657240696E7465726E616C6D6169272C272836383029203236362D33353332272C3631393230373438363035353738313433373731313938323934343531323633353136313735293B0D0A696E736572';
wwv_flow_imp.g_varchar2_table(201) := '7420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035353739';
wwv_flow_imp.g_varchar2_table(202) := '3335323639373031373930393038303433383232323335312C27486F72616365272C274B616D696E6572272C27486F726163652E4B616D696E657240696E7465726E616C6D61272C272839373529203230382D34323639272C3631393230373438363035';
wwv_flow_imp.g_varchar2_table(203) := '353830353631363232383337353233373039363132393238353237293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E45';
wwv_flow_imp.g_varchar2_table(204) := '4E4F222C2253414C41525922292076616C756573202836313932303734383630353538313737303534383635373133383333383738373633343730332C2744617272656E272C27536574746C6572272C2744617272656E2E536574746C657240696E7465';
wwv_flow_imp.g_varchar2_table(205) := '726E616C6D61272C272835383429203935372D36373837272C293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F';
wwv_flow_imp.g_varchar2_table(206) := '222C2253414C41525922292076616C756573202836313932303734383630353538323937393437343437363735323936373936323334303837392C27416E746F6E696F272C274B6F706572272C27416E746F6E696F2E4B6F70657240696E7465726E616C';
wwv_flow_imp.g_varchar2_table(207) := '6D6169272C272838393229203233322D39313230272C293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C22';
wwv_flow_imp.g_varchar2_table(208) := '53414C41525922292076616C756573202836313932303734383630353538343138383430303239363336373539373133373034373035352C2744616E696C6C65272C275665726265636B272C2744616E696C6C652E5665726265636B40696E7465726E61';
wwv_flow_imp.g_varchar2_table(209) := '6C6D272C272834313629203838372D36343438272C3631393230373438363035353835333937333236313135393832323236333131373533323331293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253';
wwv_flow_imp.g_varchar2_table(210) := '544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353538363630363235313933353539363835353438363435393430372C27272C27556E74';
wwv_flow_imp.g_varchar2_table(211) := '616C616E272C2744656C61696E652E556E74616C616E40696E7465726E616C6D272C272836393229203536352D34313130272C3631393230373438363035353837383135313737373535323131343834363631313635353833293B0D0A696E7365727420';
wwv_flow_imp.g_varchar2_table(212) := '696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353538393032';
wwv_flow_imp.g_varchar2_table(213) := '343130333537343832363131333833353837313735392C27527570657274272C275461726479272C275275706572742E546172647940696E7465726E616C6D61696C272C272838383429203436382D38383237272C363139323037343836303535393032';
wwv_flow_imp.g_varchar2_table(214) := '3333303239333934343430373433303130353737393335293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C';
wwv_flow_imp.g_varchar2_table(215) := '2253414C41525922292076616C756573202836313932303734383630353539313434313935353231343035353337323138353238343131312C27436861647769636B272C2748656E736368656964272C27436861647769636B2E48656E73636865696440';
wwv_flow_imp.g_varchar2_table(216) := '696E7465726E272C272837333429203732342D39373739272C3631393230373438363035353932363530383831303333363730303031333539393930323837293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C22';
wwv_flow_imp.g_varchar2_table(217) := '46495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353539333835393830363835333238343633303533343639363436332C274461';
wwv_flow_imp.g_varchar2_table(218) := '72696F272C27486F75736D616E272C27446172696F2E486F75736D616E40696E7465726E616C6D6169272C272838313429203639392D39313331272C3631393230373438363035353935303638373332363732383939323539373039343032363339293B';
wwv_flow_imp.g_varchar2_table(219) := '0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734';
wwv_flow_imp.g_varchar2_table(220) := '383630353539363237373635383439323531333838383838343130383831352C27416E6E65747461272C274A756261636B272C27416E6E657474612E4A756261636B40696E7465726E616C6D61272C272839373729203337382D36323033272C36313932';
wwv_flow_imp.g_varchar2_table(221) := '30373438363035353937343836353834333132313238353138303538383134393931293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(222) := '2C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353539383639353531303133313734333134373233333532313136372C274564697468272C274D6F6E74627269616E64272C27272C2728333835292032';
wwv_flow_imp.g_varchar2_table(223) := '34392D38333937272C3631393230373438363035353939393034343335393531333537373736343038323237333433293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C415354';
wwv_flow_imp.g_varchar2_table(224) := '4E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353630313131333336313737303937323430353538323933333531392C2742656E6564696374272C27272C2742656E65';
wwv_flow_imp.g_varchar2_table(225) := '646963742E4C617665727940696E7465726E616C6D272C272836333129203535382D36383534272C3631393230373438363035363032333232323837353930353837303334373537363339363935293B0D0A696E7365727420696E746F2022454D504C4F';
wwv_flow_imp.g_varchar2_table(226) := '59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303536303335333132313334313032303136';
wwv_flow_imp.g_varchar2_table(227) := '36333933323334353837312C2742656E6564696374272C274C6176657279272C2742656E65646963742E4C617665727940696E7465726E616C6D272C272833373429203831312D34353231272C3631393230373438363035363034373430313339323239';
wwv_flow_imp.g_varchar2_table(228) := '383136323933313037303532303437293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922';
wwv_flow_imp.g_varchar2_table(229) := '292076616C756573202836313932303734383630353630353934393036353034393433303932323238313735383232332C274A616E6E65747465272C27426162696E6F272C274A616E6E657474652E426162696E6F40696E7465726E616C6D272C272833';
wwv_flow_imp.g_varchar2_table(230) := '393329203438312D37333131272C3631393230373438363035363037313537393930383639303435353531343536343634333939293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C';
wwv_flow_imp.g_varchar2_table(231) := '224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353630383336363931363638383636303138303633313137303537352C27436C696E746F6E272C27426A65';
wwv_flow_imp.g_varchar2_table(232) := '726B65272C27436C696E746F6E2E426A65726B6540696E7465726E616C6D61272C272835373329203832352D32373934272C3631393230373438363035363039353735383432353038323734383039383035383736373531293B0D0A696E736572742069';
wwv_flow_imp.g_varchar2_table(233) := '6E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035363130373834';
wwv_flow_imp.g_varchar2_table(234) := '3736383332373838393433383938303538323932372C274D61727368616C6C272C274C6F77657279272C274D61727368616C6C2E4C6F7765727940696E7465726E616C6D272C272834353129203831382D34323139272C36313932303734383630353631';
wwv_flow_imp.g_varchar2_table(235) := '31393933363934313437353034303638313535323839313033293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F';
wwv_flow_imp.g_varchar2_table(236) := '222C2253414C41525922292076616C756573202836313932303734383630353631333230323631393936373131383639373332393939353237392C274272796E6E272C274D636B616C65272C274272796E6E2E4D636B616C6540696E7465726E616C6D61';
wwv_flow_imp.g_varchar2_table(237) := '696C272C272836393929203938302D31323134272C3631393230373438363035363134343131353435373836373333333236353034373031343535293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253';
wwv_flow_imp.g_varchar2_table(238) := '544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353631353632303437313630363334373935353637393430373633312C2742656265272C';
wwv_flow_imp.g_varchar2_table(239) := '2742726F616477656C6C272C27426562652E42726F616477656C6C40696E7465726E616C6D61272C272835393929203831322D39363436272C3631393230373438363035363136383239333937343235393632353834383534313133383037293B0D0A69';
wwv_flow_imp.g_varchar2_table(240) := '6E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630';
wwv_flow_imp.g_varchar2_table(241) := '353631383033383332333234353537373231343032383831393938332C274C657A6C6965272C27526F73656E7468616C6C272C274C657A6C69652E526F73656E7468616C6C40696E7465726E61272C272834333929203835342D37353234272C36313932';
wwv_flow_imp.g_varchar2_table(242) := '30373438363035363139323437323439303635313931383433323033353236313539293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(243) := '2C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353632303435363137343838343830363437323337383233323333352C27506F7273636865272C2753686970706565272C27506F72736368652E536869';
wwv_flow_imp.g_varchar2_table(244) := '7070656540696E7465726E616C6D272C272835363229203834312D36373736272C3631393230373438363035363231363635313030373034343231313031353532393338353131293B0D0A696E7365727420696E746F2022454D504C4F59454522202822';
wwv_flow_imp.g_varchar2_table(245) := '454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353632323837343032363532343033353733303732373634';
wwv_flow_imp.g_varchar2_table(246) := '343638372C274672616E636573636F272C27456C6C616E64272C274672616E636573636F2E456C6C616E6440696E7465726E616C272C272834393129203934342D39363034272C3631393230373438363035363234303832393532333433363530333539';
wwv_flow_imp.g_varchar2_table(247) := '393032333530383633293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75';
wwv_flow_imp.g_varchar2_table(248) := '6573202836313932303734383630353632353239313837383136333236343938393037373035373033392C2743616C6C6965272C27416E74726F6E696361272C2743616C6C69652E416E74726F6E69636140696E7465726E616C272C2728323134292032';
wwv_flow_imp.g_varchar2_table(249) := '37322D37303638272C3631393230373438363035363236353030383033393832383739363138323531373633323135293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C415354';
wwv_flow_imp.g_varchar2_table(250) := '4E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353632373730393732393830323439343234373432363436393339312C27416E6E6D61726965272C2745736D6179272C';
wwv_flow_imp.g_varchar2_table(251) := '27416E6E6D617269652E45736D617940696E7465726E616C6D61272C272835383629203533392D35343336272C3631393230373438363035363238393138363535363232313038383736363031313735353637293B0D0A696E7365727420696E746F2022';
wwv_flow_imp.g_varchar2_table(252) := '454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353633303132373538313434';
wwv_flow_imp.g_varchar2_table(253) := '313732333530353737353838313734332C2743616D696C61272C2748696C6C776967272C2743616D696C612E48696C6C77696740696E7465726E616C6D61272C272838393929203836312D36373734272C36313932303734383630353633313333363530';
wwv_flow_imp.g_varchar2_table(254) := '37323631333338313334393530353837393139293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C';
wwv_flow_imp.g_varchar2_table(255) := '41525922292076616C756573202836313932303734383630353633323534353433333038303935323736343132353239343039352C2745646E61272C27466F776C73746F6E272C2745646E612E466F776C73746F6E40696E7465726E616C6D6169272C27';
wwv_flow_imp.g_varchar2_table(256) := '2836323629203439322D37303632272C3631393230373438363035363333373534333538393030353637333933333030303030323731293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45';
wwv_flow_imp.g_varchar2_table(257) := '222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353633343936333238343732303138323032323437343730363434372C27272C27506973616E6F272C';
wwv_flow_imp.g_varchar2_table(258) := '274461726C656E652E506973616E6F40696E7465726E616C6D61272C272836343829203834352D39313031272C3631393230373438363035363336313732323130353339373936363531363439343132363233293B0D0A696E7365727420696E746F2022';
wwv_flow_imp.g_varchar2_table(259) := '454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353633373338313133363335';
wwv_flow_imp.g_varchar2_table(260) := '393431313238303832343131383739392C274A6F7368272C27536C6F6D6572272C274A6F73682E536C6F6D657240696E7465726E616C6D61696C272C272833323529203831332D35323732272C3631393230373438363035363338353930303632313739';
wwv_flow_imp.g_varchar2_table(261) := '303235393039393938383234393735293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922';
wwv_flow_imp.g_varchar2_table(262) := '292076616C756573202836313932303734383630353633393739383938373939383634303533393137333533313135312C274564797468272C275370696E646C65272C2745647974682E5370696E646C6540696E7465726E616C6D6169272C2728393431';
wwv_flow_imp.g_varchar2_table(263) := '29203837372D33373232272C3631393230373438363035363431303037393133383138323535313638333438323337333237293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C';
wwv_flow_imp.g_varchar2_table(264) := '4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353634323231363833393633373836393739373532323934333530332C274772657461272C2753766174656B27';
wwv_flow_imp.g_varchar2_table(265) := '2C2747726574612E53766174656B40696E7465726E616C6D61696C272C272833373929203431302D31323934272C3631393230373438363035363433343235373635343537343834343236363937363439363739293B0D0A696E7365727420696E746F20';
wwv_flow_imp.g_varchar2_table(266) := '22454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303536343436333436393132';
wwv_flow_imp.g_varchar2_table(267) := '37373039393035353837323335353835352C274275666679272C274D656C656E272C2742756666792E4D656C656E40696E7465726E616C6D61696C272C272833333329203230362D35373733272C36313932303734383630353634353834333631373039';
wwv_flow_imp.g_varchar2_table(268) := '36373133363835303437303632303331293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C415259';
wwv_flow_imp.g_varchar2_table(269) := '22292076616C756573202836313932303734383630353634373035323534323931363332383331343232313736383230372C27416E746F6E65747461272C2750696E736B79272C27416E746F6E657474612E50696E736B7940696E7465726E616C272C27';
wwv_flow_imp.g_varchar2_table(270) := '2839343429203430372D38343433272C3631393230373438363035363438323631343638373335393432393433333936343734333833293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45';
wwv_flow_imp.g_varchar2_table(271) := '222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353634393437303339343535353535373537323537313138303535392C27547972656C6C272C275A75';
wwv_flow_imp.g_varchar2_table(272) := '656C6B65272C27547972656C6C2E5A75656C6B6540696E7465726E616C6D6169272C272832323129203535342D34323735272C3631393230373438363035363530363739333230333735313732323031373435383836373335293B0D0A696E7365727420';
wwv_flow_imp.g_varchar2_table(273) := '696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353635313838';
wwv_flow_imp.g_varchar2_table(274) := '383234363139343738363833303932303539323931312C27436C6F72696E6461272C274D6174616C6B61272C27436C6F72696E64612E4D6174616C6B6140696E7465726E616C272C272839303529203832342D31323335272C3631393230373438363035';
wwv_flow_imp.g_varchar2_table(275) := '363533303937313732303134343031343630303935323939303837293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E45';
wwv_flow_imp.g_varchar2_table(276) := '4E4F222C2253414C41525922292076616C756573202836313932303734383630353635343330363039373833343031363038393237303030353236332C27416E746F6E272C274D6577272C27416E746F6E2E4D657740696E7465726E616C6D61696C272C';
wwv_flow_imp.g_varchar2_table(277) := '27272C3631393230373438363035363535353135303233363533363330373138343434373131343339293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C';
wwv_flow_imp.g_varchar2_table(278) := '22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353635363732333934393437333234353334373631393431373631352C2754686572657365272C275A6165736B65272C275468657265';
wwv_flow_imp.g_varchar2_table(279) := '73652E5A6165736B6540696E7465726E616C6D61272C272834313229203232342D37313832272C3631393230373438363035363537393332383735323932383539393736373934313233373931293B0D0A696E7365727420696E746F2022454D504C4F59';
wwv_flow_imp.g_varchar2_table(280) := '454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353635393134313830313131323437343630';
wwv_flow_imp.g_varchar2_table(281) := '353936383832393936372C2753616272696E61272C2753746F6A616E6F766963272C2753616272696E612E53746F6A616E6F76696340696E7465726E272C272834313729203334322D34303330272C363139323037343836303536363033353037323639';
wwv_flow_imp.g_varchar2_table(282) := '3332303839323335313433353336313433293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C4152';
wwv_flow_imp.g_varchar2_table(283) := '5922292076616C756573202836313932303734383630353636313535393635323735313730333836343331383234323331392C27426173696C272C2748616E6167616E272C27426173696C2E48616E6167616E40696E7465726E616C6D6169272C272835';
wwv_flow_imp.g_varchar2_table(284) := '333029203630332D38343130272C3631393230373438363035363632373638353738353731333138343933343932393438343935293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C';
wwv_flow_imp.g_varchar2_table(285) := '224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353636333937373530343339303933333132323636373635343637312C274777656E272C2743616B65272C';
wwv_flow_imp.g_varchar2_table(286) := '27272C272839393429203331322D31353832272C3631393230373438363035363635313836343330323130353437373531383432333630383437293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C224649525354';
wwv_flow_imp.g_varchar2_table(287) := '4E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353636363339353335363033303136323338313031373036373032332C2743616D656C6C69';
wwv_flow_imp.g_varchar2_table(288) := '61272C2741726368756C65747461272C2743616D656C6C69612E41726368756C6574746140696E746572272C272832333629203337392D33383937272C293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C224649';
wwv_flow_imp.g_varchar2_table(289) := '5253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353636373630343238313834393737373031303139313737333139392C2759766F6E';
wwv_flow_imp.g_varchar2_table(290) := '6E65272C274170706C656D616E272C2759766F6E6E652E4170706C656D616E40696E7465726E616C6D272C272836333129203330332D38353833272C3631393230373438363035363638383133323037363639333931363339333636343739333735293B';
wwv_flow_imp.g_varchar2_table(291) := '0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734';
wwv_flow_imp.g_varchar2_table(292) := '383630353637303032323133333438393030363236383534313138353535312C274461726C61272C274A756E676C696E67272C274461726C612E4A756E676C696E6740696E7465726E616C6D61272C272833363329203238332D31333430272C36313932';
wwv_flow_imp.g_varchar2_table(293) := '30373438363035363731323331303539333038363230383937373135383931373237293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C22';
wwv_flow_imp.g_varchar2_table(294) := '2C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353637323433393938353132383233353532363839303539373930332C2742656C696E6461272C27426172676572272C2742656C696E64612E42617267';
wwv_flow_imp.g_varchar2_table(295) := '657240696E7465726E616C6D61272C272838383229203435382D38303839272C3631393230373438363035363733363438393130393437383530313536303635333034303739293B0D0A696E7365727420696E746F2022454D504C4F5945452220282245';
wwv_flow_imp.g_varchar2_table(296) := '4D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035363734383537383336373637343634373835323430303130';
wwv_flow_imp.g_varchar2_table(297) := '3235352C27436F6C6279272C2753616E6167757374696E272C27436F6C62792E53616E6167757374696E40696E7465726E616C272C272834333329203832302D31313237272C363139323037343836303536373630363637363235383730373934313434';
wwv_flow_imp.g_varchar2_table(298) := '3134373136343331293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565';
wwv_flow_imp.g_varchar2_table(299) := '73202836313932303734383630353637373237353638383430363639343034333538393432323630372C27272C27486167676C756E64272C27456C61696E612E486167676C756E6440696E7465726E616C6D272C272834373329203532352D3832383527';
wwv_flow_imp.g_varchar2_table(300) := '2C3631393230373438363035363738343834363134323236333038363732373634313238373833293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C2245';
wwv_flow_imp.g_varchar2_table(301) := '4D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353637393639333534303034353932333330313933383833343935392C2742656174726973272C2749726168657461272C27426561747269';
wwv_flow_imp.g_varchar2_table(302) := '732E4972616865746140696E7465726E616C6D272C272834333929203436342D37383530272C3631393230373438363035363830393032343635383635353337393331313133353431313335293B0D0A696E7365727420696E746F2022454D504C4F5945';
wwv_flow_imp.g_varchar2_table(303) := '4522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035363832313131333931363835313532353630';
wwv_flow_imp.g_varchar2_table(304) := '3238383234373331312C275479272C27466C6F75726E6179272C2754792E466C6F75726E617940696E7465726E616C6D61696C272C272832393729203236362D33383730272C363139323037343836303536383333323033313735303437363731383934';
wwv_flow_imp.g_varchar2_table(305) := '3632393533343837293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565';
wwv_flow_imp.g_varchar2_table(306) := '73202836313932303734383630353638343532393234333332343338313831383633373635393636332C274D61727961272C275261736F272C274D617279612E5261736F40696E7465726E616C6D61696C272C272832313529203731382D33353838272C';
wwv_flow_imp.g_varchar2_table(307) := '3631393230373438363035363835373338313639313433393936343437383132333635383339293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D';
wwv_flow_imp.g_varchar2_table(308) := '41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320282C27426173696C272C274F7572736C6572272C27426173696C2E4F7572736C657240696E7465726E616C6D6169272C272838333829203439322D31343036272C363139';
wwv_flow_imp.g_varchar2_table(309) := '3230373438363035363836393437303934393633363131303736393837303732303135293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C';
wwv_flow_imp.g_varchar2_table(310) := '222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353638383135363032303738333232353730363136313737383139312C27476C61646973272C27547265766579272C27476C616469732E5472657665';
wwv_flow_imp.g_varchar2_table(311) := '7940696E7465726E616C6D6169272C272833303829203233312D31383536272C3631393230373438363035363839333634393436363032383430333335333336343834333637293B0D0A696E7365727420696E746F2022454D504C4F5945452220282245';
wwv_flow_imp.g_varchar2_table(312) := '4D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035363930353733383732343232343534393634353131313930';
wwv_flow_imp.g_varchar2_table(313) := '3534332C27476F6C646965272C275975736B61272C27476F6C6469652E5975736B6140696E7465726E616C6D61696C272C272834363529203737302D32323038272C36313932303734383630353639313738323739383234323036393539333638353839';
wwv_flow_imp.g_varchar2_table(314) := '36373139293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836';
wwv_flow_imp.g_varchar2_table(315) := '313932303734383630353639323939313732343036313638343232323836303630323839352C274461726961272C274865617265272C2744617269612E486561726540696E7465726E616C6D61696C272C272832393429203833312D37313232272C3631';
wwv_flow_imp.g_varchar2_table(316) := '393230373438363035363934323030363439383831323938383532303335333039303731293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D4149';
wwv_flow_imp.g_varchar2_table(317) := '4C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353639353430393537353730303931333438313231303031353234372C27477265676F726961272C2752616D6F746172272C27477265676F726961';
wwv_flow_imp.g_varchar2_table(318) := '2E52616D6F74617240696E7465726E616C272C272838333429203631332D34313438272C3631393230373438363035363936363138353031353230353238313130333834373231343233293B0D0A696E7365727420696E746F2022454D504C4F59454522';
wwv_flow_imp.g_varchar2_table(319) := '202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353639373832373432373334303134323733393535';
wwv_flow_imp.g_varchar2_table(320) := '393432373539392C274A6F7368272C2756616E6465727374656C74272C274A6F73682E56616E6465727374656C7440696E7465726E616C272C272836313329203438362D36333236272C3631393230373438363035363939303336333533313539373537';
wwv_flow_imp.g_varchar2_table(321) := '333638373334313333373735293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076';
wwv_flow_imp.g_varchar2_table(322) := '616C756573202836313932303734383630353730303234353237383937393337313939373930383833393935312C27416E746F696E65272C274170706C6F6E6965272C27416E746F696E652E4170706C6F6E696540696E7465726E616C272C2728373538';
wwv_flow_imp.g_varchar2_table(323) := '29203538362D32373834272C3631393230373438363035373031343534323034373938393836363237303833353436313237293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C';
wwv_flow_imp.g_varchar2_table(324) := '4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353730323636333133303631383630313235363235383235323330332C27272C2742726176617264272C274461';
wwv_flow_imp.g_varchar2_table(325) := '72656E2E4272617661726440696E7465726E616C6D6169272C272834343329203732372D33313132272C3631393230373438363035373033383732303536343338323135383835343332393538343739293B0D0A696E7365727420696E746F2022454D50';
wwv_flow_imp.g_varchar2_table(326) := '4C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353730353038303938323235373833';
wwv_flow_imp.g_varchar2_table(327) := '303531343630373636343635352C2742656C656E272C274F6764656E272C2742656C656E2E4F6764656E40696E7465726E616C6D61696C272C272835393529203538322D36323730272C3631393230373438363035373036323839393038303737343435';
wwv_flow_imp.g_varchar2_table(328) := '313433373832333730383331293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076';
wwv_flow_imp.g_varchar2_table(329) := '616C756573202836313932303734383630353730373439383833333839373035393737323935373037373030372C27446172636965272C2748616D6D272C274461726369652E48616D6D40696E7465726E616C6D61696C272C272835363829203736382D';
wwv_flow_imp.g_varchar2_table(330) := '32323734272C3631393230373438363035373038373037373539373136363734343032313331373833313833293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D';
wwv_flow_imp.g_varchar2_table(331) := '45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353730393931363638353533363238393033313330363438393335392C27272C27466F726273272C274D617274696E652E466F';
wwv_flow_imp.g_varchar2_table(332) := '72627340696E7465726E616C6D6169272C272836393529203832342D39363938272C3631393230373438363035373131313235363131333535393033363630343831313935353335293B0D0A696E7365727420696E746F2022454D504C4F594545222028';
wwv_flow_imp.g_varchar2_table(333) := '22454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C7565732028363139323037343836303537313233333435333731373535313832383936353539';
wwv_flow_imp.g_varchar2_table(334) := '30313731312C2750616D272C27446F6D696E6973272C2750616D2E446F6D696E697340696E7465726E616C6D61696C272C272832393129203436362D31373233272C36313932303734383630353731333534333436323939353133323931383833303630';
wwv_flow_imp.g_varchar2_table(335) := '37383837293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836';
wwv_flow_imp.g_varchar2_table(336) := '313932303734383630353731343735323338383831343734373534383030353331343036332C274B69726279272C27486F6E65796D616E272C274B697262792E486F6E65796D616E40696E7465726E616C6D61272C272838393629203735362D33343835';
wwv_flow_imp.g_varchar2_table(337) := '272C3631393230373438363035373135393631333134363334333632313737313830303230323339293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22';
wwv_flow_imp.g_varchar2_table(338) := '454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353731373137303234303435333937363830363335343732363431352C274D617274696E272C274D7573756C696E272C274D617274696E';
wwv_flow_imp.g_varchar2_table(339) := '2E4D7573756C696E40696E7465726E616C6D61272C272838333529203739342D39363731272C3631393230373438363035373138333739313636323733353931343335353239343332353931293B0D0A696E7365727420696E746F2022454D504C4F5945';
wwv_flow_imp.g_varchar2_table(340) := '4522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C75657320283631393230373438363035373139353838303932303933323036303634';
wwv_flow_imp.g_varchar2_table(341) := '3730343133383736372C27546F6363617261272C274B6F6E77696E736B69272C27546F63636172612E4B6F6E77696E736B6940696E7465726E61272C272838393629203532342D33363439272C3631393230373438363035373230373937303137393132';
wwv_flow_imp.g_varchar2_table(342) := '383230363933383738383434393433293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D45222C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922';
wwv_flow_imp.g_varchar2_table(343) := '292076616C756573202836313932303734383630353732323030353934333733323433353332333035333535313131392C2753796C766573746572272C274B6973746572272C2753796C7665737465722E4B697374657240696E7465726E616C272C2728';
wwv_flow_imp.g_varchar2_table(344) := '36393229203831372D36333937272C3631393230373438363035373233323134383639353532303439393532323238323537323935293B0D0A696E7365727420696E746F2022454D504C4F59454522202822454D504944222C2246495253544E414D4522';
wwv_flow_imp.g_varchar2_table(345) := '2C224C4153544E414D45222C22454D41494C222C2250484F4E454E4F222C2253414C41525922292076616C756573202836313932303734383630353732343432333739353337313636343538313430323936333437312C274A6F6C6965272C274D696361';
wwv_flow_imp.g_varchar2_table(346) := '6C697A7A69272C274A6F6C69652E4D6963616C697A7A6940696E7465726E616C6D272C272832333229203834352D38393334272C3631393230373438363035373235363332373231313931323739323130353737363639363437293B0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 4138019112242147,
    p_flow_id => 4500,
    p_name => '4138019112242147/Employes',
    p_pathid => null,
    p_filename => 'Employes',
    p_title => 'Employes',
    p_mime_type => 'application/x-sql',
    p_dad_charset => 'UTF-8',
    p_created_by => 'GONZALEZFJU',
    p_created_on => to_date('202502201627','YYYYMMDDHH24MI'),
    p_updated_by => 'GONZALEZFJU',
    p_updated_on => to_date('202502201627','YYYYMMDDHH24MI'),
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
    p_id => 4156554140242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 185
    ,p_src_line_number => 93
    ,p_offset => 21094
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605589024103574826113835871759,''Rupert'',''Tardy'',''Rupert.Tardy@internalmail'',''(884) 468-8827'',61920748605590233029394440743010577935)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156657282242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 186
    ,p_src_line_number => 93
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156758877242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 187
    ,p_src_line_number => 94
    ,p_offset => 21328
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605591441955214055372185284111,''Chadwick'',''Henscheid'',''Chadwick.Henscheid@intern'',''(734) 724-9779'',61920748605592650881033670001359990287)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156827190242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 188
    ,p_src_line_number => 94
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156931615242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 189
    ,p_src_line_number => 95
    ,p_offset => 21568
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605593859806853284630534696463,''Dario'',''Housman'',''Dario.Housman@internalmai'',''(814) 699-9131'',61920748605595068732672899259709402639)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157089167242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 190
    ,p_src_line_number => 95
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157161313242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 191
    ,p_src_line_number => 96
    ,p_offset => 21803
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605596277658492513888884108815,''Annetta'',''Juback'',''Annetta.Juback@internalma'',''(977) 378-6203'',61920748605597486584312128518058814991)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157289095242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 192
    ,p_src_line_number => 96
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157388278242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 193
    ,p_src_line_number => 97
    ,p_offset => 22039
    ,p_length => 210
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605598695510131743147233521167,''Edith'',''Montbriand'','''',''(385) 249-8397'',61920748605599904435951357776408227343)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157482138242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 194
    ,p_src_line_number => 97
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157553252242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 195
    ,p_src_line_number => 98
    ,p_offset => 22252
    ,p_length => 228
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605601113361770972405582933519,''Benedict'','''',''Benedict.Lavery@internalm'',''(631) 558-6854'',61920748605602322287590587034757639695)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157630102242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 196
    ,p_src_line_number => 98
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157780939242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 197
    ,p_src_line_number => 99
    ,p_offset => 22483
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605603531213410201663932345871,''Benedict'',''Lavery'',''Benedict.Lavery@internalm'',''(374) 811-4521'',61920748605604740139229816293107052047)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157823236242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 198
    ,p_src_line_number => 99
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4157964957242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 199
    ,p_src_line_number => 100
    ,p_offset => 22720
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605605949065049430922281758223,''Jannette'',''Babino'',''Jannette.Babino@internalm'',''(393) 481-7311'',61920748605607157990869045551456464399)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158048117242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 200
    ,p_src_line_number => 100
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158136883242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 201
    ,p_src_line_number => 101
    ,p_offset => 22957
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605608366916688660180631170575,''Clinton'',''Bjerke'',''Clinton.Bjerke@internalma'',''(573) 825-2794'',61920748605609575842508274809805876751)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158216607242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 202
    ,p_src_line_number => 101
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158324235242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 203
    ,p_src_line_number => 102
    ,p_offset => 23193
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605610784768327889438980582927,''Marshall'',''Lowery'',''Marshall.Lowery@internalm'',''(451) 818-4219'',61920748605611993694147504068155289103)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158493612242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 204
    ,p_src_line_number => 102
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158569930242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 205
    ,p_src_line_number => 103
    ,p_offset => 23430
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605613202619967118697329995279,''Brynn'',''Mckale'',''Brynn.Mckale@internalmail'',''(699) 980-1214'',61920748605614411545786733326504701455)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158630917242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 206
    ,p_src_line_number => 103
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158774072242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 207
    ,p_src_line_number => 104
    ,p_offset => 23664
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605615620471606347955679407631,''Bebe'',''Broadwell'',''Bebe.Broadwell@internalma'',''(599) 812-9646'',61920748605616829397425962584854113807)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158835815242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 208
    ,p_src_line_number => 104
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4158946659242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 209
    ,p_src_line_number => 105
    ,p_offset => 23900
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605618038323245577214028819983,''Lezlie'',''Rosenthall'',''Lezlie.Rosenthall@interna'',''(439) 854-7524'',61920748605619247249065191843203526159)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159076352242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 210
    ,p_src_line_number => 105
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159188028242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 211
    ,p_src_line_number => 106
    ,p_offset => 24139
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605620456174884806472378232335,''Porsche'',''Shippee'',''Porsche.Shippee@internalm'',''(562) 841-6776'',61920748605621665100704421101552938511)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159219877242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 212
    ,p_src_line_number => 106
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159351416242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 213
    ,p_src_line_number => 107
    ,p_offset => 24376
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605622874026524035730727644687,''Francesco'',''Elland'',''Francesco.Elland@internal'',''(491) 944-9604'',61920748605624082952343650359902350863)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159402136242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 214
    ,p_src_line_number => 107
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159504299242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 215
    ,p_src_line_number => 108
    ,p_offset => 24614
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605625291878163264989077057039,''Callie'',''Antronica'',''Callie.Antronica@internal'',''(214) 272-7068'',61920748605626500803982879618251763215)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159615403242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 216
    ,p_src_line_number => 108
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159749510242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 217
    ,p_src_line_number => 109
    ,p_offset => 24852
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605627709729802494247426469391,''Annmarie'',''Esmay'',''Annmarie.Esmay@internalma'',''(586) 539-5436'',61920748605628918655622108876601175567)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159888844242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 218
    ,p_src_line_number => 109
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4159901775242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 219
    ,p_src_line_number => 110
    ,p_offset => 25088
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605630127581441723505775881743,''Camila'',''Hillwig'',''Camila.Hillwig@internalma'',''(899) 861-6774'',61920748605631336507261338134950587919)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160058898242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 220
    ,p_src_line_number => 110
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160198039242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 221
    ,p_src_line_number => 111
    ,p_offset => 25324
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605632545433080952764125294095,''Edna'',''Fowlston'',''Edna.Fowlston@internalmai'',''(626) 492-7062'',61920748605633754358900567393300000271)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160287148242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 222
    ,p_src_line_number => 111
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160375089242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 223
    ,p_src_line_number => 112
    ,p_offset => 25559
    ,p_length => 226
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605634963284720182022474706447,'''',''Pisano'',''Darlene.Pisano@internalma'',''(648) 845-9101'',61920748605636172210539796651649412623)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160417272242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 224
    ,p_src_line_number => 112
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138147418242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605381088862601109895786409487,''Gisele'',''Limthong'',''Gisele.Limthong@internalm'',''(549) 815-5276'',61920748605382297788420724524961115663)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138238195242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 2
    ,p_src_line_number => 1
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138308275242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 3
    ,p_src_line_number => 2
    ,p_offset => 238
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605383506714240339154135821839,''Vernita'',''Kulik'',''Vernita.Kulik@internalmai'',''(358) 993-9009'',61920748605384715640059953783310528015)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138429293242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 4
    ,p_src_line_number => 2
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138522446242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 5
    ,p_src_line_number => 3
    ,p_offset => 473
    ,p_length => 228
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605385924565879568412485234191,'''',''Andonian'',''Phylis.Andonian@internalm'',''(633) 838-9971'',61920748605387133491699183041659940367)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138622007242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 6
    ,p_src_line_number => 3
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138751676242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 7
    ,p_src_line_number => 4
    ,p_offset => 704
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605388342417518797670834646543,''Danita'',''Heumann'',''Danita.Heumann@internalma'',''(962) 930-4714'',61920748605389551343338412300009352719)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138822987242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 8
    ,p_src_line_number => 4
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4138984334242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 9
    ,p_src_line_number => 5
    ,p_offset => 940
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605390760269158026929184058895,''Graham'',''Chambers'',''Graham.Chambers@internalm'',''(248) 712-7812'',61920748605391969194977641558358765071)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139023896242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 10
    ,p_src_line_number => 5
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139157178242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 11
    ,p_src_line_number => 6
    ,p_offset => 1177
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605393178120797256187533471247,''Edelmira'',''Widman'',''Edelmira.Widman@internalm'',''(311) 385-3376'',61920748605394387046616870816708177423)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139233380242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 12
    ,p_src_line_number => 6
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139387992242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 13
    ,p_src_line_number => 7
    ,p_offset => 1414
    ,p_length => 219
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605395595972436485445882883599,''Eileen'',''Millott'',''Eileen.Millott@internalma'','''',61920748605396804898256100075057589775)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139455903242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 14
    ,p_src_line_number => 7
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139515610242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 15
    ,p_src_line_number => 8
    ,p_offset => 1636
    ,p_length => 218
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605398013824075714704232295951,''Julian'',''Rudack'',''Julian.Rudack@internalmai'','''',61920748605399222749895329333407002127)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139652801242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 16
    ,p_src_line_number => 8
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139765755242697
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 17
    ,p_src_line_number => 9
    ,p_offset => 1857
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605400431675714943962581708303,''Kevin'',''Sawlivich'',''Kevin.Sawlivich@internalm'',''(401) 980-6423'',61920748605401640601534558591756414479)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139873628242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 18
    ,p_src_line_number => 9
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4139954345242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 19
    ,p_src_line_number => 10
    ,p_offset => 2094
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605402849527354173220931120655,''Darnell'',''Rainbow'',''Darnell.Rainbow@internalm'',''(871) 264-3706'',61920748605404058453173787850105826831)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140042659242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 20
    ,p_src_line_number => 10
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140107356242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 21
    ,p_src_line_number => 11
    ,p_offset => 2331
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605405267378993402479280533007,''Kisha'',''Leven'',''Kisha.Leven@internalmail'',''(551) 497-9513'',61920748605406476304813017108455239183)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140297034242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 22
    ,p_src_line_number => 11
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140324589242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 23
    ,p_src_line_number => 12
    ,p_offset => 2563
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605407685230632631737629945359,''Bella'',''Osterfeld'',''Bella.Osterfeld@internalm'',''(871) 309-1098'',61920748605408894156452246366804651535)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140406904242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 24
    ,p_src_line_number => 12
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140589479242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 25
    ,p_src_line_number => 13
    ,p_offset => 2800
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605410103082271860995979357711,''Bart'',''Detullio'',''Bart.Detullio@internalmai'',''(358) 240-5871'',61920748605411312008091475625154063887)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140611763242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 26
    ,p_src_line_number => 13
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140787755242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 27
    ,p_src_line_number => 14
    ,p_offset => 3035
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605412520933911090254328770063,''Sabine'',''Bonaguidi'',''Sabine.Bonaguidi@internal'',''(826) 724-5971'',61920748605413729859730704883503476239)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140838078242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 28
    ,p_src_line_number => 14
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4140948584242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 29
    ,p_src_line_number => 15
    ,p_offset => 3273
    ,p_length => 225
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605414938785550319512678182415,''Glenn'','''',''Glenn.Mcgraff@internalmai'',''(365) 691-9316'',61920748605416147711369934141852888591)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141070719242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 30
    ,p_src_line_number => 15
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141111621242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 31
    ,p_src_line_number => 16
    ,p_offset => 3501
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605417356637189548771027594767,''Theodora'',''Beavin'',''Theodora.Beavin@internalm'',''(449) 429-9924'',61920748605418565563009163400202300943)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141275962242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 32
    ,p_src_line_number => 16
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141323997242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 33
    ,p_src_line_number => 17
    ,p_offset => 3738
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605419774488828778029377007119,''Tiffaney'',''Bozovich'',''Tiffaney.Bozovich@interna'',''(621) 813-8095'',61920748605420983414648392658551713295)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141461183242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 34
    ,p_src_line_number => 17
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141589844242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 35
    ,p_src_line_number => 18
    ,p_offset => 3977
    ,p_length => 228
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605422192340468007287726419471,'''',''Kurohara'',''Griselda.Kurohara@interna'',''(508) 894-9587'',61920748605423401266287621916901125647)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141609078242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 36
    ,p_src_line_number => 18
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141700429242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 37
    ,p_src_line_number => 19
    ,p_offset => 4208
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605424610192107236546075831823,''Eddie'',''Dietrick'',''Eddie.Dietrick@internalma'',''(702) 314-1198'',61920748605425819117926851175250537999)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141889677242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 38
    ,p_src_line_number => 19
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4141927685242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 39
    ,p_src_line_number => 20
    ,p_offset => 4444
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605427028043746465804425244175,''Tommy'',''Stoor'',''Tommy.Stoor@internalmail'',''(360) 731-7502'',61920748605428236969566080433599950351)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142047753242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 40
    ,p_src_line_number => 20
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142197833242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 41
    ,p_src_line_number => 21
    ,p_offset => 4676
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605429445895385695062774656527,''Veronica'',''Aubrecht'',''Veronica.Aubrecht@interna'',''(720) 557-2429'',61920748605430654821205309691949362703)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142223563242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 42
    ,p_src_line_number => 21
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142396865242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 43
    ,p_src_line_number => 22
    ,p_offset => 4915
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605431863747024924321124068879,''Daniel'',''Strong'',''Daniel.Strong@internalmai'',''(723) 584-2473'',61920748605433072672844538950298775055)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142412069242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 44
    ,p_src_line_number => 22
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142520045242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 45
    ,p_src_line_number => 23
    ,p_offset => 5150
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605434281598664153579473481231,''Antonia'',''Mclachlan'',''Antonia.Mclachlan@interna'',''(384) 891-7814'',61920748605435490524483768208648187407)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142647822242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 46
    ,p_src_line_number => 23
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142775749242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 47
    ,p_src_line_number => 24
    ,p_offset => 5389
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605436699450303382837822893583,''Jonathon'',''Botner'',''Jonathon.Botner@internalm'',''(491) 786-2572'',61920748605437908376122997466997599759)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142877660242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 48
    ,p_src_line_number => 24
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4142906579242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 49
    ,p_src_line_number => 25
    ,p_offset => 5626
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605439117301942612096172305935,''Cleveland'',''Gassert'',''Cleveland.Gassert@interna'',''(204) 879-7665'',61920748605440326227762226725347012111)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143073268242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 50
    ,p_src_line_number => 25
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143184869242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 51
    ,p_src_line_number => 26
    ,p_offset => 5865
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605441535153581841354521718287,''Ruthanne'',''Burgoyne'',''Ruthanne.Burgoyne@interna'',''(646) 275-5904'',61920748605442744079401455983696424463)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143298101242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 52
    ,p_src_line_number => 26
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143350992242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 53
    ,p_src_line_number => 27
    ,p_offset => 6104
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605443953005221070612871130639,''Libbie'',''Risher'',''Libbie.Risher@internalmai'',''(957) 506-9163'',61920748605445161931040685242045836815)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143481197242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 54
    ,p_src_line_number => 27
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143586008242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 55
    ,p_src_line_number => 28
    ,p_offset => 6339
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605446370856860299871220542991,''Janine'',''Prudom'',''Janine.Prudom@internalmai'',''(332) 209-8616'',61920748605447579782679914500395249167)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143622618242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 56
    ,p_src_line_number => 28
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143723099242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 57
    ,p_src_line_number => 29
    ,p_offset => 6574
    ,p_length => 197
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605448788708499529129569955343,''Daniele'',''Thorsten'',''Daniele.Thorsten@internal'',''(612) 965-7475'',)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143812087242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 58
    ,p_src_line_number => 29
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144001500242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 60
    ,p_src_line_number => 30
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4143917420242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 59
    ,p_src_line_number => 30
    ,p_offset => 6774
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605449997634319143758744661519,''Terresa'',''Hanhardt'',''Terresa.Hanhardt@internal'',''(861) 372-3567'',61920748605451206560138758387919367695)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144132043242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 61
    ,p_src_line_number => 31
    ,p_offset => 7012
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605452415485958373017094073871,''Dara'',''Bonneau'',''Dara.Bonneau@internalmail'',''(396) 728-6178'',61920748605453624411777987646268780047)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144201862242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 62
    ,p_src_line_number => 31
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144321849242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 63
    ,p_src_line_number => 32
    ,p_offset => 7246
    ,p_length => 193
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Hong'',''Charter'',''Hong.Charter@internalmail'',''(536) 552-8682'',61920748605454833337597602275443486223)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144482904242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 64
    ,p_src_line_number => 32
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144554416242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 65
    ,p_src_line_number => 33
    ,p_offset => 7442
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605456042263417216904618192399,''Tomasa'',''Orouke'',''Tomasa.Orouke@internalmai'',''(481) 912-8996'',61920748605457251189236831533792898575)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144601636242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 66
    ,p_src_line_number => 33
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144758451242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 67
    ,p_src_line_number => 34
    ,p_offset => 7677
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605458460115056446162967604751,''Janyce'',''Daignault'',''Janyce.Daignault@internal'',''(669) 514-8021'',61920748605459669040876060792142310927)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144813730242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 68
    ,p_src_line_number => 34
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4144905495242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 69
    ,p_src_line_number => 35
    ,p_offset => 7915
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605460877966695675421317017103,''Pamala'',''Mcdewitt'',''Pamala.Mcdewitt@internalm'',''(356) 861-5888'',61920748605462086892515290050491723279)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145014826242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 70
    ,p_src_line_number => 35
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145105441242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 71
    ,p_src_line_number => 36
    ,p_offset => 8152
    ,p_length => 205
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605463295818334904679666429455,''Floy'',''Craver'','''',''(455) 297-1931'',61920748605464504744154519308841135631)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145282737242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 72
    ,p_src_line_number => 36
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145396906242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 73
    ,p_src_line_number => 37
    ,p_offset => 8360
    ,p_length => 192
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605465713669974133938015841807,''Judson'',''Kantz'','''','''',61920748605466922595793748567190547983)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145449915242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 74
    ,p_src_line_number => 37
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145534130242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 75
    ,p_src_line_number => 38
    ,p_offset => 8555
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605468131521613363196365254159,''Pablo'',''Caveney'',''Pablo.Caveney@internalmai'',''(554) 268-7195'',61920748605469340447432977825539960335)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145649437242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 76
    ,p_src_line_number => 38
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145741989242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 77
    ,p_src_line_number => 39
    ,p_offset => 8790
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605470549373252592454714666511,''Ruthe'',''Nishioka'',''Ruthe.Nishioka@internalma'',''(960) 510-4122'',61920748605471758299072207083889372687)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145805042242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 78
    ,p_src_line_number => 39
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4145957750242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 79
    ,p_src_line_number => 40
    ,p_offset => 9026
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605472967224891821713064078863,''Florida'',''Gilliand'',''Florida.Gilliand@internal'',''(903) 547-9295'',61920748605474176150711436342238785039)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146025026242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 80
    ,p_src_line_number => 40
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146181957242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 81
    ,p_src_line_number => 41
    ,p_offset => 9264
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605475385076531050971413491215,''Bunny'',''Oginski'',''Bunny.Oginski@internalmai'',''(565) 574-7786'',61920748605476594002350665600588197391)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146227936242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 82
    ,p_src_line_number => 41
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146381642242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 83
    ,p_src_line_number => 42
    ,p_offset => 9499
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605477802928170280229762903567,''Letty'',''Riccardo'',''Letty.Riccardo@internalma'',''(336) 255-3645'',61920748605479011853989894858937609743)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146471860242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 84
    ,p_src_line_number => 42
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146535278242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 85
    ,p_src_line_number => 43
    ,p_offset => 9735
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605480220779809509488112315919,''Efren'',''Wallentine'',''Efren.Wallentine@internal'',''(404) 406-2647'',61920748605481429705629124117287022095)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146626686242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 86
    ,p_src_line_number => 43
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146730550242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 87
    ,p_src_line_number => 44
    ,p_offset => 9973
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605482638631448738746461728271,''Granville'',''Mcmurrin'',''Granville.Mcmurrin@intern'',''(890) 386-6074'',61920748605483847557268353375636434447)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146827313242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 88
    ,p_src_line_number => 44
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4146973014242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 89
    ,p_src_line_number => 45
    ,p_offset => 10213
    ,p_length => 193
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Josefa'',''Shilt'',''Josefa.Shilt@internalmail'',''(223) 346-1345'',61920748605485056483087968004811140623)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147036281242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 90
    ,p_src_line_number => 45
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147145883242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 91
    ,p_src_line_number => 46
    ,p_offset => 10409
    ,p_length => 193
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605486265408907582633985846799,''Beau'',''Deerman'',''Beau.Deerman@internalmail'',''(898) 464-5962'',)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147279200242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 92
    ,p_src_line_number => 46
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147389264242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 93
    ,p_src_line_number => 47
    ,p_offset => 10605
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605487474334727197263160552975,''Wynona'',''Tenda'',''Wynona.Tenda@internalmail'',''(761) 722-7695'',61920748605488683260546811892335259151)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147404461242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 94
    ,p_src_line_number => 47
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147563830242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 95
    ,p_src_line_number => 48
    ,p_offset => 10839
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605489892186366426521509965327,''Rusty'',''Nesland'',''Rusty.Nesland@internalmai'',''(361) 912-9389'',61920748605491101112186041150684671503)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147686950242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 96
    ,p_src_line_number => 48
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147720719242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 97
    ,p_src_line_number => 49
    ,p_offset => 11074
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605492310038005655779859377679,''Darci'',''Glassner'',''Darci.Glassner@internalma'',''(944) 568-8670'',61920748605493518963825270409034083855)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147886418242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 98
    ,p_src_line_number => 49
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4147933508242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 99
    ,p_src_line_number => 50
    ,p_offset => 11310
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605494727889644885038208790031,''Fran'',''Sibbald'',''Fran.Sibbald@internalmail'',''(849) 589-4552'',61920748605495936815464499667383496207)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148073737242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 100
    ,p_src_line_number => 50
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148424766242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 104
    ,p_src_line_number => 52
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148119027242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 101
    ,p_src_line_number => 51
    ,p_offset => 11544
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605497145741284114296558202383,''Gussie'',''Khilling'',''Gussie.Khilling@internalm'',''(829) 604-3601'',61920748605498354667103728925732908559)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148234312242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 102
    ,p_src_line_number => 51
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148363519242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 103
    ,p_src_line_number => 52
    ,p_offset => 11781
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605499563592923343554907614735,''Becky'',''Falsetti'',''Becky.Falsetti@internalma'',''(889) 537-7526'',61920748605500772518742958184082320911)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148598571242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 105
    ,p_src_line_number => 53
    ,p_offset => 12017
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605501981444562572813257027087,''Rufus'',''Morais'',''Rufus.Morais@internalmail'',''(983) 816-8716'',61920748605503190370382187442431733263)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148642074242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 106
    ,p_src_line_number => 53
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148790232242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 107
    ,p_src_line_number => 54
    ,p_offset => 12251
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605504399296201802071606439439,''Bula'',''Esperanza'',''Bula.Esperanza@internalma'',''(463) 641-7825'',61920748605505608222021416700781145615)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148827198242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 108
    ,p_src_line_number => 54
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4148933740242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 109
    ,p_src_line_number => 55
    ,p_offset => 12487
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605506817147841031329955851791,''Jarred'',''Israelsen'',''Jarred.Israelsen@internal'',''(505) 767-8873'',61920748605508026073660645959130557967)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149090999242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 110
    ,p_src_line_number => 55
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149139401242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 111
    ,p_src_line_number => 56
    ,p_offset => 12725
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605509234999480260588305264143,''Beata'',''Ladieu'',''Beata.Ladieu@internalmail'',''(431) 269-7307'',61920748605510443925299875217479970319)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149266510242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 112
    ,p_src_line_number => 56
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149307045242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 113
    ,p_src_line_number => 57
    ,p_offset => 12959
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605511652851119489846654676495,''Jonnie'',''Spellane'',''Jonnie.Spellane@internalm'',''(609) 245-6493'',61920748605512861776939104475829382671)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149430489242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 114
    ,p_src_line_number => 57
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149585569242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 115
    ,p_src_line_number => 58
    ,p_offset => 13196
    ,p_length => 195
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Hollis'',''Jondahl'',''Hollis.Jondahl@internalma'',''(983) 685-7063'',61920748605514070702758719105004088847)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149666473242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 116
    ,p_src_line_number => 58
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149707559242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 117
    ,p_src_line_number => 59
    ,p_offset => 13394
    ,p_length => 198
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605515279628578333734178795023,''Russel'',''Heinzelman'',''Russel.Heinzelman@interna'',''(260) 698-2765'',)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149839297242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 118
    ,p_src_line_number => 59
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4149930192242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 119
    ,p_src_line_number => 60
    ,p_offset => 13595
    ,p_length => 227
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605516488554397948363353501199,'''',''Gatling'',''Danyel.Gatling@internalma'',''(225) 882-7293'',61920748605517697480217562992528207375)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150038280242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 120
    ,p_src_line_number => 60
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150160902242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 121
    ,p_src_line_number => 61
    ,p_offset => 13825
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605518906406037177621702913551,''Edie'',''Tavernier'',''Edie.Tavernier@internalma'',''(390) 775-4291'',61920748605520115331856792250877619727)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150230375242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 122
    ,p_src_line_number => 61
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150339403242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 123
    ,p_src_line_number => 62
    ,p_offset => 14061
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605521324257676406880052325903,''Ryan'',''Montori'',''Ryan.Montori@internalmail'',''(833) 521-7723'',61920748605522533183496021509227032079)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150443080242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 124
    ,p_src_line_number => 62
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150572364242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 125
    ,p_src_line_number => 63
    ,p_offset => 14295
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605523742109315636138401738255,''Celia'',''Scothorn'',''Celia.Scothorn@internalma'',''(897) 825-2142'',61920748605524951035135250767576444431)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150639649242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 126
    ,p_src_line_number => 63
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150717582242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 127
    ,p_src_line_number => 64
    ,p_offset => 14531
    ,p_length => 183
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Gracia'',''Soldavini'',''Gracia.Soldavini@internal'','''',61920748605526159960954865396751150607)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150814779242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 128
    ,p_src_line_number => 64
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4150989540242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 129
    ,p_src_line_number => 65
    ,p_offset => 14717
    ,p_length => 194
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Ginger'',''Zorman'',''Ginger.Zorman@internalmai'',''(212) 517-1246'',61920748605527368886774480025925856783)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151075318242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 130
    ,p_src_line_number => 65
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151166144242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 131
    ,p_src_line_number => 66
    ,p_offset => 14914
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605528577812594094655100562959,''Gracia'',''Tsai'',''Gracia.Tsai@internalmail'',''(833) 711-9521'',61920748605529786738413709284275269135)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151228461242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 132
    ,p_src_line_number => 66
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151323006242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 133
    ,p_src_line_number => 67
    ,p_offset => 15146
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605530995664233323913449975311,''Edris'',''Lifford'',''Edris.Lifford@internalmai'',''(343) 504-7469'',61920748605532204590052938542624681487)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151461575242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 134
    ,p_src_line_number => 67
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151547837242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 135
    ,p_src_line_number => 68
    ,p_offset => 15381
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605533413515872553171799387663,''Dannielle'',''Conforto'',''Dannielle.Conforto@intern'',''(508) 438-4698'',61920748605534622441692167800974093839)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151677524242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 136
    ,p_src_line_number => 68
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151782794242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 137
    ,p_src_line_number => 69
    ,p_offset => 15621
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605535831367511782430148800015,''Delia'',''Nortesano'',''Delia.Nortesano@internalm'',''(810) 921-3873'',61920748605537040293331397059323506191)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151864607242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 138
    ,p_src_line_number => 69
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4151978637242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 139
    ,p_src_line_number => 70
    ,p_offset => 15858
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605538249219151011688498212367,''Letha'',''Kosir'',''Letha.Kosir@internalmail'',''(412) 463-4422'',61920748605539458144970626317672918543)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152036208242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 140
    ,p_src_line_number => 70
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152180258242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 141
    ,p_src_line_number => 71
    ,p_offset => 16090
    ,p_length => 227
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605540667070790240946847624719,''Delbert'','''',''Delbert.Khatak@internalma'',''(280) 540-2299'',61920748605541875996609855576022330895)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152209261242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 142
    ,p_src_line_number => 71
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152678094242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 146
    ,p_src_line_number => 73
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152380289242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 143
    ,p_src_line_number => 72
    ,p_offset => 16320
    ,p_length => 225
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605543084922429470205197037071,''Belva'',''Old'',''Belva.Old@internalmail'',''(431) 653-7677'',61920748605544293848249084834371743247)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152484981242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 144
    ,p_src_line_number => 72
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152567179242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 145
    ,p_src_line_number => 73
    ,p_offset => 16548
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605545502774068699463546449423,''Anneliese'',''Namdar'',''Anneliese.Namdar@internal'',''(674) 402-6862'',61920748605546711699888314092721155599)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152706736242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 147
    ,p_src_line_number => 74
    ,p_offset => 16786
    ,p_length => 221
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605547920625707928721895861775,''Ping'','''',''Ping.Ivel@internalmail'',''(856) 542-4828'',61920748605549129551527543351070567951)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152889223242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 148
    ,p_src_line_number => 74
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4152950848242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 149
    ,p_src_line_number => 75
    ,p_offset => 17010
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605550338477347157980245274127,''Darleen'',''Casten'',''Darleen.Casten@internalma'',''(208) 763-8930'',61920748605551547403166772609419980303)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153015121242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 150
    ,p_src_line_number => 75
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153136104242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 151
    ,p_src_line_number => 76
    ,p_offset => 17246
    ,p_length => 196
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Gilberto'',''Weibel'',''Gilberto.Weibel@internalm'',''(248) 970-9824'',61920748605552756328986387238594686479)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153279057242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 152
    ,p_src_line_number => 76
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153367746242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 153
    ,p_src_line_number => 77
    ,p_offset => 17445
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605553965254806001867769392655,''Danika'',''Kerans'',''Danika.Kerans@internalmai'',''(285) 299-1470'',61920748605555174180625616496944098831)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153443558242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 154
    ,p_src_line_number => 77
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153517163242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 155
    ,p_src_line_number => 78
    ,p_offset => 17680
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605556383106445231126118805007,''Daniell'',''Grumney'',''Daniell.Grumney@internalm'',''(870) 387-7963'',61920748605557592032264845755293511183)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153628366242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 156
    ,p_src_line_number => 78
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153781353242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 157
    ,p_src_line_number => 79
    ,p_offset => 17917
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605558800958084460384468217359,''Elanor'',''Shinsel'',''Elanor.Shinsel@internalma'',''(485) 805-6115'',61920748605560009883904075013642923535)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153819990242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 158
    ,p_src_line_number => 79
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4153902477242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 159
    ,p_src_line_number => 80
    ,p_offset => 18153
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605561218809723689642817629711,''Janita'',''Eskaran'',''Janita.Eskaran@internalma'',''(426) 911-7926'',61920748605562427735543304271992335887)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154097140242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 160
    ,p_src_line_number => 80
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154109682242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 161
    ,p_src_line_number => 81
    ,p_offset => 18389
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605563636661362918901167042063,''Gladys'',''Laughery'',''Gladys.Laughery@internalm'',''(812) 321-2788'',61920748605564845587182533530341748239)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154217603242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 162
    ,p_src_line_number => 81
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154315998242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 163
    ,p_src_line_number => 82
    ,p_offset => 18626
    ,p_length => 226
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605566054513002148159516454415,''Timika'','''',''Timika.Wombles@internalma'',''(516) 536-6276'',61920748605567263438821762788691160591)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154466672242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 164
    ,p_src_line_number => 82
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154560170242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 165
    ,p_src_line_number => 83
    ,p_offset => 18855
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605568472364641377417865866767,''Annice'',''Mccrossen'',''Annice.Mccrossen@internal'',''(968) 243-6862'',61920748605569681290460992047040572943)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154631961242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 166
    ,p_src_line_number => 83
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154715309242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 167
    ,p_src_line_number => 84
    ,p_offset => 19093
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605570890216280606676215279119,''Marvella'',''Salemi'',''Marvella.Salemi@internalm'',''(634) 300-7408'',61920748605572099142100221305389985295)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154871944242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 168
    ,p_src_line_number => 84
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4154902051242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 169
    ,p_src_line_number => 85
    ,p_offset => 19330
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605573308067919835934564691471,''Buck'',''Campion'',''Buck.Campion@internalmail'',''(922) 492-8961'',61920748605574516993739450563739397647)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155092276242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 170
    ,p_src_line_number => 85
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155199919242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 171
    ,p_src_line_number => 86
    ,p_offset => 19564
    ,p_length => 194
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Dann'',''Widerski'',''Dann.Widerski@internalmai'',''(203) 796-6323'',61920748605575725919559065192914103823)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155274297242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 172
    ,p_src_line_number => 86
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155385262242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 173
    ,p_src_line_number => 87
    ,p_offset => 19761
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605576934845378679822088809999,''Gudrun'',''Snater'',''Gudrun.Snater@internalmai'',''(680) 266-3532'',61920748605578143771198294451263516175)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155418382242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 174
    ,p_src_line_number => 87
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155566420242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 175
    ,p_src_line_number => 88
    ,p_offset => 19996
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605579352697017909080438222351,''Horace'',''Kaminer'',''Horace.Kaminer@internalma'',''(975) 208-4269'',61920748605580561622837523709612928527)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155670314242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 176
    ,p_src_line_number => 88
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155732275242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 177
    ,p_src_line_number => 89
    ,p_offset => 20232
    ,p_length => 195
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605581770548657138338787634703,''Darren'',''Settler'',''Darren.Settler@internalma'',''(584) 957-6787'',)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155883731242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 178
    ,p_src_line_number => 89
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4155964324242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 179
    ,p_src_line_number => 90
    ,p_offset => 20430
    ,p_length => 194
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605582979474476752967962340879,''Antonio'',''Koper'',''Antonio.Koper@internalmai'',''(892) 232-9120'',)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156070842242698
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 180
    ,p_src_line_number => 90
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156116791242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 181
    ,p_src_line_number => 91
    ,p_offset => 20627
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605584188400296367597137047055,''Danille'',''Verbeck'',''Danille.Verbeck@internalm'',''(416) 887-6448'',61920748605585397326115982226311753231)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156201231242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 182
    ,p_src_line_number => 91
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156380602242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 183
    ,p_src_line_number => 92
    ,p_offset => 20864
    ,p_length => 227
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605586606251935596855486459407,'''',''Untalan'',''Delaine.Untalan@internalm'',''(692) 565-4110'',61920748605587815177755211484661165583)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4156476458242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 184
    ,p_src_line_number => 92
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160859831242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 228
    ,p_src_line_number => 114
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160502227242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 225
    ,p_src_line_number => 113
    ,p_offset => 25788
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605637381136359411280824118799,''Josh'',''Slomer'',''Josh.Slomer@internalmail'',''(325) 813-5272'',61920748605638590062179025909998824975)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160673116242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 226
    ,p_src_line_number => 113
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160793764242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 227
    ,p_src_line_number => 114
    ,p_offset => 26020
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605639798987998640539173531151,''Edyth'',''Spindle'',''Edyth.Spindle@internalmai'',''(941) 877-3722'',61920748605641007913818255168348237327)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4160916077242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 229
    ,p_src_line_number => 115
    ,p_offset => 26255
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605642216839637869797522943503,''Greta'',''Svatek'',''Greta.Svatek@internalmail'',''(379) 410-1294'',61920748605643425765457484426697649679)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161049517242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 230
    ,p_src_line_number => 115
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161174394242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 231
    ,p_src_line_number => 116
    ,p_offset => 26489
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605644634691277099055872355855,''Buffy'',''Melen'',''Buffy.Melen@internalmail'',''(333) 206-5773'',61920748605645843617096713685047062031)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161228537242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 232
    ,p_src_line_number => 116
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161341781242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 233
    ,p_src_line_number => 117
    ,p_offset => 26721
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605647052542916328314221768207,''Antonetta'',''Pinsky'',''Antonetta.Pinsky@internal'',''(944) 407-8443'',61920748605648261468735942943396474383)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161456822242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 234
    ,p_src_line_number => 117
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161574492242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 235
    ,p_src_line_number => 118
    ,p_offset => 26959
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605649470394555557572571180559,''Tyrell'',''Zuelke'',''Tyrell.Zuelke@internalmai'',''(221) 554-4275'',61920748605650679320375172201745886735)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161609348242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 236
    ,p_src_line_number => 118
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161762895242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 237
    ,p_src_line_number => 119
    ,p_offset => 27194
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605651888246194786830920592911,''Clorinda'',''Matalka'',''Clorinda.Matalka@internal'',''(905) 824-1235'',61920748605653097172014401460095299087)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161813182242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 238
    ,p_src_line_number => 119
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4161942343242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 239
    ,p_src_line_number => 120
    ,p_offset => 27432
    ,p_length => 211
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605654306097834016089270005263,''Anton'',''Mew'',''Anton.Mew@internalmail'','''',61920748605655515023653630718444711439)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162042527242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 240
    ,p_src_line_number => 120
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162126085242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 241
    ,p_src_line_number => 121
    ,p_offset => 27646
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605656723949473245347619417615,''Therese'',''Zaeske'',''Therese.Zaeske@internalma'',''(412) 224-7182'',61920748605657932875292859976794123791)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162271548242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 242
    ,p_src_line_number => 121
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162348172242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 243
    ,p_src_line_number => 122
    ,p_offset => 27882
    ,p_length => 237
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605659141801112474605968829967,''Sabrina'',''Stojanovic'',''Sabrina.Stojanovic@intern'',''(417) 342-4030'',61920748605660350726932089235143536143)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162448231242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 244
    ,p_src_line_number => 122
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162589098242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 245
    ,p_src_line_number => 123
    ,p_offset => 28122
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605661559652751703864318242319,''Basil'',''Hanagan'',''Basil.Hanagan@internalmai'',''(530) 603-8410'',61920748605662768578571318493492948495)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162653781242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 246
    ,p_src_line_number => 123
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162794519242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 247
    ,p_src_line_number => 124
    ,p_offset => 28357
    ,p_length => 203
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605663977504390933122667654671,''Gwen'',''Cake'','''',''(994) 312-1582'',61920748605665186430210547751842360847)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162899519242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 248
    ,p_src_line_number => 124
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4162952412242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 249
    ,p_src_line_number => 125
    ,p_offset => 28563
    ,p_length => 200
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605666395356030162381017067023,''Camellia'',''Archuletta'',''Camellia.Archuletta@inter'',''(236) 379-3897'',)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163058018242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 250
    ,p_src_line_number => 125
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163136226242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 251
    ,p_src_line_number => 126
    ,p_offset => 28766
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605667604281849777010191773199,''Yvonne'',''Appleman'',''Yvonne.Appleman@internalm'',''(631) 303-8583'',61920748605668813207669391639366479375)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163254214242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 252
    ,p_src_line_number => 126
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163381209242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 253
    ,p_src_line_number => 127
    ,p_offset => 29003
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605670022133489006268541185551,''Darla'',''Jungling'',''Darla.Jungling@internalma'',''(363) 283-1340'',61920748605671231059308620897715891727)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163455573242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 254
    ,p_src_line_number => 127
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163538461242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 255
    ,p_src_line_number => 128
    ,p_offset => 29239
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605672439985128235526890597903,''Belinda'',''Barger'',''Belinda.Barger@internalma'',''(882) 458-8089'',61920748605673648910947850156065304079)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163669221242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 256
    ,p_src_line_number => 128
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163780191242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 257
    ,p_src_line_number => 129
    ,p_offset => 29475
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605674857836767464785240010255,''Colby'',''Sanagustin'',''Colby.Sanagustin@internal'',''(433) 820-1127'',61920748605676066762587079414414716431)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163841161242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 258
    ,p_src_line_number => 129
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4163914482242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 259
    ,p_src_line_number => 130
    ,p_offset => 29713
    ,p_length => 228
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605677275688406694043589422607,'''',''Hagglund'',''Elaina.Hagglund@internalm'',''(473) 525-8285'',61920748605678484614226308672764128783)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164068137242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 260
    ,p_src_line_number => 130
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164159585242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 261
    ,p_src_line_number => 131
    ,p_offset => 29944
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605679693540045923301938834959,''Beatris'',''Iraheta'',''Beatris.Iraheta@internalm'',''(439) 464-7850'',61920748605680902465865537931113541135)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164267599242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 262
    ,p_src_line_number => 131
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164305717242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 263
    ,p_src_line_number => 132
    ,p_offset => 30181
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605682111391685152560288247311,''Ty'',''Flournay'',''Ty.Flournay@internalmail'',''(297) 266-3870'',61920748605683320317504767189462953487)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164499387242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 264
    ,p_src_line_number => 132
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164856123242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 268
    ,p_src_line_number => 134
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164529457242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 265
    ,p_src_line_number => 133
    ,p_offset => 30413
    ,p_length => 227
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605684529243324381818637659663,''Marya'',''Raso'',''Marya.Raso@internalmail'',''(215) 718-3588'',61920748605685738169143996447812365839)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164644994242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 266
    ,p_src_line_number => 133
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164766666242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 267
    ,p_src_line_number => 134
    ,p_offset => 30643
    ,p_length => 194
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Basil'',''Oursler'',''Basil.Oursler@internalmai'',''(838) 492-1406'',61920748605686947094963611076987072015)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4164954731242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 269
    ,p_src_line_number => 135
    ,p_offset => 30840
    ,p_length => 232
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605688156020783225706161778191,''Gladis'',''Trevey'',''Gladis.Trevey@internalmai'',''(308) 231-1856'',61920748605689364946602840335336484367)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165037553242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 270
    ,p_src_line_number => 135
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165145444242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 271
    ,p_src_line_number => 136
    ,p_offset => 31075
    ,p_length => 231
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605690573872422454964511190543,''Goldie'',''Yuska'',''Goldie.Yuska@internalmail'',''(465) 770-2208'',61920748605691782798242069593685896719)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165277952242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 272
    ,p_src_line_number => 136
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165343225242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 273
    ,p_src_line_number => 137
    ,p_offset => 31309
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605692991724061684222860602895,''Daria'',''Heare'',''Daria.Heare@internalmail'',''(294) 831-7122'',61920748605694200649881298852035309071)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165402461242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 274
    ,p_src_line_number => 137
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165500242242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 275
    ,p_src_line_number => 138
    ,p_offset => 31541
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605695409575700913481210015247,''Gregoria'',''Ramotar'',''Gregoria.Ramotar@internal'',''(834) 613-4148'',61920748605696618501520528110384721423)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165669092242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 276
    ,p_src_line_number => 138
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165771037242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 277
    ,p_src_line_number => 139
    ,p_offset => 31779
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605697827427340142739559427599,''Josh'',''Vanderstelt'',''Josh.Vanderstelt@internal'',''(613) 486-6326'',61920748605699036353159757368734133775)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165886592242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 278
    ,p_src_line_number => 139
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4165979061242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 279
    ,p_src_line_number => 140
    ,p_offset => 32017
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605700245278979371997908839951,''Antoine'',''Applonie'',''Antoine.Applonie@internal'',''(758) 586-2784'',61920748605701454204798986627083546127)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166067201242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 280
    ,p_src_line_number => 140
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166162211242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 281
    ,p_src_line_number => 141
    ,p_offset => 32255
    ,p_length => 227
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605702663130618601256258252303,'''',''Bravard'',''Daren.Bravard@internalmai'',''(443) 727-3112'',61920748605703872056438215885432958479)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166271909242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 282
    ,p_src_line_number => 141
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166390761242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 283
    ,p_src_line_number => 142
    ,p_offset => 32485
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605705080982257830514607664655,''Belen'',''Ogden'',''Belen.Ogden@internalmail'',''(595) 582-6270'',61920748605706289908077445143782370831)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166429507242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 284
    ,p_src_line_number => 142
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166502147242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 285
    ,p_src_line_number => 143
    ,p_offset => 32717
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605707498833897059772957077007,''Darcie'',''Hamm'',''Darcie.Hamm@internalmail'',''(568) 768-2274'',61920748605708707759716674402131783183)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166659972242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 286
    ,p_src_line_number => 143
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166713037242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 287
    ,p_src_line_number => 144
    ,p_offset => 32949
    ,p_length => 225
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605709916685536289031306489359,'''',''Forbs'',''Martine.Forbs@internalmai'',''(695) 824-9698'',61920748605711125611355903660481195535)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166830694242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 288
    ,p_src_line_number => 144
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4166997131242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 289
    ,p_src_line_number => 145
    ,p_offset => 33177
    ,p_length => 229
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605712334537175518289655901711,''Pam'',''Dominis'',''Pam.Dominis@internalmail'',''(291) 466-1723'',61920748605713543462995132918830607887)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167061955242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 290
    ,p_src_line_number => 145
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167147811242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 291
    ,p_src_line_number => 146
    ,p_offset => 33409
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605714752388814747548005314063,''Kirby'',''Honeyman'',''Kirby.Honeyman@internalma'',''(896) 756-3485'',61920748605715961314634362177180020239)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167258068242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 292
    ,p_src_line_number => 146
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167399380242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 293
    ,p_src_line_number => 147
    ,p_offset => 33645
    ,p_length => 233
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605717170240453976806354726415,''Martin'',''Musulin'',''Martin.Musulin@internalma'',''(835) 794-9671'',61920748605718379166273591435529432591)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167410130242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 294
    ,p_src_line_number => 147
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167574996242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 295
    ,p_src_line_number => 148
    ,p_offset => 33881
    ,p_length => 236
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605719588092093206064704138767,''Toccara'',''Konwinski'',''Toccara.Konwinski@interna'',''(896) 524-3649'',61920748605720797017912820693878844943)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167666486242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 296
    ,p_src_line_number => 148
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167790723242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 297
    ,p_src_line_number => 149
    ,p_offset => 34120
    ,p_length => 235
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605722005943732435323053551119,''Sylvester'',''Kister'',''Sylvester.Kister@internal'',''(692) 817-6397'',61920748605723214869552049952228257295)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167834558242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 298
    ,p_src_line_number => 149
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4167967132242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 299
    ,p_src_line_number => 150
    ,p_offset => 34358
    ,p_length => 234
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605724423795371664581402963471,''Jolie'',''Micalizzi'',''Jolie.Micalizzi@internalm'',''(232) 845-8934'',61920748605725632721191279210577669647)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 4168079755242699
    ,p_file_id => 4138019112242147
    ,p_stmt_number => 300
    ,p_src_line_number => 150
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 4168174577242882,
    p_file_id => 4138019112242147,
    p_job_id => null,
    p_run_by => 'GONZALEZFJU',
    p_run_as => 'APEXPDB',
    p_started => to_date('202502201628','YYYYMMDDHH24MI'),
    p_start_time => 9242883,
    p_ended => to_date('202502201628','YYYYMMDDHH24MI'),
    p_end_time => 9242908,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172715269242892
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 46
    ,p_stmt_num => 91
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605486265408907582633985846799,''Beau'',''Deerman'',''Beau.Deerman@internalmail'',''(898) 464-5962'',)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242892
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242892
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172868018242892
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 47
    ,p_stmt_num => 93
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605487474334727197263160552975,''Wynona'',''Tenda'',''Wynona.Tenda@internalmail'',''(761) 722-7695'',61920748605488683260546811892335259151)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242892
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242892
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172994317242893
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 48
    ,p_stmt_num => 95
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605489892186366426521509965327,''Rusty'',''Nesland'',''Rusty.Nesland@internalmai'',''(361) 912-9389'',61920748605491101112186041150684671503)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242893
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242893
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173069374242893
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 49
    ,p_stmt_num => 97
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605492310038005655779859377679,''Darci'',''Glassner'',''Darci.Glassner@internalma'',''(944) 568-8670'',61920748605493518963825270409034083855)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242893
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242893
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173166839242893
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 50
    ,p_stmt_num => 99
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605494727889644885038208790031,''Fran'',''Sibbald'',''Fran.Sibbald@internalmail'',''(849) 589-4552'',61920748605495936815464499667383496207)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242893
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242893
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173226398242893
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 51
    ,p_stmt_num => 101
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605497145741284114296558202383,''Gussie'',''Khilling'',''Gussie.Khilling@internalm'',''(829) 604-3601'',61920748605498354667103728925732908559)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242893
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242893
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173307575242893
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 52
    ,p_stmt_num => 103
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605499563592923343554907614735,''Becky'',''Falsetti'',''Becky.Falsetti@internalma'',''(889) 537-7526'',61920748605500772518742958184082320911)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242893
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242893
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173497644242893
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 53
    ,p_stmt_num => 105
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605501981444562572813257027087,''Rufus'',''Morais'',''Rufus.Morais@internalmail'',''(983) 816-8716'',61920748605503190370382187442431733263)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242893
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242894
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173556650242894
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 54
    ,p_stmt_num => 107
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605504399296201802071606439439,''Bula'',''Esperanza'',''Bula.Esperanza@internalma'',''(463) 641-7825'',61920748605505608222021416700781145615)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242894
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242894
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173618978242894
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 55
    ,p_stmt_num => 109
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605506817147841031329955851791,''Jarred'',''Israelsen'',''Jarred.Israelsen@internal'',''(505) 767-8873'',61920748605508026073660645959130557967)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242894
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242894
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173701157242894
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 56
    ,p_stmt_num => 111
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605509234999480260588305264143,''Beata'',''Ladieu'',''Beata.Ladieu@internalmail'',''(431) 269-7307'',61920748605510443925299875217479970319)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242894
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242894
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4168245933242883
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605381088862601109895786409487,''Gisele'',''Limthong'',''Gisele.Limthong@internalm'',''(549) 815-5276'',61920748605382297788420724524961115663)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242883
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242884
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4168350839242884
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605383506714240339154135821839,''Vernita'',''Kulik'',''Vernita.Kulik@internalmai'',''(358) 993-9009'',61920748605384715640059953783310528015)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242884
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242884
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4168401627242885
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 3
    ,p_stmt_num => 5
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605385924565879568412485234191,'''',''Andonian'',''Phylis.Andonian@internalm'',''(633) 838-9971'',61920748605387133491699183041659940367)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242885
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242885
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4168560381242885
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 4
    ,p_stmt_num => 7
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605388342417518797670834646543,''Danita'',''Heumann'',''Danita.Heumann@internalma'',''(962) 930-4714'',61920748605389551343338412300009352719)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242885
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242885
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4168657854242885
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 5
    ,p_stmt_num => 9
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605390760269158026929184058895,''Graham'',''Chambers'',''Graham.Chambers@internalm'',''(248) 712-7812'',61920748605391969194977641558358765071)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242885
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242885
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4168796634242885
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 6
    ,p_stmt_num => 11
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605393178120797256187533471247,''Edelmira'',''Widman'',''Edelmira.Widman@internalm'',''(311) 385-3376'',61920748605394387046616870816708177423)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242885
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242885
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4168806780242885
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 7
    ,p_stmt_num => 13
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605395595972436485445882883599,''Eileen'',''Millott'',''Eileen.Millott@internalma'','''',61920748605396804898256100075057589775)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242885
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242885
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4168934328242885
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 8
    ,p_stmt_num => 15
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605398013824075714704232295951,''Julian'',''Rudack'',''Julian.Rudack@internalmai'','''',61920748605399222749895329333407002127)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242885
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242886
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169059114242886
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 9
    ,p_stmt_num => 17
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605400431675714943962581708303,''Kevin'',''Sawlivich'',''Kevin.Sawlivich@internalm'',''(401) 980-6423'',61920748605401640601534558591756414479)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242886
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242886
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169137668242886
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 10
    ,p_stmt_num => 19
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605402849527354173220931120655,''Darnell'',''Rainbow'',''Darnell.Rainbow@internalm'',''(871) 264-3706'',61920748605404058453173787850105826831)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242886
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242886
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169271165242886
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 11
    ,p_stmt_num => 21
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605405267378993402479280533007,''Kisha'',''Leven'',''Kisha.Leven@internalmail'',''(551) 497-9513'',61920748605406476304813017108455239183)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242886
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242886
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169318489242886
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 12
    ,p_stmt_num => 23
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605407685230632631737629945359,''Bella'',''Osterfeld'',''Bella.Osterfeld@internalm'',''(871) 309-1098'',61920748605408894156452246366804651535)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242886
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242886
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169491964242886
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 13
    ,p_stmt_num => 25
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605410103082271860995979357711,''Bart'',''Detullio'',''Bart.Detullio@internalmai'',''(358) 240-5871'',61920748605411312008091475625154063887)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242886
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242886
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169514340242886
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 14
    ,p_stmt_num => 27
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605412520933911090254328770063,''Sabine'',''Bonaguidi'',''Sabine.Bonaguidi@internal'',''(826) 724-5971'',61920748605413729859730704883503476239)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242886
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242887
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169623559242887
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 15
    ,p_stmt_num => 29
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605414938785550319512678182415,''Glenn'','''',''Glenn.Mcgraff@internalmai'',''(365) 691-9316'',61920748605416147711369934141852888591)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242887
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242887
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169787298242887
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 16
    ,p_stmt_num => 31
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605417356637189548771027594767,''Theodora'',''Beavin'',''Theodora.Beavin@internalm'',''(449) 429-9924'',61920748605418565563009163400202300943)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242887
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242887
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169812661242887
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 17
    ,p_stmt_num => 33
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605419774488828778029377007119,''Tiffaney'',''Bozovich'',''Tiffaney.Bozovich@interna'',''(621) 813-8095'',61920748605420983414648392658551713295)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242887
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242887
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4169950188242887
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 18
    ,p_stmt_num => 35
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605422192340468007287726419471,'''',''Kurohara'',''Griselda.Kurohara@interna'',''(508) 894-9587'',61920748605423401266287621916901125647)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242887
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242887
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170033472242887
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 19
    ,p_stmt_num => 37
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605424610192107236546075831823,''Eddie'',''Dietrick'',''Eddie.Dietrick@internalma'',''(702) 314-1198'',61920748605425819117926851175250537999)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242887
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242887
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170195536242887
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 20
    ,p_stmt_num => 39
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605427028043746465804425244175,''Tommy'',''Stoor'',''Tommy.Stoor@internalmail'',''(360) 731-7502'',61920748605428236969566080433599950351)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242887
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242888
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170209667242888
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 21
    ,p_stmt_num => 41
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605429445895385695062774656527,''Veronica'',''Aubrecht'',''Veronica.Aubrecht@interna'',''(720) 557-2429'',61920748605430654821205309691949362703)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242888
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242888
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170385570242888
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 22
    ,p_stmt_num => 43
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605431863747024924321124068879,''Daniel'',''Strong'',''Daniel.Strong@internalmai'',''(723) 584-2473'',61920748605433072672844538950298775055)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242888
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242888
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170484724242888
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 23
    ,p_stmt_num => 45
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605434281598664153579473481231,''Antonia'',''Mclachlan'',''Antonia.Mclachlan@interna'',''(384) 891-7814'',61920748605435490524483768208648187407)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242888
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242888
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170536479242888
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 24
    ,p_stmt_num => 47
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605436699450303382837822893583,''Jonathon'',''Botner'',''Jonathon.Botner@internalm'',''(491) 786-2572'',61920748605437908376122997466997599759)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242888
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242888
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170625277242888
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 25
    ,p_stmt_num => 49
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605439117301942612096172305935,''Cleveland'',''Gassert'',''Cleveland.Gassert@interna'',''(204) 879-7665'',61920748605440326227762226725347012111)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242888
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242888
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170775245242889
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 26
    ,p_stmt_num => 51
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605441535153581841354521718287,''Ruthanne'',''Burgoyne'',''Ruthanne.Burgoyne@interna'',''(646) 275-5904'',61920748605442744079401455983696424463)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242889
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242889
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170872967242889
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 27
    ,p_stmt_num => 53
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605443953005221070612871130639,''Libbie'',''Risher'',''Libbie.Risher@internalmai'',''(957) 506-9163'',61920748605445161931040685242045836815)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242889
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242889
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4170917710242889
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 28
    ,p_stmt_num => 55
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605446370856860299871220542991,''Janine'',''Prudom'',''Janine.Prudom@internalmai'',''(332) 209-8616'',61920748605447579782679914500395249167)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242889
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242889
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171080242242889
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 29
    ,p_stmt_num => 57
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605448788708499529129569955343,''Daniele'',''Thorsten'',''Daniele.Thorsten@internal'',''(612) 965-7475'',)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242889
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242889
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171141337242889
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 30
    ,p_stmt_num => 59
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605449997634319143758744661519,''Terresa'',''Hanhardt'',''Terresa.Hanhardt@internal'',''(861) 372-3567'',61920748605451206560138758387919367695)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242889
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242889
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171257381242889
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 31
    ,p_stmt_num => 61
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605452415485958373017094073871,''Dara'',''Bonneau'',''Dara.Bonneau@internalmail'',''(396) 728-6178'',61920748605453624411777987646268780047)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242889
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242890
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171399385242890
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 32
    ,p_stmt_num => 63
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Hong'',''Charter'',''Hong.Charter@internalmail'',''(536) 552-8682'',61920748605454833337597602275443486223)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/92: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242890
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242890
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171412398242890
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 33
    ,p_stmt_num => 65
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605456042263417216904618192399,''Tomasa'',''Orouke'',''Tomasa.Orouke@internalmai'',''(481) 912-8996'',61920748605457251189236831533792898575)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242890
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242890
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171533091242890
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 34
    ,p_stmt_num => 67
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605458460115056446162967604751,''Janyce'',''Daignault'',''Janyce.Daignault@internal'',''(669) 514-8021'',61920748605459669040876060792142310927)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242890
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242890
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171626608242890
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 35
    ,p_stmt_num => 69
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605460877966695675421317017103,''Pamala'',''Mcdewitt'',''Pamala.Mcdewitt@internalm'',''(356) 861-5888'',61920748605462086892515290050491723279)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242890
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242890
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171782171242890
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 36
    ,p_stmt_num => 71
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605463295818334904679666429455,''Floy'',''Craver'','''',''(455) 297-1931'',61920748605464504744154519308841135631)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242890
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242891
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171822470242891
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 37
    ,p_stmt_num => 73
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605465713669974133938015841807,''Judson'',''Kantz'','''','''',61920748605466922595793748567190547983)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242891
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242891
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4171903550242891
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 38
    ,p_stmt_num => 75
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605468131521613363196365254159,''Pablo'',''Caveney'',''Pablo.Caveney@internalmai'',''(554) 268-7195'',61920748605469340447432977825539960335)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242891
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242891
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172036916242891
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 39
    ,p_stmt_num => 77
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605470549373252592454714666511,''Ruthe'',''Nishioka'',''Ruthe.Nishioka@internalma'',''(960) 510-4122'',61920748605471758299072207083889372687)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242891
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242891
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172156841242891
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 40
    ,p_stmt_num => 79
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605472967224891821713064078863,''Florida'',''Gilliand'',''Florida.Gilliand@internal'',''(903) 547-9295'',61920748605474176150711436342238785039)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242891
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242891
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172267489242891
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 41
    ,p_stmt_num => 81
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605475385076531050971413491215,''Bunny'',''Oginski'',''Bunny.Oginski@internalmai'',''(565) 574-7786'',61920748605476594002350665600588197391)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242891
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242891
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172322753242891
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 42
    ,p_stmt_num => 83
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605477802928170280229762903567,''Letty'',''Riccardo'',''Letty.Riccardo@internalma'',''(336) 255-3645'',61920748605479011853989894858937609743)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242891
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242892
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172494901242892
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 43
    ,p_stmt_num => 85
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605480220779809509488112315919,''Efren'',''Wallentine'',''Efren.Wallentine@internal'',''(404) 406-2647'',61920748605481429705629124117287022095)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242892
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242892
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172570952242892
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 44
    ,p_stmt_num => 87
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605482638631448738746461728271,''Granville'',''Mcmurrin'',''Granville.Mcmurrin@intern'',''(890) 386-6074'',61920748605483847557268353375636434447)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242892
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242892
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4172645725242892
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 45
    ,p_stmt_num => 89
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Josefa'',''Shilt'',''Josefa.Shilt@internalmail'',''(223) 346-1345'',61920748605485056483087968004811140623)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/92: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242892
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242892
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173828060242894
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 57
    ,p_stmt_num => 113
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605511652851119489846654676495,''Jonnie'',''Spellane'',''Jonnie.Spellane@internalm'',''(609) 245-6493'',61920748605512861776939104475829382671)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242894
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242894
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4173943038242894
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 58
    ,p_stmt_num => 115
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Hollis'',''Jondahl'',''Hollis.Jondahl@internalma'',''(983) 685-7063'',61920748605514070702758719105004088847)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/92: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242894
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242894
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174099653242894
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 59
    ,p_stmt_num => 117
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605515279628578333734178795023,''Russel'',''Heinzelman'',''Russel.Heinzelman@interna'',''(260) 698-2765'',)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242894
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242895
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174138759242895
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 60
    ,p_stmt_num => 119
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605516488554397948363353501199,'''',''Gatling'',''Danyel.Gatling@internalma'',''(225) 882-7293'',61920748605517697480217562992528207375)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242895
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242895
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174236648242895
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 61
    ,p_stmt_num => 121
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605518906406037177621702913551,''Edie'',''Tavernier'',''Edie.Tavernier@internalma'',''(390) 775-4291'',61920748605520115331856792250877619727)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242895
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242895
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174358148242895
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 62
    ,p_stmt_num => 123
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605521324257676406880052325903,''Ryan'',''Montori'',''Ryan.Montori@internalmail'',''(833) 521-7723'',61920748605522533183496021509227032079)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242895
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242895
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174416939242895
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 63
    ,p_stmt_num => 125
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605523742109315636138401738255,''Celia'',''Scothorn'',''Celia.Scothorn@internalma'',''(897) 825-2142'',61920748605524951035135250767576444431)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242895
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242895
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174523010242895
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 64
    ,p_stmt_num => 127
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Gracia'',''Soldavini'',''Gracia.Soldavini@internal'','''',61920748605526159960954865396751150607)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/92: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242895
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242895
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174611546242895
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 65
    ,p_stmt_num => 129
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Ginger'',''Zorman'',''Ginger.Zorman@internalmai'',''(212) 517-1246'',61920748605527368886774480025925856783)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/92: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242895
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242896
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174748095242896
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 66
    ,p_stmt_num => 131
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605528577812594094655100562959,''Gracia'',''Tsai'',''Gracia.Tsai@internalmail'',''(833) 711-9521'',61920748605529786738413709284275269135)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242896
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242896
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174834658242896
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 67
    ,p_stmt_num => 133
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605530995664233323913449975311,''Edris'',''Lifford'',''Edris.Lifford@internalmai'',''(343) 504-7469'',61920748605532204590052938542624681487)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242896
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242896
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181643483242906
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 135
    ,p_stmt_num => 269
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605688156020783225706161778191,''Gladis'',''Trevey'',''Gladis.Trevey@internalmai'',''(308) 231-1856'',61920748605689364946602840335336484367)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242906
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242906
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181755422242906
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 136
    ,p_stmt_num => 271
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605690573872422454964511190543,''Goldie'',''Yuska'',''Goldie.Yuska@internalmail'',''(465) 770-2208'',61920748605691782798242069593685896719)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242906
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242906
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181883997242906
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 137
    ,p_stmt_num => 273
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605692991724061684222860602895,''Daria'',''Heare'',''Daria.Heare@internalmail'',''(294) 831-7122'',61920748605694200649881298852035309071)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242906
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242906
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181917477242906
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 138
    ,p_stmt_num => 275
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605695409575700913481210015247,''Gregoria'',''Ramotar'',''Gregoria.Ramotar@internal'',''(834) 613-4148'',61920748605696618501520528110384721423)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242906
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242906
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182092105242906
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 139
    ,p_stmt_num => 277
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605697827427340142739559427599,''Josh'',''Vanderstelt'',''Josh.Vanderstelt@internal'',''(613) 486-6326'',61920748605699036353159757368734133775)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242906
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242906
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182108565242906
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 140
    ,p_stmt_num => 279
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605700245278979371997908839951,''Antoine'',''Applonie'',''Antoine.Applonie@internal'',''(758) 586-2784'',61920748605701454204798986627083546127)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242906
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242907
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182272636242907
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 141
    ,p_stmt_num => 281
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605702663130618601256258252303,'''',''Bravard'',''Daren.Bravard@internalmai'',''(443) 727-3112'',61920748605703872056438215885432958479)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242907
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242907
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182331274242907
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 142
    ,p_stmt_num => 283
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605705080982257830514607664655,''Belen'',''Ogden'',''Belen.Ogden@internalmail'',''(595) 582-6270'',61920748605706289908077445143782370831)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242907
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242907
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182415607242907
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 143
    ,p_stmt_num => 285
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605707498833897059772957077007,''Darcie'',''Hamm'',''Darcie.Hamm@internalmail'',''(568) 768-2274'',61920748605708707759716674402131783183)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242907
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242907
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182590947242907
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 144
    ,p_stmt_num => 287
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605709916685536289031306489359,'''',''Forbs'',''Martine.Forbs@internalmai'',''(695) 824-9698'',61920748605711125611355903660481195535)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242907
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242907
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182620409242907
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 145
    ,p_stmt_num => 289
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605712334537175518289655901711,''Pam'',''Dominis'',''Pam.Dominis@internalmail'',''(291) 466-1723'',61920748605713543462995132918830607887)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242907
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242907
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4174977558242896
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 68
    ,p_stmt_num => 135
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605533413515872553171799387663,''Dannielle'',''Conforto'',''Dannielle.Conforto@intern'',''(508) 438-4698'',61920748605534622441692167800974093839)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242896
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242896
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175007862242896
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 69
    ,p_stmt_num => 137
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605535831367511782430148800015,''Delia'',''Nortesano'',''Delia.Nortesano@internalm'',''(810) 921-3873'',61920748605537040293331397059323506191)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242896
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242896
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175156405242896
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 70
    ,p_stmt_num => 139
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605538249219151011688498212367,''Letha'',''Kosir'',''Letha.Kosir@internalmail'',''(412) 463-4422'',61920748605539458144970626317672918543)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242896
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242896
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175274659242896
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 71
    ,p_stmt_num => 141
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605540667070790240946847624719,''Delbert'','''',''Delbert.Khatak@internalma'',''(280) 540-2299'',61920748605541875996609855576022330895)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242896
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242896
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175365202242896
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 72
    ,p_stmt_num => 143
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605543084922429470205197037071,''Belva'',''Old'',''Belva.Old@internalmail'',''(431) 653-7677'',61920748605544293848249084834371743247)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242896
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242897
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175458328242897
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 73
    ,p_stmt_num => 145
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605545502774068699463546449423,''Anneliese'',''Namdar'',''Anneliese.Namdar@internal'',''(674) 402-6862'',61920748605546711699888314092721155599)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242897
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242897
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175524036242897
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 74
    ,p_stmt_num => 147
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605547920625707928721895861775,''Ping'','''',''Ping.Ivel@internalmail'',''(856) 542-4828'',61920748605549129551527543351070567951)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242897
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242897
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175617939242897
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 75
    ,p_stmt_num => 149
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605550338477347157980245274127,''Darleen'',''Casten'',''Darleen.Casten@internalma'',''(208) 763-8930'',61920748605551547403166772609419980303)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242897
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242897
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175790880242897
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 76
    ,p_stmt_num => 151
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Gilberto'',''Weibel'',''Gilberto.Weibel@internalm'',''(248) 970-9824'',61920748605552756328986387238594686479)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/92: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242897
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242897
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175896676242897
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 77
    ,p_stmt_num => 153
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605553965254806001867769392655,''Danika'',''Kerans'',''Danika.Kerans@internalmai'',''(285) 299-1470'',61920748605555174180625616496944098831)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242897
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242897
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4175909465242897
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 78
    ,p_stmt_num => 155
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605556383106445231126118805007,''Daniell'',''Grumney'',''Daniell.Grumney@internalm'',''(870) 387-7963'',61920748605557592032264845755293511183)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242897
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242897
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176057741242898
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 79
    ,p_stmt_num => 157
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605558800958084460384468217359,''Elanor'',''Shinsel'',''Elanor.Shinsel@internalma'',''(485) 805-6115'',61920748605560009883904075013642923535)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242898
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242898
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176131142242898
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 80
    ,p_stmt_num => 159
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605561218809723689642817629711,''Janita'',''Eskaran'',''Janita.Eskaran@internalma'',''(426) 911-7926'',61920748605562427735543304271992335887)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242898
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242898
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176263517242898
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 81
    ,p_stmt_num => 161
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605563636661362918901167042063,''Gladys'',''Laughery'',''Gladys.Laughery@internalm'',''(812) 321-2788'',61920748605564845587182533530341748239)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242898
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242898
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176370105242898
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 82
    ,p_stmt_num => 163
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605566054513002148159516454415,''Timika'','''',''Timika.Wombles@internalma'',''(516) 536-6276'',61920748605567263438821762788691160591)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242898
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242898
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176489999242898
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 83
    ,p_stmt_num => 165
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605568472364641377417865866767,''Annice'',''Mccrossen'',''Annice.Mccrossen@internal'',''(968) 243-6862'',61920748605569681290460992047040572943)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242898
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242898
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176558893242898
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 84
    ,p_stmt_num => 167
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605570890216280606676215279119,''Marvella'',''Salemi'',''Marvella.Salemi@internalm'',''(634) 300-7408'',61920748605572099142100221305389985295)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242898
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242898
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176643173242898
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 85
    ,p_stmt_num => 169
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605573308067919835934564691471,''Buck'',''Campion'',''Buck.Campion@internalmail'',''(922) 492-8961'',61920748605574516993739450563739397647)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242898
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242899
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176728696242899
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 86
    ,p_stmt_num => 171
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Dann'',''Widerski'',''Dann.Widerski@internalmai'',''(203) 796-6323'',61920748605575725919559065192914103823)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/92: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242899
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242899
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176828836242899
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 87
    ,p_stmt_num => 173
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605576934845378679822088809999,''Gudrun'',''Snater'',''Gudrun.Snater@internalmai'',''(680) 266-3532'',61920748605578143771198294451263516175)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242899
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242899
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4176965198242899
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 88
    ,p_stmt_num => 175
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605579352697017909080438222351,''Horace'',''Kaminer'',''Horace.Kaminer@internalma'',''(975) 208-4269'',61920748605580561622837523709612928527)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242899
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242899
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177048809242899
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 89
    ,p_stmt_num => 177
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605581770548657138338787634703,''Darren'',''Settler'',''Darren.Settler@internalma'',''(584) 957-6787'',)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242899
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242899
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177161640242899
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 90
    ,p_stmt_num => 179
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605582979474476752967962340879,''Antonio'',''Koper'',''Antonio.Koper@internalmai'',''(892) 232-9120'',)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242899
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242899
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177246031242899
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 91
    ,p_stmt_num => 181
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605584188400296367597137047055,''Danille'',''Verbeck'',''Danille.Verbeck@internalm'',''(416) 887-6448'',61920748605585397326115982226311753231)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242899
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242899
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177378829242899
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 92
    ,p_stmt_num => 183
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605586606251935596855486459407,'''',''Untalan'',''Delaine.Untalan@internalm'',''(692) 565-4110'',61920748605587815177755211484661165583)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242899
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242900
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177443546242900
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 93
    ,p_stmt_num => 185
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605589024103574826113835871759,''Rupert'',''Tardy'',''Rupert.Tardy@internalmail'',''(884) 468-8827'',61920748605590233029394440743010577935)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242900
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242900
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177555663242900
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 94
    ,p_stmt_num => 187
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605591441955214055372185284111,''Chadwick'',''Henscheid'',''Chadwick.Henscheid@intern'',''(734) 724-9779'',61920748605592650881033670001359990287)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242900
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242900
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177640091242900
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 95
    ,p_stmt_num => 189
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605593859806853284630534696463,''Dario'',''Housman'',''Dario.Housman@internalmai'',''(814) 699-9131'',61920748605595068732672899259709402639)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242900
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242900
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177742228242900
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 96
    ,p_stmt_num => 191
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605596277658492513888884108815,''Annetta'',''Juback'',''Annetta.Juback@internalma'',''(977) 378-6203'',61920748605597486584312128518058814991)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242900
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242900
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177868714242900
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 97
    ,p_stmt_num => 193
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605598695510131743147233521167,''Edith'',''Montbriand'','''',''(385) 249-8397'',61920748605599904435951357776408227343)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242900
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242900
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4177992833242900
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 98
    ,p_stmt_num => 195
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605601113361770972405582933519,''Benedict'','''',''Benedict.Lavery@internalm'',''(631) 558-6854'',61920748605602322287590587034757639695)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242900
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242900
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178000066242900
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 99
    ,p_stmt_num => 197
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605603531213410201663932345871,''Benedict'',''Lavery'',''Benedict.Lavery@internalm'',''(374) 811-4521'',61920748605604740139229816293107052047)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242900
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242901
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178135188242901
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 100
    ,p_stmt_num => 199
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605605949065049430922281758223,''Jannette'',''Babino'',''Jannette.Babino@internalm'',''(393) 481-7311'',61920748605607157990869045551456464399)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242901
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242901
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178220485242901
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 101
    ,p_stmt_num => 201
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605608366916688660180631170575,''Clinton'',''Bjerke'',''Clinton.Bjerke@internalma'',''(573) 825-2794'',61920748605609575842508274809805876751)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242901
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242901
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178358505242901
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 102
    ,p_stmt_num => 203
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605610784768327889438980582927,''Marshall'',''Lowery'',''Marshall.Lowery@internalm'',''(451) 818-4219'',61920748605611993694147504068155289103)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242901
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242901
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178439655242901
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 103
    ,p_stmt_num => 205
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605613202619967118697329995279,''Brynn'',''Mckale'',''Brynn.Mckale@internalmail'',''(699) 980-1214'',61920748605614411545786733326504701455)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242901
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242901
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178575550242901
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 104
    ,p_stmt_num => 207
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605615620471606347955679407631,''Bebe'',''Broadwell'',''Bebe.Broadwell@internalma'',''(599) 812-9646'',61920748605616829397425962584854113807)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242901
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242901
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178605079242901
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 105
    ,p_stmt_num => 209
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605618038323245577214028819983,''Lezlie'',''Rosenthall'',''Lezlie.Rosenthall@interna'',''(439) 854-7524'',61920748605619247249065191843203526159)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242901
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242901
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178745714242902
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 106
    ,p_stmt_num => 211
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605620456174884806472378232335,''Porsche'',''Shippee'',''Porsche.Shippee@internalm'',''(562) 841-6776'',61920748605621665100704421101552938511)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242902
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242902
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178862647242902
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 107
    ,p_stmt_num => 213
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605622874026524035730727644687,''Francesco'',''Elland'',''Francesco.Elland@internal'',''(491) 944-9604'',61920748605624082952343650359902350863)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242902
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242902
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4178959749242902
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 108
    ,p_stmt_num => 215
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605625291878163264989077057039,''Callie'',''Antronica'',''Callie.Antronica@internal'',''(214) 272-7068'',61920748605626500803982879618251763215)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242902
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242902
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179061421242902
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 109
    ,p_stmt_num => 217
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605627709729802494247426469391,''Annmarie'',''Esmay'',''Annmarie.Esmay@internalma'',''(586) 539-5436'',61920748605628918655622108876601175567)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242902
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242902
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179128530242902
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 110
    ,p_stmt_num => 219
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605630127581441723505775881743,''Camila'',''Hillwig'',''Camila.Hillwig@internalma'',''(899) 861-6774'',61920748605631336507261338134950587919)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242902
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242902
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179263291242902
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 111
    ,p_stmt_num => 221
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605632545433080952764125294095,''Edna'',''Fowlston'',''Edna.Fowlston@internalmai'',''(626) 492-7062'',61920748605633754358900567393300000271)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242902
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242902
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179318863242902
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 112
    ,p_stmt_num => 223
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605634963284720182022474706447,'''',''Pisano'',''Darlene.Pisano@internalma'',''(648) 845-9101'',61920748605636172210539796651649412623)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242902
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242903
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179475699242903
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 113
    ,p_stmt_num => 225
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605637381136359411280824118799,''Josh'',''Slomer'',''Josh.Slomer@internalmail'',''(325) 813-5272'',61920748605638590062179025909998824975)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242903
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242903
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179567748242903
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 114
    ,p_stmt_num => 227
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605639798987998640539173531151,''Edyth'',''Spindle'',''Edyth.Spindle@internalmai'',''(941) 877-3722'',61920748605641007913818255168348237327)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242903
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242903
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179632854242903
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 115
    ,p_stmt_num => 229
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605642216839637869797522943503,''Greta'',''Svatek'',''Greta.Svatek@internalmail'',''(379) 410-1294'',61920748605643425765457484426697649679)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242903
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242903
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179775233242903
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 116
    ,p_stmt_num => 231
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605644634691277099055872355855,''Buffy'',''Melen'',''Buffy.Melen@internalmail'',''(333) 206-5773'',61920748605645843617096713685047062031)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242903
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242903
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179880647242903
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 117
    ,p_stmt_num => 233
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605647052542916328314221768207,''Antonetta'',''Pinsky'',''Antonetta.Pinsky@internal'',''(944) 407-8443'',61920748605648261468735942943396474383)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242903
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242903
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4179987499242903
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 118
    ,p_stmt_num => 235
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605649470394555557572571180559,''Tyrell'',''Zuelke'',''Tyrell.Zuelke@internalmai'',''(221) 554-4275'',61920748605650679320375172201745886735)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242903
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242903
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180082779242903
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 119
    ,p_stmt_num => 237
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605651888246194786830920592911,''Clorinda'',''Matalka'',''Clorinda.Matalka@internal'',''(905) 824-1235'',61920748605653097172014401460095299087)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242903
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242904
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180192240242904
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 120
    ,p_stmt_num => 239
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605654306097834016089270005263,''Anton'',''Mew'',''Anton.Mew@internalmail'','''',61920748605655515023653630718444711439)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242904
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242904
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180216667242904
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 121
    ,p_stmt_num => 241
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605656723949473245347619417615,''Therese'',''Zaeske'',''Therese.Zaeske@internalma'',''(412) 224-7182'',61920748605657932875292859976794123791)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242904
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242904
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180388286242904
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 122
    ,p_stmt_num => 243
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605659141801112474605968829967,''Sabrina'',''Stojanovic'',''Sabrina.Stojanovic@intern'',''(417) 342-4030'',61920748605660350726932089235143536143)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242904
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242904
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180460310242904
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 123
    ,p_stmt_num => 245
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605661559652751703864318242319,''Basil'',''Hanagan'',''Basil.Hanagan@internalmai'',''(530) 603-8410'',61920748605662768578571318493492948495)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242904
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242904
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180599211242904
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 124
    ,p_stmt_num => 247
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605663977504390933122667654671,''Gwen'',''Cake'','''',''(994) 312-1582'',61920748605665186430210547751842360847)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242904
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242904
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180670435242904
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 125
    ,p_stmt_num => 249
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605666395356030162381017067023,''Camellia'',''Archuletta'',''Camellia.Archuletta@inter'',''(236) 379-3897'',)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242904
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242904
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180719537242904
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 126
    ,p_stmt_num => 251
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605667604281849777010191773199,''Yvonne'',''Appleman'',''Yvonne.Appleman@internalm'',''(631) 303-8583'',61920748605668813207669391639366479375)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242904
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242905
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180836645242905
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 127
    ,p_stmt_num => 253
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605670022133489006268541185551,''Darla'',''Jungling'',''Darla.Jungling@internalma'',''(363) 283-1340'',61920748605671231059308620897715891727)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242905
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242905
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4180933307242905
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 128
    ,p_stmt_num => 255
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605672439985128235526890597903,''Belinda'',''Barger'',''Belinda.Barger@internalma'',''(882) 458-8089'',61920748605673648910947850156065304079)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242905
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242905
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181006487242905
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 129
    ,p_stmt_num => 257
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605674857836767464785240010255,''Colby'',''Sanagustin'',''Colby.Sanagustin@internal'',''(433) 820-1127'',61920748605676066762587079414414716431)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242905
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242905
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181132995242905
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 130
    ,p_stmt_num => 259
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605677275688406694043589422607,'''',''Hagglund'',''Elaina.Hagglund@internalm'',''(473) 525-8285'',61920748605678484614226308672764128783)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242905
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242905
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181244073242905
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 131
    ,p_stmt_num => 261
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605679693540045923301938834959,''Beatris'',''Iraheta'',''Beatris.Iraheta@internalm'',''(439) 464-7850'',61920748605680902465865537931113541135)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242905
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242905
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181384111242905
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 132
    ,p_stmt_num => 263
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605682111391685152560288247311,''Ty'',''Flournay'',''Ty.Flournay@internalmail'',''(297) 266-3870'',61920748605683320317504767189462953487)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242905
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242905
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181494410242905
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 133
    ,p_stmt_num => 265
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605684529243324381818637659663,''Marya'',''Raso'',''Marya.Raso@internalmail'',''(215) 718-3588'',61920748605685738169143996447812365839)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242905
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242906
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4181563916242906
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 134
    ,p_stmt_num => 267
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (,''Basil'',''Oursler'',''Basil.Oursler@internalmai'',''(838) 492-1406'',61920748605686947094963611076987072015)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/92: ORA-00936: missing expression'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242906
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242906
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182787770242907
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 146
    ,p_stmt_num => 291
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605714752388814747548005314063,''Kirby'',''Honeyman'',''Kirby.Honeyman@internalma'',''(896) 756-3485'',61920748605715961314634362177180020239)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242907
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242907
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182822766242908
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 147
    ,p_stmt_num => 293
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605717170240453976806354726415,''Martin'',''Musulin'',''Martin.Musulin@internalma'',''(835) 794-9671'',61920748605718379166273591435529432591)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242908
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242908
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4182908898242908
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 148
    ,p_stmt_num => 295
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605719588092093206064704138767,''Toccara'',''Konwinski'',''Toccara.Konwinski@interna'',''(896) 524-3649'',61920748605720797017912820693878844943)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242908
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242908
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4183096609242908
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 149
    ,p_stmt_num => 297
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605722005943732435323053551119,''Sylvester'',''Kister'',''Sylvester.Kister@internal'',''(692) 817-6397'',61920748605723214869552049952228257295)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242908
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242908
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 4183165174242908
    ,p_result_id => 4168174577242882
    ,p_file_id => 4138019112242147
    ,p_seq_id => 150
    ,p_stmt_num => 299
 ,p_stmt_text => 
'insert into "EMPLOYEE" ("EMPID","FIRSTNAME","LASTNAME","EMAIL","PHONENO","SALARY") values (61920748605724423795371664581402963471,''Jolie'',''Micalizzi'',''Jolie.Micalizzi@internalm'',''(232) 845-8934'',61920748605725632721191279210577669647)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_start_time => 9242908
    ,p_ended => to_date('202502201628','YYYYMMDDHH24MI')
    ,p_end_time => 9242908
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202502201628','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 4105612597228883
 ,p_command => 
'CREATE TABLE Employee('||wwv_flow.LF||
'    EmpId integer, '||wwv_flow.LF||
'    FirstName varchar(20), '||wwv_flow.LF||
'    LastName varchar(20), '||wwv_flow.LF||
'    Email varchar(25), '||wwv_flow.LF||
'    PhoneNo varchar(25), '||wwv_flow.LF||
'    Salary integer'||wwv_flow.LF||
');'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202502201625','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6007025591283838
 ,p_command => 
'select utl_http.request(''http://server2'') from dual;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191337','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6007730738338788
 ,p_command => 
'declare l_parametros varchar2 (4000);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   --agregar parámetros al reporte'||wwv_flow.LF||
'    --l_parametros := ''parametro1='' || apex_util.url_encode(:p1_campo_ejemplo1);'||wwv_flow.LF||
'    --l_parametros := l_parametros || ''&parametro2='' || apex_util.url_encode(:p1_campo_ejemplo2);    '||wwv_flow.LF||
'    --llamada del reporte, solo necesitamos el nombre del archivo .jasper'||wwv_flow.LF||
'    xlib_jasperreports.show_report('||wwv_flow.LF||
'        p_rep_name => ''test'''||
','||wwv_flow.LF||
'        p_out_filename => ''Reporte_de_prueba.pdf'','||wwv_flow.LF||
'        p_additional_params => l_parametros'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'    --detiene el renderizado de la página una vez desplegado el reporte'||wwv_flow.LF||
'    apex_application.stop_apex_engine;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when apex_application.e_stop_apex_engine then'||wwv_flow.LF||
'        null;'||wwv_flow.LF||
'--select utl_http.request(''http://server2'') into l_parametros from dual;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6008060971402587
 ,p_command => 
'      declare l_http_request UTL_HTTP.req;'||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      l_http_request := UTL_HTTP.begin_request (url          => p_url,'||wwv_flow.LF||
'                                                method       => ''GET'','||wwv_flow.LF||
'                                                http_version => p_http_version);'||wwv_flow.LF||
'      end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191357','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6008122242415513
 ,p_command => 
'      declare l_http_request UTL_HTTP.req;'||wwv_flow.LF||
'      p_url                       VARCHAR2(4000);'||wwv_flow.LF||
'      p_http_version              xlib_http.http_version_1_1%type default xlib_http.http_version_1_1;'||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      l_http_request := UTL_HTTP.begin_request (url          => p_url,'||wwv_flow.LF||
'                                                method       => ''GET'','||wwv_flow.LF||
'                                                htt'||
'p_version => p_http_version);'||wwv_flow.LF||
'      end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191359','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6008276807424175
 ,p_command => 
'      declare l_http_request UTL_HTTP.req;'||wwv_flow.LF||
'      p_url                       VARCHAR2(4000) :=''http://server2:8080'';'||wwv_flow.LF||
'      p_http_version              xlib_http.http_version_1_1%type default xlib_http.http_version_1_1;'||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      l_http_request := UTL_HTTP.begin_request (url          => p_url,'||wwv_flow.LF||
'                                                method       => ''GET'','||wwv_flow.LF||
'                           '||
'                     http_version => p_http_version);'||wwv_flow.LF||
'      end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191400','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6008810498445832
 ,p_command => 
'declare l_parametros varchar2 (4000);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   --agregar parámetros al reporte'||wwv_flow.LF||
'    --l_parametros := ''parametro1='' || apex_util.url_encode(:p1_campo_ejemplo1);'||wwv_flow.LF||
'    --l_parametros := l_parametros || ''&parametro2='' || apex_util.url_encode(:p1_campo_ejemplo2);    '||wwv_flow.LF||
'    --llamada del reporte, solo necesitamos el nombre del archivo .jasper'||wwv_flow.LF||
'    xlib_jasperreports.show_report('||wwv_flow.LF||
'        p_rep_name => ''test'''||
','||wwv_flow.LF||
'        p_out_filename => ''Reporte_de_prueba.pdf'','||wwv_flow.LF||
'        p_additional_params => l_parametros'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'    --detiene el renderizado de la página una vez desplegado el reporte'||wwv_flow.LF||
'    apex_application.stop_apex_engine;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when apex_application.e_stop_apex_engine then'||wwv_flow.LF||
'        null;'||wwv_flow.LF||
'--select utl_http.request(''http://server2'') into l_parametros from dual;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191404','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6008342730430784
 ,p_command => 
'      declare l_http_request UTL_HTTP.req;'||wwv_flow.LF||
'      p_url                       VARCHAR2(4000) :=''http://server2:8080'';'||wwv_flow.LF||
'      p_http_version              xlib_http.http_version_1_1%type default xlib_http.http_version_1_1;'||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      l_http_request := SYS.UTL_HTTP.begin_request (url          => p_url,'||wwv_flow.LF||
'                                                method       => ''GET'','||wwv_flow.LF||
'                       '||
'                         http_version => p_http_version);'||wwv_flow.LF||
'      end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191401','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6008464100433130
 ,p_command => 
'      declare l_http_request UTL_HTTP.req;'||wwv_flow.LF||
'      p_url                       VARCHAR2(4000) :=''http://server2:8080'';'||wwv_flow.LF||
'      p_http_version              xlib_http.http_version_1_1%type default xlib_http.http_version_1_1;'||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      l_http_request := SYS.UTL_HTTP.begin_request (url          => p_url,'||wwv_flow.LF||
'                                                method       => ''GET'','||wwv_flow.LF||
'                       '||
'                         http_version => p_http_version);'||wwv_flow.LF||
'      end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191402','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6008797922445024
 ,p_command => 
'xlib_jasperreports.show_report'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191404','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6009136604463816
 ,p_command => 
''||wwv_flow.LF||
'exception'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191407','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6009221447464276
 ,p_command => 
'declare l_parametros varchar2 (4000);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'   --agregar parámetros al reporte'||wwv_flow.LF||
'    --l_parametros := ''parametro1='' || apex_util.url_encode(:p1_campo_ejemplo1);'||wwv_flow.LF||
'    --l_parametros := l_parametros || ''&parametro2='' || apex_util.url_encode(:p1_campo_ejemplo2);    '||wwv_flow.LF||
'    --llamada del reporte, solo necesitamos el nombre del archivo .jasper'||wwv_flow.LF||
'    xlib_jasperreports.show_report('||wwv_flow.LF||
'        p_rep_name => ''test'''||
','||wwv_flow.LF||
'        p_out_filename => ''Reporte_de_prueba.pdf'','||wwv_flow.LF||
'        p_additional_params => l_parametros'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'    --detiene el renderizado de la página una vez desplegado el reporte'||wwv_flow.LF||
'    apex_application.stop_apex_engine;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when apex_application.e_stop_apex_engine then'||wwv_flow.LF||
'        null;'||wwv_flow.LF||
'--select utl_http.request(''http://server2'') into l_parametros from dual;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191407','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6009358707524528
 ,p_command => 
'      declare l_http_request UTL_HTTP.req;'||wwv_flow.LF||
'      p_url                       VARCHAR2(4000) :=''http://server2:8080'';'||wwv_flow.LF||
'      p_http_version              xlib_http.http_version_1_1%type default xlib_http.http_version_1_1;'||wwv_flow.LF||
'      begin'||wwv_flow.LF||
'      l_http_request := SYS.UTL_HTTP.begin_request (url          => p_url,'||wwv_flow.LF||
'                                                method       => ''GET'','||wwv_flow.LF||
'                       '||
'                         http_version => p_http_version);'||wwv_flow.LF||
'      end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191417','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6009401510526980
 ,p_command => 
'declare l_parametros varchar2 (4000);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'/*   --agregar parámetros al reporte'||wwv_flow.LF||
'    --l_parametros := ''parametro1='' || apex_util.url_encode(:p1_campo_ejemplo1);'||wwv_flow.LF||
'    --l_parametros := l_parametros || ''&parametro2='' || apex_util.url_encode(:p1_campo_ejemplo2);    '||wwv_flow.LF||
'    --llamada del reporte, solo necesitamos el nombre del archivo .jasper'||wwv_flow.LF||
'    xlib_jasperreports.show_report('||wwv_flow.LF||
'        p_rep_name => ''tes'||
't'','||wwv_flow.LF||
'        p_out_filename => ''Reporte_de_prueba.pdf'','||wwv_flow.LF||
'        p_additional_params => l_parametros'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'    --detiene el renderizado de la página una vez desplegado el reporte'||wwv_flow.LF||
'    apex_application.stop_apex_engine;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when apex_application.e_stop_apex_engine then'||wwv_flow.LF||
'        null;*/'||wwv_flow.LF||
'select utl_http.request(''http://server2'') into l_parametros from dual;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191417','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 6009531789529956
 ,p_command => 
'declare l_parametros varchar2 (4000);'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'/*   --agregar parámetros al reporte'||wwv_flow.LF||
'    --l_parametros := ''parametro1='' || apex_util.url_encode(:p1_campo_ejemplo1);'||wwv_flow.LF||
'    --l_parametros := l_parametros || ''&parametro2='' || apex_util.url_encode(:p1_campo_ejemplo2);    '||wwv_flow.LF||
'    --llamada del reporte, solo necesitamos el nombre del archivo .jasper'||wwv_flow.LF||
'    xlib_jasperreports.show_report('||wwv_flow.LF||
'        p_rep_name => ''tes'||
't'','||wwv_flow.LF||
'        p_out_filename => ''Reporte_de_prueba.pdf'','||wwv_flow.LF||
'        p_additional_params => l_parametros'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'    --detiene el renderizado de la página una vez desplegado el reporte'||wwv_flow.LF||
'    apex_application.stop_apex_engine;'||wwv_flow.LF||
'exception'||wwv_flow.LF||
'    when apex_application.e_stop_apex_engine then'||wwv_flow.LF||
'        null;*/'||wwv_flow.LF||
'select utl_http.request(''http://server2:8080'') into l_parametros from dual;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202503191418','YYYYMMDDHH24MI')
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
    p_access_date => to_date('202602121132','YYYYMMDDHH24MI'),
    p_ip_address => '192.168.205.104',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202602121132','YYYYMMDDHH24MI'),
    p_ip_address => '192.168.205.104',
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
    p_access_date => to_date('202512161111','YYYYMMDDHH24MI'),
    p_ip_address => '192.168.205.104',
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
    p_access_date => to_date('202512151512','YYYYMMDDHH24MI'),
    p_ip_address => '192.168.205.104',
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
    p_access_date => to_date('202512031604','YYYYMMDDHH24MI'),
    p_ip_address => '192.168.205.104',
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
    p_access_date => to_date('202512151427','YYYYMMDDHH24MI'),
    p_ip_address => '192.168.205.104',
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
    p_access_date => to_date('202512151457','YYYYMMDDHH24MI'),
    p_ip_address => '192.168.205.104',
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
    p_access_date => to_date('202512151600','YYYYMMDDHH24MI'),
    p_ip_address => '192.168.205.104',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2024.05.31');
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
  p_id => 4088534885201147 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Template'
 ,p_template_description => 'Template used to log a bug.'
 ,p_template_text => 
'**Expected Behavior**'||chr(10)||
'- Tell us what you believe should happen.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Current Behavior**'||chr(10)||
'- Tell us what happens.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Who is affected**'||chr(10)||
'- Tell us who/what is affected. '||chr(10)||
''||chr(10)||
'**Possible Solution**'||chr(10)||
'- If you can, suggest how you would fix this bug.'||chr(10)||
''||chr(10)||
'**Steps to Reproduce**'||chr(10)||
'- Provide an unambiguous set of steps to reproduce, including screen shots and code snippets if appropriate.'||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
'- What'||
' were you trying to accomplish when the bug occurred. Does the bug only occur under certain conditions, or at certain times of day, and so forth.'||chr(10)||
''||chr(10)||
'**Environment**'||chr(10)||
''||chr(10)||
'- Version: '||chr(10)||
'- Platform: '||chr(10)||
'- Subsystem:'||chr(10)||
''||chr(10)||
'______'||chr(10)||
''||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 4088630001201147 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Template'
 ,p_template_description => 'Template used to log a feature request.'
 ,p_template_text => 
'**Feature Summary**'||chr(10)||
' - Provide a one paragraph general overview of the feature request.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
' - Does this request relate to a specific situation or process? For example, "I am always frustrated when [...]"'||chr(10)||
''||chr(10)||
''||chr(10)||
' - Please provide any supporting information, including screenshots, use cases, and so forth.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Preferred Solution**'||chr(10)||
'- Provide a clear description of what you would like to see impl'||
'emented.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Alternative Solutions**'||chr(10)||
'- Provide a description of alternative solutions or features considered, or workarounds used.'||chr(10)||
''||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 4088756314201147 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'How Do I ...'
 ,p_template_description => 'Template used to ask a procedural question.'
 ,p_template_text => 
'**Question**'||chr(10)||
'- State your question or request as succinctly as possible.'||chr(10)||
''||chr(10)||
'**General Context**'||chr(10)||
'- What are you trying to do? '||chr(10)||
''||chr(10)||
''||chr(10)||
'- Where else have you looked or who else have you contacted to find an answer? '||chr(10)||
''||chr(10)||
''||chr(10)||
'**Environment** '||chr(10)||
'Is this question specific to an environment, programming language or other area?'||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue,'||
' then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 4088842834201147 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Raised'
 ,p_template_description => 'A bug has been raised.'
 ,p_template_text => 
'A **Bug** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 4088941295201147 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Won''t Action'
 ,p_template_description => 'This issue will not be actioned'
 ,p_template_text => 
'After careful consideration, **no further action will be taken on this issue**. '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 4089002836201147 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Filed'
 ,p_template_description => 'A feature request has been filed.'
 ,p_template_text => 
'A **Feature Request** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Feature Tracking System: '||chr(10)||
'- Feature ID: '||chr(10)||
'- URL to Feature Definition: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 4089148166201147 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Known Issue'
 ,p_template_description => 'Reference a known issue.'
 ,p_template_text => 
'After review, it has been determined that this is a known issue, see details below.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 4089211600201147 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Need More Information'
 ,p_template_description => 'Request for more information.'
 ,p_template_text => 
'**More information is needed for this issue:**'||chr(10)||
''||chr(10)||
'Please provide the information requested below. Without this information it will be difficult to triage and address the issue further.'||chr(10)||
''||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 4089375456201148 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Followup Action Required'
 ,p_template_description => 'A followup action is required.'
 ,p_template_text => 
'Please perform the following actions: '||chr(10)||
''||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
'4.'||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 4089826764201149 + wwv_flow_team_api.g_id_offset
 ,p_user_id => 'GONZALEZFJU'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 4085179998201146 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Functional Area'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Functional area affected by the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 4086078898201146 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Category'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Category assigned to the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 4086991303201147 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importance'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Level of importance assigned to the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 4087505851201147 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Level of Effort'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Level of effort to address the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 4087959771201147 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Progress'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Progress against the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 4085262783201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4085179998201146
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4085344009201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4085179998201146
 ,p_label_name => 'Database'
 ,p_label_desc => 'Database'
 ,p_label_slug => 'database'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4085429886201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4085179998201146
 ,p_label_name => 'REST Integration'
 ,p_label_desc => 'REST Integration'
 ,p_label_slug => 'rest-integration'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4085502495201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4085179998201146
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4085665750201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4085179998201146
 ,p_label_name => 'Dynamic Actions / JavaScript'
 ,p_label_desc => 'Dynamic Actions / JavaScript'
 ,p_label_slug => 'dynamic-actions-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4085724219201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4085179998201146
 ,p_label_name => 'Security'
 ,p_label_desc => 'Security'
 ,p_label_slug => 'security'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4085823343201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4085179998201146
 ,p_label_name => 'Administration'
 ,p_label_desc => 'Administration'
 ,p_label_slug => 'administration'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4085963104201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4085179998201146
 ,p_label_name => 'External System Integration'
 ,p_label_desc => 'External System Integration'
 ,p_label_slug => 'external-system-integration'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4086113636201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086078898201146
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4086246524201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086078898201146
 ,p_label_name => 'Enhancement Request'
 ,p_label_desc => 'Enhancement Request'
 ,p_label_slug => 'enhancement-request'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4086343101201146 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086078898201146
 ,p_label_name => 'Feature Request'
 ,p_label_desc => 'Feature Request'
 ,p_label_slug => 'feature-request'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4086483753201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086078898201146
 ,p_label_name => 'Security Issue'
 ,p_label_desc => 'Security Issue'
 ,p_label_slug => 'security-issue'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4086524237201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086078898201146
 ,p_label_name => 'Performance Issue'
 ,p_label_desc => 'Performance Issue'
 ,p_label_slug => 'performance-issue'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4086657739201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086078898201146
 ,p_label_name => 'Installation Issue'
 ,p_label_desc => 'Installation Issue'
 ,p_label_slug => 'installation-issue'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4086776879201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086078898201146
 ,p_label_name => 'Documentation Issue'
 ,p_label_desc => 'Documentation Issue'
 ,p_label_slug => 'documentation-issue'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4086810345201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086078898201146
 ,p_label_name => 'Training Issue'
 ,p_label_desc => 'Training Issue'
 ,p_label_slug => 'training-issue'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4087010827201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086991303201147
 ,p_label_name => 'Critical'
 ,p_label_desc => 'Critical'
 ,p_label_slug => 'critical'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4087121092201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086991303201147
 ,p_label_name => 'Important'
 ,p_label_desc => 'Important'
 ,p_label_slug => 'important'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4087244531201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086991303201147
 ,p_label_name => 'Normal'
 ,p_label_desc => 'Normal'
 ,p_label_slug => 'normal'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4087395004201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086991303201147
 ,p_label_name => 'Backlog'
 ,p_label_desc => 'Backlog'
 ,p_label_slug => 'backlog'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4087474711201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4086991303201147
 ,p_label_name => 'Will Not Address'
 ,p_label_desc => 'Will Not Address'
 ,p_label_slug => 'will-not-address'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4087668730201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4087505851201147
 ,p_label_name => 'Easy Fix'
 ,p_label_desc => 'Easy Fix'
 ,p_label_slug => 'easy-fix'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4087735886201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4087505851201147
 ,p_label_name => 'Moderate Effort'
 ,p_label_desc => 'Moderate Effort'
 ,p_label_slug => 'moderate-effort'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4087888315201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4087505851201147
 ,p_label_name => 'Large Development Effort'
 ,p_label_desc => 'Large Development Effort'
 ,p_label_slug => 'large-development-effort'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4088061132201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4087959771201147
 ,p_label_name => 'Working On It'
 ,p_label_desc => 'Working On It'
 ,p_label_slug => 'working-on-it'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4088180182201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4087959771201147
 ,p_label_name => 'Requires More Info'
 ,p_label_desc => 'Requires More Info'
 ,p_label_slug => 'requires-more-info'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4088247430201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4087959771201147
 ,p_label_name => 'Waiting on Third Party'
 ,p_label_desc => 'Waiting on Third Party'
 ,p_label_slug => 'waiting-on-third-party'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4088368801201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4087959771201147
 ,p_label_name => 'Can Not Fix'
 ,p_label_desc => 'Can Not Fix'
 ,p_label_slug => 'can-not-fix'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 4088455498201147 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 4087959771201147
 ,p_label_name => 'Complete'
 ,p_label_desc => 'Complete'
 ,p_label_slug => 'complete'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 4089446063201148 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Code Freeze'
 ,p_milestone_date => to_date('20250307162105','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'code-freeze'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_milestone (
  p_id => 4089503856201148 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'UI Freeze'
 ,p_milestone_date => to_date('20250322162105','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'ui-freeze'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_milestone (
  p_id => 4089609986201148 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Final Release'
 ,p_milestone_date => to_date('20250406162105','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'final-release'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 4089738325201148 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20250220162105','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250220162105','YYYYMMDDHH24MISS')
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
-- Exported 14:44 Tuesday March 3, 2026 by: 
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 14:44 Tuesday March 3, 2026 by: 
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'TEST';
 
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
