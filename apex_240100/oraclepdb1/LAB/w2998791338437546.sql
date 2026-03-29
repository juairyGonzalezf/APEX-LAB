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
,p_default_workspace_id=>2998791338437546
);
end;
/
prompt  WORKSPACE 2998791338437546
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   16:27 Saturday March 28, 2026
--   Exported By:     APEX_240100
--   Export Type:     Workspace Export
--   Version:         24.1.0
--   Instance ID:     716672855579713
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>2998791338437546);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace LAB...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 2998996951437730
 ,p_provisioning_company_id => 2998791338437546
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
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '2998686142437546',
  p_user_name                    => 'GONZALEZFJU',
  p_first_name                   => 'Juairy',
  p_last_name                    => 'Gonzalez Flette',
  p_description                  => '',
  p_email_address                => 'juairy.gonzalezf@outlook.com',
  p_web_password                 => 'DD392CF55CFDB0E51C4FF3358F17BB2E6E7181C048FC2579B3905589DDDE9901D61877E1C2793D8380C507B68CDD1670256C18F735706EB906B018DF6F8D0A27',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'APEXPDB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202603281535','YYYYMMDDHH24MI'),
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
    p_id => 2999145011437761,
    p_user_id => 2998686142437546,
    p_password => 'DD392CF55CFDB0E51C4FF3358F17BB2E6E7181C048FC2579B3905589DDDE9901D61877E1C2793D8380C507B68CDD1670256C18F735706EB906B018DF6F8D0A27');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3398956575522233,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_359175352067742002_CURRENT_REPORT',
    p_attribute_value => '359189423622765512:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3209876164506817,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3398873519517936,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'APEX_IG_754958438006534386_CURRENT_REPORT',
    p_attribute_value => '754972509561557896:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3204368697467811,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '100',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3204599670470973,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP100_P6_R8870310831876331300_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3204437116470973,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP100_P6_R8870322933589345658_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3203713534452910,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP101_P301_R62829462670891644_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3210182538506826,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R10424237842079440_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3210084120506823,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R15607707130231509_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3209985497506821,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP4600_P1_R4876236258998332_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3204804022487759,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_100_P1_W8433639965824611952',
    p_attribute_value => '8433641481676612460____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3799416957722974,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P103_W47672728272203105',
    p_attribute_value => '47674515570206794____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3203998432467553,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3210381457508292,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1600_W157709960601474178',
    p_attribute_value => '157712384670549138____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3798488369693676,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1620_W312277037396040233',
    p_attribute_value => '312279461465115193____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3598346347618268,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1800_W15698721914328105',
    p_attribute_value => '15700317824328377____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3210585919509903,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1931_W249349528073883039',
    p_attribute_value => '309920184639832447____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3204273460467796,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3799259186722902,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P9010_W1285528456517282',
    p_attribute_value => '1287618134520444____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3799629291723027,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P9012_W1293214501583306',
    p_attribute_value => '1295219398587025____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3799077642722499,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4000_P9015_W1305831271713900',
    p_attribute_value => '1307412228717448____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3398588975516707,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4850_P110_W345304742814156446',
    p_attribute_value => '349792885320463043____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3399108619543100,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4850_P120_W349780070697459222',
    p_attribute_value => '349830769421520089____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3398754152517068,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4850_P130_W708529861800941074',
    p_attribute_value => '708580560525001941____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3398382862516431,
    p_user_id => 'GONZALEZFJU',
    p_preference_name => 'FSP_IR_4850_P190_W4402214405520520',
    p_attribute_value => '1606130693443833____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 3204049705467772,
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
----------------
--sql commands
--
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Collections Built-In Auth',
    p_app => 101,
    p_owner => 'APEXPDB',
    p_access_date => to_date('202603281537','YYYYMMDDHH24MI'),
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
    p_owner => 'APEX_240100',
    p_access_date => to_date('202603281535','YYYYMMDDHH24MI'),
    p_ip_address => '10.0.2.150',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 5,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'GONZALEZFJU',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202603281535','YYYYMMDDHH24MI'),
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
  p_id => 3208457521506764 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 3208501359506765 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 3208663027506766 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 3208789223506768 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 3208810055506769 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Won''t Action'
 ,p_template_description => 'This issue will not be actioned'
 ,p_template_text => 
