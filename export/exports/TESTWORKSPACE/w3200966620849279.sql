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
,p_default_workspace_id=>3200966620849279
);
end;
/
prompt  WORKSPACE 3200966620849279
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   14:26 Tuesday February 11, 2025
--   Exported By:     APEX_240200
--   Export Type:     Workspace Export
--   Version:         24.2.0
--   Instance ID:     800186105392938
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>3200966620849279);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace TESTWORKSPACE...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 3201147812849382
 ,p_provisioning_company_id => 3200966620849279
 ,p_short_name => 'TESTWORKSPACE'
 ,p_display_name => 'TESTWORKSPACE'
 ,p_first_schema_provisioned => 'APEXPDB'
 ,p_company_schemas => 'APEXPDB:UT3'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'TESTWORK'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'TESTWORKSPACE'
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
  p_id => 12869299690867076,
  p_GROUP_NAME => 'administrator',
  p_SECURITY_GROUP_ID => 3200966620849279,
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
  p_user_id                      => '3200879187849279',
  p_user_name                    => 'APEXPDB',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'a@a.com',
  p_web_password                 => '6CFDBFEA0880890494B6DC109ED3100824652CA7130649BA74478CF9A5E25B0D1151A196AB6A8455C54A675E64E37555518A1CC236893A23C5BF72FB199FC3C1',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'APEXPDB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202410231020','YYYYMMDDHH24MI'),
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
  p_user_id                      => '3201781682876759',
  p_user_name                    => 'GONZALEZFJU',
  p_first_name                   => 'Juairy',
  p_last_name                    => 'Gonzalez Flette',
  p_description                  => '',
  p_email_address                => 'a@a.com',
  p_web_password                 => 'D619D51B02E738761605D7689B9B5ABBA96BAB284782AFF70E961988AF1C7413EB040DBBAEEE583C2256E64B1244CED295B198E171DFD73BF2B01DACFC01C373',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '12869299690867076:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'APEXPDB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202501281415','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_default_date_format          => 'YYYY-MM-DD',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '12870433767962342',
  p_user_name                    => 'MANAGER',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'a@a.com',
  p_web_password                 => 'D24541062EC1834A4D4D082D5EC2CC652B85CC7C16E9A825842B3967A086A0B927D6904B75DE4B1C1AD6CF9687BEA7E7474B4862A4B1748A5575B465B48ABAB6',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => '',
  p_default_schema               => 'APEXPDB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202412100000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
