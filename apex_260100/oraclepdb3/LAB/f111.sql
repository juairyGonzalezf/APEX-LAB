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
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.1'
,p_default_workspace_id=>6819352504253381
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'APEXPDB'
);
end;
/
 
prompt APPLICATION 111 - test2
--
-- Application Export:
--   Application:     111
--   Name:            test2
--   Date and Time:   11:43 Monday July 27, 2026
--   Exported By:     GONZALEZFJU
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     26
--       Items:                   41
--       Validations:              2
--       Processes:               21
--       Regions:                 63
--       Buttons:                 36
--       Dynamic Actions:          8
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  8
--         Breadcrumbs:            1
--           Entries:              2
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   9
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.1
--   Instance ID:     716672855579713
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEXPDB')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'test2')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TEST2')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'6C64B421A3088D68B9EDA95D753476EBBCE3CC32BBA2258C4E41D3D3E4C66A10'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(10917919308771765)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'test2'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(10924742007771824)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'test2'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461244121526
,p_version_scn=>'244833548'
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>11136098970772385
,p_ai_remote_server_id=>15929594316723492
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.::&DEBUG.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(10918818704771771)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(10919631332771804)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_111_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>11136098970772385
,p_name=>'App 111 Push Notifications Credentials'
,p_static_id=>'app-111-push-notifications-credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
,p_created_on=>wwv_flow_imp.dz('20260519133407Z')
,p_updated_on=>wwv_flow_imp.dz('20260519133407Z')
,p_created_by=>'GONZALEZFJU'
,p_updated_by=>'GONZALEZFJU'
);
end;
/
prompt --workspace/credentials/gemini_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>15729865073823552
,p_name=>'GEMINI_CREDENTIALS'
,p_static_id=>'gemini_credentials'
,p_authentication_type=>'HTTP_HEADER'
,p_prompt_on_install=>true
,p_updated_on=>wwv_flow_imp.dz('20260519131137Z')
,p_updated_by=>'GONZALEZFJU'
);
end;
/
prompt --workspace/remote_servers/gemini_ia
begin
wwv_imp_workspace.create_remote_server(
 p_id=>15929594316723492
,p_name=>'GEMINI_IA'
,p_static_id=>'gemini_ia'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('gemini_ia'),'https://generativelanguage.googleapis.com/v1beta')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('gemini_ia'),'')
,p_server_type=>'GENERATIVE_AI'
,p_credential_id=>15729865073823552
,p_ai_provider_type=>'GEMINI'
,p_ai_is_builder_service=>true
,p_ai_is_default_for_new_apps=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('gemini_ia'),'gemini-3.1-flash-lite')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('gemini_ia'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('gemini_ia'),'')
,p_ai_max_tokens=>nvl(wwv_flow_application_install.get_remote_server_ai_maxtokens('gemini_ia'),'')
,p_prompt_on_install=>false
,p_updated_on=>wwv_flow_imp.dz('20260602113643Z')
,p_updated_by=>'GONZALEZFJU'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10913554643771752)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10914141374771761)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10914488407771761)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10915368142771762)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10915078260771762)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10913858376771760)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10914773596771761)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10915673272771762)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10915920248771762)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10917461198771764)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10916517982771763)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10916244869771763)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10916851976771763)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10917188889771763)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11117282388772353)
,p_name=>'Access Control'
,p_static_id=>'access-control'
,p_required_patch=>wwv_flow_imp.id(10921990744771817)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11118247843772353)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_static_id=>'access-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11117708211772353)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_static_id=>'users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&SESSION.::&DEBUG.:RP'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11113928176772351)
,p_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11115486799772352)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:10032'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11116994631772353)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_static_id=>'automations-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&SESSION.::&DEBUG.:10035,RR'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11114464045772351)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11115959139772352)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_static_id=>'page-performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&SESSION.::&DEBUG.:10033'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11116421979772352)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_static_id=>'page-views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:10034,RR'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11114944661772351)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_static_id=>'top-users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:10031'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11112383843772349)
,p_name=>'Application Configuration'
,p_static_id=>'application-configuration'
,p_required_patch=>wwv_flow_imp.id(10922303324771817)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11112816982772350)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(10922303324771817)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11118543293772354)
,p_name=>'Feedback'
,p_static_id=>'feedback'
,p_required_patch=>wwv_flow_imp.id(10922158103771817)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11119034622772354)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_static_id=>'user-feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&SESSION.::&DEBUG.:10053'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10919631332771804)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11107586190772340)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_static_id=>'about'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(10922678463771817)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11109185094772343)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_static_id=>'about-page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&SESSION.::&DEBUG.:10060'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(11107586190772340)
,p_required_patch=>wwv_flow_imp.id(10922678463771817)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11106718865772338)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11109425511772343)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11107293678772340)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_static_id=>'feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&SESSION.::&DEBUG.:10050,RP:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(10922158103771817)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11108601825772342)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(11107586190772340)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11110073895772344)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_static_id=>'list_item-2'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(11109425511772343)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11108199390772342)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_static_id=>'page-help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(11107586190772340)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(10922678463771817)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11135743738772383)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_static_id=>'settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(11109425511772343)
,p_required_patch=>wwv_flow_imp.id(11129150042772374)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11110519098772344)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(11109425511772343)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10918818704771771)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11111195656772345)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(10924694262771824)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10933313663771855)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11113191197772350)
,p_name=>'User Interface'
,p_static_id=>'user-interface'
,p_required_patch=>wwv_flow_imp.id(10922738203771817)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11113680260772351)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_static_id=>'theme-style-selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:10020'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(10922738203771817)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11132776676772378)
,p_name=>'User Settings'
,p_static_id=>'user-settings'
,p_required_patch=>wwv_flow_imp.id(11129150042772374)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11133270167772379)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(11128820559772373)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B80000153749444154785EED5D09781445F67F3D33B96F128E842B5111B92F39E508BBFCF72FAB5CB9201C31BB4832828A2B2B975710441705150492805C920412486059';
wwv_flow_imp.g_varchar2_table(2) := 'D66BB91715412EB92584002140EE3B99CC4CEFAB0EA30102CC54F7F44CE8AAEFEB2FC774BD7AF5ABDF54BDAAF7AA8A039618022210E044E465591902C008C448200A01462051F0B1CC8C408C03A210600412051FCBCC08C438200A01462051F0B1CC8C40';
wwv_flow_imp.g_varchar2_table(3) := '8C03A210600412051FCBCC08C438200A01462051F0B1CC8C408C03A210600412051FCB6C97040A0E8ED3346DDA5105AD400D35F8E841EDA0765569543A95129A4C6F7434D61A2A8DA0010338E1730D0C7979678C7BF7C6E9EDADFE362610CF45C66C6D8F';
wwv_flow_imp.g_varchar2_table(4) := '14E9CBF15C5F04A70F3E5DF171B037A0EC449F5AD4E32436DA2123C7FF84D43A9492187A1E80E36DA59FAC040A7F25B5A9935EDDDFC883892CBDB1E25EB6AAFC23526E09D6E33007DC21236F3CA4D71B0FA67D11512857DD642410CF8D8FCD18C973FC4C';
wwv_flow_imp.g_varchar2_table(5) := '2C74805C155458390791481F26C58FD92957AF647502C5C4243854A87CA3799EFB3B461F3DA9B006B55175F9F3C0731FB9F3F91B121363C9B067B56455024569535BA2FDBB1DB5EF65B51A30C10F42E048AD83E1CF69CB22F2AC0593D508342136B5A391';
wwv_flow_imp.g_varchar2_table(6) := '537F8B05B4B496F24CAE590864F2067E54CAAAB0D366BD6DE14B562150644CFA404EC5FF8B19C816B686F55E2FE1396E54CACA907D521721398148CFC373EAC3A8A8ABD4CA3279A210A8C49EA88FD43D91A4041A11B3C3D5435583E4E13A8AAA2ACB6C1D';
wwv_flow_imp.g_varchar2_table(7) := '0478385DC63BF6D99138A252AA02242550A4367D1D07FC0B5229C7E4488F000FDCFA94F89068A9244B46A0F1DAAD44A9B55229C6E4581581BF24C787AE93A204490814FEB75417872A750E2AE42385524C86D511282C333AB69662289384401362D3B5B8';
wwv_flow_imp.g_varchar2_table(8) := 'C2BCD2EAD56605488600FA1E5F4A4A0889172B500202A18B42BBF52C1ACEEDC52AC3F2CB870036FCD9A4F8904E625D1EA20914199BFE2CC7F15FC9577556925408A07B69784A42C8D762E4892610F63E4481FF17A304CB6B3304BE4163FA5931A58B2250';
wwv_flow_imp.g_varchar2_table(9) := '74F45A679DB367052AA088402F3140DB695E63AD8BC13DED93882A5AFD441168A2362DD808AA3DB485B37CB6474005C6A11BE3C3F7D26A228A4091DA2DB331FEE403DAC2593EDB23C0033F27253EEC435A4D441168BC76CB36B4E247D116CEF2D90302FC';
wwv_flow_imp.g_varchar2_table(10) := 'F6E4F8B0D1B49A88211099BE9338135FDAC2593EBB40E0261AD22D6835A1265074F41E34A00BA98D2F5A85593EE911D0A839BF0DCB430A6824531368747486B7ABB3B188A65096C7BE10C0308FCEB4611ED4048A9A96EEAB37F0F9F60505D38606014E05';
wwv_flow_imp.g_varchar2_table(11) := '7D92568492182E8B1335812669D39B1980BF6971892C83FD21C0C390E484D0FD348A511368DCCB29012ABD23F1C0B3D4C81110E3D2A027D0D46DAD5546C395468E1D531F11E0797E644A42D80E1A30A80934E9C5D42083467D89A65096C7CE10E0B9D0E4';
wwv_flow_imp.g_varchar2_table(12) := '8490741AADA809343626E371B5CA7891A6507BCDC31B0D80DB83C168D483F03B3E3CFEADE2D4C0A9D4A0BAFD90DF39B43C1F9DC44D4C8E0F49A2A90F35811E851EC868A8059DAE026A7555505B8B4B5ABCF9671410023938BA0A8F233E84548D35E11036';
wwv_flow_imp.g_varchar2_table(13) := '0987B08D34FA2B90403CD45497098FBEB6FA37CC3C3DDDA05B972068DBBA29787AB880AB8B23B8BA3A8293A3035455EBA0AA4A0715953A2829AD845F3373E1D499CB508DFF37254727377072F61408D5D8122390192D8620414D550954551609C312499D';
wwv_flow_imp.g_varchar2_table(14) := '3A04C2A0011DA073870068D9C2D30C2977BE72312B1F7E397B1DBEDD750C6EDCAC3B1043AD760417371F707472B7589EAD3230023D04795D4D395494E70B768DBBBB0BFC31B83B0C1BD2115AF95B4E9AFB1575EADC0DF86ECF29D8FFFD296128D4689CC0';
wwv_flow_imp.g_varchar2_table(15) := 'CDA319A8358EB6E285D9E53202DD072A62045794DD421BA76E1FDDB8B021306A78577076D2980DAEA52FE61556C0C6CD3FC0FE83BF08595D5C7DB0476A62A91859DF67046A00EE9AAA52A8AC281086ABC103BBC0C488FED0B4899B6C0D73E1523E24AEDB';
wwv_flow_imp.g_varchar2_table(16) := '059997AE83C6C1053CBC5AD8EDCC8D11E82E5A5494E5A1915C8A86B033BC36F579E8DDA3353571726E9452D947A60293B71E81B48C03A0526BC0C3D3DF2E873446A07AF428C7214B8733AC96017EF0E68CD1E0DFDC838A3CF9459530276E13E41794C053';
wwv_flow_imp.g_varchar2_table(17) := 'EDDBC0076F8752C921990E1FBB0A9FACD881B3B65A70F76C813335176A59D6C8C808741B551379BA777D02664E1F0E2E226C9DFF1EBA048B9791B3B1EAD28AC52F529391E4BF965B0AEF2C4C83A2A2521CCEFCED6ABACF08840D446659649AFE64BB5630';
wwv_flow_imp.g_varchar2_table(18) := '6FCE187076146728171657C1F4D91BA0BCBC121E0B0A80C5F3C78AFEF25FBD5E0273E625E37A520D787AB714666AF690144F2062305794E741EB56CD60E13BE1E08E0B805224328CE5179443DB5638937296E6E4E10B9979302B2E098F8BE4C0AB491BC1';
wwv_flow_imp.g_varchar2_table(19) := '3D62EBA4680219F4B83A5C7415C84AF292F72782AF8FFDAF041F3E7E15167EBC056767CE424F64EBA4680295145E058341076F4C1F03037A0736D81699D98590959D8F9F07E1CC4C9A9E446CA32F5BB50776EF3B0EAE6EBEE0ECEA2D569CA8FC8A255035';
wwv_flow_imp.g_varchar2_table(20) := 'DA3C9568FBF4EBDD01664D6F78876ED69542787DEE7A01E066CD7C2161499428B0CDC94CECA7B716A441D7CE41A08D1ED4609672F4ABBDFCC67A2845DF9A370E65B674C62A92406481B0B8201BDCDC9C61E93F5E001F2FE7061B6AE7776760F5FA6F7EFB';
wwv_flow_imp.g_varchar2_table(21) := '2C65CD2BA20DEC07918890E7CDF969E81B2B8009638742D888EEF77DFDFB2397E1A34F33D009EB21B83D6C951449A0CA8A42A846C7E80B1386C1E8E15DEE8B7D514935CC7C27058DE1628808190491214F5BAD9DEA932774D43330319C5CFDF1E0347741';
wwv_flow_imp.g_varchar2_table(22) := '3A9C3D972DF4422AB56D8657C511C8D4FBB860C8C5EA655344ADF73CAC81CDFD3C1F7D606FBFBF45F0CA8F7AAE3F4447F6332BEB89D3B910F7C1269BF6428A23507565B1E0E70A1D3510BFE5E4BE16DB26429E39EFA5427E7EB145E431693D332E0D7EBD';
wwv_flow_imp.g_varchar2_table(23) := '780D7C7C036D620B298E40A699D7DA152F81B767C3B68F5C9422E4998BE4C943F2848D1E0813C22C27F4D19339307F512AB8BAFB81B38BFC9717298A407A7D0D94165D836EE8AE889B39422E9E34584EFD9E87963C26C151DA44A8AA31D8645D485104AA';
wwv_flow_imp.g_varchar2_table(24) := '42E39944154E897E16FE3CAC83CD0824257948253E4BD8037B0F1C071FBF20D9C33E1445A0D2E21C219679C59229E0DFCC3661A352938710E8C0A12C58B26C1B7AEB9BCB1E0EAB180291B8E6A2FC4B10E0EF07CB3F9A6493DE87441CBE79DBE6917259A0';
wwv_flow_imp.g_varchar2_table(25) := 'ACBC06A2B42BC0096D2037B485E44C8A2190C9FE79A67F17F8FBB46172622C94658D9EA77E2526BFBA064ACBEA3CF57226C5108844199268C3B0D18370B663BD054153E39562AF50881EF9C0D63E407A1E32DB2253F5B1A18361DC18E9EFD07BEBFD6D70';
wwv_flow_imp.g_varchar2_table(26) := '061715891D2467520C814CABCFD3629E836183AD777B26D9FFB52C71171C3A724E6847575767DC3CE800C5C5654260FED8D13DADD2BE9FAFDE0BBBF61E937D3D48390442C72971A0CE9B3B0EBA76F4BFA7116FE695C389D339D0AB7B1BF0F5A60F1B5D9A';
wwv_flow_imp.g_varchar2_table(27) := 'B81BF6EC3F014DFD7C8418A30B17AF0A8165FDFA748459AFD21F899D7DAD183725DE82BE4F078287DBBD314BA9DB8F424ADA3EF0F469256BB0996208648A3A5CF8EE04E8D0EE4EE763EEAD32983AE30B614F96B3B323AC5A3A852AB0ACBA460F91939781';
wwv_flow_imp.g_varchar2_table(28) := '7F0B5F181F315820A94E678084355F21A1BCE0F34574C6FB990BB7D0F8AEDB7EEEE7EB05AB3EFBEB3D5F808C7F9F840DC9BB640F79551C81DE7B3312BA74B8F35CC89F4F5E83058BD27E6B9445F3A3A05D90E5E77F925EE2B5D96B71A1B21D0C0BEEFC9B';
wwv_flow_imp.g_varchar2_table(29) := 'BCF5C97BD1FE29828C8D7FA31ABEBEDE7D1649F8FBAD026B96BF744F04C1961D272069F36EC1334F3CF47225C51088F8BF881FECDD3963A17BA7803BF02506EF6B73360A41EBAD5A36858FE747E2BE76CBC345499CCEA4D815B83FDE15A222FF084E4E6A';
wwv_flow_imp.g_varchar2_table(30) := 'C1905EBBF15B34A69BC3270B23A9DA35F76619CC78EB4BDC635F039D3A06C282B963EE91B329E3286CDEBA4FF6B520C510C8B40AFDD6CC70E8D5B5D53D0D4042376EE6218102BCA9862F22B0B8B41A1B3A190A0B4BC0CBCB03BCBDDCE1E62D242E1EA430';
wwv_flow_imp.g_varchar2_table(31) := '774698A83D66B7F22BA0B0B80282DAF83648EEA42D8761CBB6FFB2218CEA2B6A46265304E22BB1CFC31F06B533238765AFE415D48564DCBC558886EE5370EA6C36EEA0A886A7DAB586C8B0010D1AEE9695F0E0B74DB33066444B896A3D59648F7B59492E';
wwv_flow_imp.g_varchar2_table(32) := '55C8C4C35422E499FBDE666123E1F03FF58698A8810FCB22F9E76FBC9B0A17337364F78729660823074215175E811EDDDAC13B6F3C2F590392E9FFEC799B84759E61437BC0B4C9C192C9B64450C8A4CFF0E6084E5807923329864004D4A2FC2CF0F17687';
wwv_flow_imp.g_varchar2_table(33) := '2F964D960CE379FFF8271CFF2513860EEE06AFC6FC4132B996081296215E5F2DEC58253B57E54C8A225059C90D3CAEA502E23F9902CD9B4AE38DFF6AD759B876BD10A64C7A46CE76BBA3ACFFECBB00CB57EDC4A032DCE6E322EF361F4511C864489329F6';
wwv_flow_imp.g_varchar2_table(34) := '98E7BADAACC1A52E78DEA21D70FCE445D957A1493D144520931D1414E80F4B168C93BA1D6D22AF043DF0D153570AA7C17AFBB6955D07451188A04B425A4968C7F2C59321A0B974C7D4C9DE72B70B34AD523BE36966AE3638CD4C7104320D63CFFE5F2F88';
wwv_flow_imp.g_varchar2_table(35) := '7DA1CE5FD59893F6F575B8F654241CB6A0B6C1DE30C51188442616175C168EAFB3879D1962C87BE0C74BB0E4F3ED36997D99F4561C8148C549603D716D8C18DE17FE3A6180C56D78FCF4753872340BCE5FCC81ABD76E414D4DADC532C889AF24DCA36BA7';
wwv_flow_imp.g_varchar2_table(36) := 'B6D0B75710BA282C3F4CF3D5D94942F972AF3ED7AFAC220924EC4EC5454572746FE2D218B30FD024C7F1C6AFF90E72AE4B7FD559CFEEED20263A189AFB99B7BCB0EFFB8BF0291E7DE7E0E8261CC269ABA4480211B04D074BB57FB2157C88074B3D2C990E';
wwv_flow_imp.g_varchar2_table(37) := '3320EF35F1F182B66D027051D2033CD0F3AE515B7EF745ADDE80CED70A28C115ECF3BF66A3C3B55A70BEC6CD09C743A91EBC96434264A7CF5A2F78E76DB92F5E71D3F8BB495282333203CEC8C2C70C84F1A1F7DF15FAC3916C58F4693A9E08A6C22B0DDA';
wwv_flow_imp.g_varchar2_table(38) := 'C363B80C2065D223994E9DBB0C9999D9C261E6F3DF1C2BC452DF2FCD787B135CCACAC5B3816C33F352FC106602C080FE3172421989449C37772C7ACCEF8C1322EF1DFCE9327CBC3403C344357866744F0CE4326F88A121D815B4670EFF7C4A20D17BA84F';
wwv_flow_imp.g_varchar2_table(39) := '509B7B49B42EE5206CDFF993702D8257131296427D65098D8AF7E451EC106642C2B45BC3C9C901DE7F3B121E0FFC3D12B17ECF43C8E3EB63FD75A3ACEC5C387AFC6C833DD18E6F7E81355FFE47D87DEA85B1CFB63AD285F540777D8F4CF1D22E2E4EC2F0';
wwv_flow_imp.g_varchar2_table(40) := '414864220FF1700F1ED80B0D6DEB93C7A456E6E55C387EE24E12ED3E70019625EC143CEEE4D0717B392F5AF13D90A9D1C8BD18E41A27B20D2764647FD8B8698FF0D1A0013DA15953791D94A4DCCCACEBE8DF3A873D912B2E37F416765C90648BEDCB0F1A';
wwv_flow_imp.g_varchar2_table(41) := 'EB1881EAA1535E7A0374351575FFC16FFAC07E3DA07933F9C96352E9ECF92BB859F0F78B1DED8D3C444F46A0BBBE5EA613EBC9BFDBB70B820E4F05825A25BFA15AA3D3C3CFC7CF436E2EDE8E8E6476F7200727C877E18BB9163623500348D5BFADC7C3C3';
wwv_flow_imp.g_varchar2_table(42) := '1D9EEED101D77EE4DB2A7335270F87AFF3B8A74C27CCB6DC3C9BC9BA59D05CF2B01EE8014891CB73CB4B6FE17130781F2AA6271E6F0B4F3ED11A4F9D97E624FB868A2E2A29C74333B320F7469EF0B13DACF33C8C4CAC077A0842649A5F595E7777184901';
wwv_flow_imp.g_varchar2_table(43) := '012DE089C75A41535FE96665A4C7F935F32AEE4B2B16CA20A7D00B3716DAC0BBFE30C2DCFD392390198811F2904D892414C4442432B4F937F7035F5F6FF06DE2215CB06B6E2AAFA88282C2527C4AE07A2EDE4F5653236455E3052AE496427BB475EE5737';
wwv_flow_imp.g_varchar2_table(44) := '4620735B1DDF23A120A44722D37DE202A99F08A1DCDCF01A6F8D1A1C1C34F838E0429F1A83D7F4380CD6E2D5E07AD0E1CF22F47D11DBA67E72C4ADC84E4E1E76B3B66301246C16660958F5DF2517B590BD663A7C4C7692B9B2C8D504A63BE3C94FB2B2DC';
wwv_flow_imp.g_varchar2_table(45) := '58934D7AA07153B7B556190D571A2B680DE94D4243C845BD46DE20848990DF898F8D908310865C5BA9BAFD7B6326CC3D75E7B9D0E48490749AB6A45E1C19F7724A804AEF98435328CB635F08F03C373C2521E4F7A3432C508F9A4093B4E9CDF07B8A2B64';
wwv_flow_imp.g_varchar2_table(46) := '2C357A047818929C10BA9FA61ED4048A9A96EEAB37F0D287F5D1D482E51185008ECA7D9256841EA611424DA0D1D119DEAECEC6229A42591EFB428037F09D5356859DA6D18A9A40E15353DD1D8CEA329A42591E3B438083C79357865EA2D18A9A40D1D17B';
wwv_flow_imp.g_varchar2_table(47) := '9C75CE85753E02961A3502B52A837FDA8A881B3495A026505C5C9CEAC28D2E246EC2B6D7E5D0D49AE5A98F40B5BB31DF333131D6F27D4D28859A404483F1DAAD7BF1C710D61E8D1A817DC9F1A1C1B435104BA0382CF85DDAC2593EBB40601E1288B42355';
wwv_flow_imp.g_varchar2_table(48) := '1245A089DAB46023A8EAE246596A9408A8C03874637C381949A89228024547AF4543DA934CE5991D4405BFCD33553B5697FAAC5BF7976A5A4D441188143A3E76EB26B4A4C6D22AC0F2D910011E36E30AB4A84396441368C24B5BFBA1BFF1071BC2C08AA6';
wwv_flow_imp.g_varchar2_table(49) := '4400C3B4FB27AD0CFD9132BB904D3481881024D18F48A2BE62146179E54500C97308C963DEDDE40F504D12028DD7A66337C8A7C80B012B4D1C025C64727CC826713224EA8182E3F668026E1466A132F7DE3F205643965F720478809CDC164D02F7C60DD5';
wwv_flow_imp.g_varchar2_table(50) := '8B152E490F54674CA78F028EDF26562196DFFA086004E2C89484B01D5294241981041269D33FC5A16CBA148A3119D64280FB0C87AED7A4922E29816262121CCA557E0751B9FB1FD42395E64C0E0D023FA3DFAB3FADDFABA10225251029609C362350C51B';
wwv_flow_imp.g_varchar2_table(51) := '8FE1FCCE761BD269A07DF4F3DC0435F44D5E1E9A2D65552527501D89B6F4C0307412A41D28A5B24C163502D92A9E1BB53121E404B584FB64B40A814859B7435EC93451FE0BDEA546A971CBDBAD5173111B96871458A31A56231051363C3C55EDE0A7FA1C';
wwv_flow_imp.g_varchar2_table(52) := '784E6B0DE599CC072380D3F5C5FA02C3ACB4B408DC9F649D64550299549E109BAEE5391E2FC302EB9D6A601D7C1AAB541DC743545242E8666B5740160209439A36B5652DAF9ACC71DC8BF8676B6B574CA1F2AF61BD576BC0B07A437C842C7BF6642390A9';
wwv_flow_imp.g_varchar2_table(53) := '41C9B0E6E8AB1E89DD6B2CFEEF4FF8C8AEC323462E0322F86F3C7724C1906FF8DA9AC35543B8D9B4F1C26352BD1C3875375C7CECC173AA1E1C187B229F3AA0A29A47AC91A5AA0EBA1EF8B3B8D7FA187E018F2156C7F406FDF1B4C48812A90AB0548E4D09';
wwv_flow_imp.g_varchar2_table(54) := '743F65274DDAE0A677F17171802A57A31A5CF4BCCA1554BC8BC6A80C1B4AAF021D18B92A0D67AC5419A0AA165C2A355545555F7E1975FBF0474B9BD97AEFDB2581AC575D26596A041881A4465461F2188114D6E052579711486A4415268F1148610D2E75';
wwv_flow_imp.g_varchar2_table(55) := '751981A4465461F2188114D6E052579711486A4415268F1148610D2E75751981A4465461F2188114D6E052579711486A4415268F1148610D2E75751981A4465461F2FE0754322F18082809990000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10920805951771816)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C070000193449444154785EED5D077854D5129ED44DEFA184408202D28B800A52159EA04454906A4110E92AF2C4823E8AA2F029E893225245110444408A4A7988A0141142';
wwv_flow_imp.g_varchar2_table(2) := '004182107A08E9BDE7CDDC9BBDD90D81ECDEEC6E76CF9DC3B7DF86E49E7BCEFC33FFBDA7CCCC711A327A4309706104348A80131340A39A67B1250498006C089A468009A069F5B3F04C00B6014D23C004D0B4FA59782600DB80A6116002685AFD2C3C1380';
wwv_flow_imp.g_varchar2_table(3) := '6D40D308300134AD7E169E09C036A0690498009A563F0BCF04601BD034024C004DAB9F856702B00D681A012680A6D5CFC23301D806348D001340D3EA67E199006C039A468009A069F5B3F04C00B6014D23C004D0B4FA59782600DB80A6116002685AFD2C';
wwv_flow_imp.g_varchar2_table(4) := '3C13806D40D308300134AD7E169E09C036A0690498009A563F0BCF04601BD034024C004DAB9F856702B00D681A012680A6D5CFC23301D806348D001340D3EA67E199006C039A468009A069F5B3F04C00B6014D23C004D0B4FA59782600DB80A611600268';
wwv_flow_imp.g_varchar2_table(5) := '5AFD2C3C13806D40D308300134AD7E169E09C036A0690498009A563F0BCF04601BD034024C004DAB9F856702B00D681A012680A6D5CFC23301AC660325505458004545F9F88D9FA202282E2E82929262FCE077317D174BAD3B39398393337E9C5CA49F9D';
wwv_flow_imp.g_varchar2_table(6) := '9D5DC0C5D51D5C5CDCF083DFF83317EB20C004B020AE8505B950909F0D050539403F5BAC383981ABAB07B8B97BE2C70B7FD659ECD65ABF1113A00A1650525282069F05F97999F89DA33CD1AB704B93AAD25BC24DE70DEEEEF8C16F2EEA116002A8C02E3F';
wwv_flow_imp.g_varchar2_table(7) := '4F367AFADCA944D4AD098DEF0987B05A81E0E7EB09BE3E1EE0EDADC36F1D787BB943809F87543D353D1732B3F2F183DF997990919507E9E93970F57A329CFEFB325CB97AF3B6CD10198804EE3A5FE90DC1C53C04980066E09597930E393929505C54784B';
wwv_flow_imp.g_varchar2_table(8) := '2D9DCE0D9ADC530F1A370A87C60D6B4383BB42C0DBD3CD8CBBDFFED2ACEC7C387BFE269C397B1D0971054E9CBA50E1C5345FF0F00A009D87AF45DAD5C24D980026683937271572B3D370127BABE1B769D9007A3CD402DAB7AE076EAECE26DCADEA97E4E5';
wwv_flow_imp.g_varchar2_table(9) := '17C1A13FE3E0E7DDC7E1AF33176FB9A1B38B2B787A052211FCAADE98E0776002DC41C13499CDCAB8894FFC02A3AB7C7DBDA1578F7BA147D7265023A47AC7E057E3D361D72F7FC1CE3DC7200B875086C50527CBDEBEA13C69BE838E990015805382CB95D9';
wwv_flow_imp.g_varchar2_table(10) := '594990979B61F4D7B0DAC130B87F27E874FF5D76F75CCC2F2C82FD07CFC3EAF5FB202929CDA87F1E9EFEE0E91D8C4BAC4E76D7EFEAEE1013A09C0668193333FD86D18A0E8DEF870EE806BD7B34055717DB0C73D41A466E7E216CDC1A0D1BB71CC0E5D8B2';
wwv_flow_imp.g_varchar2_table(11) := '211B0D8B7CFC6AF1DBA01CB04C000340B233132137C7F8E9D9BD4B2B7876604708F497576C1CA5DCB899098B56FC0FA263FE31EAB217BE0968A2CC454680098020D0E436232D1E776CF314BBA8111A082F8FEE0DCDEEA9E9D0B6B2FFD00558FAD52E484B';
wwv_flow_imp.g_varchar2_table(12) := '2B5BB2A5CD341FBF9AD2AEB3D68BE609403BB61969D78D863C5D3BB58431C3BB81CEDD4508FBC8C0BD854F17ED80A3D1E714796848E4E71F06CEE86EA1E5A26902D04656664602A0F54B36A0D3B9C3D8177B41970E775BDD26BEDF761CB6FDFCA7D44E54';
wwv_flow_imp.g_varchar2_table(13) := 'AF76F0C4A32DADDEE6A61F6360E537BB9576E80DE01B10A6E979816609909B9D2AADF4E84B40802F4C7BB33F44845B7F7CFCF5BAC3F0FD0FBF1919FCE0A7BBC280BEF75A9D04274EC7C38773BE879CDCD2E11EAE0CF9F8D6D4AC4B85260950DEF8EB8485';
wwv_flow_imp.g_varchar2_table(14) := 'A0F13F052141B659D31F366E89D1989CAC3E38C80F967E36C2EA04A0062E5E49857767AE858C8C6CA53D5A21D2A25F91E608200D7B7099535F1A350C87775FEF0B3EE89B63AB327CC232484949376A2E28D00F96CDB30D01A8E1785C257AF7FD7590A8DF';
wwv_flow_imp.g_varchar2_table(15) := '33C037815F401DCD0D87344500DAD9A509AF7ECCDFAC69244C9914059E3A575BD9BED4CEEA0D4760FDC67D466D0EC17D86A71F6F63D37E24A7E6E09B603D5CBB2E0F05694EE01F18AEA989B16608400129E9295794D59E562DEE86B7273D06EEAED5B3D2';
wwv_flow_imp.g_varchar2_table(16) := 'B3717B0C6CD97E18DCDC5CA10F4E82A31E696E53E3D737462B446F4E5FAB90805687FC03EB6A66895423042881D4E4CB8A4F4FDDF05098356D207879687B09504F829B499930E99D6F9439811BC619F8FAD7AA1642DABA514D10801CDAF272E5317780BF';
wwv_flow_imp.g_varchar2_table(17) := '37CC99F92C0405B0EFBCA1B1C55E4884293356A3FB4491F46B2F9F10201F22D18BF004309CF4BAA01FCFAC6943A141FD10D1F5AA4ABEDDFBFE86F95F6C57EAD25048F47864A1094041E869C9979471FF3303BB42BF28D3D7DAC9EF3EEE720A8487F95B2C';
wwv_flow_imp.g_varchar2_table(18) := 'B8459565DAB0D247F37E84DF0F9D915AA4001BFFA0BA366CDDF64D094D808CB46B52AC2E95E64D22E0BD294F998C70F4C96BF0E9C2AD90969E25D5E9D5B31D8C7ABEB3C9F5EDE1C25D7BCFE2EEB62B747EC074F7EDAC9C0278E58DAF2029591E328AEE3C';
wwv_flow_imp.g_varchar2_table(19) := '272C01CAAFF72FFA6424D40CF531C92EB3D1085E18B708F2D1B5D8B0BC32260ABA3DD8C0A47B54F7452B561F801FB61F94BA3169C21318C350DFE42E1DC468B3D99F6C94AE97964683EA49A95A442C421280F2EDA4265D54863E039EEA0C839F6A67B2FE';
wwv_flow_imp.g_varchar2_table(20) := '8E9DBC0A3366ADBBE5FA5E3DDBE35BA093C9F7A9AE0BBF5C7310366F3BA034FFEEE401706FCB3A667567FAEC1F20FA84EC4AEDAEF391BC47452C4212807C7CC8DD814A684800CCFFE839707733FD09167B3E1126FFE7EB5BF43DFCD99ED5B65E6FAAF12D';
wwv_flow_imp.g_varchar2_table(21) := 'FFE677D8F2E321E5F2BE8F758061831F30B5BA72DDF5840C18FBDA52E5FF7EB84126623E22E10850FEE93F717C5FE862C61858AFF1A9B3B741CC89B38A01D4AE1D0A73670E020F77DBEE1A9B63B9CBD0F8B71A18FFE38F3E002F0CE960CE2D8CAE5DF2F5';
wwv_flow_imp.g_varchar2_table(22) := '6FB0FDE7C3D2EF28E58A2FBA4F8B568423404E5632E464A7487A8AA8570B3EFD60B06A9D6DDDF1171C8BB900F5236BC293E8AE4CB97CECB52CFE6A3FFCB8E30FA57B55357EBA514A5A2E8C9EB814E74272520011DF0242118032B5A526C52963FF29AF3F';
wwv_flow_imp.g_varchar2_table(23) := '0DED5A85DBABCD5AAC5F5FACDC073FED3C52E5614F451D5AB5FE0FD8B079BFB06F01A10840F1BC14D74B2538380096FC771838E13F514B0994C0C2657B6117A644D1973EBDEF8711433B5A4CE474F4151A31FE0B28C4AC1322BE0584220039BB1596C6F5';
wwv_flow_imp.g_varchar2_table(24) := '3E33E821E8D7A795C50CC1DE6E640BE3D7CBBCE8CB7DF0F32EF90D43EE11E426214A11860014D84E4B9F5428FFCDF205A330F7A698FE3E64FCF316EF813DBF1EB7DA93DFD0C0694568DCA46538B42C91F60502434CDF53B077A2084300C3C92FB93A4F7B';
wwv_flow_imp.g_varchar2_table(25) := 'E3717BC75E75FFE62FFD0576FF62BD614F451D9B3A6B33C49C3C2FFD8956834449C42B0C0152932F2A496BC78F7A0C1EEEDC48B581D96BC58A9EFC8FF4680BA38675B6FA5C87DC2A162CD92641E38EC9777D7C6BD82B4C66F54B080250B00B39BD517176';
wwv_flow_imp.g_varchar2_table(26) := '7682958BC6DA34C4D12CC4555E5C8CC38FF94B8C873DB6327EEA7226A66C7F6EF4E7C20D83842080E1EA4FCBE677C1F437FBAA3433FBADF6E9A2DDB0777F8CD2C1DEFF6A0F2F3D675BB78C77666E8453A7E3A43E88E22A2D040132D3E3F1B00AD96B73E8';
wwv_flow_imp.g_varchar2_table(27) := 'C0EED03FAAB5FD5AB2993DA327FFDC853BE1B703A7949AB67CF21B76F7DB8D7FC2DA0DBF4ABFF2F2C1148B9ED64F2163265C665F2E040152122F289B5FEFBD33189A3716239CCF9E8C9F2CEBF8A9EB30EDC36F252313256CD2E109402730A6A55C5698BF';
wwv_flow_imp.g_varchar2_table(28) := '76C5CB6639BE99FDC8B06185B99FEF847DBF9D545AACEE98849CBC421832629ED41F5196431D9E00867EFF9111B5E09399EA7D7F6C68DB776CAAA8B8043EFAEC273874448ECCA2525DC39EF21D1DF7FA2ACC20219F5916181C89C7BB9AEE656B2FF81AF6';
wwv_flow_imp.g_varchar2_table(29) := 'C3E10960B8FEDFBD4B6B78F9A5EEF688B3C97DB267E327213E9AB7034326E5F9889448CBCDB1D2C6975784C31380B2BCE94F6B1C36B407F4EDDDC26463B3B70B2B32FE87BAB686712F7603673B39DD65EDA6A3F0ED777B25E8E8F825473F87CCE1099086';
wwv_flow_imp.g_varchar2_table(30) := 'FE3FFABCFEAFBFFA24746C17696F767D4B7F76FCF237466C1DC6A14422F8FBFB407D1CBADDD7B6019C3C7D197E3F58B6DAD3F3A17B61ECF0AE7625CF9EFDE7E0B3455BA43ED1411B1433ECC8C5E10940FE3FFAD31B3F983A149A34B4DF1DCA244C453863';
wwv_flow_imp.g_varchar2_table(31) := 'F646B874B92C37E9ED8CC71E8D9FFA7AF4C455786FB61C2E2A42A8A4C313C0700974E19C17A1764DFB3D2377F2D4F510FBCF954A1F98F66AFCD4F17F2E26C3BFA7AC946410214A4C28027CBD789C492E101BF010B9ED3B8E4A4A8CEA8D8753F4B6FEE114';
wwv_flow_imp.g_varchar2_table(32) := '34ECF97CA99C748ABC551FECD0025A34AD27FD3FE6549C34F4216F4B2A9326F4B5C949946A704848CC8251AF2E96FA49C7B052325D472E0E4F80E444F4502C359C35CB27541AB3FBD5DAC37882A2F1E11483FA7785814F989E304B8DC2274E59037117E3';
wwv_flow_imp.g_varchar2_table(33) := 'A5AA5D3BB781766D228D6E73E4D805D8BB2F5AFA5D6B3C7C7BEAE42835CD985C472D0E94517AC4F845523BCECEAE10101C61729BF678A1E313E066D92988EB57BE52E931A6CF8D598C496065B7097DB1C5E1144F3DFBA9F2841F3BB20F787A1A27E6CDCE';
wwv_flow_imp.g_varchar2_table(34) := 'CEC73784EC6DE9E7E7032B178EB4AABDA8C5212D230F868D5928F54D84CD30C72780C11B60E3AA89951A4D751D4E6168709511C0D35307AB978CAD5496AA5CA016070A917C7EB44C0064000485989E75AE2AFDB5565D872780E124D8942150751D4E310D';
wwv_flow_imp.g_varchar2_table(35) := '134D1D2F4D3455E110E8E879F4F69423BC9A348E800FDE313D8DA31AE3508B436272368C7CF90BD9FE71179876831DB9383C010C0361562C1C83619095EF4C6EC2C3297E283D9C22AA777BE8F3AF6656D7E1FE43E761CEBCCDA50F4E27E8F8407368D98C';
wwv_flow_imp.g_varchar2_table(36) := 'C6CF2552EA95437F9CB6F924580D0E17AFA6C2AB6FAC90E4A0C3340282780E6075E3B953036978F0455151BE74893D2F83CEC36096FFED9527B9772A2D9AD587196F3D51D965D5F6F7D3B137E1EDE9ABA4F67915A8DAD450D6707AEA55A0C3AEA97C38ED';
wwv_flow_imp.g_varchar2_table(37) := '1968DC20D40E7A65DC8505CB7E314A5D72BB0E36B8AB0EBC3BB92FF8F9E8EC4E067D870E1EBD04B3E76E90FE4B7E40E40FE4C8C5E1874086C130AF6116E4CE666441B685E20C538A507B0F3ED00CEA8687C0A6AD072037577E73D50DAF014FF6B91FBA77';
wwv_flow_imp.g_varchar2_table(38) := 'B2FFCCD39B7F3A095FAEDA29F59B77826D614195B4918DA910734B53213E83D160FDEC241A8C02D8BF90F2E9C8A7C14BC6DFA1194C1CD3135C306ED951CBD255BFC3B69FE4E4BB9E5E81E0E91DE4A8A248FD76F837009DFD45678051E9D1BD0D8C1BD1CD';
wwv_flow_imp.g_varchar2_table(39) := '2E14523E516DB7CEADE095510FD945DFAAD289191F6D8563C763A55B50CA747A0B3872717802D0F89FE60154EA47D686B9EF0FAA767D94377E8A5398F05237ABA72EB185E0CF8D59821B899952532224CB757802503A74DA0B905E6798B56CF5B27195BA';
wwv_flow_imp.g_varchar2_table(40) := '4358D350D66D3E0A6BD6CBFEF254AA3B8CD192B2C62764C298D79628B70CC44D30F26B72E4E2F00420F05331275031E606A252DD2ED1CF8CFA1CB2B2E455294B27AAAD6E43DB77F002CC9DBF49EA86084BA0D24373C8E80DB20BA203972CCC089D8799A1';
wwv_flow_imp.g_varchar2_table(41) := 'A90C19D00D9E7EBC4DB549F3E3EE53984EFC00F4C643F5EC65426E2930162CFB159773E549BD08C130C210C03030BE71A37AF0E17FFA594AE77C9F520468556BC4F81590922A3F687CFD6B633C8097C3E323C41BC0781EE004AB168F052F4FFB3DCDC511';
wwv_flow_imp.g_varchar2_table(42) := 'ADE63C06C24C2A0D842127B8C0E0FA0E3FFE17E60D408218EE088F7FA90F3CDCA5A123DA99DDF6F99BEFFE84EF36C959E1E8C94F6F00118A106F005284617E501E0659D6340B8B8A61E42BCB21353543BAB1376686D6618668118A3004301C069162ECD9';
wwv_flow_imp.g_varchar2_table(43) := '31CED10CE7F0B1CBF0E19CEFE46E0B34FC116A0844C264A4C54341BE1CED158547840EAFC211A18E66A4D6ECEF7B1F6F87A3D17F4B4D887436807004305C0DF2F0D0C1F2F923C1D3C338F4D09A8622E2BDAFDDA0E391CA0ECC16E97418E108400219E609';
wwv_flow_imp.g_varchar2_table(44) := '7AE98547A0F7C34D45B44B9BC96478FEB0B38B1B06C0C8992C4429C2CC01F40A319C0C8704FBE351A9C345D195CDE5A0445E2F4EC0F0C7D2AC1B2238BF95075138025088610A668B2B2996CFB5B5B68BF4751C22FC7A20168E9F8C83B4B44C484DCB82EC';
wwv_flow_imp.g_varchar2_table(45) := '6CD915C2D2C5CBCB0302FCBDA5748AAD9A4742B7071B41CD50EB7963CE59B00BF61F3821892142F86345FA109000B8249A9D0AD9594992BC3A9D3B2CF8F805080EB4ECAEE5FE431760CB4F47E06C6CE599DE2C4D04C3FBD1926FD4A36D2D9E13F5E4991B';
wwv_flow_imp.g_varchar2_table(46) := 'F0EEFBAB95A6BC7D3011AEA79F3545A9967B0B4900CAB09696420E728512A8F7B56B026FBDDACB2200C7FC751D162DDF09D7E36582D94BA9131602635F7C049A36B24C6ED4096FAE812B57E4445E2E2EEEE01F54D75E44B5683F8424002154909F83CBA2';
wwv_flow_imp.g_varchar2_table(47) := 'D714B0DE79FD6968DBAA6A69FCF6FE7E0EFEFBF956257B03DDDCD5D515C2C36A429DB01AE0EDED81AB4EEEF83BEB1C1A5158580439184649DEA657AE25C0D56B37A0B0502639153A2173E2F8C7A1D37D55CBD5B3FE876858BD6E8F725F11FCFE6FC71A61';
wwv_flow_imp.g_varchar2_table(48) := '094002676624407EAEBC7B191AE20FF33F7E1EDC551AE7862DD1B06A6D9951E8743A68DC281222EBD5B29AC157F6A823429C8FBB0E7FC7C6417EBE1C5F4CA52AF31E9AD38CFBF772E5CC350F4F7F3C102FA4B2AE38ECDF8526004D842956807689A9A80D';
wwv_flow_imp.g_varchar2_table(49) := '99FCE6BB3FD00F66BFA2E41A3542A043FB66D566F8E5AD2DBFA0100E1C3E098989C9CA9FFA3FD10986F66F6F966192CBC35BD337C0B9F3F2BC469EF8D2B2A76307BDDC0904A109408217E467E350E8BA82C1AB63A3A06B47D3B32F9437FEFA11E1706F6B';
wwv_flow_imp.g_varchar2_table(50) := 'FB3C85FE68F459B870B16C526E2E09CA87728A3CF4D11B84F0042041B3316086F607A8E8DCDDE0E399CF42786DFF4A9F8E6BBE3F02EBBEDFA75C1729197F43BB8DED259FFDA3D1B19885BA8C0483FA77C1CCD76D2B95F5B7C371F0F1671B95EBE8E4170A';
wwv_flow_imp.g_varchar2_table(51) := '7A11BD688200B43790967255394A89B241CF9A3E1842EEB0345AFEC97F77FDBAD00AD3963BD9F9708048703CE61CFC73A1ECE8D8CADE04A7631360EA076BA1008752544438F8C254E26A840020C50CD37962FAF9409DB05098356D4085076ADC6AFCF5A4';
wwv_flow_imp.g_varchar2_table(52) := '9CFD8E54A225125CAA744E7009737DBE396D0DE4E4C89B7794F39F0EBD70F4E34F4DD595660840804829546869B4746BFFAEFAB561C6DBFDC0DB20577FF9610F3DF95BB774CCE09AE89858A337C1C07E5D60D09365C3A1ABF1E9F0F68CB5909E2EA739A1';
wwv_flow_imp.g_varchar2_table(53) := 'AC1A64FCE4F3A395A2290290520D3D46E9FF11F56AC27B53FA83AFB73B5434EC7154E3D71B707912E887433793B260F27F56A3EB866CFCE4E7EFE71FE6F0E7FE9A4B5CCD118000CACD415789CCB29DDCF03AA178645103295FA7BE346C1089E9CBABB6A1';
wwv_flow_imp.g_varchar2_table(54) := '64AE32AC757DCCA9F3107B2E4EB9FD93511D71D9F40CC4DF285B3615D1D1CD143C3549808A4860089648C6AF97AB3C091479F1C9EF83218E8E9EE2D01463AFE81ACD12A0A2E110FDCECFCF177A76376F03492DF8B6AEB773CF1F38DE9777C6E5518FB314';
wwv_flow_imp.g_varchar2_table(55) := 'DC4E69CEB55A344D00527A61611E64A45E535687E877418101703FEEF47AE1595D2294EC9C3C3C81E61424A7A42AE2D06A8F5F4098A626BCFC06B88D35D349F399184F4C64D01772726BDBA6093ABAD9DF811BE690F2F2D59BB83976DAC8698ED29AD0B0';
wwv_flow_imp.g_varchar2_table(56) := '472B4B9D77C24BF36F8032704AA489B17EC758FF7B7A1BB46AD110DF0A8E9506243925030FE58B357AEAD34A8F9757902676784D7D483001CA21959F9785E70D24180D89E892F0F0DAD0F49E48F0F5F13415DB6AB92E3D231B4E9D89836BD7645F7E7D21';
wwv_flow_imp.g_varchar2_table(57) := 'C7361F3FF25C15635867297099001520495EA4591851A677A536BC24A25E1D68DA38D2EEE60799182370FACC05B874A5CCF14FDF6F39912D9DE422AE57A75A423001EE801C05D5646526289165E5891051B7961467509DE5C6CD14B878291E2E5760F8F4';
wwv_flow_imp.g_varchar2_table(58) := 'B4A72C6E2EAE9C27F5763A6202546ABD2518639C86BE32A94AA0BD61150F0C8C8988A803B56A0641083AD9D9A2DC4C4AC790CC4434FC6B46813086C31D3ABF4BE7619BFED842666BB5C10430195924424EBA14704FAB4615155A39AA552B144283032010';
wwv_flow_imp.g_varchar2_table(59) := '27CD8198BDA1AAA5A8B804D7EEB32029251D12F0699F909088E722CB192FCA173AB4C213873B5ADDD45283351340056AE44F94979BA9A461BCD32D828302C1C707971DF14331C35E9E1EE0EEE60A6EF8F1D0C94E67B97905922B725E7E01BE69F2203333';
wwv_flow_imp.g_varchar2_table(60) := '0732B331A619CFE24A4991E3186EFB0AC7CD2C779D377E7C2537662EE621C004300F2FA3AB29FB04E52295C85090AD789956E1962655A51D5C37347A1D9ED028C2211526096DA58B9800160316C980EED634712EC4304CC34DB52A3781EBF76EE8AEE0E6';
wwv_flow_imp.g_varchar2_table(61) := 'E605AEF894E7A5CC2A23AADC800960392C6F793B1415E54B81388585F48D1F5C5E2D292EC6982DFCD07769B03EEDC8D2698B4E4EF4ED2C05A3BB622E1EF2CBA7151C170DF9E75B491DB71F428A70489EAD41E3F6C44180DF00E2E8922551810013400568';
wwv_flow_imp.g_varchar2_table(62) := '5C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E892255181001340';
wwv_flow_imp.g_varchar2_table(63) := '05685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100';
wwv_flow_imp.g_varchar2_table(64) := '134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E8922551';
wwv_flow_imp.g_varchar2_table(65) := '8100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E89225518100134005685C451C049800E2E892255181C0FF014B6D06D7A32CF076000000';
wwv_flow_imp.g_varchar2_table(66) := '0049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10921177957771816)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000200049444154785EED5D077C54C5D63F5BB2699B060142950E8A080808288A7C3EDB53A4458480083E210101111B8842F40976411448F2147808848E80EF61E309';
wwv_flow_imp.g_varchar2_table(2) := '08828A20620104E9A125A4B74D76EF776697DD6C4248B6DDB9ED8CBFFD2D6EEECC39E73F33FF3BE5CC191D5022040801CD22A0D3ACE5643821400800110035024240C308100168B8F2C97442800880DA0021A061048800345CF9643A214004406D8010D0';
wwv_flow_imp.g_varchar2_table(3) := '300244001AAE7C329D102002A036400868180122000D573E994E081001501B2004348C001180862B9F4C27048800A80D10021A46800840C3954FA613024400D40608010D234004A0E1CA27D3090122006A03848086112002D070E593E984001100B50142';
wwv_flow_imp.g_varchar2_table(4) := '40C308100168B8F2C97442800880DA0021A061048800345CF9643A214004406D8010D0300244001AAE7C329D102002A036400868180122000D573E994E086896001E1EBB3ACAA437DC28E8A00308420700DD0DD81CD8A711350B152320C005B4EE4F4127';
wwv_flow_imp.g_varchar2_table(5) := '1C61DF7833C621B0C2A1F4B4F8432AB6FA9AA6A99E0012C67D1623582D1D7406E106EAE85A6CE21EDB9C8D4FEED581EE0741801FCB0CE5DFAF5930E4BCC7B915FAA06A0980BDE183F4868704808168E4BD583F610AAD23525B1A046C28F627FC7C8EEDE7';
wwv_flow_imp.g_varchar2_table(6) := '0B4B9675CF9A3543ACD2A8229E545511C0D0091B1BE9CACBFBE904DD20D0097D11B620F1A0A3923586C039B437B54C6F4D55D3C84015043072ECEA66E57AC36CACA061F8D16BAC6192B97C11284371EBB0E37CB83C65F02EBEA2032F4DD1043062ECBA86';
wwv_flow_imp.g_varchar2_table(7) := '363DBC88B08CC58F29F0F0508984408D08FCD706C24B2B53E2F72B15274512C0A8511BA22DA1D6E920E89E44E043950A3EE9AD0A04709909D6EB04EB8CE5A9437E579A458A228087C7AF36070986496083E770FB265A696093BEAA46802D10BE69B66526';
wwv_flow_imp.g_varchar2_table(8) := 'A7A525B269822292620860D8D8B5ED757ADD1644B5B922902525B58AC07EAB5E377CD582417F2801004510C0D0F16B6ED5DB58E7D7452A0154D251F30814E1F4F4D115A983D6CB1D09D9134042D2FAE100C2225AE4937B5322FDAA202020094C43127853';
wwv_flow_imp.g_varchar2_table(9) := 'CEC8C8980004DDB071EB67E90498266700493742A0460474B0B42CD33A069D882C72444AB6049090B8EE0D5CE87B418EA0914E84803708E036C1A67671070726272733EF425925591200BEF947EB04FBB09F1221A00E040461FE8AD4F809723346760430';
wwv_flow_imp.g_varchar2_table(10) := '2C717D2F9D4ED88E40911BAFDC5A0BE9E31F0202BCB92275F054FF0A096C6E59114042E2DA36A0D37D8726C606D64C2A8D10900B02BA612B5206AD948D36725164F8C465914259E85ED4A78D5C74223D08011110C836945BBB7EF2D190E32294ED7591B2';
wwv_flow_imp.g_varchar2_table(11) := '18018C1D9B1A54A08FFD0F6A7FB7D716500642406108E874F0BD25D37A871C7606644100C313D727618496850AAB47529710F01901741298969E12FF86CF050428A3E4047065E8FF27DA533F4036513184801210C837DAAC372E4D1B724A4A6525278084';
wwv_flow_imp.g_varchar2_table(12) := 'A475C908C04C294120D98480240808B00A7705864A22FB8A504909E0D1A4F5F5AD60C3B73FF9F84BD90848B674080882EE9EF4D4415F49A581A404303C695D0A7A49254A653CC92504A446802D082E5F38B8A7547A48460043933634D783ED281A6E90CA';
wwv_flow_imp.g_varchar2_table(13) := '78924B08C8010124815E48027BA4D0453202405FFF95E8EBFF881446934C4240560848B81620090160649FB8209B21032B4112F9B2AA7C5286100028D795438BE51F0D3EC31B0C493A20EDFBF3AE6692A700045E5991323899B79E9210006EFD7D8E86B2';
wwv_flow_imp.g_varchar2_table(14) := 'CB3A28110284801D01E1F08A94F8F6BCC1E04E008F3FBE31A2C4549E898652186FDEB54DF2E48D805EDF65C582813FF354923B01E0DB7F141AB898A791248B10500402121C1796820068F8AF88D6484AF246007D620EA4A70CEECC532E5702A0E13FCFAA';
wwv_flow_imp.g_varchar2_table(15) := '25590A44C0565666ADB7E6E3219779E9CE950030C22FFA3D0BE9BC8C23398480D210C053B103D317C67FCA4B6FAE0440AEBFBCAA95E4281701DDFB183168322FFDB912002E006E43C3FAF0328EE410024A4380F73A006F02388F15D240699542FA12021C';
wwv_flow_imp.g_varchar2_table(16) := '11B096E9ADD16B160C29E021931B01D86FF40DB165F3308A6410028A4680A33F003702183E6E5D4F4180DD8AAE18529E10E08200BFC8C1FC0820712DC6FDD351DC3F2E0D8884281A018E0E41DC08202169ED5C3CFCF794A22B86942704B820206CC47301';
wwv_flow_imp.g_varchar2_table(17) := '037888E248007400884785920CE523C07327801F0124AE3B8FA7FF690740F9ED932C101F810B7834384E7C311C0372A00F00121B25428010F000010B1240083E277A9FE137022002F0A0DEE91142C08140C6A18341DBB625978B8D071180D80853F98480';
wwv_flow_imp.g_varchar2_table(18) := '0F0894655983795C1D4604E043E5501642406C04F26D99E19BD3128BC49643042036C2543E21E0030244003E8046590801B52060B699C2D3D2FAD108402D154A761002DE2060309BCD9FBC736FA137797C7996A600BEA046790801911128B01823372DEA';
wwv_flow_imp.g_varchar2_table(19) := '9F2FB2187E1773901F80D855E949F9782BBDCD869BCB15DF8027B4743A3D7E74F66FB8F26F4F4AA367C4434017541CB5FC831179E24970944C2300B11196A07C6BB905AC56FCD8BFCBC0861FF62D08368FB531184C603006819E7D1B8CF8EF6030E28712';
wwv_flow_imp.g_varchar2_table(20) := '1F04CA6C1813206D48AED8D28800C4469843F9AC73975B8AA1ACAC083F25F896B78A22958D108C412110640AC56FFC10218882332B9408403468D551B0CD560EA5C579505A9A8F6F78D11DC6AA054DA7374070B019824322718440F7BC04B26511010412';
wwv_flow_imp.g_varchar2_table(21) := '4DD594254069493E7E0AA0BCACB846AB424383A17DDBA6D0BA654388890E870873308487B18F09C2C31DDF61614160321A20AFA0140A8B2C5050688122FB77097E4A2137AF08FE3A7E017E3F7C1AF2F36B5E90665384E0100719D8D71228F9850011805F';
wwv_flow_imp.g_varchar2_table(22) := 'F0A92F7349710E1417E55C73781F126282CE1D5B41974E2DE086760DA149C3C8808270E97221FC71E402EC3F7002F6EE3F020505D51310EBFC21A1511012164D44E0470D1001F8019E9AB29614E74209767C36E4AF9A4C2623DC7E6B47B8E3D67670D30D';
wwv_flow_imp.g_varchar2_table(23) := '0DB99A7DF8D825D8B5E74FD8BAFD008E1A4AAE925D410431F61D064ADE214004E01D5EAA7BDA525A00450559D576FC16CD1BC243F777839EDD9B43089280D469D70FC7E1F3AD07E0D7DF8E574B0461E175213834B02312A96D165B3E1180D808CBB47CB6';
wwv_flow_imp.g_varchar2_table(24) := 'A25F987FA9DA397ED72E6DA1FF035DA1637B2EB122BC46E8E8892CF8F43FFB60D7EE5FAFCACBD608C223EAD1CE8187A812017808949A1E2B2ACCB20FF7ABA63EBD6F82010FDE0CCD9BC428C2DC7317F2610312C157FFDB7795BE6C9130CC1C4BD3825A6A';
wwv_flow_imp.g_varchar2_table(25) := '920840114D3D304AB2F97D41EE79282F2FAD5460DF3B3AC123836E8106B1E6C008E25C4A564E31ACF9742F7CF1F5DE4A92F5862088886A880E46419C35528E382200E5D4955F9A96A1034F41DEF94A5E7AD151669898F477B8B96363BFCA964BE65F0F9D';
wwv_flow_imp.g_varchar2_table(26) := '87F7176E81CCAC8AD10D5B2464530213FA1150BA1A0122000DB48AA2C2CB38E4AF7C59D26DBD6E8471A3FBD8F7E9D5944A4ACBE1A34F76C1D66D95A705C1B865188E53024A9511200250758B10F0AD7F11D84ABF2BE156D93F1EBD1B1EBCA70337CBD9DE';
wwv_flow_imp.g_varchar2_table(27) := '7E494939346D14C54DE617DF1C8694455B30DC6545BCCB2053189823E3685DC0AD168800B83549BE82046CF80579E7800DFD9D2932D20CD3A60C80F6ADEB7151A600BDFDDE9BFF253AF5FC6997D7B4497D98FE4C7F68508FCF709CED16BCFEEEA77039BB';
wwv_flow_imp.g_varchar2_table(28) := 'E2B01B3B57C0D605987B31253A0BA0CA36C00EE9E4E59EC3537A158B7DCDAF8B83E9CFF687D898306E36BF3BFF2BD85965AB8EE93167D6306E3A64E796C0ECF736C3D163675C32D9E260647423D0EBA5F76DE006C43504D10840EA1A08B07CF6E6CFCB39';
wwv_flow_imp.g_varchar2_table(29) := '5BA9F3DFD2AD3D4C1E77378406F36BF096722B3C326A5EB5D6BDFDDA4868DDBC6E802DBF7671A5162BCC4BDD0ADF7DFF5B2512888A69A279376222006ECD908FA0FCDC8C4AC3FEBE7D3AC3A4317DF908AF2265D813F371EE6FB94AF6C23963208ED334C0';
wwv_flow_imp.g_varchar2_table(30) := '5D78EABF77C2E75FFDE8FA891D396623018EE12A24A9879A841201C8AE4A7C57A8201F17FCF0149F3349D9F9990EAB3EDD072BD76EAF6450B79BDBC1F4297FF7DD483F7356258120139E608C92A7C7A39FA67A949D08C02398E4FF50316EF315E3769F33';
wwv_flow_imp.g_varchar2_table(31) := 'DD75671798F0C49D922BBE76F3CFB82577008F0197E281A20EF0D8D09E600A9276016EC1A21DE83DF8930B1B76A2909D23D06222025041AD97598A201F17FD9CA9131ED74D7EE1211558269E09C96F6D8603BF1C750960DB83A6E070F104CAB464220099';
wwv_flow_imp.g_varchar2_table(32) := '568CA76AB1387CB9D9675C1E7E4D1AD783B75E79044243C8FDB5260C8B4BCAE0F999ABE1CCD98BF6C798C760242E0A6ACD6D9808C0D39E26C3E7AAAEF8B3E83CEFCD1E29C9029B0CE1A955A5F3970A60F2D47F63B833C74225DB1E8C8A69AA2947212280';
wwv_flow_imp.g_varchar2_table(33) := '5A9B897C1F60C7794B4B2A9C5C268FEF0F7D6E6D295F8565A8D9373B8FC1BC944D2ECD4C2111608EA82F434DC5518908401C5C452F959DE8CBC3A1BF33B1883D53C6FFCD2BB99BBFF80DD66EFC0E838158A107FA0A8C4EB855D167032EE01BDD172FC3B7';
wwv_flow_imp.g_varchar2_table(34) := '3EF80A767F5F115B2002B70683301AB116121180426B99CDFB9D9E7E75622261DE9B8F7AD5793FFBF237F878E99795AC6FDFB619BC3E63B0221159B878077CB9F527E87C536B983AF9EF106CF27CA781B92C4F7C7E29E4E438B650D95D0551759A2A1207';
wwv_flow_imp.g_varchar2_table(35) := '6F952602F01631193CCFE2F7151564BA34993A6530F4B8B999579A8D7AF223C8CDBDFA46A8D93387C3F56D9435049E97F63FF866C70197FDAFBE34CCEB6846BB7E3801EFCCDBE02A836D0BB2ED41B527220085D530F3F3CFB97CCAB5EADFF3960EF0C2A4';
wwv_flow_imp.g_varchar2_table(36) := '7BBCB662E08839D5E6F1854CBC161EC00C7353B6C2F69DBFB84AF4671433EBBD2DB077DF217B596C5720BA4E33D51F1A2202086063E4511473F6614E3F575A297CFC4122D489F67EBEFA0AEE83FFECB60FEED4FDE30F937C2A8F87ED556554EDFC6DDB34';
wwv_flow_imp.g_varchar2_table(37) := '8199CF0F80B050DFB6402F661642E2E43497182D3808110148D1727D94C9B6FD72B24EB8DEFE03FADD0A8F3DD2C3A7D2D882D90BC9E9380DA8881530F9C987A04FAF563E95C73B53D5613FEBFCC95307FA7DE0296DE94ED8F2A5E3BC807D1450F73A551F';
wwv_flow_imp.g_varchar2_table(38) := '182202E0DD72FD90E7EEEE1B1A120CA973FF61BF89C7D754585C06DFEEFE0BB30BD0E9C6C6D0B07E84AF4571CD17E837BFBBF2D9B9C5F0F88454572091D0B018080DAFC3D53E9EC2880078A2ED87ACAA6FFF8707F68684C1DDFD28519959ABEBFC8178F3';
wwv_flow_imp.g_varchar2_table(39) := 'BBA3B1387D376CFACF1EB7514073D53A07110128A41F30871FE6F8E34CFF9A371662EB68CB77FD1D8C2EB46B77C599FED62D1BC3AB2FE2B03FC06ECFF651C093292EACC3CDF5547BE10811804208202F27C3758987160FFBF0EAFCCEE6E0BEC6C0AE2877';
wwv_flow_imp.g_varchar2_table(40) := 'C40D505F220250409D324F3DB6F8E74CCF4C1C00BD7BB45080E681519177E7675A9FCEC88549CF2F7219105DB7398610F3DCB92830968B5F0A1180F818FB2DA1D2E21F1EF859B22051F233F57E1BE56101622EF8D5A6C2F3C96BE0CFA30E776BB610C816';
wwv_flow_imp.g_varchar2_table(41) := '04D59688001450A3CCF1871DFB65895DDF3539E92E0568EDBF8A52BCF9DDB5DEF4F94158BCEC6BFB4FECA420730C525B220290798DB2EBBC72B24EBAB47CF1D978E8DE59FD7EEA52777E06786676118C99885B825712F309505B24612200991380FBEA7F';
wwv_flow_imp.g_varchar2_table(42) := '48B009D23F7E52E61AFBAF5ED5617FBB364D61E6D4017E3BF9F8A2D97333576148F10C7B5676C518BB74544D890840E6B5E91EE8B3DBCD6D31A0E60332D7D83FF5E4F0E677B760F9DA1F61EDA73BED3F0563AC807095C50A2002F0AFBD8A9E3B9BB9FEE2';
wwv_flow_imp.g_varchar2_table(43) := '2E004BA347FC0D1EBAAFA3E832A51220B7CECF7038F05B0624BFBECA0E091BFEB369809A1211808C6B932DFCB10540677A77D64868799D3AA3D7CAB1F333DCD965A3C3FEF181AB0ED842205B10544B220290714D5A4A0BED577A3BD386654FCB585BDF55';
wwv_flow_imp.g_varchar2_table(44) := '936BE7775AF4F4F4743871D2510F6A8B1E4C04E07BBB153D6749510E141566D9E5B4B8AE21BC376BA8E832790B907BE76778B82F4AAA2D50081100EF16EF853CF7054035EEFF2BA1F3B3EA62979B2C5FF58DBDE6D416349408C08B0EC9FB5116F49305FF';
wwv_flow_imp.g_varchar2_table(45) := '6469C4D0BE30F8C1CEBC550888BC4B59389529B440E3469160323ADC69E7A47C0D3B761E7495DFA6359EE77FC1F7601E0151F41A85ECDE7B12DE9ABBDEFE5776BD38BB3F402D890840C635999D79DC15FCE3690CD6718742827530488F9FCA86F59BF7C2';
wwv_flow_imp.g_varchar2_table(46) := '7E8C3A545858E242F9C60E2D20243808436F1D71FDE66F241FB1ABF0C85F99F0C28C4FEC625890909858F59CC3200210BBF5F851FEE54BC75CB95F797128DC7443433F4AE397F5F0B14B3073F66AD7851B354996F39BDFA977D5506131B12D55131F8008';
wwv_flow_imp.g_varchar2_table(47) := '805FBFF04A120B00929DC9A2F538D2FB6F8E86668DE51FA596BDF9A7BDB21C3BBFE3EC424DA959D306F046F210493CFC6AD3CDFDEFA5162B0C7D7C9EEB27359D0C2402F0A625707C9639FF302720675A343F0962A26A0FFE598461BE16AFD805DFEF3D02';
wwv_flow_imp.g_varchar2_table(48) := 'E6F01078E0DEAEF0C0DD1DB8693E7BCE16F8F12747645D967AF5E8081D3B34B59F5E3C76FC22DE14BC0F2C160739444747C0E20F9FE0A6DBDE036760C59A9D70E1423674B8A1398C1DD5076263C23C92EF1E45995D1F66309A3CCA27F7878800645A4355';
wwv_flow_imp.g_varchar2_table(49) := '63002C4D19EF51FCBFE43737C1818315530766DE138FDDC38504B2F0F0CC136E8767EEBCBD0B74EDD2BC12C2274F5D46D7DAEDAEDF92A70D854E1DC49FDAFCF2FB399C96ACACA44BFD7A3138B21A01212663ADAD2061CC42282E76AC6544463706635048';
wwv_flow_imp.g_varchar2_table(50) := 'AD7994F00011804C6BA9AA17E0B27F4D80F05AC25D1F3B9105CFBEB4F42A8BCCE650F8242549744B0F1E3A0F335E4BB7CB31180C3031A91F7EEBAE92FBC9CAED70F1E265FBEF6347DF07F7DF75BDE8BA55478C4CE8C4C407E1FF6E6F53ABFC91E3D2203F';
wwv_flow_imp.g_varchar2_table(51) := 'BFD0FE9C9A9C8188006AAD7A691EA87A0C78E5A249B55E77C516DFA6CE5C7695C2C1788A7025875384878E5E8269C90EF9414146183FE601DC36D35FA5CFB2953BE0C245878313AFD1C94BB336C06F7F9CB84A97C4C7EF83FBFEAF76021A3DE123D7D561';
wwv_flow_imp.g_varchar2_table(52) := '4400DEF789AB5F03DE97E1518E84A47582470FCAFC2141B0E122E0719796CB7104E0C985178953FEED7ABB3A33DF7357571837FA0ED12DCECE2DC1609A0B5D72063E743BB46C1E5B496E6E5E317CB4E473D76FBCA6005BB6FE01698B2BE4320542424CF0';
wwv_flow_imp.g_varchar2_table(53) := 'C1DBA33D5A0718919882DB99C576BD23A2F0F25053EDEB31A2031E00013402080088E21421C0E54B15BB001FE10D40753D58B03A753617DE98B311CE9D77BC617BDE723D3C95F837DC7BAF7D9E1B083BDC6F1C0A0BC545C8FB7B40B3268EB8FA97718DE0';
wwv_flow_imp.g_varchar2_table(54) := 'B32D3FC0A54CC7CD46919166F8F782318110EB51194B56EE818D9FED7674E288707866C283B8FEE059B04FF74540E608C41C82D4908800645C8BEE7E001FBCFD38346918E5B1B6A7CEE640787830D4F5E1DA308F8554F3E0DB1F7E09DFEDA908DDCD1E89';
wwv_flow_imp.g_varchar2_table(55) := 'C1DB8B838C46B878C931EF77A6A727F4873B7AB6F4479CD779D94DC097F00AB016CD3C8FEF578879468C9DEF92158527020D2A39114804E07513E297C1DD13F08DE4E1D0AEB5BC6FED755ED1ED09420F0FBC1D2F36E9E6C9A3923F53D511484DA1C18800';
wwv_flow_imp.g_varchar2_table(56) := '246F5ED756C03D18E8147C5BDECEF96DE90D34EE77EAB17CAD5B35069B4D80BF8E3BC2693993D91C064F8EB90F7A76554E608D5F0F5F8097FFB9C265439D7A6CD4C26D59CB9B6AF0FA592200AF21E397213FF73C94591C5B4FC31FB913E2FB75E127DC0B';
wwv_flow_imp.g_varchar2_table(57) := '491F2FFF0EE7F6DFBB72B46CD1085E993610CC612638823B13A7CE6683D56A83D62DEA41ABE6CA0B68B2F5DB3FE1C3D4CFECF6A92D2A101180170D9DF7A32C16008B09C0D25D777686094FF4E5AD42ADF2AA767EE6DE3BEBE5787BE7574B728F0BC856FF';
wwv_flow_imp.g_varchar2_table(58) := 'D92E805A1211808C6BD23D2270EB568DE0ED571E9195B64B577D0F1B367FE7D2A971A358787DC6108F3C166565482DCABC3E770BFCB0D7E1DE1C1C1A05E1E6CA5B9B4AB2A5AAAE440032AEBDF2B212C8CB39EBD2504E21C1566FDC07E96B2A5C7A59E79F';
wwv_flow_imp.g_varchar2_table(59) := 'F5F2C31015A10E1759F7663172DCBFD00BB0C0FE93DA2E0A25029031015475067A67D663D0EA3AE9EFAADFB1FB18CC99BFC9855CC338D6F9E33D3AAC2463B8AB55ADEA0E809A7C0098C14400326F91B91815C87A252A90A76EAB629BE41E232FAE411D98';
wwv_flow_imp.g_varchar2_table(60) := '8DC37E4F4E2A8AAD9718E5EFFAE104BC336F83A3689D0EEA602C003525220099D7665141269414E7DAB5ECD1BD3D4C7DEA7EC9353E76F232CC5BF85FA8171B0389A3EF847A75C325D7492C05E67FBC1DBEFE669FBD78B52D00D20840AC5613C072DD4383';
wwv_flow_imp.g_varchar2_table(61) := '878604C38A8FC607B0742AAA3604464FF8180F01E5D91F535B44602280DA6A5F067FAFBA0EF0DACB09D0A15D031968A67E155874A3292F2E7119AAB6F93F118042DA30DB09603B022C3D70DF2DF0C488DB14A2B9B2D54C5FBF0F56AF77EC74A82D18A8B3';
wwv_flow_imp.g_varchar2_table(62) := '66680D40016D94AD01B0B5009642438361C9C24457786D05A8AF5815DD87FF6ADBFF27025050B3AC3A0D7876D200B8ED16F584A6966355ECFBE52CFCF3ADD5AA1EFED314408E2DEF1A3AB99F0BE888B1F55F9D364041DA2B4FD5D7E77E8EDE7F7FD815D7';
wwv_flow_imp.g_varchar2_table(63) := '1BF056E03ACA39BCE40DDA3405F0062D099FB59416E045A1175C1A28254CB88490F92CFAFCA50218F7F4BF5CF943C3EB406898E7F1037C162C414622000940F74DA4003959A7F0886DB93DFBEDB7DD0853C6DDED5B5194AB4604DCF7FE99F34F0CBEFD75';
wwv_flow_imp.g_varchar2_table(64) := '7AC795666A4B44000AAAD19262BC2DB8C011EA8BA5D4B963A17EAC7A9D70A4A89A4C0C5B3666521AE09D6C76F16A5DFC73624B0420452BF35926DE16947512D8A5212CF5E9DD112627FDCDE7D2BCCDF8FB918BC0827AE6E517E3659FB82D2962F8D5B030';
wwv_flow_imp.g_varchar2_table(65) := 'BC84130F16459843A0558BD85A43A27B6BCBB59EAFF4F6C787D414FDA73A9B890002D5723895C3E203B03801CE34E78D51D0BC8978F3D3FDBF9E856D3BFFC005B1C3505262E164E5D562BA776D0777DC7A3DF4EE21DEEEC7E98C5C98F4FC2297F0E09048';
wwv_flow_imp.g_varchar2_table(66) := '088FA82799CD3C041301F040398032D896600E1B05E0374B5D3AB58619CFF50BA0044751EC928F25CBB76148AF73012FDB9F02D96D3E2313FAC06DDD034F04B3DFC36BCDF6555C6B168DC13FF52A09FE792DCC8900FC698D12E5750F14C2547866527FE8';
wwv_flow_imp.g_varchar2_table(67) := '7D4B604EA99558CAE1FD855FC39E1F1D5B605593C964C278FAC1108C577CEB70814CACC4EE0F6457719596563FEA68DFB6193C37E9EF502740518F77EF3D096FCD5DEF32270457FDC370F55FED890840A1359C87C784CBAF1C138E88088305EF8EF63B0C';
wwv_flow_imp.g_varchar2_table(68) := 'D7A5CB85F0DADB1BE1D4E98AED46064FDDBA3118DB3F0E1A36A88B9E887C437D59CACAE1FC85CB7026E3229C3B77B1526DB17B055E7A6E10B469E15F9CC1BC825298F8FC52C8CB7304FD70C4FD6B86FF128FE0E4D2EC8800E452135EEAC13A3F230167EA';
wwv_flow_imp.g_varchar2_table(69) := 'DDEB4678E649DFB7054F9CC98619B3D6B8EEBF63E59ACDE178B36F6B6814E75F07F3D2B46B3E7E393B1FF6FF72D8753ACFF9E00B4F0FF22BCAF0BB0BB6C2CEEF7E71C98D886A88477F3DBB353850B649550E118054C807406E219E0F28BD122B80153769';
wwv_flow_imp.g_varchar2_table(70) := 'DC43D0F7B6565E977CF24C0E4CFF673A5E7DE53870C4D275CD1A43B72EEDBC2E8B478643474EE33D7F7F561235FDD978E8D6B9A9D7E2FFB7F3187C905211DD28C8148E413FE3BC2E47A9198800945A7357F4768F18C42E017D77D6A3D0382ED263ABAAEB';
wwv_flow_imp.g_varchar2_table(71) := 'FC5D3A5D8F77FA897F65B7C74A56F3E0C5CC5CBC81E8670C37EED81265C95B12387B3E0F9E99BE0CD7194AEDF999CB6F544C53FBC93FAD24220085D734F30CCCBD7CDAB52BD0048373BEF35A42AD370933B34F9CCE869767AD828202C7A5972C75EFD611';
wwv_flow_imp.g_varchar2_table(72) := '9A3556C6D657764E01ECD8B50FD7421CDE912C3DF7D440B8B57BF35A6BB5A4B41C9E9BB112CE9CBDE47816173423A31BABE6CEBF5A01B8F2001180A748C9F8B9B2B262C8CFA9B881A7DBCD6D60FA94076BD4F82F0CEB3563F66AD78DB74AEBFC4EE372F3';
wwv_flow_imp.g_varchar2_table(73) := '8A60DBB77B2B91C0F3930741AF6E351FDE79F5ADCDB89E70D4855178447D080E8990712D8BA31A118038B8722FB5B8281B8A0B2B2EDFEC7BC74D3069EC5DD5EAC13AFFCBAFAD8222DC6673A69EB7DC048D1B2A33DE7D4E5E216CFFF6278F49604ECAD7B0';
wwv_flow_imp.g_varchar2_table(74) := '63E74197ED6A77F7ADA931120170EFAAE20964A705D9A941671AD8AF278C7CA4572581474F64C1CC59ABAB74FE4ED8F9E5B1D2EF2B3A6C24B07DE74F505656E62AE2D94903316E42E5E9C0E215DFC1A6FF565C63C656FBD9AABF56131180AA6A5E0047DC';
wwv_flow_imp.g_varchar2_table(75) := '80229755EE23813F8F6741320EFBDDDFFCB7F5EC02710DC47325E6096F5E3E9B0E542601F7E940DAD26F61CB977B5D2A198D78DE20A6315B00E0A9A6AC641101C8AA3AFC5746C0536C2C86A0F32E01FBDC1EFDE81FBCB70BBC3167037AD73956BC595253';
wwv_flow_imp.g_varchar2_table(76) := 'E777DAC44860FBCE7D60B15478103E35AE1F1C3E7A0E3EFFAAA2F36B71C5BFBAD64504E07F9F935D09ECB4605EEEB94A245055C9DEBDBA4083FAEA78F357B52D1F7735D848C09D04DC9F619D9FADF8338F3FAD27220095B6003612C8CFCD704513769989';
wwv_flow_imp.g_varchar2_table(77) := 'DB5DBD7B75860678A846CD891D57FE66C7DEAB48C0C086FD38E7576B800F6FEB9408C05BC414F5BC600F23C62E17714FD7B76F0D37B463BEEEEA4DA7CE5C849FD16DD87D51902DF89923E3443DC4A4344489009456633EE8CBE207B03802EE293A2A02D7';
wwv_flow_imp.g_varchar2_table(78) := '063A60D00D75F9BC97E2E1A17DFB0F41469583435ADEEAABA9C91001F8D0A19498858D020AF32FBA3C069D3674BCB12DB46DD54489265DA5F369F4EA636FFD4A737F9CF298D1C9C7146C56858D8136820820D088CAB83CE636CCB609DD770898BAD1D191';
wwv_flow_imp.g_varchar2_table(79) := 'D0FDE61B143B1A28292D837D3F1F8273E7AFB8F55EA90316CC83EDF11B541ED4C39F264704E00F7A0ACDEB7EE370E5B58156F6D180D1A89C08B8C78E67C0AFBF1FADE405C86C62E1BCC2CCB134DFAFA58D120128B413FBABB6D55A669F1238EF1C749667';
wwv_flow_imp.g_varchar2_table(80) := '341AA14DEBEBA075CB26600A92271158AD36387EEA3C1C3E7202E31456B833331B98734F18C6F163DF946A478008A0768C54FD446949BE3DC8A833D2B0D35883C1608F09D0044F06D6AB1B250B0CB2730BE02CCEF34F9CCA701DE1752AC6B6F5D8F5DD5A';
wwv_flow_imp.g_varchar2_table(81) := '3CD0E34FE51001F8839E4AF2329F81D2925C3C4C947DD522213391C5016CD6AC1134C1C34275EB781E6B2010F0B0833E191997E0E4E973505454716CD9D5F1F1EC3EBBB587ADF28B19A33010B6C8B10C220039D68A443AD98900230CB19385CEA8C35555';
wwv_flow_imp.g_varchar2_table(82) := '090E0E86268DEAE3C8A0012E1E9AC168086CF00CAB0DA31EE716621CC02C387DE63C1E57AE38D7E0AE0B0BDA1112160D21A1D1D4F1FD682F44007E80A7D6AC8C082C383560D1879D8147AF652B8B1B18131305D118A0333C3C14D8851E61A1211890A466';
wwv_flow_imp.g_varchar2_table(83) := '375B16ECB308EF1928428F3DF666CFC5E17D766E1E7EE7D7082B9BDBB3053E139EB8E252C3000007F549444154DDA737BEFF2D9008C07F0C555D025B2C64EB048C0CAAAE13D466780886280BC2E98329C888AEB77ADC9F2FB3EFD19794541C48AAAD0CF6';
wwv_flow_imp.g_varchar2_table(84) := '7736BF679D9ECDEF694BCF13C43C7F8608C073AC34FFA4B5DC82AEB54578DCB804770F8AAF394DF0172836BC37068522798440505018188C7C4391FBABBF92F2130128A9B664A62B9B1E3052B0E128818D141C1F3C867BE562CDDAD4651D9D39EBB0B73A';
wwv_flow_imp.g_varchar2_table(85) := 'FBD8FF8D9D9DB6F06A432E707F2702081C9654D21504D81A02CE17F0EE50FC0F17F5D8B77D28CFFE43D75C7BD45DFCD01C5EFA264304207D1D90068480640814588C919B16F5AF79E53500DA718BB99490B44EC44BAB038004154108C8080183D96CFEE4';
wwv_flow_imp.g_varchar2_table(86) := '9D7B2B9F1717413F22001140A52209017F1130DB4CE16969FDAA77B6F0B770B7FC44000104938A2204028540BE2D337C735A221140A000A57208012521602AC90B5DB26474E5135522184023001140A52209017F1128CBB206AF5933A42284B2BF055E23';
wwv_flow_imp.g_varchar2_table(87) := '3F118048C052B184803F08B48D1B64484ED6D9FC29C393BC44009EA044CF10021C11C0EDB2D2F494C1213C44F22480136850CD3743F2B098641002F247E0E48A94C1CD79A8C99300B6A1417D7818453208018523B01D09E04E1E3670238061496B97A0B3';
wwv_flow_imp.g_varchar2_table(88) := 'E9633C8C22198480A2111060D58AD4C14379D8C08D00D01330190D9AC9C328924108281A0101DE440298CAC3069E04300A0D5ACCC328924108281B01DDB015298356F2B0811F018C59DD19CF96EEE76114C92004948C806013AE4F4F8B3FC4C3066E0490';
wwv_flow_imp.g_varchar2_table(89) := '9C9CAC3F72BE63011A15CAC330924108281481A2B6710723B0BF88EE03C0F0E146004CD8F071EBF6E091F41E0AAD18529B10101D010CCBF0FDF285837B8A2EE88A00AE049090B47E2E46A4788A9771248710501A02D8215397A70C4EE2A5376F02C0AD0D';
wwv_flow_imp.g_varchar2_table(90) := '219D9771248710501A023A41376E79EAA0145E7A732580A1133636D297979FE13DF5E00526C92104FC4440B0198D4D567ED83FC3CF723CCECE9500681DC0E37AA1073588009E01388067003AF3349D3B01A047E054F4087C9DA791248B105004021C1D80';
wwv_flow_imp.g_varchar2_table(91) := '9C78F02780B16BDBEBF4BA3F145121A42421C01101DC01E8853B007B388AE4BB0DE8346C58D2BA9F91793AF134946411023247E054465C9D56DB92FB96F3D493FB088019376CDCBAC93A01E6F034946411023247E0153C0198CC5B47690860ECE6589DAE';
wwv_flow_imp.g_varchar2_table(92) := 'F404DE4011CEDB60924708C8108172A3CDDA6A69DA9053BC75938400ECA380A4F5783C58A0E3C1BC6B9CE4C9100161E38A94F80152282619018C485CDFC9A6137E42A30D52184E320901B920A0075BDF65290F6F93421FC908804601525437C99421025F';
wwv_flow_imp.g_varchar2_table(93) := 'E0DCFF3EA9F492940012C6AD6B89F7531EA1518054D54F72A546406733DCB43C6DC041A9F490940068142055B5935C792020DDDCDF69BFE40430326975E37230FC820AD59147A590168400070404A1D02A183AAD4A1B788C83B46B8A909C009866182F70';
wwv_flow_imp.g_varchar2_table(94) := '147E51B830295B02C9E68A00EF537FD7324E1604C0941B9EB8EE3341070F70AD051246084883C02E5CF8EB2D8DE8CA526543003415904373201D44474026437FD9AC01B8033E2C71FDDD3A9DF01FFC2D48F48A200184007F046CF8C68DC7883F1BF88BAE';
wwv_flow_imp.g_varchar2_table(95) := '5EA26C46004EF58627AE4F1274C242B900447A1002814200A7B84FA72F1C8C61F1E4936447000C1A8A1D289F06429A040A01DDFB18EB7F72A04A0B5439B224008C1BA81B9EB461B6000297DB5102052695430854870046FAD9D02EEE603CAF50DFDED482';
wwv_flow_imp.g_varchar2_table(96) := '4C09C06102450FF2A62AE9597922206CCCB705276C4EEB572447FD644D008EE9C0DA71787DC17CFCA7EC75956305934ED2218073FED7D3170E9A8E4D170701F24C8AE854C3C7AFB947B0E99722840DE409236945085442C0829DFE719CF32F973B2E8A20';
wwv_flow_imp.g_varchar2_table(97) := '00FB74E0898D0D7406EB5224D37BE40E2AE9A76504848336011E5F991ABF5709282886001C600A3ADC211881E3A9B750F13825004C3A6A068132B4F40DB32DF39F696989ECDF8A480A230007A6C3272E8B142C613371343009FFD7A808A44949B52280D7';
wwv_flow_imp.g_varchar2_table(98) := '5DC23A83DE3A6DD98221479566A42209C009F288F1AB5BDB6C065C64811144044A6B7ACAD75700DD36016C5356A6C42BF6DA7B4513001181F23B91D22CC0B77D29769AB5F859882EBDBB94A67F557D5541004EA3129E5C771D586134AE15E025A4BA764A';
wwv_flow_imp.g_varchar2_table(99) := 'AF1CD25F5608FC854B500B052168497A5ABF4C5969E68732AA2200771C12C66FE82CD86CC330F2F0FD48061DFDC088B26A1781D3D84136DB04DDA7E9A983BE52230CAA2500F7CA7AF4D1A5E15673782F41107AA0C1DD9110BAE2DF9BA8B142C9263F10C0';
wwv_flow_imp.g_varchar2_table(100) := 'A3BA7857058B54FD35E8F59B572C18F8B31FA52922AB2608A0BA9A7878E2EA7AA6725D3701F45DC1065DD1CFB0253EC7B616EB2BA2E648497F10C80041B888757E12EFE33B804E6607AC82EE80D4E1B9FC31C8D7BC9A25809A00BB33F91B63F313278C26';
wwv_flow_imp.g_varchar2_table(101) := '53AC3EDB58AC37192CFAC2FC707D586890CEA8B7E87D059BF2898F40B9CD643305970965D6605B7E6199105527C45662CDB5C1195C1D02B0AE5933847D53BA8200110035054240C308100168B8F2C97442800880DA0021A061048800345CF9643A214004';
wwv_flow_imp.g_varchar2_table(102) := '406D8010D0300244001AAE7C329D102002A036400868180122000D573E994E081001501B2004348C001180862B9F4C27048800A80D10021A46800840C3954FA613024400D40608010D234004A0E1CA27D3090122006A03848086112002D070E593E98400';
wwv_flow_imp.g_varchar2_table(103) := '1100B5014240C308100168B8F2C97442800880DA0021A061048800345CF9643A214004406D8010D0300244001AAE7C329D102002A036400868180122000D573E994E081001501B2004348CC0FF039F4C5AE27E1D36960000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10921433121771817)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000002BC494441545847ED955D48536118C7FF679F6E6BB80D0DFB9E9A6025668590492191375937B58BB50AA1823282A056417921E5C52EB20C02490AAC2E5A910665';
wwv_flow_imp.g_varchar2_table(2) := '5D8CC08CB0502AD68574B1CAAF9534733BB6EFF3D5390B676BD3B39820C1DE737778799EDFF37F9EF7FF1096639D1C16F0105980AC025905FE3B05188682215706E34A3D0C3A55CC41267D217C19F1C24732904865FFE42A69FB00CB32D0A82858F656A2';
wwv_flow_imp.g_varchar2_table(3) := 'AAB2302909C771E8EB1F82BD7300C1A8020421490B242D008E6391AF6771E1741DB48B94F1C0EF9C637CC5042ACA96C5FF916418975ABAE19D92F3108428445A000A6910579A4DE0F86FEC2B8992A2BC9481038128A452091896C5A9C62E309C3A730086';
wwv_flow_imp.g_varchar2_table(4) := '8EA2DE5C819AEAD5F8EEF1C3F3C38F75A505498143610AED1D2F71E4E05668340A387A3EC2FE685074264415907001B4B7EE9BB3924894C6ED7B7DD86FDA1C4B2E1C61261AAC0F41B3332D4B154414A0C4A8C2B993B5B3025014833BF63730F3C3A951FF';
wwv_flow_imp.g_varchar2_table(5) := '4E3E7D6CD79EC335149C135E14607BF512584C9578FFC18D0DE533C326446DB23D863F10C2C5F37BA056C9E389A6EFDE7DD08FDED7E39901546DCAC3E1035B920002C1286C579F42A954A2D1BA3321C934C08D8E5718704E6606505AAC86F5C48EA420D7';
wwv_flow_imp.g_varchar2_table(6) := '6FF6E068FD36C8E5D25913D85A1D700D873303A029126D97CD50E5CC482CFAB6F80BC2933C7EE63EE4CADCCC0004EB35ED5E83BADAB5F1406F9DA3181A9948085CB82A1F1BCB97C7FF75753BF1C4E1E27D616E70D12114225251124D677761719E066DB7';
wwv_flow_imp.g_varchar2_table(7) := '5E4099A38641AF4D0098F4FE44241244C3A11AB8BF4DA1B9E51914393A51B1D20210AC188C0F4B0B74282E5A01B92CF5C2A1681A9F3E8FC23D4E8290EAE6CF8A85328465C4D253585F66E495485D99678284737098773FEDFC2EA33F75146642C59B9B9E';
wwv_flow_imp.g_varchar2_table(8) := '5FC504C1C6AA6419025E7E09852310B5DEBF7B92560B441B99C1852C405681AC020BAEC02FEDCA35F0F652368A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10920619609771815)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA0000200049444154785EEDDD078014D5FDC0F11F57F6F66EAF73F4DE5444B123562CB16B2CB1A1468D15354663578A08D8F3B7F7D82B566CD1C49E98A8448D055151E1';
wwv_flow_imp.g_varchar2_table(2) := 'E870C7F5B277B757F8BFB78812C3EECCECEDEE9BDDF9CEFF4F0E65E695CF7B32BF9979A5C771939E5F2B1C08208000020820E029811E04009E6A6F2A8B000208208040588000808E80000208208080070508003CD8E854190104104000010200FA000208';
wwv_flow_imp.g_varchar2_table(3) := '208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E854190104104000010200FA0002';
wwv_flow_imp.g_varchar2_table(4) := '08208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E854190104104000010200FA00';
wwv_flow_imp.g_varchar2_table(5) := '0208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E854190104104000010200FA';
wwv_flow_imp.g_varchar2_table(6) := '000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E854190104104000010200';
wwv_flow_imp.g_varchar2_table(7) := 'FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E8541901041040000102';
wwv_flow_imp.g_varchar2_table(8) := '00FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E85419010410400001';
wwv_flow_imp.g_varchar2_table(9) := '0200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E854190104104000';
wwv_flow_imp.g_varchar2_table(10) := '010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E8541901041040';
wwv_flow_imp.g_varchar2_table(11) := '00010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E85419010410';
wwv_flow_imp.g_varchar2_table(12) := '4000010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E854190104';
wwv_flow_imp.g_varchar2_table(13) := '104000010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E8541901';
wwv_flow_imp.g_varchar2_table(14) := '04104000010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E85419';
wwv_flow_imp.g_varchar2_table(15) := '0104104000010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E854';
wwv_flow_imp.g_varchar2_table(16) := '190104104000010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8E8';
wwv_flow_imp.g_varchar2_table(17) := '54190104104000010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F208000020820E0410102000F363A554600010410408000803E80000208208080070508003CD8';
wwv_flow_imp.g_varchar2_table(18) := 'E854190104104000010200FA000208208000021E142000F060A353650410400001040800E80308208000020878508000C0838D4E951140000104102000A00F2090E2026BBB3AA5B3AB43F4CF2EF56BED5AFDB32BFCCFEB7FAFFE41FD7EADAC95753FD5FF';
wwv_flow_imp.g_varchar2_table(19) := 'A8FFEF0AD7BC478F0CFD3FEAFFD52FC908FF14F5EF3232F4EF33D56F337FFA7D86FABDFEE7CC8CACF04F0E0410485D010280D46D3B4AEE1981B5D2D9D12E9D9D21F5AB5DBAF42F75C3EFECEC08FFDED8A102850C1508646666877F6664AEFB7D66A64F32';
wwv_flow_imp.g_varchar2_table(20) := 'B37CC68A45C60820604F8000C09E136721901401FDD4DEDEDE221D1D6D3FDEF4DBD44DBE232979C73B938C0D8281ACAC1CC9F6E5AE7BDBC0810002AE1020007045335008AF0AE827F9F690BAE1B7B7866FFC469FE893D008FAED40960A04B2B3FDEA970A';
wwv_flow_imp.g_varchar2_table(21) := '08F88C900475B24060E3020400F40C04922AB0367CC30F8582EA6730ED6FF856B43A20C8CEC9536F07D42F1514A8C1075697F0E7082010270102803841920C029104F4537EA8AD397CE36F0F35031541407F1ED09F09B27D01F1A98080B703741504122B';
wwv_flow_imp.g_varchar2_table(22) := '400090585F52F7A8801E8D1F6A6B0CDFF8F5EB7D0EE7023A18F0F9F2C5E7CF67EC80733EAE40C0528000C092881310B027A007F0B5B535A99B7E936B6EFAEB07DDAD9BEAA7EBA1A7FBA9E97DE1DFFE38204F4F1154FFB86E5AA09E22B8FEF73FFFB42790';
wwv_flow_imp.g_varchar2_table(23) := 'B8B3C2C1404E81FA152018481C33297B4C8000C0630D4E75E32FA09FF2DB5A1BD520BE60787E7DD28E1FA7E1E5070232A07F4FE9DBA758FAF62E923EBD0BA557CF7CC9C9C992AC4CF55A3D3B23FC33334BFD5EFDD2BFCF52FFCE97B56E1E7FA8A353052C';
wwv_flow_imp.g_varchar2_table(24) := '5DD2D1D925ED1D5D6AF6C18FBFFFF1DFB5B676C89AEA26A9A86C90D595F5B2BAA24E56AEAA96A6E6E6F074C464D7D997A3EAE62F080F22E4400081D805080062B7E34A0F0BE8D1FAADAD0D126A6D5A77134CF0A1A7D4F5EBDB53460CEB274307F7927E7D';
wwv_flow_imp.g_varchar2_table(25) := '0AA577AF7CE95D1690FC3C3373EE1B9B435259D52C956B1A5560D020E54BD6C8C245ABD5EFAB9332B8519BE840C0EF2F64BC4082FB1FC9A7A70001407AB62BB54A90801EB9DFDA521F1EC19FA82353CD991FD0BF97BAD9F791E1437AC9B0216532786091';
wwv_flow_imp.g_varchar2_table(26) := '1404CCDCE89DD6B3B1A94D962CAF97454BAAD60505E5AB65E5CAAAF042460939D49B901CF5562037AF442D46949D902C4814817414200048C756A54E7116582B6D2D8DE11B7F226E627A919C319B0F95B16306CBE84DFAAA27FC62C955AFEFD3E968696D';
wwv_flow_imp.g_varchar2_table(27) := '97F2A57532FFDB55326FFE52F97AC152F5A9A12DEE55F4A937023A10D02B1272208040740102007A08021104F4A0B8D6605DF8C6BF7EDDFC78606565E7C8A8110365CBCD07C998D1FD6593E13DC59F66377C2B271D107CB7B05AE67DB3321C102C2A5F19';
wwv_flow_imp.g_varchar2_table(28) := '5EFD305E871E2C989B57CA92C4F102259DB414200048CB66A552DD15686DA99396E6DAB8DDF88B8A8B65C22E6364AB2D06C9A623CB2490CB13EA866DD4140CC937DFAF91CFBE5C2AFFFCE06B696C6CE86E1386AFD76B0AE4050804E28249226927400090';
wwv_flow_imp.g_varchar2_table(29) := '764D4A85BA23A0A7F0059BF520B6EE0FECCBCD0BC8F81D3693DDC68F524FFB7DC2A3EF39AC0542ED9DF2F957ABE5FD0F17C8C79F7EA7A656B6585F6471068140B70949200D050800D2B051A9927301BD4A5FB0A9FB03D5B2D42E78DB6E3D4A76DF7933D9';
wwv_flow_imp.g_varchar2_table(30) := '766C3FC9F5F3A4EFBC357EBE42BF19F8E4F315F28F0FBE952FE72D0CEF86D89D23FC6920D0933102DD41E4DAB4112000489BA6A422B108E8E97CCD4DD5DD5EA277C0807E72F07EDBCA2EE38648417E4E2C45E11A0B81BA8656F9E7DC7279E5F54FA5B272';
wwv_flow_imp.g_varchar2_table(31) := '4DB7BC72D4D441FD6980E586BBC5C8C5292E400090E20D48F16313D0ABF6059B6BD4023EB17F6BD62BEA6DBAC93039FC906D65FBAD0648869A8EC6917801BD60D1DC4F97CBF32FFF5B4D335C1EF34244BAFDF48C017F5E912A346D97F8962307B7091000';
wwv_flow_imp.g_varchar2_table(32) := 'B8AD45284FC205F4C8FE9660EC03FCF453E3F81D36975F1FB0B56CA606F471981158ABD62C9EF775A5BCF4DA67F2D9170B621EB09991912579F965E165863910F092000180975ADBE375D5D3CC9A1B2A639ECBEFF3E5C8DE7B6C2307EDBB850CE85BE071';
wwv_flow_imp.g_varchar2_table(33) := '4D7755BF7C69ADBCFCD7796A06C13C359D30B60587F41A02011508ACDF3FC15D35A43408C45F800020FEA6A4E832013D873FA8BEF3C7FABA3F23334B0E3960BC1C7AC0165252C4FAF32E6BDEFF2A8E5E9AF8F9573F9737DFF954F4671EA7877EBB935FD0';
wwv_flow_imp.g_varchar2_table(34) := '27BC2D310702E92E400090EE2DECF1FAE9697DCD6A747F4C3703F58D78C26EDBC831876F2B7DD5BAFB1CA923A097227EF2B9B96A1AE137317D1AE06D40EAB435258D5D800020763BAE74B1C05AB52B5F736365786B5EA7877E053C76CB5172D2B13BC9B0';
wwv_flow_imp.g_varchar2_table(35) := 'C1254E2FE77C17097CFB43953CFCE4BF64C1F7E58E070BEAB101F9856AFD866CBF8B6A445110889F000140FC2C49C925027AAE7863FDAA9876A41B3E6CB09C34715719AB16EEE1480F013D5850CF1A78E2D97FC9F2E5AB1C57CA9F571C9E32C84C01C774';
wwv_flow_imp.g_varchar2_table(36) := '5CE072010200973710C57326D0D6D2A05EF93B9F235E5A5A22271FBFA7ECB6E310671972764A09BCF9F71FE4B1D9EFA9A5861B1D953B33D3177E1B90A9167AE240205D040800D2A5253D5E8F585FF9EBD7FD07ED3F5E8E3D7C1B09E4F197BB17BA516D7D';
wwv_flow_imp.g_varchar2_table(37) := '8BFA2C3057AD2EF8B9E3CF0279F96AE3A6DC622F3051470F08100078A091D3BD8A7A35BF86185EF90F1E3C40CE396D2FB51B1F73F9D3BD8F6CAC7E5FCC5F2D77DDFFA654AEA972547DBDAF807E1BD083859F1CB971B2FB040800DCD72694C881407B2828';
wwv_flow_imp.g_varchar2_table(38) := '4D0D158E467AE7E4F8E598DFEC2E07EF3B5AB2B3D8A0C70177DA9DAAB7257EE6A52FE4E5D73E74B401949E1A5A50D49F3D05D2AE4778AB420400DE6AEFB4AAADDEBCA7B5A5DE7E9DD413DB969B8F94734EDF53FA94B1EA9B7DB8F43F532F2474C79FDF91';
wwv_flow_imp.g_varchar2_table(39) := '45E54B6D57567F3E0A14F4522B083245D4361A27BA4A8000C055CD4161EC08E8857D1AEB574B47BBFD6D62F594AEB34F3F50F6DE6D849D2C38C7A3022FFCE52B797CF6DB8EDE28F9738BC24B097320906A020400A9D6621E2F6F57578734D4AD7434C56F';
wwv_flow_imp.g_varchar2_table(40) := 'D0C0BE72E9F907B37CAFC7FB8EDDEA7FB7A85A6EB8F565A9AEAEB37B895A3930A03E09E8A9A36C2A641B8D138D0B1000186F020A605740AFE5DFA86EFEFA0D80DDE3807D7794138F1D277E5F96DD4B380F01696C0EA94F02EFCABF3FF9DAB64656568E0A';
wwv_flow_imp.g_varchar2_table(41) := '02FAB1C5B06D314E342D400060BA05C8DF96805ED1AF49ADECA7EEFEB6CE0FE4E5CAB9930E921DB71D64EB7CAF9C54551B948F3E2E974F3E5B280BCBD72D8A3362583F19B7DD4819BFFD30292D660DFC0DFBC26B6F7D23F73FF286EDA0537F6A2A286670';
wwv_flow_imp.g_varchar2_table(42) := 'A057FE7B4AF57A1200A47A0B7AA0FCAD2D75E1CD7CEC1E9B8C1A2417FDFE40E9D533CFEE25697F5E4B5B87DC7EDF3BF2E1DCF951EBBAC76E5BC959A74C105F7666DA9BD8ADE0A22535F2A7DB5F9555ABEDF5413D38500701FA8D0007026E1620007073EB';
wwv_flow_imp.g_varchar2_table(43) := '50366969AE919660AD6D89430E1C2FA71CB793EDF3BD7062A8BD532E9DFE8C2C5EB2DA5675371D3550AEBBF2285BE77AE5243D5DF08EFBDF950F3E8A1E40FDE4A1669CE8CF01D9D9BC51F14A1F49C57A1200A462AB79A4CC7A17BF3607D3FC4E3B693F39';
wwv_flow_imp.g_varchar2_table(44) := '689FCD3DA263BF9A77DCFF9EBCFDDE67F62F50671E76F04E6A33A4F18EAEF1C2C90F3DF95178CD005B870E020AFBAA0182BC89B2E5C54949172000483A3919DA11686E5C236DAD0D764E55AF5AB3E4A23F1CAABEF70FB675BE974E5AB1BA41CEBDF841F5';
wwv_flow_imp.g_varchar2_table(45) := '0DDBDED889F536D9D95972DFADA74971214FB0BFEC2F2FFDF52B79F8F137ED75231504E417F4516B05B0EE843D30CE4AA600014032B5C9CB96801EEC176AB5B7594B209027532E3E42361BD9CB56DA5E3BE9A1A7D413EB5F6C3EB1FE02E7A4E3F696C30E';
wwv_flow_imp.g_varchar2_table(46) := '1CEB35325BF5FDD7BF17CBCD77BE2C9D9D9DB6CED74B07B360902D2A4E4AA200014012B1C9CA5AA059DDFCDB6CDEFCCBCA4AE4CA4B8F9081FD0AAD13F6E819BFBFE40959B152CD9E88E1D862F3A132F38AC363B8D21B977CF56D855C7BD38B120C066D55';
wwv_flow_imp.g_varchar2_table(47) := '383C2680CF01B6AC382939020400C97126171B024E96F61D3264804CBBF810A6AD59B84E3CED2E696D6DB3A1FFBFA7141404E4D1BBCF88E95AAF5CB464459DCCB87E8ED4D4D858348881815EE91629534F02809469AAF42E686B504DF56BB637CD6ACB31';
wwv_flow_imp.g_varchar2_table(48) := 'A3E4F23FEE27B9FEECF4468943ED8E3FE36EF584DA1A534A8140AE3C7EEFA498AEF5D245D56A6D85E9D7BF2CCB97AF5B5721DAC114412B21FE3C99020400C9D426AF8D0AE8C17E7AD09F9D63EC16EAE67FC1FEACEC67074B9D73E1D4A7D506372B6D9EFD';
wwv_flow_imp.g_varchar2_table(49) := 'DFA78D1A39506E98CE74403B78B5F52D72E5B52FCAB2E5D6532D7510505832909D04EDC0724E4205080012CA4BE25602E115FED476BE768E2DC68C90A9171DC4223576B07E3CE7C9E73F9167E7BCEFE08A9F4F9D78D40439FAD06D63BAD68B17D5D4E920';
wwv_flow_imp.g_varchar2_table(50) := '608E2C5F61DD9F7B64644A910A02F4CA811C089812200030254FBED2AE76F36BAC57AF4D6D4C51DB62CC7075F33F989BBFC37E53B1A649CEBEF001E9EAB2BF7F82CE22333353EEB9E534292B610EBB13F2FAC6569932EB791504580FBCCCC8CC0E0701FA';
wwv_flow_imp.g_varchar2_table(51) := '8D000702260408004CA893A79A3ED52E0DB5CB6DADB1BEF558FDDAFF00F165B13C6D2C5DE7EE87FE216FBCFDA9A34B0F3D68273979220B013942FBF1E4FAC636997AF5F3EA7380F59B00BD5C7061C9007525BB08C662CD35DD132000E89E1F57C720A0B7';
wwv_flow_imp.g_varchar2_table(52) := 'F4ADD737FF2EEB39D45B8F1DA906FC1DC8937F0CCEEB2F690D75C865D39F95254BADBF4FEB6B36DB74B05C3BF537DDC8914B9DBC09D05303F514410E04922D4000906C718FE7A7B7F2D537FF2EF506C0EAE0E66F2564FFCF832DED6A33A0B7D54E80DF44';
wwv_flow_imp.g_varchar2_table(53) := 'BD68CFDDB792334EDE9D4196F669239EA98380756F02AC3F07E4E4164920BF2C0EB9920402F6050800EC5B71661C04F437FFF690F5C2294306F7956BD58634B9390C928A03FB4F49ACA96E960FC3DB01FF20E56A7320FDAD7FD8903EB2E3F6A364C7ED86';
wwv_flow_imp.g_varchar2_table(54) := '4949913F9ED9793EADAA9AA05C38E509696868B2B460B5404B224E88B30001409C41492EB280DD6D7D0B0BF3E5E66B8E578BFC30008DFE94FA02DF2FAA922B663C251D1D1D512BC3F4C0D46FEB54AB010140AAB5588A96B7A3A34D1AEA56588EF8CFCECE';
wwv_flow_imp.g_varchar2_table(55) := '966BAE9C282387F64CD19A526C04FE57E0838F17CB8DB7CEB1A459373360909A19C0A0404B2C4EE8B6000140B70949C04A407FF7AFAB596A6BD0DFC5E71D213BEF30C42A49FE1C81941378ECD94FE48597ACD764D09B06E9CF011C08245A800020D1C2A4';
wwv_flow_imp.g_varchar2_table(56) := 'AFE6FAAF54DFFD5B2C258E3E620F9978C43696E7710202A928D0A5D6BBB8FAFF5E97FF7CBEC0B2F881825E92E367932B4B284EE896000140B7F8B8D84AC0EE1AFFE3B61F23979EB78F64F0EAD38A943F4F618196D676B96CC60BB274A9C5F2CCEABF8362';
wwv_flow_imp.g_varchar2_table(57) := 'F529407F12E04020510204008992255D35E8497DF75753FEAC8E614307CA35530F173F23FEADA8F8F3341058531D948BA73D25F5F50D516B93A91609D22B057220902801028044C97A3CDDB5EA75677DED5235DF3FFAC8E7DCDC5C35E2FF04E9D32BDFE3';
wwv_flow_imp.g_varchar2_table(58) := '6254DF4B025FCC5F2D575DF7B4E54A98FEBC62C90B3020D64B7D239975250048A6B687F2D2BBFBE95DFEA21EEA35E705BF3F4C76DB71A88764A82A02EB041E7DE61399F3B2F5A0C0C2E2019295CDFA0CF49BF80B1000C4DFD4F32986DA9AD50E7FD6CBCE';
wwv_flow_imp.g_varchar2_table(59) := 'EE35613B39F7F4DD3DEF058037053A3ABBE4B2ABE6C8C2454BA302E81D038B4AF5D440360DF2664F495CAD09001267EBC994ED4EF91B30A0AFDC38C3FC4A7F6DA14E59B9BA5EF2F373A45769C0936D46A5CD09545435CB1F2F7F4C5A5AA2CF92D13302F4';
wwv_flow_imp.g_varchar2_table(60) := 'CC000E04E2294000104F4DD2123BAFFEF55EE8375F73A20C19586C4CECEF1F7C2F6FBD3B4FBEFA66C94F65F0F9B265F8D07E72C0BEDBC8EEE3871B2B1B197B4BE09F7397C8FFDDA11609B2D816BB500D08D4BB077220102F0102807849928EED51FF934E';
wwv_flow_imp.g_varchar2_table(61) := '3D48F6DB73132362156B9AE4D67B5E976F16449F9DB0EDD6A3E482B3F795409ECF4839C9D45B02773EF84F79EB9D8FA3563A33D317FE14C08140BC040800E225493AE1D5FEAC76F91BBFE39672E9B9BF32A2555317944BA63D29D5358DB6F21F3962A0DC';
wwv_flow_imp.g_varchar2_table(62) := '78D551B6CEE5A4D411A86F6C933F3FF277F97AC132A9AD6D90D19B0D91DF1D3F41460D3337DA5E6FD97CF1B4E764F9F255512173F34A2437509A3AD894D4D5020400AE6E9ED4295C4B738DB4046BA316383F3F5FEEB8F144292A30F31AF3FC2B9E90254B';
wwv_flow_imp.g_varchar2_table(63) := 'ADB766DDB012871FB28B9C78CCB8D469084A1A5560C5EA06B545EFB3E11BFF2F8FABAE3856C66EDECF98E0778BAAE5B22B1FB79C1A585C3A9805828CB5527A654C00905EED69A4365D5D1DE1A77FAB6F98BF3FF3D7B2F76E238C94F1EDF7BF933BEEFD8B';
wwv_flow_imp.g_varchar2_table(64) := 'E3BC7372B2E5FEDBCF907C3E0538B673DB052B2B1A65F28CD95257BFF1AD79B71E3B52AEBCE410A3C5BEF7910FE4AF6FCE8D5A86ACEC5C292CEE6FB49C649E1E020400E9D18E466BD158BF5AADF5DF1CB50C63468F9059937F6DAC9CBFBFE43159B1B22A';
wwv_flow_imp.g_varchar2_table(65) := 'A6FCCF3BEB10D9639791315DCB45EE10D04FFE93673EAD56DFDBF8CD3F5C4AB52EC59CC7CE375AE0A660487E7FF16396AB04E617F6155F0EB3568C36561A644E0090068D68B20AEDED2DD258177D5D733DEAFFD6EB4E9641FDCD6C6ED2DAD621134FBD3D';
wwv_flow_imp.g_varchar2_table(66) := '66A67DF6DA56CE3E6542CCD773A159017DF39FA26EFE919EFCD7972ED79F234FDE7FB6D9C2AADCFFFE61B9DC72E78B51CB91919925FA53808A5A8C979702A4AE000140EAB69D0B4ABE56BDFA5F6639F0EF3787ED2E271CB99DB1F22E595E27E75FF650CC';
wwv_flow_imp.g_varchar2_table(67) := 'F98FDB7EB45C7EFEFE315FCF85E604AC5EFB6F58B2DD76DE42CDFCD8C75C6137C879DA75AFCABCAFBE8F5A163D18500F0AE440205601028058E5B84EECECF4D7BB7799DC76DD7192E3CB3426565D1B94D3CEBD37E6FC77DB794B756330337321E64273A1';
wwv_flow_imp.g_varchar2_table(68) := '38B9F91717E5CB9FAE3E417A16E7BA426E5565939C73D183B2B6AB337279F48E81A5432443BD61E340201601028058D4B8263C52B9AE7A49F411CBEA2FA8C9171D25DB6F35C0B8D871A7DFA5565B6B8BA91CC71DBDA71CF5EBAD63BA968BCC08D87DEDAF';
wwv_flow_imp.g_varchar2_table(69) := '4BA76FFEB3A61E2303FA9AF944154968F69CCFE4E9E7DF8B0A98E32F502B04F636834CAE292F400090F24D68A6024135EDAFD562DADF4E6ACEFF2586E6FCFF52E5A6BBDE92F73F981713D64DD79C2CC306F3AA35263C03172D5FD52057A8D1FE8D8DD107';
wwv_flow_imp.g_varchar2_table(70) := 'A6AEBFF95F3DED58E9DFA7C04049A367196AEF943F5CF6945454AC897A22D3025DD774295320028094692AF714543FFDD7562F8E3AED2F233353EEBCF114E9DBDB1DDBFCFE505E2D174F7DD431E2F871A3E5D23FF0FDDF319CA10B96AFAA5737FFA76DDD';
wwv_flow_imp.g_varchar2_table(71) := 'FC8BD493FFB5EAE6DFCF8537FFF57CFFFAF762F9D36D6A99E028872F275FF20BFB181227DB5416200048E5D63354F6605395B4B6D447CD7DBF5FED20934EDED55009379EED2DF7BE277F7FFF33DB65CAC9F1C91D7FFA9D9495E4D9BE8613CD092C5B591F';
wwv_flow_imp.g_varchar2_table(72) := '9EEA67F7C9DF8DAFFD37A677C19467A47CF18AA8B0456A46406666B6397C724E49010280946C367385D683926A6BD4063A51362ED1DB96EAC5734A5D32A06A43ADE937BC265F7CB9C012506FC17AE11F0E959DB7D753AD38DC2EE0E4E65F501090ABD537';
wwv_flow_imp.g_varchar2_table(73) := 'FF41FD8BDC5EAD70F93EFD6285CCBAF199A865D56B02E8B501381070224000E0448B73A5593DFDB7593CFD1F7EC8AE6AF9DC1D5CABF5FCABF3E4A9E7DE97CE8E8D0F0A1C3264A04CFADD9EB2D9C832D7D68182FD2CB074459D4C99F58CAD27FF54BBF9AF';
wwv_flow_imp.g_varchar2_table(74) := 'AFE5E533E7C8B70B16477F0B50324832B3D8BC8AFF36EC0B1000D8B7F2FC9976BEFDE7E6FAE5DE5B4E958280BBFF22AAAC6E967FCD5D2C5F7FBB22BC8BA17EE22F2C0CC8CEE346C80E5B9B9FB5E0F9CE6613C0C980BFC24235DA7FCAD129F3E4BF21C157';
wwv_flow_imp.g_varchar2_table(75) := 'DF56C8D4594F467F0BA06604E43323C066CFE1342D4000403FB02DA037FBD19BFE443B8E3F662F39F290AD6CA7C98908C42AE064C05F41419E7AED7F6C4ADEFCD7FB4CBFFE15F962DE0F91B9581720D6AEE4D9EB08003CDBF44E2BBE568DFC57F3FEA32C';
wwv_flow_imp.g_varchar2_table(76) := '4C52901F90FB6E3B45FCBE2CA789733E028E04BC76F3D7380B97D4C845931F89EAE4CF2B96BC80B96D8D1D3522271B17200030DE04A95180B6D646696E8CBE95EEA927EE2B07EF3B26352A44295356C0C9803FFD5967D694D419F067D52837DCFE867C38';
wwv_flow_imp.g_varchar2_table(77) := '777EC4D3F400DCE29E43D5BE46EC116065C99FF309803E6053A05EADF9DFD9198A78B6CF972D0FDF75A6E4FA998A649394D36210F0E293FF864CDF2DAA924BA73D16552E2FBF4CFCB9A931C321862EC0257114E00D401C31D335293B3BFE1DB0EF3839E3';
wwv_flow_imp.g_varchar2_table(78) := 'C45DD295807AB940C0EB37FFF54D70C9F4E7E4FB1F96456C910CB51EC0BA9D023910882E4000400FB114686AA890505B947DD4550A2C976BC9C809DD10E0E6FF33DEFB73CBE5A6DBA36F175C50DC5FB2B3DDB1B151379A9D4B132C40009060E0544FDECE';
wwv_flow_imp.g_varchar2_table(79) := 'D4BF614307C84DB38E4EF5AA527E970A70F3FFEF86E9EC5A2BA7FEFE01A96F688CD8622C0FECD2CEECB2621100B8AC41DC561C3B5BFE9E7FF6A13261E7E16E2B3AE54903016EFE1B6FC4E75FFD421E9FFD4EE4165683004BD456C13DD82A380DFE2B485C';
wwv_flow_imp.g_varchar2_table(80) := '15080012679B1629D7A9657FBB3A3B22D6255F4DFD7BF08ED3243B2B232DEA4B25DC23E0E4E69F9F9F2BD74C9B98D2F3FC9DC8D737B6C969E7DEA716B18AFCDF665E7E4F3518B0D849B29CEB310102008F35B893EADA19FC77D8C1BBC849C78E73922CE7';
wwv_flow_imp.g_varchar2_table(81) := '226029E0F4E63F63F2D1326C50A965BAE974C29D0FFC43DE7AF7D388556230603AB57662EA42009018D7B44855CFFBD7F3FF231EEA35E33D379F267DCADCB1E56F5AA05309E1E66FAF132C595E27E75FF650D4930B4B064A56568EBD0439CB730204009E';
wwv_flow_imp.g_varchar2_table(82) := '6B72FB15AEAD2A579BFE7545BC60F3D1C3E4EAC987D94F903311B01058BCAC56A65DF3ACAD8D7DF2F3F364A67AF21F3AA8C4B3AE57CC7A51BEF9B63C62FD5919D0B35DC356C509006C3179EFA4F650501AEB5745ADF8A4530F94FDF6DCD47B38D4382102';
wwv_flow_imp.g_varchar2_table(83) := 'FA8976F2CCD9D2DCDC6299BEFEE6EFC5D7FEBF84F9EB3B0BE4DE075F8BE8959199FC998A010000200049444154A5D6041862E9C909DE142000F066BB5BD6BA49BDFE0F4579FDDF2323431EBA73921415F07AD11293132C05B8F95B126DF484FAC656F9DD';
wwv_flow_imp.g_varchar2_table(84) := 'D9F7467D53C76780D86CBD70150180175AD9711DD5C63F558BA3FEA53276CB5172D5A5073B4E990B10F8A50037FFEEF58969D7BE22F3E647DE2590CF00DDF34DE7AB0900D2B97563AC5BA8AD599A1A5647BDFAECD30F967D268C8A31072E43609D0037FF';
wwv_flow_imp.g_varchar2_table(85) := 'EEF78437DEFB4EEEBEFF2F1113E23340F78DD335050280746DD96ED4CB6AF47F865A5CE4C13BCFE4F57F378CB9949B7FBCFA80FE0C70CA39F7495794ADBA8B4A064966962F5E59924E9A081000A44943C6B31AB5D5EAF57F94BF4CB6D96A539976F181F1';
wwv_flow_imp.g_varchar2_table(86) := 'CC92B43C26C0937F7C1BFCCAEB5F952FE77D1F31D1BC805A14288F4581E2AB9EFAA91100A47E1BC6B5061D1D6DD250BB3C6A9AE79C71B0FC6A775EFFC715DE438971F38F7F635B7D06C8521B0315AA0D823810D850800080FEF05F022DC15A6969AE89A8';
wwv_flow_imp.g_varchar2_table(87) := 'D2432DFEF3E8BD674B7E1EAF13E93ACE05B8F93B37B373C5BAD900F7A881BB6B239E5E52364C7AF460C96E3B9E5E398700C02B2D6DB39E0D752BA4A3BD35E2D95B8C192E332F3FD4666A9C86C0CF02E54BF5223FCF485353D092252FD72F33A71C23C387';
wwv_flow_imp.g_varchar2_table(88) := '786B795F4B9828275C316B8E5A146871C433F20BFB88DE25900381F5020400F4859F04F4777FFDFD3FDA71FC317BC991876C851A028E049C3CF9EB9BFF0C75F31FC1CDDF91F1D32F7E26B39F7B2FE23539FE420914F472942627A7B70001407AB7AFA3DA';
wwv_flow_imp.g_varchar2_table(89) := '85DA9AD4F4BF8AA8D75C3DED04D97C13FE127104EBF193B9F927A7037CF9CD6AB9F2EAA72266C674C0E4B4432AE54200904AAD95E0B2069BAAA4B5A53E622ED9D93E79FCCF93C4979599E092907CBA0870F34F5E4BB6B475C86FCFB85B3AA36CDF5DDC73';
wwv_flow_imp.g_varchar2_table(90) := 'A8E869BC1C0868010200FAC14F027AF4BF9E0510E960F53F3A8B13016EFE4EB4E273EEE4AB5F92AFBF59143131C601C4C7395D522100489796EC763DD64ACD9AC87F71E8E48F3F666FF5FD7F6CB7732281F417E0E66FA68D67CFF94C9E7EFEBD8899FB73';
wwv_flow_imp.g_varchar2_table(91) := '8B242FBFCC4CE1C8D575020400AE6B1233056A6F6F91C6BA955133E7FBBF99B649B55CB9F99B6BB12FBF56E300AE893C0E202BDBAFD6031860AE80E4EC2A010200573587B9C2B406EB24D85C1DB1007CFF37D736A99433377FB3ADA5C7019C70C65DD2D5';
wwv_flow_imp.g_varchar2_table(92) := 'D9B9F182A8753C4AD57A00EAEBAFD98292BB2B0408005CD10CE60BD158BF5ADA43CD110B3276CB916AF7BF43CC179412B856809BBF3B9AC66A3D00B60776473BB9A11404006E68051794A1AE66897A6AE8885892A38F9820138FD8D60525A5086E1458B8';
wwv_flow_imp.g_varchar2_table(93) := 'A446A65FAB17F969B12C9E9EE73FFD8AA365D4B09E96E7728273814766CF95175FFD20E28581FC5E92935BE83C61AE483B010280B46B52E7155ABBB64B6AABCAA35E78F17947C8CE3B0C719E3857A4BDC0A225D53275D633126C89BC82E47A0416F9497C';
wwv_flow_imp.g_varchar2_table(94) := '7778EF838572EB5D2F47CC28470D040C301030F10D9102391000A4402325BA887AE95FBD0470B4E3D6EB4F91C1038A125D14D24F31016EFEEE6BB01F16D7C8C5531E8958300602BAAFCD4C958800C094BC8BF2D58BFFE84580221D596A01A0A7EE3F4BB2';
wwv_flow_imp.g_varchar2_table(95) := '32D948C445CD66BC284E6EFE7EBF4F664D9DC8F2BE4968B5563510F0F8D3EF96AEAE8D7FD2D31B02E98D8138102000A00F4873E31A696B6D88283174C800B9F9EAA39142E02701A737FFAB2E3F5A3619C112D2C9EA42675FF4B8AC5ABD266276C53D87A8';
wwv_flow_imp.g_varchar2_table(96) := '1501B392551CF271A90001804B1B2699C5B25A0170C2AE5BCBF993F64C6691C8CBC502DCFC5DDC383F16EDBA5BFF26733FFE3A62410B8AFA49B62FCFFD15A1840915200048286F6A24AE7700D43B01463A7E3B716F39E22056004C8DD64C6C29B9F927D6';
wwv_flow_imp.g_varchar2_table(97) := '375EA93FF9FCA7F2EC9C7F444C4EAF06A85705E4F0B6000180B7DB5FD5DE7A09E0CB2F3C52C66D33C8F3525E07E0E69F3A3DE0FDB9E572D3ED2F462C304B02A74E5B26B2A4040089D44D81B43B3BDBA5BE6669D492DE75D3E9D2AF777E0AD48622264A80';
wwv_flow_imp.g_varchar2_table(98) := '9B7FA2641393EEE265B5F2C7CB1F8E98B82F2720F9857D139339A9A68C000140CA3455620ADA1E0A4A63FDAA8889EB11C32F3C765E623227D5A40984DA3BE5F3AF56C8471FFF20CB5756494343506AEB9A244B6DEDDCB74FA9F42C2D94FE7D4B64F8B0DE';
wwv_flow_imp.g_varchar2_table(99) := '327EBB21E2CBFE79CBD81F1657ABF5E5D53CFFA0F53C7F3DDA7FBA1AF0B72903FE92D6B61BCB28D8D2AE6602DC11B10C995939525432D06819C9DCBC000180F936305A02AB2980A5A545F2C06DA7182D2399C72E50D7D02ACFBCF889BCFB8F2FA4B53564';
wwv_flow_imp.g_varchar2_table(100) := '2B21BD58CF3E7B6D23471CB28D54AC6992E9FAE66F63911F7DF3BFF2B2A364B391BD6DE5C349891538F6D4BBA4AD6DE3DB7B331530B1F6A9923A0140AAB45482CAA9E7FFEB2020D2316AC420B9E1AA2313943BC92652E0B9573E97E75EFCA7BA09B4C794';
wwv_flow_imp.g_varchar2_table(101) := '4D4E4EB6646666F2E41F939EF98BCEB9E40959B9B23262414A7B0D577FC6A640E65BCA5C090800CCD9BB22E7A6860A09B535452CCB8E3B6C2E979DB79F2BCA4A21EC0934054372F59F5E916FBF8B3EB6C35E6AD667E9277FE6F95B3B25FB8CA9D7BE245F';
wwv_flow_imp.g_varchar2_table(102) := 'CD5F1431DBA2D2C12AC0CB4E76B1C8CF450204002E6A0C134569AC5FA976018CBC81CB7EBF1A27934EDEC544D1C833068155158D32E386176475454D0C573BBF846FFECECD9275C54D77BD2DEF7FF065C4EC0A8B07885E1698C3BB020400DE6DFB70CDEB';
wwv_flow_imp.g_varchar2_table(103) := '6B974B67C7C6BF13EA3F9F78D49E72F4A15B7B5C2935AA5F53D722974E9F2D5555754929304FFE49618E3993879EFA485EFECB8711AFD7B300F46C000EEF0A100078B7EDC335AFAB56DB004758335CFFF959A71D24FBEEB189C795DC5FFD96D676993CEB';
wwv_flow_imp.g_varchar2_table(104) := '79295F1C7946473C6BE1F365CBCCC9C7B0BC6F3C51E39CD69CD7E6C9A34FBE1531D54081DA16D8CFB6C071664FA9E4080052AAB9E25F58BD0DB0DE0E38D2C12240F1374F448A0F3EF181BCF2FADC4424FD3F69EA9BFFB44B8F92319BF6494A7E64129BC0';
wwv_flow_imp.g_varchar2_table(105) := 'BBFFFA416EBBFB958817E7057A8A3FAF38B6C4B92A2D040800D2A21963AF44CD9A85512FBEEEAA13923AA7BBAA36A8E6AA97CB279F2D9485E5EB9E66470CEB27E3B61B29E3B71F26A5C5B9B157364DAFACAC6A9633CFBFCF56ED8A8A0A64F4A68365D8D0';
wwv_flow_imp.g_varchar2_table(106) := '3E5256BA6E71A7AAEA46295F5221DF2C582AF5F5910784AECFA0A02020F7DD728AF873D84CE697E86EEABFFFF97285CCBCE19988FD42DFFC7510C0E15D010200EFB67DB8E65601C01D7F3A5506F44DFC6B42BD70C99D0FBC2B1F7C343F6A8B4CD875AC4C';
wwv_flow_imp.g_varchar2_table(107) := '3A6582F87DDC7CD643DD7AEF3BF2DEFB5F4475CBC9F1C941FBEF28430797498F0833BFD6AE1559B4B8525E7FE363357530FA9A01A7FC761F3964BF2D3CFE5FCFCFD57763FFFD6E51955C3AEDB1886D94E32F9040016B3678B913130078B9F56D0400F7DC';
wwv_flow_imp.g_varchar2_table(108) := '7286F4294BEC4021BD4ADDA5D39F91C54B56DB6A8D4D470D94EBAE3CCAD6B9E97E528BDAFBFDB8536F8F5ACDC2C2801C79D8AE52526C6FF7B79ADA6679F6857F485373E495FF7AF72A917B6F3E39DD796DD5CFADFD77E1921AB968F22311EBC072C0B69A';
wwv_flow_imp.g_varchar2_table(109) := '37AD4F220048EBE6B5AE9CD51B803FDF76A67A556CEFC6619DDBC6CFB8E3FEF7E4EDF73E7374F96107EF24271D3BDED135E978F2479F2E91EB6F7E216AD50E3E6027D97494B375DFBF59B0525EFB5BF43105D7CFF8AD6C32BC2C1D591DD5C9ADFD77C9F2';
wwv_flow_imp.g_varchar2_table(110) := '3A39FFB28722D625DB972B0545FD1DD59593D34B800020BDDAD3716DAC028007EE9894D0EFEECB56D6CB1F2E557F49E9F7CF4E0EF51EFBC13BCE9492226F8F09B8EDBE77C2CBFC463AF452CE271DB7A76464385BF1ADAB6BAD3CFCC43B525BDB1031ED89';
wwv_flow_imp.g_varchar2_table(111) := '474D505344B775D26A6977AE9BFB6FB86C973C18D13C4BED0750C87E0069D7279D548800C089561A9E6B15003C72CFD952989F93B09A5BCD558E96F149C7ED2D871D383661654B85842F9BF19C2CF86E59C4A2EEB1FB76B2DDD68363AACA279F95CBDFDF';
wwv_flow_imp.g_varchar2_table(112) := 'FF3CE2B5DB6FBBA94CBEE0C098D24E978BDCDC7F575536C9D917FC392275865A05B058AD06C8E15D010200EFB67DB8E65601C063F79D23F979BE8429FD5EAD57BE22CA7AE5D132DE62F3A132F38AC31356B65448F8AC0B1F89BAEADF89C7ED2BBD621CC3';
wwv_flow_imp.g_varchar2_table(113) := '51B9A6511E7B2AF23CF2BE7D7ACADDFF77622A3025AC8C6EEEBF156A76C8A428B3437A64644A49CFA109B32161F70B1000B8BF8D125A42AB00E0A907CE4DE874AF89A7DDA576A98BBC1261B4CAEBE9688FDE7D46427DDC9EF8C4D3EE8CBACBDFB9937E2D';
wwv_flow_imp.g_varchar2_table(114) := '3EDFCF5BFB3AA94F28D429B7DFF372C44B727373E4C93F9FED24C9B43BD7CDFD574F493CFDDC7B239BABCF68A5657A43200EAF0A100078B5E57FACB75500F0CCC3E749765646C2944E38E31E690E46DE8B205AC68140AE3C7EEFA484952D15123EF6D43B';
wwv_flow_imp.g_varchar2_table(115) := 'A2EEF697C800406F1BFCC49FCF4A05A68495D1CDFDB7B6BE554E39E7EEA8752FED3522613624EC7E010200F7B751424B68B512E09CC7FF98D0FC2F9CFAB42C2A5F19531EA3460E941BA67B7B3AE0E9E73DA816F289BC9DF3C927EC2B3D4B639BC659B9A6';
wwv_flow_imp.g_varchar2_table(116) := '497D02783362DB0C1AD85B6EBBEEF898DA2E5D2E7273FF6D686A939326DD1591BA478F0C29291B962E4D413D6210200088012D9D2E311D003CF1DCC7E13DEB633918852E32F59A17E5ABAFCB23F2EDB1FBB66A10E0905878D56A8C8BD520C0C8D333B7DA';
wwv_flow_imp.g_varchar2_table(117) := '72844CBFF4D731A59D2E17B9B9FFD637B6CAC967457E034000902EBD30F67A1000C46E971657D6562F96B55D9D11EBF2B81A041848E020C055958D72F6850FC4340DF0CFB79EAED62888EDE9362D1A4F55E2A1273F94975FFB2862754A4B8BD534C03D62';
wwv_flow_imp.g_varchar2_table(118) := '9B06F8F8DB525BD71831ED83D5CA82A79EB073BA50C6540F37F75F0601C6D4A49EBA8800C053CDFDBF95B5DA0D30190B01DDFDD03FE48DB73F75D412871EB4939C3C9185803EF864B1DC78CB9CA876FBEF334EC68C1EE0C8F7ABAF97CBDFDEFA38EA35D3';
wwv_flow_imp.g_varchar2_table(119) := '2F3F56B61AD3CF51BAE978B25BFB6FF9D25AB9E08A872392676466A96980B1BD1D4AC776F4629D0800BCD8EA1BD4B9AE466D07DCD91151E1B61B4E9141FD8B12AAD41AEA90CBA63F2B4B96DA5B0A7833B599CDB5537F93D032A54AE27A19DA1327DD1375';
wwv_flow_imp.g_varchar2_table(120) := 'EDFEECEC6C39EEE83DA5ACA7BDB7256BAA9AE4A967DF95F6F6C8FD8201803FF710B7F6DFF90B2A65CACC27A20400AC03902AFF9D27AA9C040089924D9174EB6B96496767E48D5F92B5DCABDE4CE5F6FBDE563B017E13556ECFDDB792334EDE9DCD803650';
wwv_flow_imp.g_varchar2_table(121) := '7A406D05FCAAC556C07E7F8E1CB0EF38193624FA6640E54BD6A82580FF6DB919D041FB8F93D34ED825457A79E28BE9C6FEFBE9172B64D68D917703CC542B0116B11260E23B878B7320007071E324A3680D752BA5A33DF234BC64BFE65D53DD2C1F86B703';
wwv_flow_imp.g_varchar2_table(122) := 'FE416D51BB5A323333D54DAB8FECB8FD28D971BB616AE95F7F3258522A8FC6E6904CFAE303120C46DEBC677D85226F075CA9B6035E626B3B60BDB3E0BDB79C2A4505B4C52F3B8A9BFAEF3F3E2A979BEF7831625FCECACE95C262F60248A9FFD8E35C5802';
wwv_flow_imp.g_varchar2_table(123) := '803883A65A724D0DAB25D4D61CB1D897FEF10819BF1DDF09DDDCAEF31754C88CEB9F9550A83D29C53CF6C80972CC61DEDE032029D0DDCCE46FEF2E907B1E782D622ABE9C7CC92FECD3CD5CB83C9505080052B9F5E250F6E6C64A696B8D3CD2FBDC330F96';
wwv_flow_imp.g_varchar2_table(124) := 'BD761B15879C48221102DF2D5C2353AF7E3A69377FBDF6C2ACC947882F3BB6D5051361409A1B1798F3972FE5D1A7DE8EC893935B24817C7673F472FF2100F072EBABBA079BABA535581751E1D413F79183F7DDC2E34AEEACBEBEF95F79ED335197028E67';
wwv_flow_imp.g_varchar2_table(125) := 'C9FBF629951B664C948240E2F686886779BD9ED6E3CF7E2CCFBF14798D0D7F5E89E4054ABDCEE4E9FA130078BAF9257CF3D74140A4E3A8C37795E37EB383C795DC57FD05EAE63F3D89377FBDEADFD48B0F935E366712B84FCC7B25BAEBC1BFCB9BEFFC27';
wwv_flow_imp.g_varchar2_table(126) := '62C5F3D4D3BF5FBD05E0F0AE00018077DB3E5CF3B6D606696E5C135161C2AE63E5FC497B7B5CC95DD54FF693FFD82D86CB65E71F28B9FE6C7741509AA802575EF7B27CF9D5C288E7E8EFFF7A1C008777050800BCDBF6E19AB78782D258BF2AA202EBEDBB';
wwv_flow_imp.g_varchar2_table(127) := 'AB832C5C5C1DFEE6DFD262BD836220E0978E8ECEA89B0545AB5D5E9E5F8E3A7C1739EC80B1EE42A034B6044E3FFF61A9AAAA8D786E819A0190AD66027078578000C0BB6D1FAE796767BBD4D72C8DFC94909F278FDD73A6C795DC517D7DF39F76F533126C';
wwv_flow_imp.g_varchar2_table(128) := 'B19EEEA76FDE33261FA3964ACE93E75EFA8FBCF9EE7F6C07027A919FBD266C25471FBE3DDFFBDDD1F48E4B115281DF31BFBB3DEA12DBC5A583252393B73A8E71D3E8020280346ACCD8AAB2566AD62C8A7A69A2F70388ADDCDEBA2A969BFF88213F0FF06A';
wwv_flow_imp.g_varchar2_table(129) := '6DEB900FD5B2C1E58B2B6575659DDA41B0415657D484118B0A03525898278306F4929DC78D926DC73A5B36D85B2D911AB55DB1BA417E7F91DA6323CAC156C0A9D196892C250140227553246DAB0D816EBEF664193AA824456A937EC52C5F562353663C6D';
wwv_flow_imp.g_varchar2_table(130) := 'EBC93F10C89519571C25C387F44C3F086A645BE0B3AF56CA8CEB9E8E783EFB00D8A64CEB130900D2BA79ED55AEA176B9FA561CF99BF26517FC4676DC76B0BDC4382BAE02FAE63F75D633D2DC1C79B5C6F519EA9BFFD5538F9521038BE35A06124B3D81BF';
wwv_flow_imp.g_varchar2_table(131) := 'BEF3ADDCFBE0EB110BCE2A80A9D7A689283101402254532CCDA6860AB51A6053C4529FF2DB7DE490FD580B20D9CDAA6FFEFA9B7F531337FF64DBA77A7E0FCF9E2B2FBDFA41C46AE4F80B2450D03BD5AB49F9BB294000D04DC074B8DC6A31A003F7DB414E';
wwv_flow_imp.g_varchar2_table(132) := 'FFEDAEE950D594A90337FF94692A5716F4DA5BFE2AFFFE24F2C65AB96A01A05CB5101087B7050800BCDDFEE1DAEBA77FFD1620D2B1F9E82172B55AFE95233902CB56D6CB15339EE2C93F39DC6999CBA40B1E918ACA75833C3776E417F6556B00D8DB1E3A';
wwv_flow_imp.g_varchar2_table(133) := '2D81A854588000808E209D1D21A9AF5D16512227275B9EBCFF1CC9E8D103AD040BE89BFFE499B3A5B131689913DFFC2D893C7982DE1DF2C433EF8C5AF7E29E43242323CB933E54FA670102007A8312B09E0A78EBF5BF93C103185C96C8EEE2E4E65F5010';
wwv_flow_imp.g_varchar2_table(134) := '9099938F66C05F221B2445D3FE5CCD00B82ACA0C801E3D32A4A46C588AD68E62C7538000209E9A299C56BD9A09D0196526C07967FD5AF6D865440AD7D0DD455F59D120974D7FCAD693BFBEF95F33ED1819D88F75DCDDDDAA664AF7DC2B5FC8134FBF1331';
wwv_flow_imp.g_varchar2_table(135) := 'F3AC6CBF1416B3D68399D67157AE0400EE6A0F63A56952DB0287A26C0B7CD0FE3BCA6927EC6CAC7CE99CB1BEF95F71D56CA96F68B6AC26377F4B22CF9F70DDAD7F93B91F7F1DD1816D803DDF457E022000A02F84055A5BD4AE804D9177051C357290DC30';
wwv_flow_imp.g_varchar2_table(136) := 'FD48B4E22CD0DCD22EE75EF2A8D4D63658A65CA856ECD3AFFDF9146349E5E9134E3EE701A9AF8FDC9F0205BD24C75FE869232ABF4E8000809E1016686F6F91C6BA959135D400C0A71F3A577C599988C551E0AE07DF535BB67E6699A2BEF9CF9A728C0CEA';
wwv_flow_imp.g_varchar2_table(137) := 'CF6B7F4B2C0F9F5059D52C679E7F5F5481A292419299E5F3B012555F2F4000405FF851C07A20E08DB34E9491435962369E5D66D2050FAAE95AF5D1FFC25637FFABA71D2B03FAF2D4164FFB744CEBC34F97C80D37BF10B16A0C004CC7568FBD4E0400B1DB';
wwv_flow_imp.g_varchar2_table(138) := 'A5DD95564B029F79CAFEB2FF5EA3D3AEDE262B6415001417E5876FFEFDFB14982C2679A788C0A34FCF9539AF445E0130DB97270545FD52A4361433D102040089164EA1F4834D556A2C40E4A7D1F13B8C964BCFDB3F856AE4FEA2DEFBF0DFE5AF6FFD67A3';
wwv_flow_imp.g_varchar2_table(139) := '052DD237FFA9C7F0E4EFFE66744D092F9CF2B42C5A1CF9531E2B00BAA6A95C511002005734833B0A61B522604E8E4F663F708E3B0A9B26A5D083002F9CFCB8FA0C50F75F352A2B2B96AB2E3F9227FF3469E76454A3BA3628A7FD417DFF5FBB36627605C5';
wwv_flow_imp.g_varchar2_table(140) := 'FD253B3B3719C5218F141020004881464A5611BBBA3AA5AE7A71D4ECAEBA62A28CDDBC6FB28AE4897C9A8321B9EF91F764DEFCC5929BEB93BD278C9583F7DB4A7CD90CB8F44407885325DFFAC7F772E77DAF464DADB4D770F5E7ACE81927F2944F860020';
wwv_flow_imp.g_varchar2_table(141) := 'E59B30BE15A8AB592A5D9DED11133DECE09DE5A463778C6FA6A4860002DD16B8E1F637E5C3B95F454C870580BA4D9C76091000A45D9376AF4256E300060EE82DB75F7F7CF732E16A041088AB404767971C7FFADD120A8522A6CBF7FFB892A74562040069';
wwv_flow_imp.g_varchar2_table(142) := 'D18CF1AB447B48AD07501F653D0095D5DD379F2E7D7BE5C72F53524200816E097CF9F56AB9F29AA7A2A651583250B2B272BA950F17A7970001407AB5671C6AA3D603A82A8F3A90E8CC530E50D301378B435E24810002F1107878F65C79E9D5C8D3FF7A64';
wwv_flow_imp.g_varchar2_table(143) := '644A49CFA1F1C88A34D2488000208D1A335E5569AC5F2DEDA1C8EBD26FB7CD2632E5C283E2951DE92080403705CEF8E3A3B2664DE4A5BC73FC051228E8DDCD5CB83CDD040800D2AD45E3509FB69606696E5A133125BD9AD863F79D2D81DCEC38E4461208';
wwv_flow_imp.g_varchar2_table(144) := '20D01D81A52BEAE5BC4B1F8C9A447E611FF1E5F0D9AE3BCEE9782D01403AB66A37EBD4D5D5A1A6032E899ACAB9671E227BED36B29B39713902087457E089E73E91E75E7C3F72326A1F8F929EC3A487FAC981C086020400F4878D0A34D4AD908EF6D6883A';
wwv_flow_imp.g_varchar2_table(145) := '5B8C192E332F3F143D04103028D0A516FD39ED0F0FA9DD2423AFE0E9CB09487E216B77186C26D7664D00E0DAA6315B30ABED8175E9EEBDE50CE95D16305B507247C0C302F3BEAD9069B39E8C2AC0EB7F0F77108BAA1300D037362A60E733C06F27EE2D47';
wwv_flow_imp.g_varchar2_table(146) := '1C3416410410302470E703FF90B7DEFD34EAEBFFD2B261EACF79FD6FA8895C9D2D0180AB9BC76CE1AC3E030C18D047EEB8FE38B3852477043C2AD01AEA9093CFBA4FDADADA220AF0FADFA39DC366B509006C4279F1343B9F016E9C75928C1C5AEA451EEA';
wwv_flow_imp.g_varchar2_table(147) := '8C805181F73F2A979BEE7891D7FF465B21B533270048EDF64B68E9ED6C0E74C801E3E594E3774A6839481C0104FE5760E69FFE22FFF9FCBB88347ABA6E49D9505EFFD37922F791E3263D1F79EF48E03C2FD0D4B05A426D911705CACFCF93C7EE39D3F34E';
wwv_flow_imp.g_varchar2_table(148) := '0020904C81F0D6BFE7DE1B354B7F6E91E4E59725B358E4956202BC0148B1064B7671DB4341B537C0AAA8D99E7FCEAF65C24E23925D34F243C0B3024F3EFF893C3B27CADC7F25535C3A58323259ACCBB39DC446C509006C2079FD14BD28909E1510E9183C';
wwv_flow_imp.g_varchar2_table(149) := 'A8B7DC7A2D3B047ABD9F50FFE408B4B475C8E9E7DE2FCDC1968819B2F56F72DA22D573210048F5164C42F95B82B5D2D25C1335A7E9571C2B5B6DDE2F09A5210B04BC2DF0DA5BDFC89F1FFE6B5404BDEEBF5EFF9F038168020400F40F4B013B8301B7DD7A';
wwv_flow_imp.g_varchar2_table(150) := '13997A111B045962720202DD10E8EC5A2B675DF088ACA9AA8D980A83FFBA01ECB14B09003CD6E0B156B7A9A1420D066C8A7AF92DD7FD4E860C2C8E350BAE4300010B810F3E5E2C37DE3A27EA59FEBC12C90B303597CE642D4000606DC4194AA0A3A34D1A';
wwv_flow_imp.g_varchar2_table(151) := '6A9747B5D86BC2D672EEE97BE28500020912B860CA6C295F1C6550AEDAF0A7B8748864646426A804249B4E020400E9D49A09AE8BD5CA8099991972DFADA74B69715E824B42F208784FE0AB0515327566F475FF7DEABB7FBEFAFECF81801D0102003B4A9C';
wwv_flow_imp.g_varchar2_table(152) := '1316D09F00F4A78068C76F0EDD454E386A1C620820106781AB6F7A4D3EF9CF82A8A916950C92CC2C5F9C7326B97415200048D7964D50BDEA6AD494C0CEC85302FDFE6CB54BE0E952989F93A012902C02DE1358B8B85A2E9AF268D48A67FB72A5A0A8BFF7';
wwv_flow_imp.g_varchar2_table(153) := '70A871CC02040031D379F3C2D6967A09365545ADFC7EBFDA5E269DBC9B3781A835020910B864FAB3F2FD0FD1C7E0E89BBF0E023810B02B400060578AF37E12B05A18489F78EBF5A7C8E00145A8FD285055D32C4B96D54A6555A35454D6CBEA8A5AA96F08';
wwv_flow_imp.g_varchar2_table(154) := '4A53738BFAD52A75758D9EB22A2E56DFAA037EF52B578A0AF3A46FDF12E9D3AB487AF72A901143CBA4B8D0EF298F6895B533F29F857FE82EB1081000C4A2E6F16BDA5A1AA4B9694D54856DB61A25D32E3ED8B3526DA14EF972FE4AF962FE52F9625EB92C';
wwv_flow_imp.g_varchar2_table(155) := '5F11DDCBB350112A3E78501FD97ACB61B2E59841B2FD56033DCB13EAE894732F7E5C2AD7445F88ABA0583DFD67F3F4EFD98E1263C509006284F3F6656BA5AE6669D4B100DAE7CACB8E91ADB7F0CE37C9507BA77C366F85FCEBA3EF64EE27DF4A28D4EEED';
wwv_flow_imp.g_varchar2_table(156) := '6E12A7DAFBFD3ED969DC68D965C74D64EC1875A3CBCA8853CAEE4FE6C5D7E7C9234FBC15B5A059EAC65FA802000E049C0A10003815E3FCB0405BAB7A0BD018FDA976D0C0DE72CBB5C749869A9B9CCE474B6BBBBCFEF6D732E7950FA5A929F2FAECE96C90';
wwv_flow_imp.g_varchar2_table(157) := 'ACBA1515E5CB5187ED2CBF9AB099E4F8D27BAE7B63539B9C71FE03D2DADA1695B7B064A0646531E836597D309DF2210048A7D64C725DAC6604E8E29C75DA81B2EF1E9B26B964C9C9AE35D4216FBEFBAD3C33E75FEAC61F4C4EA6E41216285681C0912A10';
wwv_flow_imp.g_varchar2_table(158) := '38689F31692B72DFA3FF92D7DFF877D4FA65FBF2D4C87FF6E048DB4E90E08A11002418389D93B7B32E40616140EEB9E97792ABA607A6D3F1E1274BE48147DF96EA9AFA74AA56CAD5A55FDF9E72E6EFF691ADC6A4D74D70E98A7A39EFD2072DDB8379FF96';
wwv_flow_imp.g_varchar2_table(159) := '449C1045800080EED12D81C6FA95D21E8AFEDA3B9DA605AEAA6C94BB1F785BE6CD2FEF961B17C75760FC0EA3E5B4932648CFE2F4180877D98CE765C1774BA322E5E4164920BF2CBE90A4E6290102004F3577FC2BDBD9D92EF56A40A0D5316BEA713266D3';
wwv_flow_imp.g_varchar2_table(160) := '3E56A7B9FACFDF786F817AEA7F93C17D2E6DA5FCFC5C39E7F40364FC76435C5A427BC57AE58DF9F2E0A36F443D59EFF857DC7388E89F1C08C42A400010AB1CD7FD24A01706D20B04453B7AF72A955BAF3B5EFC39592927D7140CC96DF7BE2D1F7FFA6DB7';
wwv_flow_imp.g_varchar2_table(161) := 'CA5E50902F03FAF796BC5CBFE4E464AB695B59EAA74F7CEAA75FFDB3978ED6B67609B577485B5B4805541D6A99E99004D560B7E5CB57AB7511BA379EE2577B6E23A79CB0ABE4A6605FABA86A923F5CF288320945ED0E81825E92E32FF45297A1AE091020';
wwv_flow_imp.g_varchar2_table(162) := '004800AAD7925CBB564F0B5C226BBB3AA356FD90037796538EDB31A5782AAB9B64DAD5CFA9C57B22EFBF1EAD42FAA63F78603FE9DFAFA71416B049929DC66F680CCAF29555B274D94A698E3118D0EB08CC9CFC9B945A927AADAC95A957BF22F3BF591895';
wwv_flow_imp.g_varchar2_table(163) := '29538DF82F5223FF3910E8AE0001407705B93E2CD0D6DAA8A6055646D5D0AF2BAFBBEA78D964786A7CB7AC58D324975F355B6A1DAED2E7F3F964F8B0813268406F6EFADDFCEFA3AEBE49962DAF94458B97AB2DA923EF41B1B16CFAF6E929335410D0AB34';
wwv_flow_imp.g_varchar2_table(164) := 'D0CD5224E7F2D7DEFE56FEFCD0EB969931EDCF9288136C0A1000D884E2346B8186BA95D2D11E7D4060DFBEBDE4966B26BA7E0EF7B295F53265D633D2D0D0645DF11FCF0804F264D35143443F7D6666F06DD6369C8D133BD48A788B9755A88171E596F3E2';
wwv_flow_imp.g_varchar2_table(165) := '374C4E4F179C39E51819D8CFDDAFCB2BAA9AE5FCCB1E55756B8DAAE15703FFF218F867A3C7172369450000177F49444154708A1D0102003B4A9C634BA04B0D08ACAB5D26A23E09443B0E3B781739E958F76E19BC7C55BD5C31E369696C6CB655EFECEC6C';
wwv_flow_imp.g_varchar2_table(166) := '19BDD9701931AC7FDA2F7A640B248127757476C9F70B57A8406091747646FFE4B4BE18050501B9669A0E02DCB937857EF53F79D68BF2CDB78BA3CA6564644951E96035F02FBD17D64A60F721E95F081000D025E22AD012AC9596E6E8EB96EB0C674E394E';
wwv_flow_imp.g_varchar2_table(167) := 'B6D8CC7DB302962CAF53DF619FB17DF3EFDFAFB76CB7CD6835902FBD57A58B6B27894362AD6AD0E0471FCF97EA6A7B633374103073F2D1326460711C728F6F122FFF6DBE3CF458F451FF3A4776FB8BAF3BA9891000D00BE22E505FB34C3D9D451FC55C54';
wwv_flow_imp.g_varchar2_table(168) := '5420375F73BC9414B967DEB6D327FF31A347C9A69B0C941EEAFF38922FD0A5DE34CDFB6AA1FCB0C87A1A6AF806EAC237010B97D4C825D31E57FB6A447F9BE1CBC997FC42F705CCC96F75728CA70001403C35492B2CD0D1D1260DB5D1F72ED7E76D3E7AB8';
wwv_flow_imp.g_varchar2_table(169) := 'CCB8FCD7EA7BB9F91BA8939B7F86FABE3F7E87B1D2AF6F292DEE0281256A6CC027FF996FAB246E0A021AD45AFF7FBCE249A9A9A98B5AF6F09C7FFDEA3F83B74CB61A99936C0B1000D8A6E2442702FA3380FE1C60751C71E86EF2DBA3B6B73A2DA17FEEE4';
wwv_flow_imp.g_varchar2_table(170) := 'E6EFF365CB6E3B6F135E8B9EC33D02D5350DF2C1DC2F2DE7CFBBE54D807E7B31EDDA9765FED78B2C11F55AFF7ACD7F0E04E22D4000106F51D2FB49A0A16E859A15107D54B33E79EA2547CBB66307189173F2CDDFEFCF913D76DB5E0279ECBC66A4B12C32';
wwv_flow_imp.g_varchar2_table(171) := '6D6A6E95BFFFF3535BB3044CBF09983DE73379FAF9F72C1959EED7928813BA214000D00D3C2E8D2ED0D5D5A196095EA6260574453D514F9FFBBF59C74B9F5EC97DAAD637FFC93367ABC566ACB7F00DDFFC77DD4E02013FCDEE6281661504BCE7F220E08B';
wwv_flow_imp.g_varchar2_table(172) := 'F9AB64FA754F5BCE96C9C8CC56AFFE07296DF39FC85CDCE414AD1B020400DDC0E3526B013B3B06EA54860EE927D75F7594F8B292F39D939BBF75DBA5EA196E0E02AA6A836A97BF472518B40E3AD9E92F557B60EA949B002075DA2A654BDAD450A1D67AB7';
wwv_flow_imp.g_varchar2_table(173) := '5E5047AFE17ECEA97B24BC9E8B97D7CA94F093BFF5E7099EFC13DE1C09C9C0691090AC2982175FF98CFCA0D631B03AF4623F7AD11F0E041229400090485DD20E0BE8BD02EAD502417AA120ABE38463F694DF1CB2B5D56931FF394FFE31D3A5DC854E8380';
wwv_flow_imp.g_varchar2_table(174) := '442E16A407FD5D77CBEB6A43A905968ED9BE809AF3DFD7F23C4E40A0BB020400DD15E47A5B02E16D836DAC12A813BBE0F7BF96DDC68FB095AE9393B8F93BD14A8F739D0601897A1370C7FDEFCADBEF7D6E899A91A956FB2B61B53F4B284E888B0001405C';
wwv_flow_imp.g_varchar2_table(175) := '1849C48E809D0D83743A196A5D80ABAE3856AD1418BFA7206EFE765A283DCF7112040402B972F5D463E3BA62E08BAF7D298F3CF9B635AE5AE2B7A878A06466F9ACCFE50C04E220400010074492B02FD0DCB846ED1CD8607981DFEF931B669C2083FA77FF';
wwv_flow_imp.g_varchar2_table(176) := '3BE8BA9BFF537CF3B7544FDF139C05017E15044C8C4B1030F7D32572DDCD2FD8820D14F4921CBFBB372DB255114E4A190102809469AA7429A81E0FB0423AD56A8156477171BE9A1E78829416C7BE5C30377F2B65EFFC79B28380050B2B65F28CA7D4B2D8';
wwv_flow_imp.g_varchar2_table(177) := 'D1A7C1EA16C8F11748A0A0B7771A839ABA428000C015CDE0AD42ACEDEA94FABAE56A50A0F5FEEE030794A9E981C74A9E3FDB3112AFFD1D93A5FD05CE8280D83F07ACAA68900BA73C2E2D2DD6816EB62F37BCD10F0702C916200048B638F98505F48C807A';
wwv_flow_imp.g_varchar2_table(178) := 'B55F80D52241FADC2D361FA2560B3CD4D11A018B97A9A97EB39E66911FFADBFF08380D02664D3D46860E2CB12D595DDB2C974D9F2D55D5D69FBAB2B272A4A078005BFCDAD6E5C4780A1000C45393B41C0984370D52CB05AB28C0F2BA4D460D9069171FA6';
wwv_flow_imp.g_varchar2_table(179) := '96E1B51E20C593BF25A7E74F701A04D81D18B87A4DA37AEDFFB4D4D4365A1AAF1BF13F48DDFC332CCFE5040412214000900855D2B42DD01E0A4A63FD2A5BE70F1ED85BCD0E38428A0B238F09E0E66F8B92939440BC8380A52BEAC26F9D1A1B8396BEFAA6';
wwv_flow_imp.g_varchar2_table(180) := '5F543250F472BF1C089812200030254FBE3F09D89D1EA82FE8DDAB580501474ADF5E05FF23C8CD9F4EE554205E41C00F8BAB65FAB5CFD89A69A26FFE85EAB53FD3FD9CB616E7C75B800020DEA2A41793405B4B833437ADB1756D61419E4CBBF4481931B4';
wwv_flow_imp.g_varchar2_table(181) := 'E74FE773F3B745C7491B11E86E10307F4185CCBCE159696BB35EE952BDEF0FDFFCF5B77F0E044C0B1000986E01F2FF49A025582B2DCD35B64472727C72C54547C8D8D1FD849BBF2D324E8A22106B10F0E997CBE5BA9B5E908E8E4E6B5F75F32F28EA27D9';
wwv_flow_imp.g_varchar2_table(182) := 'D9B14F6BB5CE843310B02F400060DF8A339320106CAE96D6609DED9C4E3C6E6F79E1E50FA4A9C97A773536F6B1CDEAC9139D0401F9F97972D8C13BCAE3B3DFB56D955FD8577C3901DBE77322028916200048B430E93B16B0BB5AA09384B9F93BD1F2EEB9';
wwv_flow_imp.g_varchar2_table(183) := '4E8200274AF9857DD4CD3FDFC9259C8B40C2050800124E4C06B108049BAAA4B5A53E964BFFE71A6EFE7161F44C22710D02D46BFFFC027DF3E7C9DF331D28852A4A0090428DE5B5A2EAF1007A5C40770E6EFEDDD1F3EEB5710902F437FF42F5CD5FADF4C7';
wwv_flow_imp.g_varchar2_table(184) := '81801B050800DCD82A94E92781D6963A093655C724C2CD3F26362EFA51A03B41809EEAA707FC6565FBF144C0B5020400AE6D1A0AB65E407F0AD09F049C1EFBEFB3B35A3990BF809DBA71FECF02CDC136F9EB9BFF724412BEF917F767AA9F23354E362140';
wwv_flow_imp.g_varchar2_table(185) := '0060429D3C1D0B84DA9AA5A9B1C2D6B2C1EB13EFD3BBA76CBFDD18F1FBB21CE7C70508B4863AE4934FE74B45A5FD37507A79DF42B5B10F2BFCD17F5241800020155A89328605F4DE017AD960BD9BA0DD23272747C66D3F467A9715DBBD84F31090CAAA3A';
wwv_flow_imp.g_varchar2_table(186) := 'F9F727F3D5E23ED6BBF9ADE70A6FECA35EFBF7C8C844108194102000488966A290EB05BABA3AD406422BC3BB093A393619354CC68C1E2A196A601607029104BAD4C654F3BF592CDF7D5FEE08498FF2D753FD44E85F8EE038D9A8000180517E328F45406F';
wwv_flow_imp.g_varchar2_table(187) := '21DC58BF5A3ADAAD17FFD930FDE2A242D969DC969297C732ACB1B8A7FB354DCD2D32F7E3F952576FBD8DEF8616FEBC12C90B94A63B0FF54B43010280346C54AF54C9E9AA81DA252B2B4BB6D97AB40C1ED0CB2B4CD4D386C092E595F2D9E7DF4867A7FDCF';
wwv_flow_imp.g_varchar2_table(188) := '4B7AB09F7EEACFF6E5D9C8815310709F000180FBDA84123910D083039B1B2B45BF1570720C1ED84FB6DE6A13C9CEE27BAD13B7743B37D4DE299F7DB14096AF58EDA86A99993EF5BDBF2F83FD1CA971B2DB040800DCD62294C7B1801E0FD0A006073A1D17';
wwv_flow_imp.g_varchar2_table(189) := 'A007088E193D5C860EEEAB3669E3DBAD63F814BE60ADFAD6BF7869857CF5F50F120A851CD5442FE91B28E84D9F71A4C6C96E1420007063AB5026C702FA2F74FD2620D4D6E4F8DAA2A202D966AB4DA56749A1E36BB920F504AA6B1AE43FEAA9BFA1A1D171';
wwv_flow_imp.g_varchar2_table(190) := 'E1F3F2CBC49F5BE4F83A2E40C08D0204006E6C15CA14B3405B6B8334EB45835440E0F41834A8BF6CA9DE08E4E6FA9C5ECAF92920106C6993795F2F92E5CB57392EAD9EDFAF97F5CDCCA26F38C6E302D70A1000B8B6692858AC029D1D21696C58EDF89380';
wwv_flow_imp.g_varchar2_table(191) := 'CE2F33335336DD64B86C327280646664C45A04AE7391404767977CF7C3F2F0D43E2783FCD657414FF10BA80D7DF84CE4A246A52871112000880B2389B84D20FC49A0698D845A9DBFE6D575C9CBCB952DB7182503FB95B9AD6A94C781C0B2156B64DEFCEF';
wwv_flow_imp.g_varchar2_table(192) := 'A5A5A5D5C1553F9F1AC8EF2539B97C1A8A098F8B5C2F4000E0FA26A280DD11685301809E2EE864F5C00DF32B28C897D19B0E9381FDCB7802EC4E4324F15ABD98CF3235ADEFDBEF164B5353734C39EB4D7CF440BFCCCCEC98AEE722045241800020155A89';
wwv_flow_imp.g_varchar2_table(193) := '32764B404F11D49B09E96020D643BF11D86C93613278501FF569801903B13A26F2BA4EF5AA7FF1B20A59F05D79CC4FFC7A6E7F5EA0274FFD896C28D2768D0001806B9A8282245AA0A3BD556D285419D3D880F565D35307371D3544860D515BBDB28640A2';
wwv_flow_imp.g_varchar2_table(194) := '9BCC56FAED1D9DB268F12AF9FE87258ED6EEFF65E2E1E97D6A943F6BF9DB62E7A434102000488346A40ACE045A9A6BD413625D4C3305D6E7E4F3F964C4F0C13272787FF165B3DBA0B31688CFD96DA176F961D10AF961E152B5515447CC89EA9DFBF48D9F';
wwv_flow_imp.g_varchar2_table(195) := '15FD6226E4C21415200048D186A3D8DD13D06302F4D880EE7C16D025D0B30606F6EF234386F497B29E056A2B183E0F74AF65A25FAD07775656D7CB92A5AB65855ABDAFABCBD90A901BA6AE5FF7E7AA35FC99D79FC816236D370B1000B8B975285BC2053A';
wwv_flow_imp.g_varchar2_table(196) := 'D52A82CD8D6B1C6F2CB4B182E9710243870C942183FB489E9FF9E2F16CBCE6609B2C59B65ACA17AF90D6D6D846F4FF541EB5EAA3BEE9E7E69532B0339E8D445A2927400090724D46811321A0F714D06F049C2E271CA92CBD7B97A92586FB497F358D9041';
wwv_flow_imp.g_varchar2_table(197) := '83B1B5989EBFBF725595942F5929555535B125F28BAB7CFE82F0CE7D19197CB6890B2889A4B40001404A371F858FB7805E4930A8C608C43A6DF097E5D1BB0F0E1EDC5F06F4EB25BDCB5842D6AABD3AD52BFDAAEA0659B1B2524DE5535B3E77E3DBFE8679';
wwv_flow_imp.g_varchar2_table(198) := '65FB72D5EBFE9E6AE0265B415BB5017FEE1D010200EFB43535B52DB0565A83F5D212AC75BCCB60B42C7430D0BB774FE9DFA74C7AF72995DC1CE6986BAF606B482A2A6A64E5EA2AA9ACACEAD677FD5FFA67AA1BBE9ED6A703000E0410F86F0102007A0402';
wwv_flow_imp.g_varchar2_table(199) := '1104F4FA013A08686B69886B20B03EBBE2E242E9DFB797F4EDD3538A8B029EF91EAD07F255D736FE78D35F13D3A63C569D568FECCFCD2B911CF5CA9F030104362E400040CF40C04240DFB0F4A781563575B0AB33F6E966D1B2D1D30AF5DB01BD23614971';
wwv_flow_imp.g_varchar2_table(200) := '811415E54B56667AEC45D0A1E6E9D7D5374B4D5D8354D7D4ABA7FCEAB8BDDAFFA569B62F101EE0C7133FFF5923602D4000606DC41908FC24A0070BB6B6D4C765D680156B6161BE0A088AA5A4A4404A4A8BA4283FD7F56F093ABBD64A4363506A6B1BA426';
wwv_flow_imp.g_varchar2_table(201) := 'FCAB5E1A1B9D6FD16C65B3E19FEBE97C7A119FDCBC62D14FFE1C0820604F8000C09E136721F05F027AC741FD5640AF23A03F1524EB28EB592AF9815CF55D3B4FFDF44B5EAEFAC69DE797DC244F3B0CB684A4596DB0130CB64A73B3FA156C519B2F05D513';
wwv_flow_imp.g_varchar2_table(202) := '7E6DB228D4D6BC39E2F7178ACF9FAF02A3F4785B92343C324240091000D00D10E8A640A8AD291C0CB4875ABA9952F72ED71B170554701050EB11E4FA73245BAD5098A9962BCE56830FF5B2C599EA9342F68FFF9C99A59E9A7F5CC130D4DE219D1D5DD2AE';
wwv_flow_imp.g_varchar2_table(203) := '46DCEB65753BD52FFDDABEA3B333FCCFEDEACFF56E7AE19B7C734BCC1BEC74AF76EBAE0E3FEDABEFFAFADB3E23FAE3214A1A5E162000F072EB53F7B80A747575A8ED875530A00282CE8EB6B8A6EDE9C4D4C23D3E5F5EF835BFFEC5810002F1112000888F';
wwv_flow_imp.g_varchar2_table(204) := '23A920F05F020403DDEC101BDCF4F5C0BE1EEA9F39104020BE020400F1F5243504FE4740AF2E180A35AB4F0441E39F09DCDC3C7A173EFDA4AF37E5E1A6EFE696A26CE9224000902E2D493D5242404F295C1708ACFBA5DF1478F9C8CAF6FF78C3CFE39BBE';
wwv_flow_imp.g_varchar2_table(205) := '973B02753722400060849D4C115827A03723EA686F5103ED5AC33F13B5CE802BBCD56B7C3D702F7CD3CFCE553FDD3FADD1156E140281040910002408966411884540BF11D0B309F420C2CECE90FAD99EB26F09F434BD4C352F3F33CBA76EFCFA49DFAF48';
wwv_flow_imp.g_varchar2_table(206) := 'F8961F4BBFE01A0412214000900855D244208E02FAB3C1BA602014DEADB0530509FA4D4157970A0E12B432A19DE2EB29797AE11DBDB35E46A69A7218FEE50BDFF45990C78E20E72060568000C0AC3FB923D06D81AEAECEF05B021D0CAC5DDBA97632EC92';
wwv_flow_imp.g_varchar2_table(207) := 'AEF04FFDEFBBD62D54A47EE94062ADACFBA9FEE7A7058CF48D3CBC908E7A45BFEEF7FAA7FE95297A605E86FE77FAA7FAA5FF9DBED9EB9B3E23F3BBDD7424808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E';
wwv_flow_imp.g_varchar2_table(208) := '0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A0002';
wwv_flow_imp.g_varchar2_table(209) := '0820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E00020820';
wwv_flow_imp.g_varchar2_table(210) := '80801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A000208208080';
wwv_flow_imp.g_varchar2_table(211) := '51010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901';
wwv_flow_imp.g_varchar2_table(212) := '020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200';
wwv_flow_imp.g_varchar2_table(213) := 'A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EE';
wwv_flow_imp.g_varchar2_table(214) := 'E48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E';
wwv_flow_imp.g_varchar2_table(215) := '0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A0002';
wwv_flow_imp.g_varchar2_table(216) := '0820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E00020820';
wwv_flow_imp.g_varchar2_table(217) := '80801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A000208208080';
wwv_flow_imp.g_varchar2_table(218) := '51010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901';
wwv_flow_imp.g_varchar2_table(219) := '020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200';
wwv_flow_imp.g_varchar2_table(220) := 'A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EE';
wwv_flow_imp.g_varchar2_table(221) := 'E48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E';
wwv_flow_imp.g_varchar2_table(222) := '0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A0002';
wwv_flow_imp.g_varchar2_table(223) := '0820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E00020820';
wwv_flow_imp.g_varchar2_table(224) := '80801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A000208208080';
wwv_flow_imp.g_varchar2_table(225) := '51010200A3FC648E0002082080801901020033EEE48A00020820808051010200A3FC648E0002082080801901020033EEE48A0002082080805181FF07E373A1A5721DC3C80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10921701097771817)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10924694262771824)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10924839516771824)
,p_name=>'Contribution Rights'
,p_static_id=>'contribution-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator,Contributor',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10924742007771824)
,p_name=>'Reader Rights'
,p_static_id=>'reader-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if nvl(apex_app_setting.get_value(',
    '    p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
    '    -- allow user not in the ACL to access the application',
    '    return true;',
    'else',
    '    -- require user to have at least one role',
    '    return apex_acl.has_user_any_roles (',
    '        p_application_id => :APP_ID, ',
    '        p_user_name      => :APP_USER);',
    'end if;')))).to_clob
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(10924234446771820)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(10924432690771824)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(10924567275771824)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(10925914834771830)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(10921990744771817)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(10925695465771828)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(10922158103771817)
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11050076278772279)
,p_lov_name=>'ACCESS_ROLES'
,p_static_id=>'access-roles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10934800719771867)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(10934800719771867)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10935547716771870)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10935156978771869)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10948690081772039)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_static_id=>'desktop-theme-styles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11057224401772287)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(11057224401772287)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11057572414772287)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
,p_static_id=>'email'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11073006316772301)
,p_lov_name=>'FEEDBACK_RATING'
,p_static_id=>'feedback-rating'
,p_lov_query=>'.'||wwv_flow_imp.id(11073006316772301)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11074148590772302)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_static_id=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11073717858772302)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_static_id=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11073300249772301)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_static_id=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11084836113772308)
,p_lov_name=>'FEEDBACK_STATUS'
,p_static_id=>'feedback-status'
,p_lov_query=>'.'||wwv_flow_imp.id(11084836113772308)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11085133123772308)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
,p_static_id=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11085501874772308)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
,p_static_id=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11085981878772309)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
,p_static_id=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11086309537772309)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
,p_static_id=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10966540495772111)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_static_id=>'timeframe-4-weeks'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10949352712772054)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_static_id=>'user-theme-preference'
,p_lov_query=>'.'||wwv_flow_imp.id(10949352712772054)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10949659770772054)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
,p_static_id=>'yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11016334434772220)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_static_id=>'view-as-report-chart'
,p_lov_query=>'.'||wwv_flow_imp.id(11016334434772220)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11017006325772221)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_static_id=>'chart'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(11016661152772221)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_static_id=>'report'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(10926228493771832)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(11128601786772372)
,p_group_name=>'User Settings'
,p_static_id=>'user-settings'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(10918309459771768)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11112103446772348)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10918511398771769)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(10919228199771775)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>2461244121526
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10917640892771764)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10922678463771817)
,p_build_option_name=>'Feature: About Page'
,p_static_id=>'feature-about-page'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10921990744771817)
,p_build_option_name=>'Feature: Access Control'
,p_static_id=>'feature-access-control'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10922024244771817)
,p_build_option_name=>'Feature: Activity Reporting'
,p_static_id=>'feature-activity-reporting'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10922303324771817)
,p_build_option_name=>'Feature: Configuration Options'
,p_static_id=>'feature-configuration-options'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10922158103771817)
,p_build_option_name=>'Feature: Feedback'
,p_static_id=>'feature-feedback'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11128820559772373)
,p_build_option_name=>'Feature: Push Notifications'
,p_static_id=>'feature-push-notifications'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10922738203771817)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_static_id=>'feature-theme-style-selection'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11129150042772374)
,p_build_option_name=>'Feature: User Settings'
,p_static_id=>'feature-user-settings'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10917919308771765)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_created_on=>wwv_flow_imp.dz('20260722121527Z')
,p_updated_on=>wwv_flow_imp.dz('20260722121527Z')
,p_created_by=>'APEXPDB'
,p_updated_by=>'APEXPDB'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'test2'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10934252149771858)
,p_plug_name=>'test2'
,p_static_id=>'test2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'test2 - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10926857439771838)
,p_plug_name=>'test2'
,p_static_id=>'test2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10928872762771849)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10926857439771838)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10927757289771845)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10926857439771838)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10928528367771848)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10926857439771838)
,p_prompt=>'Remember me'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10928129578771848)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10926857439771838)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10927307288771844)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10926857439771838)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10932966735771853)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10932966735771853
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10932509006771853)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10932509006771853
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10929284245771850)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10929284245771850
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10930232291771852)
,p_page_process_id=>wwv_flow_imp.id(10929284245771850)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10930791183771852)
,p_page_process_id=>wwv_flow_imp.id(10929284245771850)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10929786247771852)
,p_page_process_id=>wwv_flow_imp.id(10929284245771850)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10931101073771852)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10931101073771852
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10932135999771853)
,p_page_process_id=>wwv_flow_imp.id(10931101073771852)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10931683664771853)
,p_page_process_id=>wwv_flow_imp.id(10931101073771852)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11121383724772355)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(11120913787772355)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(10921990744771817)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11125674278772363)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(11121383724772355)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(11117282388772353)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11122197662772356)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(11121383724772355)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11120526524772355)
,p_plug_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_parent_plug_id=>wwv_flow_imp.id(11119391300772354)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(11113928176772351)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11111578766772346)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10918309459771768)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11119391300772354)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11120913787772355)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11119731262772355)
,p_plug_name=>'Configuration'
,p_static_id=>'configuration'
,p_parent_plug_id=>wwv_flow_imp.id(11119391300772354)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(11112383843772349)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_required_patch=>wwv_flow_imp.id(10922303324771817)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11126001286772364)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback'
,p_parent_plug_id=>wwv_flow_imp.id(11120913787772355)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(10922158103771817)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11128285593772371)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback-2'
,p_parent_plug_id=>wwv_flow_imp.id(11126001286772364)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(11118543293772354)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11126483218772364)
,p_name=>'Report'
,p_static_id=>'report'
,p_parent_plug_id=>wwv_flow_imp.id(11126001286772364)
,p_template=>4073835273271169698
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value                              as feedback_status, ',
'       (select count(*)',
'          from apex_team_feedback f',
'         where f.application_id  = :APP_ID',
'           and f.feedback_status = l.return_value ) as feedback_count ',
'  from apex_application_lov_entries l',
' where l.application_id      = :APP_ID',
'   and l.list_of_values_name = ''FEEDBACK_STATUS''',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11127544328772370)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11127176584772370)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11122535029772356)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(11121383724772355)
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name,',
'       (select count(*)',
'          from apex_appl_acl_user_roles ur',
'         where r.role_id = ur.role_id) user_count,',
'       r.role_id',
'  from apex_appl_acl_roles r',
' where r.application_id = :APP_ID',
' group by r.role_name, r.role_id',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2101991461423792139
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11124025455772362)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11123244413772361)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11123626142772361)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11120112577772355)
,p_plug_name=>'User Interface'
,p_static_id=>'user-interface'
,p_parent_plug_id=>wwv_flow_imp.id(11119391300772354)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(11113191197772350)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_required_patch=>wwv_flow_imp.id(10922738203771817)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11121741548772356)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11121383724772355)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:10042,RP'
,p_icon_css_classes=>'fa-user-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11124782976772363)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11121741548772356)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11125136272772363)
,p_event_id=>wwv_flow_imp.id(11124782976772363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11122535029772356)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922303324771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10935990019771871)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10936186352771872)
,p_plug_name=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from sys.dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10936719700771992)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>10936719700771992
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10938202033772021)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10940288963772027)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10939090815772023)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10937935450772009)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10938643048772022)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10939408932772024)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10939845930772025)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10943059964772031)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10944471971772034)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10935990019771871)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10943705779772034)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10936186352771872)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43115019239409312)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10944821155772035)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_static_id=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>10944821155772035
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922738203771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10945644432772035)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10945722199772035)
,p_plug_name=>'Configure Appearance'
,p_static_id=>'configure-appearance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10946731347772036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10945644432772035)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(10947211693772037)
,p_button_id=>wwv_flow_imp.id(10946731347772036)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10947732098772038)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10945644432772035)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43115248561409314)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:RP&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10948575325772039)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10945722199772035)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10949253167772054)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10945722199772035)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_grid_label_column_span=>0
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10950775171772056)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_static_id=>'save-end-user-style-preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>10950775171772056
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10950394919772055)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_static_id=>'save-theme-style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>10950394919772055
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10951906814772057)
,p_plug_name=>'Filters'
,p_static_id=>'filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10951167344772057)
,p_plug_name=>'Hourly Page Events'
,p_static_id=>'hourly-page-events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10951294768772057)
,p_region_id=>wwv_flow_imp.id(10951167344772057)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10953259480772059)
,p_chart_id=>wwv_flow_imp.id(10951294768772057)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from sys.dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10954437965772061)
,p_chart_id=>wwv_flow_imp.id(10951294768772057)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10953879303772060)
,p_chart_id=>wwv_flow_imp.id(10951294768772057)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10951839578772057)
,p_name=>'Latest Activity'
,p_static_id=>'latest-activity'
,p_template=>4073835273271169698
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10963300694772106)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10962943683772104)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10951368567772057)
,p_plug_name=>'Most Active Pages'
,p_static_id=>'most-active-pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10951465088772057)
,p_region_id=>wwv_flow_imp.id(10951368567772057)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10958296971772063)
,p_chart_id=>wwv_flow_imp.id(10951465088772057)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10958817256772063)
,p_chart_id=>wwv_flow_imp.id(10951465088772057)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10959480620772063)
,p_chart_id=>wwv_flow_imp.id(10951465088772057)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10951787362772057)
,p_name=>'Recent Errors'
,p_static_id=>'recent-errors'
,p_template=>4073835273271169698
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10960640046772069)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10961076722772072)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10951580038772057)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10951690819772057)
,p_region_id=>wwv_flow_imp.id(10951580038772057)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10955711543772062)
,p_chart_id=>wwv_flow_imp.id(10951690819772057)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10956323762772062)
,p_chart_id=>wwv_flow_imp.id(10951690819772057)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10956919142772062)
,p_chart_id=>wwv_flow_imp.id(10951690819772057)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10964670233772107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10951167344772057)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:10031,RP'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10965013913772108)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10951368567772057)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_static_id=>'view-activity-details'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:10034,RP'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10965850934772108)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10951787362772057)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_static_id=>'view-recent-errors'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:10032,RP'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10952066225772057)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10951906814772057)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10952176455772057)
,p_name=>'Change Filters'
,p_static_id=>'change-filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10967381720772119)
,p_event_id=>wwv_flow_imp.id(10952176455772057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10951167344772057)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10967838804772121)
,p_event_id=>wwv_flow_imp.id(10952176455772057)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10951580038772057)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10968301867772121)
,p_event_id=>wwv_flow_imp.id(10952176455772057)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10951368567772057)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10968865679772121)
,p_event_id=>wwv_flow_imp.id(10952176455772057)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10951787362772057)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10969388807772122)
,p_event_id=>wwv_flow_imp.id(10952176455772057)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10951839578772057)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11004277134772196)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11004199443772196)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11005205952772196)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>11005205952772196
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11008922913772212)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11006908982772206)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11008588744772210)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11007779030772208)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11009391987772213)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11007352453772207)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11008150255772209)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11006556421772204)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11012399065772217)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11004496295772196)
,p_plug_name=>'Top Users Chart'
,p_static_id=>'top-users-chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(11004572059772196)
,p_region_id=>wwv_flow_imp.id(11004496295772196)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(11015745276772220)
,p_chart_id=>wwv_flow_imp.id(11004572059772196)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_series_type=>'donut'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11013007033772217)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11004199443772196)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11004802507772196)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11004277134772196)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11004629731772196)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11004277134772196)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11004371880772196)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11014394032772218)
,p_event_id=>wwv_flow_imp.id(11004371880772196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11004199443772196)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11017707739772223)
,p_event_id=>wwv_flow_imp.id(11004371880772196)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11004199443772196)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10996683090772185)
,p_plug_name=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10997253283772185)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>10997253283772185
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10999348535772191)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10999737484772192)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11000516640772194)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11000128770772193)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10998552261772188)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10998940222772190)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11003068145772195)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11003757930772196)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10996683090772185)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10982123575772159)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10982016452772159)
,p_plug_name=>'Page Performance'
,p_static_id=>'page-performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10982627905772160)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>10982627905772160
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10986390838772173)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10989100468772180)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10985923538772172)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10985531462772172)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10988322373772178)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10987105117772175)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10984776896772170)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10988780222772179)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10983959533772167)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10984358857772169)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10986715574772174)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10987975007772177)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10987543157772176)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10985141967772170)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10994007772772183)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10994752966772184)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10982016452772159)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10981988629772159)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10982123575772159)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10982216168772159)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10996095393772185)
,p_event_id=>wwv_flow_imp.id(10982216168772159)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10982016452772159)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10970015240772122)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10969961567772122)
,p_plug_name=>'Page Views'
,p_static_id=>'page-views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10970513796772122)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>10970513796772122
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10974239639772145)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10973001068772142)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10975489487772148)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10975042056772147)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10974620202772146)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10973486726772143)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10973878314772144)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10971884955772135)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10972614989772141)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10972289717772139)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10979469486772152)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10980175540772153)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10969961567772122)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10969842120772122)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10970015240772122)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10970113856772122)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10981407628772159)
,p_event_id=>wwv_flow_imp.id(10970113856772122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10969961567772122)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11018342155772223)
,p_plug_name=>'Automations Log'
,p_static_id=>'automations-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11018987009772223)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>11018987009772223
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11021087167772242)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11023439225772248)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11022242032772245)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11020285014772239)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11023002180772247)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11022687830772246)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&SESSION.::&DEBUG.:10036,RP:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11020627029772241)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11021406551772243)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11021887575772244)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11026862268772251)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11027557270772251)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11018342155772223)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922024244771817)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11028277484772251)
,p_plug_name=>'Automation Execution'
,p_static_id=>'automation-execution'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11030670838772254)
,p_name=>'Messages'
,p_static_id=>'messages'
,p_template=>2102002977963900996
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11031756812772258)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11031390720772258)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11032165859772259)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11032583743772259)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11029015178772252)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11028277484772251)
,p_prompt=>'Automation'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11028653876772252)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11028277484772251)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11029482523772252)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11028277484772251)
,p_prompt=>'Started'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11029802885772252)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11028277484772251)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11030218988772253)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_static_id=>'get-log-detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11030218988772253
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10921990744771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11034498760772261)
,p_plug_name=>'Access Control Configuration'
,p_static_id=>'access-control-configuration'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11034572688772261)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11035632070772262)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11034572688772261)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11036084291772262)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11034572688772261)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(11036533867772263)
,p_button_id=>wwv_flow_imp.id(11036084291772262)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43116105524409383)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11037459923772264)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11034498760772261)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2320077351817916916
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11037881530772265)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_static_id=>'set-access-control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>11037881530772265
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10921990744771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11038255212772265)
,p_plug_name=>'Manage User Access'
,p_static_id=>'manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11039085551772265)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>11039085551772265
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11041172448772273)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11040302109772271)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11040703395772272)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11042775134772275)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11043875143772276)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11038255212772265)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&SESSION.::&DEBUG.:10043'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11044256553772276)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11038255212772265)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:10042'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11043441042772275)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11038255212772265)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11038359295772265)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11038255212772265)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11044963257772276)
,p_event_id=>wwv_flow_imp.id(11038359295772265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11038255212772265)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10921990744771817)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045596745772276)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11045426736772276)
,p_plug_name=>'Form on Manage User Access'
,p_static_id=>'form-on-manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11046506632772277)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11045596745772276)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(11047004498772277)
,p_button_id=>wwv_flow_imp.id(11046506632772277)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11048319356772278)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11045596745772276)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11047561600772277)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11045596745772276)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11047906383772278)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11045596745772276)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11049142011772278)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11045426736772276)
,p_item_source_plug_id=>wwv_flow_imp.id(11045426736772276)
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11048726261772278)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11045426736772276)
,p_item_source_plug_id=>wwv_flow_imp.id(11045426736772276)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11049976678772279)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11045426736772276)
,p_item_source_plug_id=>wwv_flow_imp.id(11045426736772276)
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11049525959772279)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11045426736772276)
,p_item_source_plug_id=>wwv_flow_imp.id(11045426736772276)
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11051178557772283)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_static_id=>'cannot-remove-yourself-from-administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11052353941772284)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11052353941772284
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11051520135772284)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(11045426736772276)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_static_id=>'initialize-form-manage-user-access'
,p_internal_uid=>11051520135772284
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11051929635772284)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11045426736772276)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_static_id=>'process-form-manage-user-access'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11051929635772284
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10921990744771817)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052722553772285)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11052868945772285)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11054957139772286)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11052722553772285)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(11055459205772286)
,p_button_id=>wwv_flow_imp.id(11054957139772286)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11052906950772285)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11052722553772285)
,p_button_name=>'NEXT'
,p_static_id=>'next'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43116660713409424)
,p_branch_action=>'f?p=&APP_ID.:10044:&SESSION.::&DEBUG.:10044,RP&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(11052906950772285)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11056723835772286)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11052868945772285)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11056367910772286)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11052868945772285)
,p_prompt=>'Roles'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11057186772772287)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11052868945772285)
,p_prompt=>'Username Format'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11058256047772288)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_static_id=>'create-collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11052906950772285)
,p_internal_uid=>11058256047772288
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10921990744771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11053009362772285)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11053392659772285)
,p_name=>'Exceptions'
,p_static_id=>'exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(11053126325772285)
,p_template=>2665811232373458102
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11060511972772293)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11060128198772292)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11053543897772285)
,p_plug_name=>'Hidden Items'
,p_static_id=>'hidden-items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11063418666772297)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_static_id=>'no-valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11053476150772285)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_static_id=>'p10044-valid-count-users-to-add'
,p_parent_plug_id=>wwv_flow_imp.id(11053126325772285)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11062715824772296)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_static_id=>'valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11053126325772285)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11064523638772297)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11053009362772285)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(11065014108772298)
,p_button_id=>wwv_flow_imp.id(11064523638772297)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11064145610772297)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11053009362772285)
,p_button_name=>'PREVIOUS'
,p_static_id=>'previous'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11053664247772285)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11053009362772285)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11066305234772298)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11053543897772285)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11065531382772298)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11053543897772285)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11065949445772298)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11053543897772285)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11066787959772298)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_static_id=>'add-users-to-access-control-list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11053664247772285)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>11066787959772298
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11067128392772299)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11067128392772299
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(10922158103771817)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11067684297772299)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11067545047772299)
,p_plug_name=>'Form on Feedback'
,p_static_id=>'form-on-feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11070730589772300)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11067684297772299)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(11071212187772300)
,p_button_id=>wwv_flow_imp.id(11070730589772300)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11067774226772299)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11067684297772299)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43116925301409426)
,p_branch_action=>'f?p=&APP_ID.:10051:&SESSION.::&DEBUG.:RP'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11071785411772300)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11067545047772299)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11074881843772302)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11067545047772299)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11072146524772301)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11067545047772299)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11072904796772301)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(11067545047772299)
,p_prompt=>'Experience'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11072534410772301)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11067545047772299)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from sys.dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11077621938772304)
,p_validation_name=>'At least One Feedback Required'
,p_static_id=>'at-least-one-feedback-required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11075281530772303)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_static_id=>'submit-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'SUBMIT_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11067774226772299)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>11075281530772303
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11076239132772304)
,p_page_process_id=>wwv_flow_imp.id(11075281530772303)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11075707007772303)
,p_page_process_id=>wwv_flow_imp.id(11075281530772303)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11076703376772304)
,p_page_process_id=>wwv_flow_imp.id(11075281530772303)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11077239565772304)
,p_page_process_id=>wwv_flow_imp.id(11075281530772303)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(10922158103771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11068119972772299)
,p_plug_name=>'Feedback Submitted'
,p_static_id=>'feedback-submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11068063323772299)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11068119972772299)
,p_button_name=>'CLOSE'
,p_static_id=>'close'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'w40p'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(11079383065772305)
,p_button_id=>wwv_flow_imp.id(11068063323772299)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922158103771817)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
,p_last_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_last_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11069456833772299)
,p_plug_name=>'Manage Feedback'
,p_static_id=>'manage-feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11092000659772312)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>11092000659772312
,p_updated_on=>wwv_flow_imp.dz('20260722121545Z')
,p_updated_by=>'GONZALEZFJU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11094046742772319)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11094444593772320)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11094857409772321)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11093242120772317)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11098087559772329)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11093616701772318)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11095261139772322)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(11073006316772301)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11095606013772323)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11096411510772325)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11096050217772324)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(11084836113772308)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11097280774772327)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11097653183772328)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11096839070772326)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11102660878772332)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11103375030772333)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11069456833772299)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11069334098772299)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11069456833772299)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11104044313772333)
,p_event_id=>wwv_flow_imp.id(11069334098772299)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11069456833772299)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10924694262771824)
,p_required_patch=>wwv_flow_imp.id(10922158103771817)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11068817274772299)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11068756072772299)
,p_plug_name=>'Form Items Region'
,p_static_id=>'form-items-region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11081015540772306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11068817274772299)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(11081528886772306)
,p_button_id=>wwv_flow_imp.id(11081015540772306)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11069139205772299)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11068817274772299)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11068994634772299)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11068817274772299)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11083924417772307)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11068756072772299)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11084768261772308)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11068756072772299)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11083105003772307)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11068756072772299)
,p_prompt=>'Filed'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11082319159772307)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11068756072772299)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11082772152772307)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11068756072772299)
,p_prompt=>'Page'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11083529435772307)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11068756072772299)
,p_prompt=>'Rating'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11084382776772307)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11068756072772299)
,p_prompt=>'Response'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11087076787772309)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11068756072772299)
,p_prompt=>'User Agent'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11090692916772311)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11069139205772299)
,p_internal_uid=>11090692916772311
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11091036560772311)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11091036560772311
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11089750083772311)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_static_id=>'delete-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'DELETE_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11069139205772299)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>11089750083772311
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11090297050772311)
,p_page_process_id=>wwv_flow_imp.id(11089750083772311)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11087440256772310)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_static_id=>'load-data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11087440256772310
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11087819657772310)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_static_id=>'reply-to-feedback'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_UTIL',
  'package_method', 'REPLY_TO_FEEDBACK',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11068994634772299)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>11087819657772310
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11088384356772310)
,p_page_process_id=>wwv_flow_imp.id(11087819657772310)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11089370627772310)
,p_page_process_id=>wwv_flow_imp.id(11087819657772310)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11088877082772310)
,p_page_process_id=>wwv_flow_imp.id(11087819657772310)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10926228493771832)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(10922678463771817)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11105052883772335)
,p_plug_name=>'About Page'
,p_static_id=>'about-page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'Text about this application can be placed here.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(10922678463771817)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11105787745772335)
,p_plug_name=>'Search Dialog'
,p_static_id=>'search-dialog'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11106107378772335)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11105787745772335)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11128601786772372)
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(11129150042772374)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11133848341772380)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11134222795772381)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user-2'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER and workspace_id = :WORKSPACE_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(11134799276772382)
,p_region_id=>wwv_flow_imp.id(11134222795772381)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11135222670772383)
,p_plug_name=>'Settings'
,p_static_id=>'settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(11132776676772378)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11128601786772372)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(11128820559772373)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11130547407772377)
,p_plug_name=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11130169732772376)
,p_plug_name=>'Push Notifications Not Supported'
,p_static_id=>'push-notifications-not-supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported u-DisplayNone'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11129794043772375)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&SESSION.::&DEBUG.'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11131008222772377)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11130547407772377)
,p_prompt=>'Enable push notifications on this device'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11131395534772377)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_static_id=>'change-p20010-enable-push'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11131705154772377)
,p_event_id=>wwv_flow_imp.id(11131395534772377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_static_id=>'subscribe-to-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.subscribePushNotifications();')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11132297868772378)
,p_event_id=>wwv_flow_imp.id(11131395534772377)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_static_id=>'unsubscribe-from-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.unsubscribePushNotifications();')).to_clob
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