'After careful consideration, **no further action will be taken on this issue**. '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 3208919764506770 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 3209056082506771 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 3209144204506772 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_issue_template (
  p_id => 3209286741506774 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 3209788847506782 + wwv_flow_team_api.g_id_offset
 ,p_user_id => 'GONZALEZFJU'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 3205073068506744 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Functional Area'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Functional area affected by the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 3205929509506750 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Category'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Category assigned to the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 3206847080506754 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importance'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Level of importance assigned to the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 3207420919506757 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Level of Effort'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Level of effort to address the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label_group (
  p_id => 3207858448506759 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Progress'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Progress against the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 3205180326506746 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205073068506744
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3205287958506746 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205073068506744
 ,p_label_name => 'Database'
 ,p_label_desc => 'Database'
 ,p_label_slug => 'database'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3205365497506747 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205073068506744
 ,p_label_name => 'REST Integration'
 ,p_label_desc => 'REST Integration'
 ,p_label_slug => 'rest-integration'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3205405177506747 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205073068506744
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3205518480506748 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205073068506744
 ,p_label_name => 'Dynamic Actions / JavaScript'
 ,p_label_desc => 'Dynamic Actions / JavaScript'
 ,p_label_slug => 'dynamic-actions-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3205630801506748 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205073068506744
 ,p_label_name => 'Security'
 ,p_label_desc => 'Security'
 ,p_label_slug => 'security'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3205727557506748 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205073068506744
 ,p_label_name => 'Administration'
 ,p_label_desc => 'Administration'
 ,p_label_slug => 'administration'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3205877953506749 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205073068506744
 ,p_label_name => 'External System Integration'
 ,p_label_desc => 'External System Integration'
 ,p_label_slug => 'external-system-integration'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206047347506750 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205929509506750
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206194505506750 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205929509506750
 ,p_label_name => 'Enhancement Request'
 ,p_label_desc => 'Enhancement Request'
 ,p_label_slug => 'enhancement-request'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206290094506751 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205929509506750
 ,p_label_name => 'Feature Request'
 ,p_label_desc => 'Feature Request'
 ,p_label_slug => 'feature-request'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206391848506751 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205929509506750
 ,p_label_name => 'Security Issue'
 ,p_label_desc => 'Security Issue'
 ,p_label_slug => 'security-issue'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206433187506752 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205929509506750
 ,p_label_name => 'Performance Issue'
 ,p_label_desc => 'Performance Issue'
 ,p_label_slug => 'performance-issue'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206540645506752 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205929509506750
 ,p_label_name => 'Installation Issue'
 ,p_label_desc => 'Installation Issue'
 ,p_label_slug => 'installation-issue'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206640533506752 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205929509506750
 ,p_label_name => 'Documentation Issue'
 ,p_label_desc => 'Documentation Issue'
 ,p_label_slug => 'documentation-issue'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206742226506753 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3205929509506750
 ,p_label_name => 'Training Issue'
 ,p_label_desc => 'Training Issue'
 ,p_label_slug => 'training-issue'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3206952407506754 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3206847080506754
 ,p_label_name => 'Critical'
 ,p_label_desc => 'Critical'
 ,p_label_slug => 'critical'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3207071802506755 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3206847080506754
 ,p_label_name => 'Important'
 ,p_label_desc => 'Important'
 ,p_label_slug => 'important'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3207164666506755 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3206847080506754
 ,p_label_name => 'Normal'
 ,p_label_desc => 'Normal'
 ,p_label_slug => 'normal'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3207270236506756 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3206847080506754
 ,p_label_name => 'Backlog'
 ,p_label_desc => 'Backlog'
 ,p_label_slug => 'backlog'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3207364898506756 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3206847080506754
 ,p_label_name => 'Will Not Address'
 ,p_label_desc => 'Will Not Address'
 ,p_label_slug => 'will-not-address'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3207592038506757 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3207420919506757
 ,p_label_name => 'Easy Fix'
 ,p_label_desc => 'Easy Fix'
 ,p_label_slug => 'easy-fix'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3207662756506758 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3207420919506757
 ,p_label_name => 'Moderate Effort'
 ,p_label_desc => 'Moderate Effort'
 ,p_label_slug => 'moderate-effort'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3207765425506758 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3207420919506757
 ,p_label_name => 'Large Development Effort'
 ,p_label_desc => 'Large Development Effort'
 ,p_label_slug => 'large-development-effort'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3207919831506759 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3207858448506759
 ,p_label_name => 'Working On It'
 ,p_label_desc => 'Working On It'
 ,p_label_slug => 'working-on-it'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3208007577506760 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3207858448506759
 ,p_label_name => 'Requires More Info'
 ,p_label_desc => 'Requires More Info'
 ,p_label_slug => 'requires-more-info'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3208176121506760 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3207858448506759
 ,p_label_name => 'Waiting on Third Party'
 ,p_label_desc => 'Waiting on Third Party'
 ,p_label_slug => 'waiting-on-third-party'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3208249624506761 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3207858448506759
 ,p_label_name => 'Can Not Fix'
 ,p_label_desc => 'Can Not Fix'
 ,p_label_slug => 'can-not-fix'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_label (
  p_id => 3208378238506761 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 3207858448506759
 ,p_label_name => 'Complete'
 ,p_label_desc => 'Complete'
 ,p_label_slug => 'complete'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 3209393127506775 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Code Freeze'
 ,p_milestone_date => to_date('20260412154643','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'code-freeze'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_milestone (
  p_id => 3209496487506775 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'UI Freeze'
 ,p_milestone_date => to_date('20260427154643','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'ui-freeze'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
wwv_flow_team_api.create_milestone (
  p_id => 3209531819506776 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Final Release'
 ,p_milestone_date => to_date('20260512154643','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'final-release'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_updated_by => 'GONZALEZFJU'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 3209695563506779 + wwv_flow_team_api.g_id_offset
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
 ,p_created_on => to_date('20260328154643','YYYYMMDDHH24MISS')
 ,p_created_by => 'GONZALEZFJU'
 ,p_updated_on => to_date('20260328154643','YYYYMMDDHH24MISS')
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
-- Import using sqlplus as the Oracle user: APEX_240100
-- Exported 16:27 Saturday March 28, 2026 by: 
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 16:27 Saturday March 28, 2026 by: 
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
