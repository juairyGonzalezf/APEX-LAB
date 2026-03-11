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
,p_default_workspace_id=>7605142232319369
);
end;
/
prompt  WORKSPACE 7605142232319369
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
    wwv_flow_imp.set_security_group_id(p_security_group_id=>7605142232319369);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace TEST2...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 7605249107319376
 ,p_provisioning_company_id => 7605142232319369
 ,p_short_name => 'TEST2'
 ,p_display_name => 'TEST2'
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
 ,p_source_identifier => 'TEST2'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'TEST2'
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
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '7605059729319369',
  p_user_name                    => 'GONZALEZFJU',
  p_first_name                   => 'Juairy',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'a@a.com',
  p_web_password                 => '1F4DEF35C713260B0935DAD530AA81E57A8F156F3F6F6B5E790E0DF799ABA9FDDF280980DCEF5BD8759F6AD6EB08A4E5F885CF15EBE92BAA816E990874B35533',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'APEXPDB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202509301320','YYYYMMDDHH24MI'),
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
    p_id => 7605496564319396,
    p_user_id => 7605059729319369,
    p_password => '1F4DEF35C713260B0935DAD530AA81E57A8F156F3F6F6B5E790E0DF799ABA9FDDF280980DCEF5BD8759F6AD6EB08A4E5F885CF15EBE92BAA816E990874B35533');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 15808979900942362,
    p_user_id => 7605059729319369,
    p_password => '1F4DEF35C713260B0935DAD530AA81E57A8F156F3F6F6B5E790E0DF799ABA9FDDF280980DCEF5BD8759F6AD6EB08A4E5F885CF15EBE92BAA816E990874B35533');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 15010521631695131,
    p_user_id => 7605059729319369,
    p_password => '1F4DEF35C713260B0935DAD530AA81E57A8F156F3F6F6B5E790E0DF799ABA9FDDF280980DCEF5BD8759F6AD6EB08A4E5F885CF15EBE92BAA816E990874B35533');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 11800115034828276,
    p_user_id => 7605059729319369,
    p_password => '1F4DEF35C713260B0935DAD530AA81E57A8F156F3F6F6B5E790E0DF799ABA9FDDF280980DCEF5BD8759F6AD6EB08A4E5F885CF15EBE92BAA816E990874B35533');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835801226181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4501T3',
    p_attribute_value => '556400064664109422.4501',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 22642933363683047,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1931_W249349528073883039',
    p_attribute_value => '309920184639832447____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7834713023181710,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '556394903837090864',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7834873860181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4001T3',
    p_attribute_value => '556394903837090864.4001',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7834924796181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '556395613003092800',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835022013181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4021T101',
    p_attribute_value => '556395613003092800.4021',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835149911181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '556397202054096672',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835272567181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4051T3',
    p_attribute_value => '556397202054096672.4051',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7837102084181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4100T3',
    p_attribute_value => '558983391492013378',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7837225459181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4101T3',
    p_attribute_value => '558983391492013378.4101',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835354303181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '556397718560100358',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835491788181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4301T3',
    p_attribute_value => '556397718560100358.4301',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835568714181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '556398801399103962',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835693766181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4351T3',
    p_attribute_value => '556398801399103962.4351',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7837335037181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4470T3',
    p_attribute_value => '666074212329754757',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7837451379181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4471T3',
    p_attribute_value => '666074212329754757.4471',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835777825181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '556400064664109422',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7835988395181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '556400313932111365',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836084887181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4551T3',
    p_attribute_value => '556400313932111365.4551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836132857181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '556401349222114691',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836237944181711,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4601T101',
    p_attribute_value => '556401349222114691.4601',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836363143181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '556401691879116466',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836433278181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4651T3',
    p_attribute_value => '556401691879116466.4651',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836508656181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '556402525655120954',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836649572181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4701T3',
    p_attribute_value => '556402525655120954.4701',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836757243181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '556402834682122674',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836822692181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4751T3',
    p_attribute_value => '556402834682122674.4751',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7836945228181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '556403733815126066',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7837023679181712,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_THEME_STYLE_A4851T3',
    p_attribute_value => '556403733815126066.4851',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11800728115828937,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '100',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7619476807327628,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11800698280828920,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11800428225828902,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 22646860045720151,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4000_P1921_R310374200946241813_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 22643590964704750,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1901_W3290607658489431',
    p_attribute_value => '3451665554620404____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
----------------
--Quick SQL saved models
--
----------------
--user access log
--
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
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
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
   wwv_flow_hint.g_exp_workspace := 'TEST2';
 
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