prompt  Importing Blueprint COST2...
begin
wwv_flow_fnd_user_api.import_dg_blueprint (
  p_bp_clob => 
'{"blueprint_format_version":"0.1","blueprint":"COST2","display_name":"cost2","description":"Generated using existing tables.","lang":"en","default_schema":"APEXPDB","data_sources":[{"name":"AUTO$EBA_PROJECT_STATUS","data_source_type":"TABLE","table":"EBA_PROJECT_STATUS","preserve_case":"Y","sql_query":null,"where_clause":null,"inline_data":null,"order_by_column":null}],"tables":[{"sequence":100,"t'||
'able_name":"EBA_PROJECTS","preserve_case":"Y","display_name":null,"singular_name":null,"plural_name":null,"rows":50,"max_rows":null,"columns":[{"sequence":100,"column_name":"ID","preserve_case":"Y","display_name":"Id","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":'||
'"number.guid","ds_preserve_case":null,"min_numeric_value":1,"max_numeric_value":10,"numeric_precision":0,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":0,"max_length":null},{"sequence":200,"column_name":"STATUS_ID","preserve_case":"Y","display_name":"Status Id","multi_value":"N",'||
'"mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"DATA_SOURCE","data_source":"AUTO$EBA_PROJECT_STATUS.ID","ds_preserve_case":"Y","min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_incre'||
'ment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":null},{"sequence":300,"column_name":"NAME","preserve_case":"Y","display_name":"Name","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"latin_text.text32","ds_preserve_case":null,"min_numeric'||
'_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":0,"max_length":255},{"sequence":400,"column_name":"DESCRIPTION","preserve_case":"Y","display_name":"Description","multi_value":"N","mv_format":null,"mv_unique":null,"mv_d'||
'elimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"latin_text.text128","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"per'||
'cent_blank":5,"max_length":4000},{"sequence":500,"column_name":"PROJECT_LEAD","preserve_case":"Y","display_name":"Project Lead","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"latin_text.text32","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":n'||
'ull,"numeric_precision":null,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":255},{"sequence":600,"column_name":"BUDGET","preserve_case":"Y","display_name":"Budget","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max'||
'_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"number.guid","ds_preserve_case":null,"min_numeric_value":1,"max_numeric_value":10,"numeric_precision":0,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":null},{"sequence":700,"column_na'||
'me":"COMPLETED_DATE","preserve_case":"Y","display_name":"Completed Date","multi_value":"N","mv_format":null,"mv_unique":null,"mv_delimiter":null,"mv_min_entries":null,"mv_max_entries":null,"mv_partition_by":null,"data_source_type":"BUILTIN","data_source":"date.random","ds_preserve_case":null,"min_numeric_value":null,"max_numeric_value":null,"numeric_precision":null,"min_date_value":null,"max_date_'||
'value":null,"format_mask":"YYYY-MM-DD\"T\"HH24:MI:SS\"Z\"","sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":5,"max_length":null},{"sequence":800,"column_name":"COST","preserve_case":"Y","display_name":"Cost","multi_value":"Y","mv_format":"JSON","mv_unique":"N","mv_delimiter":":","mv_min_entries":1,"mv_max_entries":2,"mv_partition_by":null,"dat'||
'a_source_type":"BUILTIN","data_source":"number.random","ds_preserve_case":null,"min_numeric_value":1,"max_numeric_value":1000,"numeric_precision":0,"min_date_value":null,"max_date_value":null,"format_mask":null,"sequence_start_with":null,"sequence_increment":null,"formula":null,"formula_lang":null,"percent_blank":0,"max_length":null}]}]}'
);
end;
/
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
    p_id => 8221031295727358,
    p_user_id => 3200879187849279,
    p_password => '6CFDBFEA0880890494B6DC109ED3100824652CA7130649BA74478CF9A5E25B0D1151A196AB6A8455C54A675E64E37555518A1CC236893A23C5BF72FB199FC3C1');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 3201324404849406,
    p_user_id => 3200879187849279,
    p_password => '6CFDBFEA0880890494B6DC109ED3100824652CA7130649BA74478CF9A5E25B0D1151A196AB6A8455C54A675E64E37555518A1CC236893A23C5BF72FB199FC3C1');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 3201867454876766,
    p_user_id => 3201781682876759,
    p_password => 'D619D51B02E738761605D7689B9B5ABBA96BAB284782AFF70E961988AF1C7413EB040DBBAEEE583C2256E64B1244CED295B198E171DFD73BF2B01DACFC01C373');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 13257867296525914,
    p_user_id => 3201781682876759,
    p_password => 'D619D51B02E738761605D7689B9B5ABBA96BAB284782AFF70E961988AF1C7413EB040DBBAEEE583C2256E64B1244CED295B198E171DFD73BF2B01DACFC01C373');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 5200137779137856,
    p_user_id => 3201781682876759,
    p_password => '0F037012FB761FBE46022FD22521B0168274710C78E1306EF90677DE68C13B868048476BD35FDFC2F1F88D77B0859E8CDB5CC9C08BC9C5A72F4EB002DBE2B93A');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 12870596245962350,
    p_user_id => 12870433767962342,
    p_password => 'D24541062EC1834A4D4D082D5EC2CC652B85CC7C16E9A825842B3967A086A0B927D6904B75DE4B1C1AD6CF9687BEA7E7474B4862A4B1748A5575B465B48ABAB6');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 12406119809133502,
    p_user_id => 3201781682876759,
    p_password => 'D619D51B02E738761605D7689B9B5ABBA96BAB284782AFF70E961988AF1C7413EB040DBBAEEE583C2256E64B1244CED295B198E171DFD73BF2B01DACFC01C373');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 3202326318882955,
    p_user_id => 3200879187849279,
    p_password => '99E10BC07D4CD8C55A7EC609CFFA472D7D78E788ED2DEA2B75D66428D95D5D56CEEC10877C8A3580167A16686CA3941D8479E9CDE245DC0DE35407BBFCE84A5C');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4000555535133191,
    p_user_id => 'APEXPDB',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '112',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4800154182474649,
    p_user_id => 'APEXPDB',
    p_preference_name => 'FSP4350_P33_R47031617128214415_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3400239010899512,
    p_user_id => 'APEXPDB',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4000447472133172,
    p_user_id => 'APEXPDB',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 4000243818133146,
    p_user_id => 'APEXPDB',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9279390162458228,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX$RDS_4000_9801_1957406633376301_active_tab',
    p_attribute_value => 'R9045440620038634',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9797046188711046,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX$RDS_4500_1100_2000395581438701_active_tab',
    p_attribute_value => 'output-sql-region',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10377431925956291,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_10155611189953790_CURRENT_REPORT',
    p_attribute_value => '10156569427953791:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2413827079111947,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_11201204849258177_CURRENT_REPORT',
    p_attribute_value => '11202197231258180:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12012956741638475,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_11995147882637686_CURRENT_REPORT',
    p_attribute_value => '11996051833637688:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12013078600638475,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_12001283069638013_CURRENT_REPORT',
    p_attribute_value => '12002097288638015:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12039665516662485,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_12027373526661434_CURRENT_REPORT',
    p_attribute_value => '12028272906661436:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13215889235414526,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_13202681121400741_CURRENT_REPORT',
    p_attribute_value => '13203523483400743:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13234443153492795,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_16097755849950438_CURRENT_REPORT',
    p_attribute_value => '22275636446049695:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9680588912799179,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_1906067983860548_CURRENT_REPORT',
    p_attribute_value => '1720725137294547:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10619460694869902,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_20769691640804896_CURRENT_REPORT',
    p_attribute_value => '20770649878804897:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5226922020404821,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_2500606111718504_CURRENT_REPORT',
    p_attribute_value => '5306711573062761:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12829277594380016,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_3304651691587419_CURRENT_REPORT',
    p_attribute_value => '3903492105430583:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12048060187974120,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_34678648308431651_CURRENT_REPORT',
    p_attribute_value => '34679640690431654:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12863165151532533,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_35462817184843329_CURRENT_REPORT',
    p_attribute_value => '35463809566843332:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12411401668138847,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12047633852964294,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_665073618803777080_CURRENT_REPORT',
    p_attribute_value => '665079563548779201:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7116177856563555,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_7008350931560120_CURRENT_REPORT',
    p_attribute_value => '7009279229560121:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8902579256133151,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_7907436268626747_CURRENT_REPORT',
    p_attribute_value => '7908351438626748:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9260366479415384,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_8409041487509833_CURRENT_REPORT',
    p_attribute_value => '9248949375414268:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8838721626909831,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_8824209171909179_CURRENT_REPORT',
    p_attribute_value => '8825164674909182:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9240464121371709,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_9211948311371052_CURRENT_REPORT',
    p_attribute_value => '9212812970371053:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9785495558361119,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_9641469044701333_CURRENT_REPORT',
    p_attribute_value => '9776738037360784:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9829587333231640,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_9808625794220301_CURRENT_REPORT',
    p_attribute_value => '9814275712231460:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10609011117943860,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8411125196652684,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '200:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8411058013652683,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '314:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8405628618478891,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '274:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5807490059816868,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '103',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2607963664203069,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP103_P5_R2603264660200606_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2410357552764595,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13234790121496579,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P100_R6335901170146534_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13234319998492331,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R10424237842079440_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13234258420492311,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R15607707130231509_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13234136931492304,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R4876236258998332_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13234513996492817,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P500_R11047540937484649_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2410687178775165,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_100_P10010_W10176034823953821',
    p_attribute_value => '10181905474953837____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2411045252778849,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_100_P10034_W10211637873953914',
    p_attribute_value => '10219669540953923____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2410867389776287,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_100_P10053_W10332728929954095',
    p_attribute_value => '10342831081954103____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13234014782479309,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13186588237238008,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 2662213933482808,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8405745729479805,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '0',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8410914915526257,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PD_GLV_HIDE_GLOBAL',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8410896409526027,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PD_GLV_HIDE_LEGACY',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5228346915584828,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5807134041816808,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
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
wwv_flow_imp.g_varchar2_table(1) := '637265617465206F72207265706C6163652050524F43454455524520505F41435455414C495A415F41554449544F524941280D0A202020202020505F5441424C412020202020202020202020494E202020202056415243484152322C0D0A202020202020';
wwv_flow_imp.g_varchar2_table(2) := '505F55534552202020202020202020202020494E202020202056415243484152322C0D0A202020202020505F504B5F434F4C554D4E5F4E414D455F41525241592020494E2044424D535F53514C2E56415243484152325F5441424C452C0D0A2020202020';
wwv_flow_imp.g_varchar2_table(3) := '20505F504B5F434F4C554D4E5F56414C55455F415252415920494E2044424D535F53514C2E56415243484152325F5441424C45290D0A202041530D0A20202020202053454E54454E434941205641524348415232283530302043484152293B0D0A202042';
wwv_flow_imp.g_varchar2_table(4) := '4547494E0D0A20202020202053454E54454E434941203A3D202755504441544520277C7C20505F5441424C4120207C7C20272053455420555044415445444259203D202727277C7C505F555345527C7C2727272C20555044415445444154203D20535953';
wwv_flow_imp.g_varchar2_table(5) := '4441544520273B0D0A202020202020464F52206920494E20505F504B5F434F4C554D4E5F4E414D455F41525241592E4649525354202E2E20505F504B5F434F4C554D4E5F4E414D455F41525241592E4C415354204C4F4F500D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(6) := '49462049203D2031205448454E0D0A202020202020202020202020202053454E54454E434941203A3D2053454E54454E434941207C7C2027574845524520273B0D0A20202020202020202020454C53450D0A202020202020202020202020202053454E54';
wwv_flow_imp.g_varchar2_table(7) := '454E434941203A3D2053454E54454E434941207C7C2027414E4420273B0D0A20202020202020202020454E442049463B0D0A2020202020202020202053454E54454E434941203A3D2053454E54454E434941207C7C20505F504B5F434F4C554D4E5F4E41';
wwv_flow_imp.g_varchar2_table(8) := '4D455F4152524159284929207C7C2027203D20272727207C7C20505F504B5F434F4C554D4E5F56414C55455F41525241592849297C7C272727273B0D0A202020202020454E44204C4F4F503B0D0A2020200D0A2020202020204558454355544520494D4D';
wwv_flow_imp.g_varchar2_table(9) := '4544494154452053454E54454E4349413B0D0A2020200D0A2020455843455054494F4E200D0A2020202020205748454E204F5448455253205448454E0D0A2020202020202020202052414953453B0D0A2020454E4420505F41435455414C495A415F4155';
wwv_flow_imp.g_varchar2_table(10) := '4449544F5249413B0D0A202F0D0A0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 10644327179470391,
    p_flow_id => 4500,
    p_name => '10644327179470391/P_ACTUALIZA_AUDITORIA',
    p_pathid => null,
    p_filename => 'P_ACTUALIZA_AUDITORIA',
    p_title => 'P_ACTUALIZA_AUDITORIA',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'APEX_240200',
    p_created_on => to_date('202502111417','YYYYMMDDHH24MI'),
    p_updated_by => 'GONZALEZFJU',
    p_updated_on => to_date('202411051125','YYYYMMDDHH24MI'),
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
  wwv_imp_workspace.create_sw_results (
    p_id => 10647195182470921,
    p_file_id => 10644327179470391,
    p_job_id => null,
    p_run_by => 'GONZALEZFJU',
    p_run_as => 'APEXPDB',
    p_started => to_date('202411051123','YYYYMMDDHH24MI'),
    p_start_time => 27470942,
    p_ended => to_date('202411051123','YYYYMMDDHH24MI'),
    p_end_time => 27470953,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 10652410784484547,
    p_file_id => 10644327179470391,
    p_job_id => null,
    p_run_by => 'GONZALEZFJU',
    p_run_as => 'APEXPDB',
    p_started => to_date('202411051125','YYYYMMDDHH24MI'),
    p_start_time => 27484548,
    p_ended => to_date('202411051125','YYYYMMDDHH24MI'),
    p_end_time => 27484558,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '73656C65637420656E616D652C206A6F622C2073616C0D0A66726F6D20656D700D0A77686572652073616C203E20323530303B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 5227534946582648,
    p_flow_id => 4500,
    p_name => '5227534946582648/Employee Salaries',
    p_pathid => null,
    p_filename => 'Employee Salaries',
    p_title => 'Employee Salaries',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'APEX_240200',
    p_created_on => to_date('202502111417','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
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
  wwv_imp_workspace.create_sw_results (
    p_id => 5228179539584821,
    p_file_id => 5227534946582648,
    p_job_id => null,
    p_run_by => 'GONZALEZFJU',
    p_run_as => 'APEXPDB',
    p_started => to_date('202410211629','YYYYMMDDHH24MI'),
    p_start_time => 584825,
    p_ended => to_date('202410211629','YYYYMMDDHH24MI'),
    p_end_time => 584827,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10643616274466303
 ,p_command => 
'P_ACTUALIZA_AUDITORIA'
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202411051122','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'APEXPDB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10643799835467256
 ,p_command => 
'create or replace PROCEDURE P_ACTUALIZA_AUDITORIA('||wwv_flow.LF||
'  2      P_TABLA           IN     VARCHAR2,'||wwv_flow.LF||
'  3      P_USER            IN     VARCHAR2,'||wwv_flow.LF||
'  4      P_PK_COLUMN_NAME_ARRAY  IN DBMS_SQL.VARCHAR2_TABLE,'||wwv_flow.LF||
'  5      P_PK_COLUMN_VALUE_ARRAY IN DBMS_SQL.VARCHAR2_TABLE)'||wwv_flow.LF||
'  6  AS'||wwv_flow.LF||
'  7      SENTENCIA VARCHAR2(500 CHAR);'||wwv_flow.LF||
'  8  BEGIN'||wwv_flow.LF||
'  9      SENTENCIA := ''UPDATE ''|| P_TABLA  || '' SET UPDATEDBY = ''''''||P_USER||'''''','||
' UPDATEDAT = SYSDATE '';'||wwv_flow.LF||
' 10      FOR i IN P_PK_COLUMN_NAME_ARRAY.FIRST .. P_PK_COLUMN_NAME_ARRAY.LAST LOOP'||wwv_flow.LF||
' 11          IF I = 1 THEN'||wwv_flow.LF||
' 12              SENTENCIA := SENTENCIA || ''WHERE '';'||wwv_flow.LF||
' 13          ELSE'||wwv_flow.LF||
' 14              SENTENCIA := SENTENCIA || ''AND '';'||wwv_flow.LF||
' 15          END IF;'||wwv_flow.LF||
' 16          SENTENCIA := SENTENCIA || P_PK_COLUMN_NAME_ARRAY(I) || '' = '''''' || P_PK_COLUMN_VALUE_ARRAY(I)||'''''''';'||wwv_flow.LF||
' 17      E'||
'ND LOOP;'||wwv_flow.LF||
' 18   '||wwv_flow.LF||
' 19      EXECUTE IMMEDIATE SENTENCIA;'||wwv_flow.LF||
' 20   '||wwv_flow.LF||
' 21  EXCEPTION '||wwv_flow.LF||
' 22      WHEN OTHERS THEN'||wwv_flow.LF||
' 23          RAISE;'||wwv_flow.LF||
' 24  END P_ACTUALIZA_AUDITORIA;'||wwv_flow.LF||
' 25* /'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'GONZALEZFJU'
    ,p_created_on => to_date('202411051122','YYYYMMDDHH24MI')
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
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 103,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502111305','YYYYMMDDHH24MI'),
    p_ip_address => '0:0:0:0:0:0:0:1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 103,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502111305','YYYYMMDDHH24MI'),
    p_ip_address => '0:0:0:0:0:0:0:1',
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
    p_access_date => to_date('202502111420','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051233','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051233','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 103,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051331','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 103,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051331','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 103,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051418','YYYYMMDDHH24MI'),
    p_ip_address => '0:0:0:0:0:0:0:1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 103,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051418','YYYYMMDDHH24MI'),
    p_ip_address => '0:0:0:0:0:0:0:1',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 109,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051242','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 109,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051242','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 109,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051337','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 109,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051337','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 113,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051331','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 113,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202502051331','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
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
    p_owner => 'APEX_240100',
    p_access_date => to_date('202501281415','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Contraseña caducada');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202501281415','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
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
    p_owner => 'APEX_240100',
    p_access_date => to_date('202501281415','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 3,
    p_custom_status_text => 'Contraseña caducada');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202501281415','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
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
    p_access_date => to_date('202501281458','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
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
    p_access_date => to_date('202501281458','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
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
    p_access_date => to_date('202501311431','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
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
    p_access_date => to_date('202501311431','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
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
    p_access_date => to_date('202502030925','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
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
    p_access_date => to_date('202502030925','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
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
    p_access_date => to_date('202502051231','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
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
    p_access_date => to_date('202502051231','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
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
    p_access_date => to_date('202502051333','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
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
    p_access_date => to_date('202502051333','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.2',
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
    p_access_date => to_date('202502051334','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
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
    p_access_date => to_date('202502051334','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.0.50',
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
  p_id => 12410017186138781 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue_template (
  p_id => 12410144921138782 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue_template (
  p_id => 12410299550138783 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue_template (
  p_id => 12410319617138785 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue_template (
  p_id => 12410436582138786 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Won''t Action'
 ,p_template_description => 'This issue will not be actioned'
 ,p_template_text => 
'After careful consideration, **no further action will be taken on this issue**. '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue_template (
  p_id => 12410564725138787 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue_template (
  p_id => 12410632047138788 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue_template (
  p_id => 12410731881138789 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue_template (
  p_id => 12410851564138790 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 12411395227138798 + wwv_flow_team_api.g_id_offset
 ,p_user_id => 'GONZALEZFJU'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 12406616999138759 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Functional Area'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Functional area affected by the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label_group (
  p_id => 12407553972138767 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Category'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Category assigned to the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label_group (
  p_id => 12408419087138772 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importance'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Level of importance assigned to the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label_group (
  p_id => 12409095340138774 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Level of Effort'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Level of effort to address the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label_group (
  p_id => 12409497416138777 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Progress'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Progress against the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 12406705701138763 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12406616999138759
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12406888923138764 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12406616999138759
 ,p_label_name => 'Database'
 ,p_label_desc => 'Database'
 ,p_label_slug => 'database'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12406980346138764 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12406616999138759
 ,p_label_name => 'REST Integration'
 ,p_label_desc => 'REST Integration'
 ,p_label_slug => 'rest-integration'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407093856138765 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12406616999138759
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407170315138765 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12406616999138759
 ,p_label_name => 'Dynamic Actions / JavaScript'
 ,p_label_desc => 'Dynamic Actions / JavaScript'
 ,p_label_slug => 'dynamic-actions-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407262966138766 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12406616999138759
 ,p_label_name => 'Security'
 ,p_label_desc => 'Security'
 ,p_label_slug => 'security'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407319511138766 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12406616999138759
 ,p_label_name => 'Administration'
 ,p_label_desc => 'Administration'
 ,p_label_slug => 'administration'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407490364138766 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12406616999138759
 ,p_label_name => 'External System Integration'
 ,p_label_desc => 'External System Integration'
 ,p_label_slug => 'external-system-integration'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407687112138768 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12407553972138767
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407731206138768 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12407553972138767
 ,p_label_name => 'Enhancement Request'
 ,p_label_desc => 'Enhancement Request'
 ,p_label_slug => 'enhancement-request'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407874819138769 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12407553972138767
 ,p_label_name => 'Feature Request'
 ,p_label_desc => 'Feature Request'
 ,p_label_slug => 'feature-request'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12407993740138769 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12407553972138767
 ,p_label_name => 'Security Issue'
 ,p_label_desc => 'Security Issue'
 ,p_label_slug => 'security-issue'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408063040138769 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12407553972138767
 ,p_label_name => 'Performance Issue'
 ,p_label_desc => 'Performance Issue'
 ,p_label_slug => 'performance-issue'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408107251138770 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12407553972138767
 ,p_label_name => 'Installation Issue'
 ,p_label_desc => 'Installation Issue'
 ,p_label_slug => 'installation-issue'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408227394138770 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12407553972138767
 ,p_label_name => 'Documentation Issue'
 ,p_label_desc => 'Documentation Issue'
 ,p_label_slug => 'documentation-issue'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408378724138771 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12407553972138767
 ,p_label_name => 'Training Issue'
 ,p_label_desc => 'Training Issue'
 ,p_label_slug => 'training-issue'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408524903138772 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12408419087138772
 ,p_label_name => 'Critical'
 ,p_label_desc => 'Critical'
 ,p_label_slug => 'critical'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408646389138772 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12408419087138772
 ,p_label_name => 'Important'
 ,p_label_desc => 'Important'
 ,p_label_slug => 'important'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408713212138773 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12408419087138772
 ,p_label_name => 'Normal'
 ,p_label_desc => 'Normal'
 ,p_label_slug => 'normal'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408875415138773 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12408419087138772
 ,p_label_name => 'Backlog'
 ,p_label_desc => 'Backlog'
 ,p_label_slug => 'backlog'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12408988719138773 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12408419087138772
 ,p_label_name => 'Will Not Address'
 ,p_label_desc => 'Will Not Address'
 ,p_label_slug => 'will-not-address'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12409123770138775 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12409095340138774
 ,p_label_name => 'Easy Fix'
 ,p_label_desc => 'Easy Fix'
 ,p_label_slug => 'easy-fix'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12409275756138775 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12409095340138774
 ,p_label_name => 'Moderate Effort'
 ,p_label_desc => 'Moderate Effort'
 ,p_label_slug => 'moderate-effort'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12409369531138775 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12409095340138774
 ,p_label_name => 'Large Development Effort'
 ,p_label_desc => 'Large Development Effort'
 ,p_label_slug => 'large-development-effort'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12409541287138777 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12409497416138777
 ,p_label_name => 'Working On It'
 ,p_label_desc => 'Working On It'
 ,p_label_slug => 'working-on-it'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12409682753138778 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12409497416138777
 ,p_label_name => 'Requires More Info'
 ,p_label_desc => 'Requires More Info'
 ,p_label_slug => 'requires-more-info'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12409778558138778 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12409497416138777
 ,p_label_name => 'Waiting on Third Party'
 ,p_label_desc => 'Waiting on Third Party'
 ,p_label_slug => 'waiting-on-third-party'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12409893306138778 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12409497416138777
 ,p_label_name => 'Can Not Fix'
 ,p_label_desc => 'Can Not Fix'
 ,p_label_slug => 'can-not-fix'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_label (
  p_id => 12409955010138779 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 12409497416138777
 ,p_label_name => 'Complete'
 ,p_label_desc => 'Complete'
 ,p_label_slug => 'complete'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 12410933160138792 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Code Freeze'
 ,p_milestone_date => to_date('20241219172307','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'code-freeze'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_milestone (
  p_id => 12411062172138792 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'UI Freeze'
 ,p_milestone_date => to_date('20250103172307','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'ui-freeze'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_milestone (
  p_id => 12411141822138793 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Final Release'
 ,p_milestone_date => to_date('20250118172307','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'final-release'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 12411286462138795 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20241204172307','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue (
  p_id => 12411895946141573 + wwv_flow_team_api.g_id_offset
 ,p_title => 'adasd'
 ,p_slug => 'adasd'
 ,p_issue_text => 
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
 ,p_row_version => 1
 ,p_status => 'OPEN'
 ,p_issue_number => 2
 ,p_deleted => 'N'
 ,p_created_on => to_date('20241204172335','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
);
wwv_flow_team_api.create_issue (
  p_id => 13234626529496430 + wwv_flow_team_api.g_id_offset
 ,p_title => 'Prueba de desarrollo de equipo'
 ,p_slug => 'prueba-de-desarrollo-de-equipo'
 ,p_issue_text => 
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
 ,p_row_version => 1
 ,p_status => 'OPEN'
 ,p_issue_number => 3
 ,p_deleted => 'N'
 ,p_created_on => to_date('20241218114504','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20250211141726','YYYYMMDDHH24MISS')
 ,p_updated_by => 'APEX_240200'
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
-- Exported 14:26 Tuesday February 11, 2025 by: APEX_240200
--
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'UT3';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA UT3 - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_240200
-- Exported 14:26 Tuesday February 11, 2025 by: APEX_240200
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 14:26 Tuesday February 11, 2025 by: APEX_240200
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'TESTWORKSPACE';
 
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
