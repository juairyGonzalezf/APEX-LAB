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
,p_release=>'26.1.0'
,p_default_workspace_id=>2998791338437546
,p_default_application_id=>304
,p_default_id_offset=>0
,p_default_owner=>'APEXPDB'
);
end;
/
 
prompt APPLICATION 304 - test
--
-- Application Export:
--   Application:     304
--   Name:            test
--   Date and Time:   06:50 Tuesday May 19, 2026
--   Exported By:     APEX_260100
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     26
--       Items:                   41
--       Validations:              2
--       Processes:               21
--       Regions:                 63
--       Buttons:                 37
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
--   Version:         26.1.0
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'test')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TEST')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'0849BDAEE3A07E3BEE149335FD58F463D696FD8EC3E64B86E7A237DB44692CE2'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(5369992949454226)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'test'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(5376699992454903)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'test'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461180064217
,p_version_scn=>'212263726'
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>5586993018456924
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(5370793345454262)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(5371457848454684)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_304_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>5586993018456924
,p_name=>'App 304 Push Notifications Credentials'
,p_static_id=>'app-304-push-notifications-credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5365791103453994)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5366275494454092)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5366580498454092)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5367414714454093)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5366869502454092)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5366008570454089)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5367117493454093)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5367797570454093)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5368050831454093)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5369549392454121)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5368355712454094)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5368661245454094)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5369207270454095)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5368932566454095)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5568209449456763)
,p_name=>'Access Control'
,p_static_id=>'access-control'
,p_required_patch=>wwv_flow_imp.id(5373803694454890)
,p_version_scn=>'SH256:sUh16YlciRG9klSoZtcZTfvvJD2zYdjKQV9D3IfGUbU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5569207069456763)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_static_id=>'access-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5568735631456763)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_static_id=>'users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5564906072456760)
,p_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
,p_version_scn=>'SH256:YHgkfo-ih9pxHHGLxqP0cHF8ck23_hWgwdn-JBp8Nts'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5566451297456761)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5567920179456762)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_static_id=>'automations-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
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
 p_id=>wwv_flow_imp.id(5565400676456761)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5566990359456762)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_static_id=>'page-performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5567424294456762)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_static_id=>'page-views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5565984887456761)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_static_id=>'top-users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5563396812456758)
,p_name=>'Application Configuration'
,p_static_id=>'application-configuration'
,p_required_patch=>wwv_flow_imp.id(5374201039454890)
,p_version_scn=>'SH256:01z6ukJ0-1Z6Us8cQjg4pfcVIVbOCpaLhLFvRKRxDnA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5563869366456759)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_static_id=>'configuration-options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(5374201039454890)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5569563947456764)
,p_name=>'Feedback'
,p_static_id=>'feedback'
,p_required_patch=>wwv_flow_imp.id(5374057713454890)
,p_version_scn=>'SH256:s15aWBuZhABHOwKzpyU4guxD38vSpSxZDCaivjs8UQE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5570011678456764)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_static_id=>'user-feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5371457848454684)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:ENfiZ0d6Nh4i08WFwpUfYcw1twtXcOUNWso2u-lTLsE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5558509255456725)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_static_id=>'about'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5374571628454890)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5560119478456727)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_static_id=>'about-page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(5558509255456725)
,p_required_patch=>wwv_flow_imp.id(5374571628454890)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5557873879456725)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5560406904456728)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5558295130456725)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_static_id=>'feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5374057713454890)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5559662221456727)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(5558509255456725)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5561045840456729)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_static_id=>'list_item-2'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(5560406904456728)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5559107784456726)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_static_id=>'page-help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(5558509255456725)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5374571628454890)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5586623705456921)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_static_id=>'settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(5560406904456728)
,p_required_patch=>wwv_flow_imp.id(5580133270456814)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5561580092456729)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(5560406904456728)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5370793345454262)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:y5l0-UqDjFC6wqnlCbiSMY1bzQer7biac0Fr4TjaXKU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5562112027456730)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(5376568185454903)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5385059542455079)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5564160866456760)
,p_name=>'User Interface'
,p_static_id=>'user-interface'
,p_required_patch=>wwv_flow_imp.id(5374696089454890)
,p_version_scn=>'SH256:R-pmMXiW-l0wY_x2obP86PPDqqaX6VkO83PAveuG_Yg'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5564664464456760)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_static_id=>'theme-style-selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(5374696089454890)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5583708087456913)
,p_name=>'User Settings'
,p_static_id=>'user-settings'
,p_required_patch=>wwv_flow_imp.id(5580133270456814)
,p_version_scn=>'SH256:OQGnb1n7GAjW62UabHIgG9OuJxcFn8bMLZXt-Fu7xMI'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5584136404456914)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(5579864573456814)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000F0A49444154785EED9D7B7414D51DC77F33FB487613F24E804004AB823CAC52258020A0F558B515242F21088D074FB2A2D55A156DEDD1F48F564EADA75A05B251';
wwv_flow_imp.g_varchar2_table(2) := '8F88242B8959B041058F16B42201E4A50D288F081A2040480E21EF9D9DDB3BCBD398EC66EF9D999D757F73CE1E12727FF7F7BBDFF9ECBD77EE6B04C00B15E05040E0B045535400102084804B0104884B3E34468090012E0510202EF9D018014206B81440';
wwv_flow_imp.g_varchar2_table(3) := '80B8E44363040819E0520001E2920F8D112064804B0104884B3E34468090012E0510202EF9D0D890004D9F5E6C4E4D1D2DC250304117FD4860B298ECA259EC1623E19649B255F678DB65308317A2E8A71EBC274FEE91376E2C968C56FE10034484398555';
wwv_flow_imp.g_varchar2_table(4) := '2329221304224CA0E264D2CFCFE9C76234A10C128F87C6F125BD695B64816CA5686D7195667F03209050C5A72B40B9BFAB488D924C936402E761194F0B1E1FAAC2FF44FC9EA6E5D82680B04526F21649923755BE9ED7A457D974048808F945AB6710812C';
wwv_flow_imp.g_varchar2_table(5) := 'A24E6FD4AB8011E6671305697159C9ACF7F4AA953407A8B0D0696913930B08111EA7AB8F4644D80D0D5171C9374084E76349E38AD2D222A5D9D3ECD214A0F98E8A21B4FFFB2E8DFE7ACD4A8019FB53E00B8FC57B67E5CB7927B592493380E616558C9605';
wwv_flow_imp.g_varchar2_table(6) := 'D387D4C110AD82C77CFBA5C041E225335DAFE6D4F62B7590893401684EA17B8A2092B5D8410EF26E6897FC34118499AE65599FA8ED427580949A8708A66D3450BBDAC1627E5C0AB4D39A2853ED9A485580EE2AACB60F10BB283CC268AEA2A2B1360A10A8';
wwv_flow_imp.g_varchar2_table(7) := '3D43AC99D5A577B5ABE5405580E638DCCB0520BF552B38CC477D0508086FBA4AB20AD4CA593580F21D554A506FA81518E6A3A902F79597642F57C3832A00E53E5A61B374988ED08012D5080AF3D05C81A633B235438DA64C1580E616B91D74847999E6C5';
wwv_flow_imp.g_varchar2_table(8) := '4607AA2940E71E1F28736695F066A80240748AC251B597769C47F20683F6FA29406FFCDEB292AC31BC531EDC00CD2972DF2E08E403FD8A8E9ED452804E2FDDE17266ADE3C98F1B205AFB2801FC8A2708B40D9902EB6967FA761EEF5C001514BC11DD1D1D';
wwv_flow_imp.g_varchar2_table(9) := 'D746038888855E3C421BD456F6D8BCB195FFCCEB608D8F0BA07B1D95D3651037B03A47BBD02B20827CF3CA92DC8DAC91700134C7F1CE5374FDC973ACCED12EF40A10207F7495E42C668D840BA07CC73B6B682F7E26AB73B4338202E4DDF2929CBB5923E1';
wwv_flow_imp.g_varchar2_table(10) := '0148797C57D69924B33A473B4328709C76A407B146C20C5041C106DA816E62EE7CB1068C76EA2B603609292B96649D62C99919A0BB0B5627D8A3E56616A768632C05E8328FB1ACCB3C98019AFFA03B59F29246634981D1B02820889059B6345B59C315F4';
wwv_flow_imp.g_varchar2_table(11) := 'C50CD03C873BCD0BE478D01ED1C0780A109856EECCFE9425306680663FE44A1725AB32038F57982BC033A5C10ED0C23519A2ECFD2ECCB5C3F0A9028490192E674E358B18CC00CDBBBFE272AFD954C7E2146D0CA60011B2CB9D596E96A89801BAA770F515';
wwv_flow_imp.g_varchar2_table(12) := '26513EC0E2546D1BAFD40D92A71364E2553BEB5EF31304014C262B982D36507E0EFF4BB8B7BC24AB8CA51CCCA537460D44A0ED4C237475B6B0949DDB468128367E108529BCCF82A04DD83CDA84AD641124AC01EAEC380DEDAD8D7059462AFCFAB61B202D';
wwv_flow_imp.g_varchar2_table(13) := '75008B0641D9FC657105C4D8A3C166B74363631388A2190624A4873544110B504B733DA4A6D8E0898767C2A081714181C092B8A3C3030B1E2A818CA129903BF32658F7F16ED8F3755DD84314B1003535D6C1D52386C0338B66B1F0C06493BFE0651F4079';
wwv_flow_imp.g_varchar2_table(14) := '59374147BB04355FEC831DBBBE096B882217A0930761ECE8E1F0A7C7EE62822158A3F335D0B08C34C89935D967EE8368FB01D8B1732F98CD51608B49028B35BC36E522402104E8A70011021462807E049145E96427864D4D84001900A070860801320840';
wwv_flow_imp.g_varchar2_table(15) := 'E10A514403347A5406FCF971E6159941F5A32F7D8C579EC2FABAC2EDE90C01D209200598050F96426C6C34CCCFBFC52F7CCAACCA8571223A521D9F9861D8690F04484780FEFA8FB550BBF75BC8CF9B068307250584A8BC6A1334349C809801A91015ADFD';
wwv_flow_imp.g_varchar2_table(16) := '60675055EAB9C408908E00ED3B78128A9F5BE57BDDF5CF860F06BBCDEAF79E3536B5C0B18626DFF890F26466C40B01D2112005807D074E40C5EACD5077A8013A3BBBFBC50402D4432623CCC637E93C12DD2F527A24FA7CEBB7F08A732DD6403DC54380FA';
wwv_flow_imp.g_varchar2_table(17) := '871302D4874E081002A42810D6EB81B009EB1FC481524574275ACFD9F84037A2B7BF631366F0262CD048F4471BBF866D3BB45BBA9D101F0B73F32642DC80E85E95FA7CEB21DA89AEEEB313EDF17480A7BB9D36050258A2627C4B42F4BE22BA060A04D0B3';
wwv_flow_imp.g_varchar2_table(18) := '7F73C3FE83DA6E5F7BFA895C187375EFE713F40D502FEBB9E902FD98981488B2E93BE08800F91907923C5E6869EDD2EC4B1D6535D39BDEF76062EF0011686D3901DD5DAD90981807D75F7715C8B20C9B6A6AA1BB5B82F8A40CDF0A47BD2E0448E781C460';
wwv_flow_imp.g_varchar2_table(19) := '6EEC8F01BA084F4A523CE4CE9A02F673006EDAB20F6AB6D4426CDC40B046C506E3862B2D02143600255CA8797AC2A310B0EEA3DD50BBA78E0234880214C3054530C60850380044E7C1BC5E8FAFD952AEB49404B869CA7530FCB2B3F3633B761D86FF6EDA';
wwv_flow_imp.g_varchar2_table(20) := '05F4CCC97333F7FA9D5B8A00850140023D43851019A2ACD1306C583AECDB4F6B9A183BDC933D151A4F9D867FBF5FE31B9653F698E9FD2486008501404A2DA3C03379F238488CB3D189D863B073F75E3A9B1F051DBE09590A4FFC60BA5DBAF7E180609AA4';
wwv_flow_imp.g_varchar2_table(21) := '60D322400605A8FE680BB8ABB741CDD63D3F80E7FC0DDEFDD53E3850574F179A892183478925A2010A3412AD8C04EFF9BA3ED82FA5DFF4536F1C0923AE4CF39BA6AB4B8217967C08FFAB3D08A96969306AE470484DBAF86475F8FB637461DA01F04826BA';
wwv_flow_imp.g_varchar2_table(22) := '4E48D94B665335C660324380FC2CAA5FF4CC2AA83F7222183D03A69D98390A1E2EBAB5CF74E1040FD6400176A62A0373AD6DFD5BF415909C7309E262A3685FC5D46BF270830701D2716B7320C0EA8F9E86D5D55FC066DAE7317AB3756959B009D3695F98';
wwv_flow_imp.g_varchar2_table(23) := '3F80C2151EAC810C500385333C085088010A7778221EA040CB3902F55B78FE7EE9384F7252028C1D3B1252122FCE611DAE6FA0735BFB41D9D1AA6CE951766618F18AE83E50A800529EEE9E7F79BD6FF233103C0A34B8ADA7C757C7288BEA0301B47DD7F7';
wwv_flow_imp.g_varchar2_table(24) := 'B0F3CB434C5FFCA4A401F09BDBC68295AEF9B9F4EA2F3C51562BFC72FA38A87AF73304A8E71D0817807807129F79328F1EA337F042F18381E7D9A772E0E0A126BF4B5A99C856D928A29BB04053192D673AA1E138DB31C0515116189671713B727F0709ED';
wwv_flow_imp.g_varchar2_table(25) := 'F65878FAB119BE833F71517D1FB4874B0DA4E69775F18B1FC0975F1DF0DBE7519A2DA5E6199876765D73A045F56AC6C79A5744D74081FA40ACA2F6B45BBB7E0F94577CEC179E1157A4D3D35B27C3E5C32EBEC41101C21AC8F718FEC8532BE8410A5D9039';
wwv_flow_imp.g_varchar2_table(26) := '7E1C0C3E57BB28D29C7F54EF59F39C970D014280E0BD0FF740D9AA8F699F66104C9E38FA8222274F35C3E79B77C3187A4A5ACF9A07010A50F747521FE8EFFF5A07BB76EF87F1E3AF85CBD29381BE2A1B8E1C3D01DB77ECF50B0FF681FC40142900B5D1A5';
wwv_flow_imp.g_varchar2_table(27) := '200FFCE175902409A64EB91E5A5BDBE0F0E1A370AAB9C5F78E8E4717DE79A1C3DC9B5CD884457813F6594D1D2C7DF5BD1FA81037C00E33EECC84DB6F1D433700FADF3D8100453840AEAA6D504D774C28D064DE300226655E0523AF1C48C1E9DFC1260850';
wwv_flow_imp.g_varchar2_table(28) := '8403A46C8DFEEE4833DDBF95DC6F682E950C013238408146A2D51A0762CD0747A211205676CE8D44E31989BD0A6894A730AC81B8F8F61947F45406028400312BA09C9178F5C8A1BABEB130D860B1136DE03E90F2CED4C4041B2C7A64060C498F0FF6DEEA';
wwv_flow_imp.g_varchar2_table(29) := '92FE4D570DACFF681BBEEAA0A7DA46E80375B435D1574E36C355570E855BA65E03168B7EA77AF587BE23479B283C3BA0BDB3D377648B515F0F1EB17D205A707A605383EF904AC35E213AF730183D4202D0EC856B3244D9FB5D30816A9556014892B43B07';
wwv_flow_imp.g_varchar2_table(30) := '91356EE5D40DE505BC46AD792E948B08D9E5CE2C374B39FB371EDF4BCEB31F72A58B9255DBE34F594A8436412B40887087CB99B52E68436AC00CD03C873BCD0BE4388B53B431980204A6953BB33F65898A19A0F90FBA93252F6964718A36C65280B6B499';
wwv_flow_imp.g_varchar2_table(31) := '654BB3B7B144C50CD0DD05AB13ECD172338B53B4319602C44BC6BA5ECDA965898A19A0DC8515B116D97486C529DA184C0101AE285F965DC71215334005051BA2BBA39B3A589CA28DB114F088DEC1954BF31A58A26206A8B8B858DCD7704D1B75AAFFB1A2';
wwv_flow_imp.g_varchar2_table(32) := '2C25459BBE14E88C951BE34A4B8B3C2C123103A438CB77546DA4FF4C63718C368651E093F292ECE9ACD1F002544C1D3FCBEA1CED0CA1C05F2840CA7D64BAB800BAD751399D1ECDBF81C9331A19420111E49B5796E42A2D09D3C5055041C11BB4231DA73C';
wwv_flow_imp.g_varchar2_table(33) := 'CA633F8849FE901B755A3B5B12972FBFAF9335122E807CFDA0A2AAB7E978F63DAC01A05D081520B08A8E40CFE689801BA0B90F544DA493E29B798240DBD02840170A4C2A5B96ADBCE585F9E20648F14C21AAA1104D608E020D755780C2B385C23391D7B1';
wwv_flow_imp.g_varchar2_table(34) := '2A00E53BDCB41A242EDE60D05E4F058439E525596FF37A5405A0E9C51BCCE90D4DDFD26086F20684F6DA2B40008E1C1B94347C63F1CD12AF3755003ADB9976CF0481ACE10D08EDB55780AE409CE172E654ABE14935807C1039DC2FD2A6EC113502C33CB4';
wwv_flow_imp.g_varchar2_table(35) := '52407889365DBF572B7755012A2C745A5AC5944D34B8F16A0588F9A8AAC0763AEF358975DEABB7485405487130DBB17AB848E49D746C2841D5A26366BC0A1C07134C285F927D9837A34BED5507E82C44EF8C13415016690F573358CC8B5981C3221166AE';
wwv_flow_imp.g_varchar2_table(36) := '7466ED66CEA10F434D00527C9D5BF2AA3C26F6FD6A3FB54B83F9F5A6C07FCC26216FC592AC535AC8A319404AB0B9B915264B8AF80A10C1A145F098A77F05E8E3FA0BD229EF939595795EADB4D214A0F341CF2D723B88405EA2BF5BB52A08E6FB0305BA05';
wwv_flow_imp.g_varchar2_table(37) := '02F3CB9CD9ABB4D64517807C4D9AA3628887880B0441B89FFE9AA175C122347FE5F5D4AF99C1FBDA8A923C5DF6ECE906D0F91BAA346BD664D30C5ABD16D1FFBB8D7E748FE1270697972AF8BE0CE0F4367AD769D95CF5A65B486F5E6E6145BC45305D4B07';
wwv_flow_imp.g_varchar2_table(38) := '1FC711411C2780FC0BCAD3281AA8B14E49300E7174EA81EC0541D849BF803BA9563B25AFB4ABB234EF74A8420C29407D157ADEBC1531922DD166810EBB6C029B44443B88C4669623A30F2589D00DB2D06116E476D10BCAFB0EDBCD1DCD1D6FBD355FD9C4';
wwv_flow_imp.g_varchar2_table(39) := '60A8CB9000194A210CC6AF02081002C2A50002C4251F1A2340C80097020810977C688C0021035C0A20405CF2A13102840C7029800071C987C6081032C0A50002C4251F1A2340C80097020810977C688C0021035C0AFC1FAA4D1409959E60970000000049';
wwv_flow_imp.g_varchar2_table(40) := '454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5372891047454710)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000D4049444154785EED9D7D6C13F719C71FBFC44EE2C4494C78110A84000546DAD136BCD3D255EB342AA8285BA569687F4C43D55837366954DA1F9BB469FBA36BA7';
wwv_flow_imp.g_varchar2_table(2) := '6945DD54B47513EA563A2AA0DB52FAB215B5EB102FA56C50A0848497100508C42121E0D871FCB2BB33367672497CE7DF393FFBF91A215072F7BBE7F97EBF1FDF9DFDBB3BDBC6CD7BE284171460AA800D0030751E6D6B0A00000481B5020080B5FD681E00';
wwv_flow_imp.g_varchar2_table(3) := '2003AC150000ACED47F300001960AD0000606D3F9A0700C8006B0500006BFBD13C004006582B000058DB8FE6010032C05A0100C0DA7E340F009001D60A0000D6F6A37900800CB0560000B0B61FCD03006480B5020080B5FD681E002003AC150000ACED47';
wwv_flow_imp.g_varchar2_table(4) := 'F300001960AD0000606D3F9A0700C8006B0500006BFBD13C004006582B000058DB8FE6010032C05A0100C0DA7E340F009001D60A0000D6F6A37900800CB0560000B0B61FCD03006480B5020080B5FD681E002003AC150000ACED47F300001960AD000060';
wwv_flow_imp.g_varchar2_table(5) := '6D3F9A0700C8006B0500006BFBD13C004006582B000058DB8FE6010032C05A0100C0DA7E340F009001D60A0000D6F6A3791600C462518A0C0595BF218A46C305E6BA9D1CCE12723ADD54E2F290CD662BB0FAE52EB7A80150833F18EAD7FEC6A211B99DC8';
wwv_flow_imp.g_varchar2_table(6) := 'A23A674919959679C9E5AEC862692C928D02450DC040A08742037DD9E85030CBD86C762AF3F81410AA0AA666990B2D5A00A2D121EAEFEDA4783CA6E93F7BD674FAC2C38D34B3CE27B31FA9DA7EF6DCAED4FF572EBB978E1D6FA5C1C13B876FCA615045E5';
wwv_flow_imp.g_varchar2_table(7) := '14EC09043859B400A4BFFBDFFFF9B9F4EC963564B717CEF1F3C64D2FA5ECDDFAFD0D141E8CD0DEE6C374F94A77E2E7804040FC1519376EDE131732926483F4F75DD14E7CD5D72F7EF2759AD3502B59856397331C0075E9BEBE101D387492CEB675020241';
wwv_flow_imp.g_varchar2_table(8) := '6E162D00BDFE8BA9C39F57B73F43CE128720C9F2338C1E008040BCF6450BC08DEEF329B576FE718B78E52C1E713400D4CDF6F60ED0E1A367E9B396F63B47433831366B070030AB9CC5EB8D05002010273E0010A7A5D091C603001088911B0088D151F828';
wwv_flow_imp.g_varchar2_table(9) := 'D900000872971D00E4AEA12523640B0020C84D7E00909B7E96AD6D04004060DE0600605E3B4BD7340A00203067070030A79BE56B9901001018B7050018D72C2F6B9805001018B3070018D32B6F4BE7020020C8DE260090BD56795D325700D462F5E70E4D';
wwv_flow_imp.g_varchar2_table(10) := '5566917AF2DA8BCC1B030092BAF3DDAD3BA8B7EF9656DDE64D6BC9E37199AA74281CA53DFF38949A45AA5E4F50E59BA1CC8C759A1AAFD8560200923ABA6DFBFB74E4E819ADBA358F2DA3C685D34D57AA42B073F747E4F7272E0E72977AC95339D9F478C5';
wwv_flow_imp.g_varchar2_table(11) := 'B4220090D4CDF73F6CA13FFDF95F5A75A5656E5ABF7625D54DAF365D6DEBB92E6A7EFB90B6BE43B9BEB8AAA6CEF458C5B4220090D4CD9E1B03F4FB1DFBE9E4E9F64485CA053035D55EAAF29699AA38128D5367E7B5D4BABEC9734C8D536C2B0100891DBD';
wwv_flow_imp.g_varchar2_table(12) := '78A9879E7FF1EFD4DF1F105E2500B8F3BE52AC578415FAF500C9C40702617A75D741FAE4582B054383C240000000405898F231502C16A7CB576F523068FEBE46E917DA030000908FDC4AB58DF4EF16000000902A9CF92806008C541927C1F9489E24DB00';
wwv_flow_imp.g_varchar2_table(13) := '00004092284E4C190000004C4CF224D92A00000092447162CA00000060629227C95601000090248A1353060000005925EFC827EDF4A67223DA602894D5F2F95EA8B4D44D5F5DBF82963E38CBD0A68D02108B452814BC49D14898D4672D389C2E2A519E51';
wwv_flow_imp.g_varchar2_table(14) := 'E02EAD34B45D9917C6C7A03AEEFCE0477FA16E7FAFCCBED1245F25BDF4AB6F1AAAD1080083C17E52EFB09DBCBD7CFA864A5C65CA74EAA9CA35058575BF553DB100808E2A7FDD7B4C993A7C58D77C4389B36A616566E8FAB5CBE96B1B161BDA423600A881';
wwv_flow_imp.g_varchar2_table(15) := '0F066E68EFFC63BD5CCA5EC05351AB4C52B51BAA41B68501C0288E0406C2CA0329A2B2F9A5D5E3763BC8536EFC0AB16C0018B8EDCF08FF3D73EA68E5B205CAA18F932E5CBC461F1C3841F158E2A1239E8AC9E4561ED954C82F0050C8EE19AC7D3C008687';
wwv_flow_imp.g_varchar2_table(16) := '7FF103F3E9918717666CE5F8890EDAFFEF63DACFD487F655564D3358855C8B0300B9FCB0B49AB100C826FC6A71FDFD61FAC38E7D5A9D36E51CA066D22C4B6BB67A700060B5C2128D3F1A00D9865F6DA5A7678076BCF69ED695DD5142D5BE99127568BC14';
wwv_flow_imp.g_varchar2_table(17) := '00605CB3825D430F80E1E1AF9F31859EDAB04AB7C7B8724AD4FCEE316A3BDFA1FD5E7D5C6B85776AC1EAA1EDC570455841FB67A8F8E1000C0F7F72B0D5ABEEA7254D0D1963DFBE1DA6C31FB7D289536DA99F57564FD7BE1728E417002864F70CD69E0E80';
wwv_flow_imp.g_varchar2_table(18) := 'FA9CE1F48F3AABBC1EBA9976ED713A047AE157D72F573E062DF417002874070DD49F0E40FA6A33EAA6D3E2A679D4D6DA4EA7CEB4A77EF5C5479B68D1C299F4EEFE13CAF3C82EA47E9E38F499A21E4018D8BA9C8B0200397DB1A42A3D00E6DD534F8D9F6B';
wwv_flow_imp.g_varchar2_table(19) := '20BBF285565CF9D3A204BDA5AD4399FA90787AEEB469B5D4D5E52FCAF0E31CC09298C93BE87000D2C39FAC5A0F82E4EF8AE99D3FD913F600F2E6555865C1E010FD6DDFFFA8F99D23A931D5C39E254DF39583989187312A041F1DF82FF97BEE4E8728C6F0';
wwv_flow_imp.g_varchar2_table(20) := '630F202C62F20EA417FE05F31B68C1BC7A72D847CEE3191C8A50CBD94B74EEFCA55453EA096F99C757F0F37EF45CC21E40471559A6439B9DF67CB7A538BDBEFB68C63B3FC29F693800D00140A6E9D066A63D275A42F8B3D92F03001D95A4990E6D72DA33';
wwv_flow_imp.g_varchar2_table(21) := 'C29F4DF413CB008051B492613AB4B969CF78E7CF3EFE00C08856D22F8B135EE316610F605C3329D740F8CDD90200CCE926D55A08BF793B008079EDA45813E1CFCD0600909B7E13BA36C29FBBFC0020770D276404845F8CEC00408C8E791D05E117273700';
wwv_flow_imp.g_varchar2_table(22) := '10A7655E46D20BBFDEACCE6431E1A1189D397B31636E8FFA3BDFE4D9EAD74079A959E68D000099DD19569B8877FEE490784452420900502000880C7F620F80E70403800209BF5AE6EBBB3FCE98D569F4B067E5F2463A78F874AA6300803DC0A8F1CFC774';
wwv_flow_imp.g_varchar2_table(23) := '6823539D4584FF994D8FD2379EFE2D0018E63A0E817430C8D774E8F1A73AE73EB16DD58AFBE83BDF5AADDCC9D94EE3DD1AB1807688C24A05003A52E6653AF4B8539DC5865F6D13008C341B008CF25E62F574E8B1A73A8B0F3F00D0371A0008DB998A1948';
wwv_flow_imp.g_varchar2_table(24) := 'C4A73D4F3CBE8C9E5CFB009595956414853D00F60062526AE1286FBD779276BEF1616A0B663EED514F78EDF6915F72010000606174731FFA744B17FDF2377B956772251ECC2132FC3804C22150EE09B570846E7F807EFDBB7DD4D1714DDBCAA4493E7AE4';
wwv_flow_imp.g_varchar2_table(25) := 'A145BAF7ED517F7FF2B30BD4DAD69EAA68ED9A25F495754D230E7BD24BC61E007B000B239CDBD0EA770FDB5E6ED606292F77D3B2C58BC85753316250BDB93DEA975CA31DF60080B17DC149706EB915B6F60BDBDEA1E39F9ED3C69B3BB781163566DE9E3C';
wwv_flow_imp.g_varchar2_table(26) := 'B92133EFFCC975B107C01E405860450E74FEA29F7EFADC2E8A4563CAFDF65DB4FAA107A9DA5B9EB109BD3BB68DF669CF68B50100002032B7C2C6DAF7CF53F4DAAE0FB4F1BCDE2AFA92725BF2F45770304C9F9EBA409D9D570C1DF30F2F1000000061A115';
wwv_flow_imp.g_varchar2_table(27) := '3950FAE14F63E33C5A30B74E1B3E3418A18ECBDD74A6E51C458686720ABFBA3200000022732B64AC40204C9B7FF84AEAA3CF59F5B3B493DFCB57AED3F56EFF888775677BC2AB571C00000042422B7290FF1C3A4F2FBFF2F6B843BA5C25F4D493AB68DD97';
wwv_flow_imp.g_varchar2_table(28) := 'EF1B77599C03642F113E05CA5E2B4B964C3FFCD1DB406D6D15AD5ABE901E7FEC5EF25696E65403F600D803E414202B56DEFAE39D74B5AB27636835F42B962CA0A54DB3694E83B807D1010000604586731AF3CDB78ED3DEE68354535D6149E8D38B030000';
wwv_flow_imp.g_varchar2_table(29) := '20A7B05AB5B27A22ECF1B8AC1A3E352E00000096874CE60D00000020733E2DAF0D000000CB4326F30600000090399F96D706000080E521937903000000C89C4FCB6B030000C0F290C9BC0100000064CEA7E5B501004600F4F55CA2582CA275BCFDC5A773';
wwv_flow_imp.g_varchar2_table(30) := '9E4763793A2DDE402C16BF7B6B44E5A65CBE5AF5F6E87815ED64B8DBFD5D141E0C680E7FEFDBEB68E552FD4B0CB944A0A5F51AFDFCF937B4769D4E37796B12D71C707F152D00A1E04D1AB8EDD7FCADA9A9A467B73C410DF59358FA7DEDFA2D7A615B736A';
wwv_flow_imp.g_varchar2_table(31) := 'D25D6959159557889B6457C8A2162D00F1789CFA7B3B291A0D6BFE389C0EAAAF9BAACCB97117B25F866B0F85C274E15257EA821B9BDD41D5353348FD17AF227E40866A6E243248B76E5EA5782C71A329EE2F9BCD4E15DEA954E2CABCE09EB32E45BB0748';
wwv_flow_imp.g_varchar2_table(32) := '9AAA863F10E8A121E57C201E8FB1F45A0DBEB3A4943C9593955B263A596A305AD3450FC0DDC6E3CA1E21CC0E0235FC0E878B6CCA273F788D54801100B01F0A000064000A6428803D0002C15A0100C0DA7E340F009001D60A0000D6F6A37900800CB05600';
wwv_flow_imp.g_varchar2_table(33) := '00B0B61FCD03006480B5020080B5FD681E002003AC150000ACED47F300001960AD0000606D3F9A0700C8006B0500006BFBD13C004006582B000058DB8FE6010032C05A0100C0DA7E340F009001D60A0000D6F6A37900800CB0560000B0B61FCD03006480';
wwv_flow_imp.g_varchar2_table(34) := 'B5020080B5FD681E002003AC150000ACED47F300001960AD0000606D3F9A0700C8006B0500006BFBD13C004006582B000058DB8FE6010032C05A0100C0DA7E340F009001D60A0000D6F6A37900800CB0560000B0B61FCD03006480B5020080B5FD681E00';
wwv_flow_imp.g_varchar2_table(35) := '2003AC150000ACED47F300001960AD0000606D3F9A0700C8006B05FE0FEB1016B9446DDC030000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5373111055454710)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001C2F49444154785EED9D0978155596C74FBD97BCAC04083B62830B422328880BB862E3D23A1F2024D210D0C68D045A5B67E69B691DFBD3F4D7D3ADF6F4628F0A49';
wwv_flow_imp.g_varchar2_table(2) := 'DA563F20842D01C4A56D9D16171457D0D80A0AA8886C060264CF7BAF6A6EBD6712022FA97AEF55DDBAB7EA5F7E08845BF79CF33BE7FEEBD6764B216C2000029E25A0783672040E022040100014010878980004C0C3C947E8200001400D8080870940003C';
wwv_flow_imp.g_varchar2_table(3) := '9C7C840E021000D4000878980004C0C3C947E8200001400D8080870940003C9C7C840E021000D4000878980004C0C3C947E8200001400D8080870940003C9C7C840E021000D4000878980004C0C3C947E8200001400D8080870940003C9C7C840E021000';
wwv_flow_imp.g_varchar2_table(4) := 'D4000878980004C0C3C947E8200001400D8080870940003C9C7C840E021000D4000878980004C0C3C947E8200001400D8080870940003C9C7C840E029E15801BE7AFEA19F0F9476B0A9D4D9A763691328A9583FE6B30CAC2C504343AC0A2FB4253B4CFF5';
wwv_flow_imp.g_varchar2_table(5) := 'DFD99731B65198B65594E56F7371D45D86E67A012858F05C6F2DDC7AB6E2D74661A07BB1C44DC75CCB5ABEAF90F2AEA6D17B417FE89DD58B66EE37BDB7A40D5D2B00FA113ED5E79FAA114D67415ECBF29329698EE0B633045466F603F6EB6FAC7E5E6A3D';
wwv_flow_imp.g_varchar2_table(6) := '14DEBC7AF5CCB033AED867D5550230EBCEF5839550688AA2293348D1AE64D852ED43879E3D46601F8BB734E80B97BA6966E00A01B879FEAA1F847CFEDFB204CD66BF7C1E2B4C84CB97409099AB6403E7F1F292BC4D7C4D5B6F4D6A01983BBF7290EAA3FF';
wwv_flow_imp.g_varchar2_table(7) := '6258E6B35F01EBF1A04710E896C00B2A69BF5C5192BF45564E520AC0BC796B7BB56684EF274DF919039F212B7CF8ED0A02EC321355295AF881F2D2999FCA1691540270E3C255D9A99AFFE7A4D27FB0DB37BD64830D7F5D4D40BF40F848B65A535C5656A8';
wwv_flow_imp.g_varchar2_table(8) := '9F2648B1492300B3E7AF19A9F8941719D561529085935E25B025EC53E6AC5C34E3331900482100B316AEBED8A7EA835FC991012A7CF43C8146767A7AD3F2D21955A293105E000A8AAAE610694FE1229FE8A504FF4E20A03111B88F89C023229311580034';
wwv_flow_imp.g_varchar2_table(9) := '65F682AADF281ADD273240F80602DD12506849B0267C077B88A8554452C20A404161E5C3EC42DF2F4484069F40201E02EC36C1B32306564F2F2E2ED69F2E146A135200D891FF16458B4CFBB181803B0868DA13CB4BF3EF142D18E104607661D54445D15E';
wwv_flow_imp.g_varchar2_table(10) := '63A0F018AF68D5027F9223A0D123CB4BF3EE4DAE136BF7164A000A0AD70C2745798B85D8D7DA30D11B0888424099BDBC64C60A61BC11C59139772DCBD18219EF337F868BE213FC00011B08D4FA43E1F14B9F9CF9A50D7DC7DDA5103380F9F34B53EB7D7D';
wwv_flow_imp.g_varchar2_table(11) := '9F67DE5F1D7704D801042423A028F44E6B4DF87211EE0C082100730AAB8AD80A2D8B25CB23DC05818409B08704EEAB28C97F38E10E2CDAD17101F87EEAFF058BA7BF4531A11B109081405D8A1A1EBDA46CE66E279D755C000A8A2A8B1980079D8400DB20';
wwv_flow_imp.g_varchar2_table(12) := 'E008018D56B2BB02B31CB1FDBD514705E0A6A2AAFE6152D9D11FCFF83B5904B0ED1C014D53AEA9289DF1B2531E382A00738A2A4BD85352854E050FBB20E03401FD8260F9E2BC094EF9E19800CC2A5A3BCC47EA0E16B8DFA9E06117044420C04460221381';
wwv_flow_imp.g_varchar2_table(13) := 'CD4EF8E29800B067FD57B067FD7FE244D0B00902421170F05A802302C056F61998AAFAF7B22438625FA8E4C31910200A29213AADFCC9BC3DBC6138320071DF9F779A614F0202BF5A5E9257CCDB4F470480DDFAFB1B0B54FF58073610008108016DFBF292';
wwv_flow_imp.g_varchar2_table(14) := 'FC91BC617017805B6F5DDFA33910AA618162196FDED9863DB109F87CE3962F9ABE95A793DC05801DFDE7B1009FE619246C818014041C785DD80901C0F45F8A6A8493BC09B067623EAA28C91BCBD32E5701C0F49F676A614B42026A3018EEB7FAAF330FF3';
wwv_flow_imp.g_varchar2_table(15) := 'F29DAB00B0157ED973CF5A05AFE06007046423C0DE8A9D5EB1387F1D2FBFB90A001EFDE59556D8919780F267B662D03DBCFCE72A00EC02E04616D815BC82831D10908D00EFEB00BC05603F4BC800D992027F4180238170D017EEB57AD1CC7A1E36B90940';
wwv_flow_imp.g_varchar2_table(16) := 'E48BBEE96A2D8FA0600304A426C0F179006E02306741E5044DA3B7A54E0C9C07012E04F8AD1CCC4F000AD7B075FF14ACFBC7A58060446A021C1F08E2260005456B1E652FFFDD2D7562E03C087021A0AD67EF05DCC0C3144701C00B403C120A1BF213E079';
wwv_flow_imp.g_varchar2_table(17) := '27809F001456EE676FFFE30E80FCF58908EC277080BD1A3CD07E331C17E460CF003061C30602206082402B138074D6CEF631C36F0600013091773401812881BDDBAA53376E2C0ED9CD0302603761F40F020910081E0AA7F1F87418042081E4601710B09B';
wwv_flow_imp.g_varchar2_table(18) := '409D5A93B5A1ACB0D16E3B1000BB09A37F1048800004200168D80504DC42205B0D6495954DC10CC02D09451C20100F017F7676F6D2DF5FDB10CF3E89B4C5294022D4B00F08D84CA0BE3525E7D9A7A6D5D96C86DF8739F01C80DDA944FF6E22A0A436F52C';
wwv_flow_imp.g_varchar2_table(19) := '7F6CEE31BB63C20CC026C29AA65273D3510A875A28C47EA961DB6FE9DA14097B5ACCE7A79494744A494DA3F4F49CC8DFB1D94B20A8B23501CA661EB5D70A9E04B4856FB0B5911AEABF937AD07705461FFC59D97D2990966D0B3B741A25000190B4125A9A';
wwv_flow_imp.g_varchar2_table(20) := 'EB22839FD8E2076EDE32B2722923B3B79B437434360880A3F81333AEB1417FAC760F85C3ADD10ED8779F274F1A47A37F38847AF7CC48AC5387F6FAF893DD54B521BA7E4B9FDC9E3478601FFAE4B32F99AE75085B269B09A467F474C843779B850048985F';
wwv_flow_imp.g_varchar2_table(21) := '7DEA5F77745FBBE7772F9C4A178D1F2A6124449B36EFA427FEF242C4F761430752DEB48974F87003AD5EFB26D53774DC9E8608D8935E08803D5C6DEDB5A9B1969A1AA2DF74183962183DF09F536CB56767E7B10440B7B777DF517AF3AD8FE99B6FF5CF3B';
wwv_flow_imp.g_varchar2_table(22) := '46378880F599800058CFD4F61EEB8FEDA7D696E8B31B53AE9F40B3F32EB0DDA65D06BA120088805DC43BF70B01E0C3D9522B7547F752B0B529D2E7ACFC4934F5BA3196F6CFB3B3975FFD8C9E5EF64AC4E4B06183296FEA459DCC7FBBB796DE7EF733FA7A';
wwv_flow_imp.g_varchar2_table(23) := 'F781E8CFD9F50EFDA2202E0C5A93250880351CB9F6E22501D0C14204EC2B2F08807D6C6DEBD96B020011B0AD94F01C807D68EDEBD98B020011B0A79E3003B087ABADBD7A55002002D6971504C07AA6B6F7E86501E84A04323373293DB397EDECDD660002';
wwv_flow_imp.g_varchar2_table(24) := '206146BD2E001001EB8A1602601D4B6E3D4100A2A863DD1DC04C20BE328400C4C74B88D610808E344004922B49084072FC1CD91B02D0193B4420F132840024CECEB13D210027A33F510414C517795A101706BB2F53088063C33871C3C70BC04FF2AFA069';
wwv_flow_imp.g_varchar2_table(25) := 'D79D9378670EEFD9E951E0EFDF064CD4A5582F1065E70CC0A222DD008500245A6D0EEEE72601F860EB6EFAC363EB2334FBE4F6A27973AF4C8AEC91234DB4B2F2F5F65789F59940CFDC53C9E74B49AA5FB7EE0C019030B36E12801DBB6AE881DF5444B2A0';
wwv_flow_imp.g_varchar2_table(26) := '0FD63B6EF931F5C84E4B2A2BBA082C5BF90F6A69892E981248EF41D93DFA27D5A75B7786004898593709808EBFF09E27A9AE2EFA76E3A94306D3D4EBC7B34541933B62BFF3DE4E7AF3ED8FA3C2C2D617ECDD67988499B6DF650880FD8C2DB7E0360178F1';
wwv_flow_imp.g_varchar2_table(27) := '957FD2D28A7FB473CACACAA0A1A70EA240203561764DECE8BF7DFB97EDFBF76202E0C32AC327F18400245C62CEEDE83601D0493EF2E80BF451F54EDBA0F6EA3314D70162D08500D85672F675ECA6DB806D940ED736D2AB6F6EA7BFBFB285EAEAADFF5215';
wwv_flow_imp.g_varchar2_table(28) := '0420763D4200EC1BA7B6F5ECC619401BACDD7B6A69DB17FBE98B9D07981044AF0B24BA7D5CBDE3B85300CC0062718400245A5D0EEEE7C61980D5389B9A8274DB9D25100003B01000AB2B8F437F100063C8100063467A0B0880394E42B5820018A7030260';
wwv_flow_imp.g_varchar2_table(29) := 'CC0802608E9170AD2000C6298100183382009863245C2B0880714A2000C68C2000E61809D70A02609C120880312308803946C2B5820018A7040260CC0802608E9170AD2000C6298100183382009863245C2B0880714A2000C68C2000E61809D72AD92701';
wwv_flow_imp.g_varchar2_table(30) := '6B8F34D2928A3769D7577B858BED4487028100FBF6E10574D9C5C3E3F6B5E0B6C7DAF731FB287028D442ADCD75140A3693AAA994929246A9A9199496D183F5A5C4ED83E83BE03900D13314C3BF64056065D5FBB4FEF9B7A5893C359042257FBC9D3232E2';
wwv_flow_imp.g_varchar2_table(31) := '7B3B301E01D0348D9A1A0F5373D35122F6E713375D08327BF48B08829B36088084D94CF614E0BD2DBBE94F4F3C1BB3D045C43174E8207AE881FC385DD3A8E0B6C74DCD00F4A37E73636DFB27D7BB3294C2660259D97DC99F1288D317719B4300C4CD4D97';
wwv_flow_imp.g_varchar2_table(32) := '9E253B03D03BFEAEA69EF45301D137BFDF474387F4A694547FDCAE9A9901E847FEBAA3FBD894BFE3C5A3ACAC4C1A3FF62C4A4B0FB06F0FD4D0A79FED6AB79DC65617CA72D1EA421080B8CBCAF91DAC1000E7A3B0D703331701630DFE7E7D7329FF868B29';
wwv_flow_imp.g_varchar2_table(33) := '33B3E374636BF5D7F47FAF7E18755851D8EA42A7B1DFDC713D0002606F1DDAD23B04C018AB9100981DFC6D964A9E7C911A1A9B237FCDE93DC435D7022000C6B5245C0B0880714ABA13807807BF6EAD7CE546DA7FA03662383B67205B6A3CCBD809095A40';
wwv_flow_imp.g_varchar2_table(34) := '002448D2892E42008C93D695002432F8EBEB9BE9A9A57FA760301C316CF696A2B197CEB78000389F83B83D800018238B25008AE23FE9829FDED3C811A7D1F5578D25F6CF276DC1D630553EFB36BB18F85DE4DF7CFE14EA953BD4D801495A40002449D4F1';
wwv_flow_imp.g_varchar2_table(35) := '6E42008C9376A200F4EC7D2A35D4D774BADA7F7C2FE3C78DA409170CEFB41CF9A1438D6C69F16ADAB1ABE381A91E3D07516A20D3D801495A40002449140420BE449D28007E7F80C2E1E88742F46DD0A0FED4D0D044C78ED5B5FFECFCF3741160B7FFD2FC';
wwv_flow_imp.g_varchar2_table(36) := '146BF0EBDF19CCCCEA139F2382B78600089EA058EE6106609CB41305E0F83D4E3965005D78FE286A65D3FB37366DE92402A3469E4E93AF184D551B3AA6FDFABEE9193D29933D04E4B60D022061462100C649EB4A00CE38ED141A35EA4C0AA4444FF88F35';
wwv_flow_imp.g_varchar2_table(37) := '34D327D5DB69DF8143ED9DA6A505DA3F2BE6E6C1AFC7060130AE25E15A40008C53A2AA1ACDBDA3E351607D8F13077F5B2FB144A0EDDFDC7AE46F8B0F02605C4BC2B58000749F9283DFD5B32BF7EFD31B6F55B7376C9BF6FBBA78A3EF506D3D6D7CFDDD4E';
wwv_flow_imp.g_varchar2_table(38) := '1DBB7DF0630620DCD036E750B22F0399B32267AB0307EBA8EAB90FD8B97DC7E01F3E7C188D3CEB076CDA1FFB83A3FB0F1EA14FB7EDA2DADA23ED416764E55246666F3921C4E135660071C012A569B20250CB3E9FBDA4E20DA1D603183CA81FCD2BB89C06';
wwv_flow_imp.g_varchar2_table(39) := 'F4D7DFBB4F6C53C32A2D7AEA357A6BF327ED1D60F077CF12029058AD39BA57B20220EA7A003FBA622CDD7EF36509B1C5E04F081B2E022686CDD9BD921580C87A008FAF77368818D66FBDE91ABA6AD288B8FDC2E08F1B59FB0E980124CECEB13D931500DD';
wwv_flow_imp.g_varchar2_table(40) := 'F13D7B8F92FE214E51B601FD7AB0ABF4F13F6483C19F5C062100C9F173646F2B04C011C72D368A0B7EC903850024CF907B0F1000220C7E6BCA0E02600D47AEBD785D0030F8AD2B370880752CB9F5E46501C0E0B7B6CC2000D6F2E4D29B57050083DFFAF2';
wwv_flow_imp.g_varchar2_table(41) := '820058CFD4F61EBD280018FCF6941504C01EAEB6F6EA3501C0E0B7AF9C2000F6B1B5AD672FBD0C14EBC59EAEDEEA6B037EF0503D557FB28D8E1C39D69E032FBCD89348C1410012A1E6F03E5E99015875E4D7D3E5A6853CAD2C3F0880953439F5E50501B0';
wwv_flow_imp.g_varchar2_table(42) := '72F04300BA2E4C0800A7416BA519B70B80D5831F020001B072FC39DE979BAF01E82BF92CFAEBABEC95DE7FB6734EE49CFF92896368135BD1B76DC32940ECB2C50CC0F1E11CBF03C90A80BE1E40C59AB7E98B9D1DCB5DC7EF85B93D7A6467D0B5578DA34B';
wwv_flow_imp.g_varchar2_table(43) := '2E3ADD70072B07FF825BAFE8B42418040002605880B23448F61480F77A0081402A3DF9BF7774FB855FABDEEABBF4E273A9E896CBC8E723D39F079725EF76F88919801D546DEE335901E0BD1EC0E96C25DEFFFEE58C2EA9583FF8F52FF76A100013750801';
wwv_flow_imp.g_varchar2_table(44) := '300149B426C90A801E0FAFF50002A97E1A3B7A7097477F7B06BF1E2104C04CDD4200CC5012AC8D1502204248565DEDCF9B76294DBBEE9C4E2263F4797011E217C1070880085988D387642F02C669CE96E6565FF0F3F9F4697FE7ADE0B6C7DA7F808B80B8';
wwv_flow_imp.g_varchar2_table(45) := '08684B213BD1A91B66001595EFD1861736B7E34B64F5DE5847FEB60E3103305799980198E324542BD967003B767D47BF7A7815FB58A71AE1AA7FA873C2856753571FEDA86F6AA1D7DFF8909A9A9ADAF3A0DFE7D76FF5C53AF2B735C20CC0B86C2100C68C';
wwv_flow_imp.g_varchar2_table(46) := '846B21F30CA0B535448FFFE5157AFFC32F225C070CE843E3CF1D491919693139C7FA684777477ECC00E22B5708407CBC84682DF30CE0EB6F6AE9BEE265118EFAD1FB82F1A369C8E07E31B9C67AABCFCC911F3300F3650A0130CF4A9896320BC0D2159BE9';
wwv_flow_imp.g_varchar2_table(47) := 'C597DF8BB0EC93DB8B265D765E4CAEB1A6FD33A65E4C375C3FB6DB078A300388AF4C2100F1F112A2B5ACA700F5F52DF4EBFF5947DFEC3918E178FE7967D3D053079CC434D169FFF11DE122A0B952850098E324542B5905E083ADDFD01F1E5B1761999991';
wwv_flow_imp.g_varchar2_table(48) := '41975F3A8EB232D3DBD9B6B406E9EB3D07E8CBAFF6517D5D5DFBCFCD9CF39F98200880B992850098E324542B594F01CA57BD43CFBF14FD0477BFBEB974F92563237FD6D87F870E1FA36D9FEFA60307BEEBC43A9E693F6600F1972904207E668EEF21AB00';
wwv_flow_imp.g_varchar2_table(49) := 'FCFBFDE5B46FFFE108BF9C1E3D68CC98E1ECEF35B477EF416A6E6E3E89EBE42BC7D32D0513BBBDD5D75D32701BD0B8542100C68C846B21A3007CF3ED11FAC5034B4DB1CCCECAA49B0BAEA44B2718BF420C013085B4CB461080E4F839B2B78C0250B5E143';
wwv_flow_imp.g_varchar2_table(50) := '5AB36E53B7BCFAB3D382AB279F4B3FBA6C047B2E203569B6980118238400183312AE858C02F0BB479FA7ADD5BB4E62A90FFA8B2E1C41179E775A425F07C60C20B9F2840024C7CF91BD65148035EB3EA0AA0D6F4578D939E88F4F086600C6E50901306624';
wwv_flow_imp.g_varchar2_table(51) := '5C0B19054087B8F3CB1AF67FC5F2237D5709820018972E04C09891702D647D0E8027483C07608E3604C01C27A15A41008CD301013066A4B7800098E324542B0880713A2000C68C2000E61809D70A02609C120880312308803946C2B5820018A7040260CC';
wwv_flow_imp.g_varchar2_table(52) := '0802608E9170AD2000C6298100183382009863245C2B0880714A2000C68C2000E61809D70A02609C120880312308803946C2B5820018A7040260CC0802608E9170ADEAEB0E526B7374C18C6B268FA77905170BE7A3D30E9D2C00C3D86BC57EA7DD12CE3E';
wwv_flow_imp.g_varchar2_table(53) := '9E03102E25C60E35371DA5C67AFDB15AA2C183FAD1C30FDE686A9D3CE39EDDD3E2F8EF1F2A6CE0F7EE33CC3DC159180904C04298BCBA0A855AE858ED9E767393278DA39FCE9A0811F89E88BEF6C0C37F5C47B547A2B3A4405A1665E70CE4951EA9EC4000';
wwv_flow_imp.g_varchar2_table(54) := 'A44A5787B30DEC34A0E5FBD300FDA77DFBF6A4B3CE1C42E969C9BF472F299288DBFB0F1CA6ED3BBEA570281CF9BBA2F828A7F710F2FBBDCDA5AB9C420024AD764D53E9289B05A8E1A0A41170705B51282BAB2FA565E4703026A70908809C798B78ADAA21';
wwv_flow_imp.g_varchar2_table(55) := '6A6E3AC66602C74853A3473C6C510281B46C4A4BCFA1D440069074430002E082F2D08520146C61DFDA6B754134C985E053FCE44F4D6353FE009BFE9FFCC5E0E47A77DFDE1000F7E5141181806902F5AD2939CF3E35ADE3230CA6F78CAF2137292E28AAD4';
wwv_flow_imp.g_varchar2_table(56) := 'E2730DAD41C0BB04FCD9D9D94B7F7F6D83DD042000761346FF209000816C3590555636A531815DE3DA050210172E3406013E04EAD49AAC0D658510003EB8610504C42210683E96F1CC33B79CFC59268BDDC40CC062A0E80E04AC20103C144E5BBD7AA6ED';
wwv_flow_imp.g_varchar2_table(57) := 'B78F200056640B7D8080C504CE1A38C35F5CACA816777B52771000BB09A37F10889300BB5DD6525192D7F17DF638F78FA7394F01F88A3936341EE7D016043C4AE0EBE52579C378C4CE530036B280AEE011146C8080E4045E63023089470CDC046076D19A';
wwv_flow_imp.g_varchar2_table(58) := '6714527ECA2328D80001A90968B4727969DE2C1E31701300F62460310BE8411E41C10608484D40A3479800DCCB23069E02308F05F4348FA0600304E426A0CC5E5E3263058F18F809C01DABC6B257C1B6F0080A36404066029AAAFDB0A22C7F1B8F18B809';
wwv_flow_imp.g_varchar2_table(59) := '407171B1EFF3FD63EA595078119C4766614356028D670DACEEC1C68BEDCF00E880B809806E6CCE82CACD9A4617C99A19F80D027613604B25BC53BE386F82DD76DAFAE72A000545558F126977F30A0E76404036026C40969697E415F1F29BB700B05B1B5A';
wwv_flow_imp.g_varchar2_table(60) := '05AFE06007046423A068CA82F2D21925BCFCE62A00B3EE5C3FD8170AE9EB6673B5CB0B26EC8040920434352565C88AC7A7ED4DB21FD3BB731F88B80E603A3768E83102EC1D808FD83B00637986CD5D00D81381F7B227021FE219246C81801404383E00E4';
wwv_flow_imp.g_varchar2_table(61) := 'C84540DDE8ECF96B462A3EE533291202274180230176076022BB03B099A34967CEC56717556E65538F7379060A5B20203881DD7B07E69EB1B1F8CA104F3FB99F024466010B2AEF5134FA13CF40610B040427F02BF60660316F1F9D1180F91BFA2A4ACB57';
wwv_flow_imp.g_varchar2_table(62) := 'EC0B1159BC03863D1010904028450D9FB1A46CE66EDEBE39220091594051157B3D58C3EBC1BC330E7B0212D0D62F2FC9BFC109C71C1380B98555E7AA8AF6010BDAEF44E0B00902A210F0917AE5B2921B373AE18F630280598013E9864D0109BCC4CEFD7F';
wwv_flow_imp.g_varchar2_table(63) := 'EC945F8E0A40C182CAD349A3CF310B702AFDB0EB340145F59F535E7643B5537E382A009805389576D815838073E7FE6DF13B2E003717AD3A2544FE8F9943B96224055E800007029AD610D6FCE7AE2C9BBE9383B52E4D382E00BA676CBDC079EC372C17E6';
wwv_flow_imp.g_varchar2_table(64) := '6425C0365702BCDFFAEB2A38210440776E4E61E5739A42FFC2350B300602CE10D8C42EFC5DEA8CE9CE568511009C0A88500EF0C17602824CFD85B906703CF0D98555572B8AF63CFB59AAED89800110E04F406547DC7CB6E2CF5AFEA6635B146606D0E6DE';
wwv_flow_imp.g_varchar2_table(65) := '9CC2AA224DD1168B02087E80805504D829EEBF562CCE63CBE289B30927003A1AAC1D284E81C013AB08287F666BFDDF63556F56F523A400B075039539456B7FAB91C6E5EB2856C1443F20108B005BE967ED8881D5F9BC96FA8E270B820A403404AC1E144F';
wwv_flow_imp.g_varchar2_table(66) := '2AD1564C02DAFA3A35AD6043D9944611FD135A00A2A7036B16B035449F607F14DE5711130C9F9C23C0CEF91FAA583CE37E56BA6C1220E626C5A09AB370F5359AEA5BC2100E101323BC02814E045AD9A0BF959DF3978BCE450A01889C0EDCBE7E80E20F2F';
wwv_flow_imp.g_varchar2_table(67) := '61627A8DE850E19F970968D5AA46B7AE28CD7F5F060AD2084014A6A6B03B0473D97CEA77CCF1813200868F9E211064913E9CADD6FCBAACAC50FFB3149B640210653AE7AE65395A6BE6836C36F073F6D7142948C349B712609FBBA44ABF2F7CDFB2453377';
wwv_flow_imp.g_varchar2_table(68) := 'C816A49402D00679EEC25567AAAA9F5D64A1B91002D94A4F7E7F3552366AA4FEDB8A927C693F7B2FB5004008E41F44B245C08EF62D6CD0AC61BF16B3477A37C9E6FF89FEBA4200DA822AF859E5500AD32DEC5A01FB08A93242F6E4C07FA108EC6297A016';
wwv_flow_imp.g_varchar2_table(69) := '6B5AEA331565536A84F22C09675C2500C7732858B876ACA6AAB3D9CAC3D7313118930423ECEA5D02DFB001B241D5947515A5335E762306D70AC0F1C9BAE9A62559E1ECAC899AA65DC402BE8009C278F6EF43DC9850C4940401F6AA2EFB5685BE52F52BE4';
wwv_flow_imp.g_varchar2_table(70) := 'F36D58BE68FAD6247A9362574F0840AC4CDC78D7AA7E819072BE46BEF1A4D278F69CE1E9AC9D7E6BB1BF14998393C910D84B9A7690E5FC6BF63DBE8FD843661F8535E523A797E74A26A044F7F5AC0074076C52F1AB29C3BEFA2A2510E8EBAB4D69F205FC';
wwv_flow_imp.g_varchar2_table(71) := 'ADBE86BA2C5F6646AA92E26BF5250A1BFBD94F20A406D4405A500B86D3D4BA86A0D633375D6D0E1F55690FBB3A44145EBD7AA6FE3BB6EF094000500A20E0610210000F271FA1830004003500021E260001F070F2113A084000500320E0610210000F271F';
wwv_flow_imp.g_varchar2_table(72) := 'A1830004003500021E260001F070F2113A084000500320E0610210000F271FA1830004003500021E260001F070F2113A084000500320E0610210000F271FA1830004003500021E260001F070F2113A084000500320E0610210000F271FA1830004003500';
wwv_flow_imp.g_varchar2_table(73) := '021E260001F070F2113A084000500320E0610210000F271FA1830004003500021E260001F070F2113A084000500320E06102FF0FCB85F3D3C2F299520000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5373494941454710)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000001BE494441545847ED954B4B026114865F33734A238856BA886E508474238332082C0AB2452DFB05FD9576B508DAF40BA285105961844268A60903955A76557444';
wwv_flow_imp.g_varchar2_table(2) := '93407354C846499050E753462298D9CECC390FCF39DFFB49D6370E72F8C347220288064403FFC280824A615ADB5F312DCCE734D86C0BE4547BCD89429403F3B36AAC2E8F542CBEB3670145C9607706D12257D4042118C0D4441FE8DB00ECAE2064B25662';
wwv_flow_imp.g_varchar2_table(3) := '0832001D67C050D9C0E6B6094A655BA1A9C7F7862F49A7C0003C2328ED6634D138B5040406F83170FF18C58D2758B6F8F0A01A03BD5D301E7100D60032E924F75D8EDB09655518B211D462E098C6E1891793632A30910F84A3D5659001F0EC40698B7DA3';
wwv_flow_imp.g_varchar2_table(4) := '1B61260126FA8E70E4933B9A1D0218E0194151FF351DC0A5EB0529368B3B5F84577F9E8CCC00C108F28DAFDCAF60B9E65E7F8C380F8800F43A15D60CA3F8BD84526913561635305BBDDC7232C8643248B32984A2D2C69C827255EDCE675C389EB8E6592C';
wwv_flow_imp.g_varchar2_table(5) := 'CC0D21188A37EE189603D8DA3D432C9EC4925E83196D0F1A9A03E500AC363FB4E3DDA0E4CD85D7C51C209D01D10EF05D460D4F42BEEBB814C0E678408215F83222D559CF774423A8A730E93F2280684034F00D182AF8E173793D560000000049454E44AE';
wwv_flow_imp.g_varchar2_table(6) := '426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5372556065454708)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA0000200049444154785EEDDD09905DD59DDFF17F6FAFF7566B6DD4DA17849004C8060C18636630E385C436630CA6EC8C33494DE2A452494DA59C4C4232659BF1986170';
wwv_flow_imp.g_varchar2_table(2) := '618F3313A7524ECA2636D89800B6E59801B31821E405A17D418084D4426BB7D4AB7AEFCEBD2D9A11A25FBF7BDFBDEFDCFF39E7DB532E4F95EEBDE7FFFFFCCFCCFDBDFB5EBF2EFBECBFFABFE3C20F020820800002087825504600F06ADE348B0002082080';
wwv_flow_imp.g_varchar2_table(3) := 'C0840001808D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C0002082080';
wwv_flow_imp.g_varchar2_table(4) := '0001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001';
wwv_flow_imp.g_varchar2_table(5) := '803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D';
wwv_flow_imp.g_varchar2_table(6) := '80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D8000';
wwv_flow_imp.g_varchar2_table(7) := '0208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208';
wwv_flow_imp.g_varchar2_table(8) := '208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D800002082080';
wwv_flow_imp.g_varchar2_table(9) := '80870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D8000020820808087';
wwv_flow_imp.g_varchar2_table(10) := '0204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204';
wwv_flow_imp.g_varchar2_table(11) := '000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F';
wwv_flow_imp.g_varchar2_table(12) := '874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874E';
wwv_flow_imp.g_varchar2_table(13) := 'CB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB08';
wwv_flow_imp.g_varchar2_table(14) := '20800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB082080';
wwv_flow_imp.g_varchar2_table(15) := '0002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002';
wwv_flow_imp.g_varchar2_table(16) := '081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB08208000020810';
wwv_flow_imp.g_varchar2_table(17) := '00D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D80308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D8';
wwv_flow_imp.g_varchar2_table(18) := '0308208000020878284000F070E8B48C00020820800001803D80000208208080870204000F874ECB0820800002081000D8038605C665747444C6C682FF04FF3D3E362AE3C1FFF0E39E407959859495974B7979A594575405FF5DE15E93748480C5020400';
wwv_flow_imp.g_varchar2_table(19) := '8B87674FE9E3323478568687CECAD050DFC44D9F1FFF042A2BABA5AABA5E72B97AA9A8CCF90740C70828132000281B884BE58437FAC1C1DEE0E6DF2B23C3032EB5462F0904CACACA25170681EA46A9CAD526B812A722804012010240123DCECD2B3016DC';
wwv_flow_imp.g_varchar2_table(20) := 'FCFB7A4E4EBCEAE707812905CACAA4A6B659EAEA6706FF5C06120208181620001806F761B9C1811E19E8EF92D191411FDAA5C78402D5358D134180B7051242723A023105080031C1387C7A8191E0A6DFD37954C6C7C7A04220B24045454E1A9B5BF9A060';
wwv_flow_imp.g_varchar2_table(21) := '64310E4420B9000120B92157784B207CDC7FB6B723F894FF102608C416A8CAD5496DFD2C093F2CC80F0208945E8000507A634F561897EE336F4AF804801F048A15E04940B1729C87407C0102407C33CE984260B0BF5BFA7A4F45B6696AAA97552B17CAE2';
wwv_flow_imp.g_varchar2_table(22) := '4573A4AAAA32F2791CA84BE0B9E777C8899367F21655535B1D7C1E245E282404E89A31D5B82B40007077B6C63A0BDFEFEF3ADD36F1E53E857E6EBA71BD7CFA1357497333BFFE55C8CA867FBFE7FE0DB273F7C1BCA5DEF9E9DF93C6863A3974A45D36FF66';
wwv_flow_imp.g_varchar2_table(23) := 'B7F4F4F4456A8B1010898983104824400048C4C7C9A1C0C0D94E39DBD7312DC6CCE646F9C23FFFB05CBEB615348704A2048005ADE1AFF949F07D1063F2FCA63DB27DD7AB910408019198380881A205080045D371E23981E0BDFFE053FFD37DD14F4BCB2C';
wwv_flow_imp.g_varchar2_table(24) := 'F9C21FDF2CAB57B580E698409C0030D9FA96AD6FC8A6CD3B6578A4F013A3AAE05B036B83EF09E083818E6D1CDA512140005031067B8B181EEE9FF8B5BFE97EFEC9676E925B3EBCD6DE26A93CAF40310120BCD844087871870C8F16FE5A6842001B1081D2';
wwv_flow_imp.g_varchar2_table(25) := '0810004AE3EACD55C3AFF9EDED3E91B7DFF0C37E7FFBD7FF542AABF843302E6E8A6203C04408D8F6866CDCB43DF8B5D1C2DF19C1DB012EEE1E7ACA5A800090F5042C5F3F7CEF3FFC0C40BE9FF0437F7FF2F91B2CEF92F2F309240900E79E041C941736EF';
wwv_flow_imp.g_varchar2_table(26) := '0A7E7D94B703D86508981620009816776CBDDEE0FBFE8782AFFECDF7F3F9CF7E483EFAA1358E754D3B93024903002180BD844076020480ECEC9D58B9B7FB78F0E9EEFCBFDAF51FFFF453B2FEB2054EF44A13EF164823009C0B01C1DB012FF276007B0C01';
wwv_flow_imp.g_varchar2_table(27) := '9302040093DA0EAED5D37534F88B7FFD793BFBF27FFE4CF0853FF31CEC9C964281B402C064087821F8ED00DE0E606F216046800060C6D9D9550800CE8E36526369068070C197DEFA15414240247E0E422091000120111F271300FCDE036907004280DFFB';
wwv_flow_imp.g_varchar2_table(28) := '89EECD0A1000CC7A3BB71A01C0B991C66AA814018010106B041C8C40D1020480A2E93831142000F8BD0F4A15002643C00BC197058DF265417E6F32BA2F990001A064B47E5C9800E0C79CF37559CA00702E0404DF13F0E24E4280DFDB8CEE4B2440002811';
wwv_flow_imp.g_varchar2_table(29) := 'AC2F972500F832E9A9FB2C75002004F8BDBFE8BEB4020480D2FA3A7F750280F3239EB6411301602204BC1C7E63204F02FCDE6D749FB60001206D51CFAE4700F06CE017B46B2A001002FCDE67745F1A010240695CBDB92A01C09B514FD9A8C9004008F07B';
wwv_flow_imp.g_varchar2_table(30) := 'AFD17DFA020480F44DBDBA2201C0AB71BFAB59D3018010E0F77EA3FB74050800E97A7A7735028077237F47C35904004280DF7B8EEED3132000A467E9E59508005E8EFDEDA6B30A0093216063F02B826363A305875095AB97DAFA995259595DF0580E40C0';
wwv_flow_imp.g_varchar2_table(31) := '170102802F932E519F048012C15A72D92C030021C0924D42996A0508006A4763476104003BE654AA2AB30E00E742C081E04F09EFE24940A986CC759D152000383B5A338D1100CC386B5D454300200468DD1DD4A55D8000A07D42CAEB2300281F5089CBD3';
wwv_flow_imp.g_varchar2_table(32) := '12002642C096E049C0E6684F0272D5F55253C767024ABC3DB8BC72010280F201692F8F00A07D42A5AD4F530020049476D65CDD3D0102807B3335DA1101C028B7BAC5B405807321E060F02420DA6F07F02440DD96A2208302040083D82E2E45007071AAD1';
wwv_flow_imp.g_varchar2_table(33) := '7BD21800C2EA7F178480F06F0744F915414240F47973A45B020400B7E669BC1B02807172550B6A0D00932160E38B3B647C7CACA01921A0201107382840007070A8265B220098D4D6B796E600F00F4F0276044F020801FA760F15652D4000C87A0296AF4F';
wwv_flow_imp.g_varchar2_table(34) := '00B07C8009CBD71E00CE8580036FBD1D400848386E4E774C8000E0D8404DB74300302DAE6B3D1B02002140D79EA11A3D0204003DB3B0B212028095634BAD685B02002120B5917321870408000E0D338B56080059A8EB59D3A6003011025E0ADE0EF875F8';
wwv_flow_imp.g_varchar2_table(35) := 'DB01BC1DA06717514956020480ACE41D599700E0C8208B6CC3B60070EE4940F82B827C30B0C891739A43020400878699452B04802CD4F5AC69630008F57E1B84804D84003D1B894A3211200064C2EECEA204007766594C27B60600424031D3E61CD70408';
wwv_flow_imp.g_varchar2_table(36) := '00AE4DD4703F0400C3E0CA96B339004C86808D9BB64552ADACAC96C6E60552565616E9780E4240BB000140FB8494D74700503EA01297677B00381702820F06BEB833D23706D6D4CE90BA86D9C1598480126F2D2E6F4080006000D9E52508002E4FB7706F';
wwv_flow_imp.g_varchar2_table(37) := 'F7FFDD93F2D2CBAFE43DF0B64FDE204B97CC297CA18C8FD8B6F3B03CFDEC964855D4D5CF0EFE947073A463390801CD020400CDD3B1A036028005432A6189FFF3BBCFCB731BB7E75DE1A6DF7BAFBCE7F22525AC20BD4B477D1250519193FAA67912BE25C0';
wwv_flow_imp.g_varchar2_table(38) := '0F02360B10006C9E9E82DA09000A869061093F7AF425F9C9CF37E7ADE08ACB56CACDBF7F598615C65B3A6A08089F00844F02F841C066010280CDD353503B0140C110322C61E3E6D7E5DBDFF97F792B686CAC977FF9CF3E9C6185F197DEBAFD903CF3AB97';
wwv_flow_imp.g_varchar2_table(39) := 'A73F31F82060F3ACC5525E5E197F01CE404089000140C9206C2D830060EBE4D2A97BDFAB27E5EEBFFAD1B417FBD08DEF95F557D8F13640D8C8D8E8B83CB3718F6CDFB17FDABEEA1BE64A756D533A905C05810C04080019A0BBB42401C0A569C6EF656C74';
wwv_flow_imp.g_varchar2_table(40) := '4CFEE2EB3F9557F6B7E53D79F6EC66F9F04DEF91D6F9F67C70EEE4A91EF9E573DBE5D8B15379FBCAD5344A43E3BCF8689C8180120102809241D85A0601C0D6C9A557F7631BB6C98F1FDB38ED05E7CD9D25FFF8A357CBCC9975E92D5CE22B6DD9F6863CF7';
wwv_flow_imp.g_varchar2_table(41) := 'FCD6FCAB046F03CC9AB3BCC4557079044A274000289DAD175726007831E6699B3CD47646FEE6BF6F90E3273BA73DAEB1B156DE73C52AB9ECD2C55253ABFFBDF3B6239DF2F0A3CF4EDB53F3EC257C0E80FF13B056800060EDE874144E00D03187ACAB78FC';
wwv_flow_imp.g_varchar2_table(42) := 'E7DB839BE5F391CAA8AECEC9FC9659326FDE2C993DAB3ED239591DF4D4332FCBC8C868DEE59B662EE4D701B31A0EEB261620002426F4FB020400BFE73FD9FDC8F0A8FCD9977F24C78E777805D2D8DC2A5555B55EF54CB3EE081000DC9965269D10003261';
wwv_flow_imp.g_varchar2_table(43) := '57B9E88EDD47E5FB3F7C5E8E1CCDFFC139958527288A0090008F5333172000643E02BB0B2000D83DBFB4AB0F43C07DDF7A5C46A7796C9EF69A595E8F0090A53E6B271520002415F4FC7C0280E71B608AF65FFCED41D9F0C41679E3D031E7710800CE8FD8';
wwv_flow_imp.g_varchar2_table(44) := 'E90609004E8FB7F4CD11004A6F6CE30A274EF6C837BFFD841C3A7CDCC6F223D74C00884CC5810A0508000A8762534904009BA665B6D6DEBE41F9F54B07E585CDFB64FFABF9BF28C86C55E9AE460048D793AB9915200098F5766E35028073234DBDA1FEFE';
wwv_flow_imp.g_varchar2_table(45) := '61D9F49BD7E5E5ED0765E79E834E7D3E800090FA76E1820605080006B15D5C8A00E0E2544BD7535FDF90BCD1765A3ABBCE4AFBE9DED22D94D2959F7B7E879C387926EFD50800294173994C04080099B0BBB32801C09D59D2C9BB05EEB97F83ECDC7D9000';
wwv_flow_imp.g_varchar2_table(46) := 'C0E670528000E0E458CD3545003067CD4AE6050800E6CD59D19C0001C09CB5932B11009C1C2B4DBD254000602BB82C40007079BA067A230018406689CC04080099D1B3B001010280016497972000B83C5D7A2300B0075C162000B83C5D03BD11000C20B3';
wwv_flow_imp.g_varchar2_table(47) := '4466020480CCE859D8800001C000B2CB4B10005C9E2EBD1100D8032E0B10005C9EAE81DE0800069059223301024066F42C6C4080006000D9E52508002E4F97DE0800EC01970508002E4FD7406F040003C82C9199000120337A16362040003080ECF21204';
wwv_flow_imp.g_varchar2_table(48) := '0097A74B6F0400F680CB02040097A76BA0370280016496C84C800090193D0B1B10200018407679090280CBD3A53702007BC065010280CBD335D01B01C000324B64264000C88C9E850D0810000C20BBBC0401C0E5E9D21B01803DE0B20001C0E5E91AE88D';
wwv_flow_imp.g_varchar2_table(49) := '0060009925321320006446CFC20604080006905D5E8200E0F274E98D00C01E70598000E0F2740DF446003080CC129909100032A367610302040003C82E2F41007079BAF44600600FB82C40007079BA067A230018406689CC04080099D1B3B00101028001';
wwv_flow_imp.g_varchar2_table(50) := '6497972000B83C5D7A2300B0075C162000B83C5D03BD11000C20B34466020480CCE859D8800001C000B2CB4B10005C9E2EBD1100D8032E0B10005C9EAE81DE6C08006363E3F2F8CFB7CA966D07E570DB71191D1D3320C312C508B4CE9F2B2B97CF97DB3E';
wwv_flow_imp.g_varchar2_table(51) := '7195CC9D535FCC25523D475700189791E141191E3A1BECE121191B1D91B1F1D1897ECBCBABA4BCA2522A2B735295AB978A8AAA541DB8989B02040037E76AAC2BED0120BCF9DF73FFCF64F7DE43C64C5828B9405D6DAD7CF9AEDB6561EB8CE4174B70050D';
wwv_flow_imp.g_varchar2_table(52) := '01607C7C4CFACF76CA607F9784FF7B949F300CD4D6CD94EA9AC6E0F0B228A7708C870204000F879E66CBDA03C0134FEF92071E7C36CD96B9962181952B16C9DD77DD6A68B5A997C93A000CF677CBD9BE8EC837FE0BBBA8A8C8495DC39CE0A9406DA68E2C';
wwv_flow_imp.g_varchar2_table(53) := 'AE538000A0732ED654A53D00DCFB8D0DB27DD7416B3C29F41F049A9A1AE5DEAFDC29339A6A3263C92A008C8C0CCA40F08A7F68A02771EF6565E55253D72C35B5CD5256C6D380C4A00E5D8000E0D030B36885009085BA1F6BFA1A00C6C646A5B7EB988421';
wwv_flow_imp.g_varchar2_table(54) := '20CD9F5CF0764043E3BC342FC9B52C172000583EC0ACCBD71E00C20FFF3DFCE80B5933B17E11020B16B4C87D77DF51C499E99D62FA09C0F0507FF07EFFE9E0C37E03E93571DE95C2CF05D4D6CF2AC9B5B9A87D020400FB66A6AA62ED0160707044BEF4B5';
wwv_flow_imp.g_varchar2_table(55) := '47E4F09153AADC28667A81CACA4AB9EB8BB7C9EA8BB37DC56A320084AFFC7B3A8F4E7CC2BF943F0D4D2D92AB6E28E5125CDB120102802583D25AA6F60010BAF5F70FCBF71EDA245BB6BE2A7D674BF3CA4AEB7C6CAB2B97AB92E5CB5AE573B75F2F2B96CD';
wwv_flow_imp.g_varchar2_table(56) := 'CEBC7C5301A0D4AFFCCF87ACACAA99782BA09C5F15CC7C7F655D000120EB0958BEBE0D01C07262CACF50C0440088FBCABFB1B15EDE73C54A993DAB51E6CC6C94A1E111397DA6578E9D38137CD7C57E191F2BFCAB82E1DB00E1DB01FCF82D4000F07BFE89';
wwv_flow_imp.g_varchar2_table(57) := 'BB27002426E4028A054A1D00E2DCFC6BAAAB647D70E3BF7CDD32696CA89E52ED70DB19D9BA7DBFBC76E0E8B4AAE16F0634CF5ECA6F0528DE7B264A2300985076780D0280C3C3A5B5E04BA436C8CEDDF97F8DB4B1B955AAAA8AFB1DFB3837FFB2F272F9F8';
wwv_flow_imp.g_varchar2_table(58) := 'C7AE958B57B4149CCAF8E8B83CFCF86639F2E689698F6D9C313FF87E80BA82D7E30077050800EECED64867040023CC2C929140A902409CF7FC673437C8F5D7AC934B2F991F59A12D7812F0E4B35BA4B333FFF70884DF0D50579FFDE72C2237C581A90B10';
wwv_flow_imp.g_varchar2_table(59) := '005227F5EB820400BFE6ED5BB7A50800715FF97FF296EB64C5F2F8BF0DF1D2D683F2AB8DDBF28E2CFC1060F3ACC5BE8D947ECF132000B01D1209100012F171B27281B40340A95FF99FCF79B8EDB4FCF8B15FE50F00E595C1E70096289F00E59552800050';
wwv_flow_imp.g_varchar2_table(60) := '4A5D0FAE4D00F060C81EB79866003079F30F47D6DB3B24DFFDFE53323894E77B0582AF059E396B89949557783C61BF5B2700F83DFFC4DD130012137201C502690500538FFD2FA4FCCE034F4957676F5EE1F0094079F024801F3F0508007ECE3DB5AE0900';
wwv_flow_imp.g_varchar2_table(61) := 'A95172218502690400D3AFFC27193B3AFAE4BB3F7832AF2ABF0AA870C3192E89006018DCB5E50800AE4D947ECE17481A00B2BAF9873DEC7FF5B8FCEC179BF30E940F01B2D70900EC8144020480447C9CAC5C204900C8EAB1FF24E953CFEC901DBB5ECF2B';
wwv_flow_imp.g_varchar2_table(62) := '5C51592D33662E543E01CA2BA50001A094BA1E5C9B00E0C1903D6EB1D80090E52BFF705C5BB71F92677EF5F2B493AB6B982D35B5CD1E4F97D60900EC8144020480447C9CAC5CA0980010E7957FD87E55F0970FFFD147AF29EA77FDA7E23BDB37240FFCF0';
wwv_flow_imp.g_varchar2_table(63) := '19E9EBEB9F56B7A97981847F18881F7F050800FECE3E95CE0900A9307211A502710340DC9BFF64DB8D8DB5F2C1F75F21AB637CDBDF546487DA3A65E3A6ED72E2E4E9694579FF5FE986335C1601C030B86BCB11005C9B28FD9C2F102700C479EC3F95F28C';
wwv_flow_imp.g_varchar2_table(64) := '190DF2FE6BD7C99A2243C01B873A64D36FF6C8F1E3ED0587D8D0D422B9EA8682C77180DB020400B7E75BF2EE0800252766810C05A20680625FF95FD85A43438D7CF0FAF5B1BEF73FBCC6E1B62ED9F8E236397E62FA57FEE1B195C187FF9AF8F05F86BB4A';
wwv_flow_imp.g_varchar2_table(65) := 'CFD204003DB3B0B21202809563A3E8880251024045454E7A3A8FCAE8689E6FDC8BB8D6E4610D0DB57243F076C09AD5D1FEF8CFE123C1CD7F53B49B7FF8BBFFE1CDBF22F83B00FC204000600F2412200024E2E364E502850240F828BDBFEF4CB49B7FF0D5';
wwv_flow_imp.g_varchar2_table(66) := 'BB151515323A3252B0EB86FA1AB9E1034108B8A475DA63DBC29B7FF0CAFFD8F1C2AFFC2558BFB129FC13C0C5FDF9E28245738075020400EB46A6AB600280AE79504DBA02850240F88A7A7C7CACF0A2C1CDF7BD57AC9119CD8DB269D3CB32345CF869417D';
wwv_flow_imp.g_varchar2_table(67) := 'F07640F82460EDEAA94340DB9BE12BFFEDC1CDBF23D2FA0D8DF378DFBFB09457471000BC1A77FACD1200D237E58A7A040A05802895E6AAAB65EDA52B64F9928B260E3F7EAA53F6EC3D2867CE9C29787A6363BD5C7FEDDAE0FC05EF38F6D0E1D3F262F081';
wwv_flow_imp.g_varchar2_table(68) := 'BFA3C74E15BC467945A5D4D6CD92EA9AC682C772805F020400BFE69D7AB70480D449B9A02281A40160E2E6BF26B8F92F3E77F39FFC8915021ADE0A016BCE8580F0CFFC6EFACD5E397AF46441296EFE0589BC3E8000E0F5F893374F00486EC815F40A2409';
wwv_flow_imp.g_varchar2_table(69) := '0095559572F9BA4B64D9E296291B3CD1DE233B77ED95AEAEFC7FAD6FF2C4B2F272F9E42DD7C9FC9666F9F1632F48FBE9AEC268C1DB0E3CF62FCCE4F31104009FA79F42EF04801410B9845A816203C0B99BFFAAE0E6FFCE57FE17361A37043435D54DFBE7';
wwv_flow_imp.g_varchar2_table(70) := '7DDFBE3E377FB57B4A536104004DD3B0B01602808543A3E4C802C504805C752E78CF7EE5DBEFF9175AECF8C9E03301FBA27D26A0D0B5C27FE7B17F14258E09050800EC8344020480447C9CAC5C206E00A80E6EFE6B62DCFC27DB4F2B0470F357BEA19495';
wwv_flow_imp.g_varchar2_table(71) := '4700503610DBCA2100D83631EA8D2310270054D70437FFD51707AFFCA77ECFBFD0BA49430037FF42C2FCFB85020400F64422010240223E4E562CD0DD3320FFF5AB0F4B7B7BE10FDC55E52AE5B2B5F93FF017B5CD389F0978C73579CF3F2A31C79D274000';
wwv_flow_imp.g_varchar2_table(72) := '603B2412200024E2E364A502BBF71D97477EF26B79657F5BC10AAB6BAA8357FEE17BFEC5BDF2BF7081734F020E04DF13D05970EDF0005EF94762E2A0290408006C8B44020480447C9CAC5020CECD3FBCF95E71D9AAC81FF88BD2EED98101D9B479977477';
wwv_flow_imp.g_varchar2_table(73) := '77173C9C9B7F41220E98468000C0F64824400048C4C7C9CA04E2DCFCD37EE51F52749CEE9EF88D8093A70A7FBD2F377F659BC7C2720800160E4D53C904004DD3A0962402DCFC93E871AE8D0204001BA7A6A8660280A261504AD10259DFFCDB8357FE7B79';
wwv_flow_imp.g_varchar2_table(74) := 'E55FF4FC38B138010240716E9CF596800D01606C6C5C1EFFF956D9B2ED60F03DEAC7833FDD1AE1AFB731E1A2045AE7CF9595CBE7CB6D9FB84AE6CEA92FEA1AA64FEAEEEE97BFBCFF67D2D676A2E0D2A578ECCFCDBF203B07944880005022585F2EAB3D00';
wwv_flow_imp.g_varchar2_table(75) := '8437FF7B82FFE7BE7BEF215F46A2A2CFBADA5AF9F25DB7CBC2D6192AEAC95704377FD5E3A1B8120B10004A0CECFAE5B50780279EDE250F3CF8ACEB6350D9DFCA158BE4EEBB6E55595B5814377FB5A3A1304302040043D0AE2EA33D00DCFB8D0DB27DD741';
wwv_flow_imp.g_varchar2_table(76) := '57F955F7D5D4D428F77EE54E99D154A3AE4EDEF35737120ACA4080009001BA4B4B12005C9A66BABD680D00DCFCD39D3357B357800060EFEC5454AE3D00841FFE7BF8D1175458F956C482052D72DFDD77A86A3BEE63FFB5C137FC2D4BE91BFE42083EF0A7';
wwv_flow_imp.g_varchar2_table(77) := '6A3B785F0C01C0FB2D900C407B00181C1C912F7DED11397CE454B246393B96406565A5DCF5C5DB64F5C5F3629D57CA83B9F99752976BDB284000B0716A8A6AD61E0042AAFEFE61F9DE439B64CBD657A5EFEC80223DF74AC9E5AA64F9B256F9DCEDD7CB8A';
wwv_flow_imp.g_varchar2_table(78) := '65B3D534C8CD5FCD28284491000140D1306C2CC5860060A32B35A72710F73DFFF41FFB77BDF5253FA70B36C5D7FB1624E280140508002962FA782902808F53B7A7676EFEF6CC8A4ACD0B1000CC9B3BB52201C0A9713AD58C8A9BFFDEE00FFBB4F3CADFA9';
wwv_flow_imp.g_varchar2_table(79) := '8DE550330400878699452B04802CD459B39040AC9B7F75B5AC5D137CDA7F714BA1CB46FEF7F6D3C1637F6EFE91BD38301B01024036EECEAC4A00706694CE34A2E1E6BF27B8F99FE295BF337BCAD5460800AE4ED6505F040043D02C134920CECDBF2678E5';
wwv_flow_imp.g_varchar2_table(80) := 'BF66CD8AE095FF4591AE1DE5A0F0953F37FF28521CA3418000A0610A16D74000B078788E951EEBE65F53236B2E5DCECDDFB13D403BF1040800F1BC38FA020102005B428340E637FF8EE095FF3E1EFB6BD80BD4105D800010DD8A23A7102000B02DB216E0';
wwv_flow_imp.g_varchar2_table(81) := 'E69FF50458DF56010280AD935352370140C9203C2D23FECD3F7CCF3FC54FFBF3CADFD39DE746DB040037E69859170480CCE8BD5F989BBFF75B0080840204808480BE9F4E00F07D0764D37FF637FF6ED9F3CA0139758A2FF9C96607B06A1A02048034143D';
wwv_flow_imp.g_varchar2_table(82) := 'BE0601C0E3E167D43A37FF8CE059D639010280732335DB1001C0ACB7EFAB657DF33FD5D12D7B79E5EFFB3674A67F028033A3CCA611024036EE3EAECACDDFC7A9D37329050800A5D4F5E0DA04000F86ACA0456EFE0A864009CE0910009C1BA9D986080066';
wwv_flow_imp.g_varchar2_table(83) := 'BD7D5C8D9BBF8F53A7671302040013CA0EAF41007078B80A5AE3E6AF600894E0ACCBD73E80000018E8494441540001C0D9D19A698C0060C6D9C755B8F9FB38757A3629400030A9EDE05A04000787AAA0256EFE0A864009CE0B10009C1F71691B240094D6';
wwv_flow_imp.g_varchar2_table(84) := 'D7C7AB73F3F771EAF49C850001200B7587D6240038344C05ADEC79E5A43CFCE826D9FFDA9182D5E4725572F9BA4B64C9A279058F8D7A4047E759D9B56B9FB47774463AA5BE61AE54D736453A968310D0264000D03611CBEA2100583630C5E5C67DE5BFF6';
wwv_flow_imp.g_varchar2_table(85) := 'D215B234C53FEC732AF8C33EE7BEE4E74C64A5C6E656A9AAAA8D7C3C0722A0498000A0691A16D64200B070680A4BB6F1E61F321200146E264A8A2C4000884CC58153091000D817490554DCFCF705AFFCDBA3BFF29FEC99009074FA9C9FA50001204B7D07';
wwv_flow_imp.g_varchar2_table(86) := 'D626003830C40C5BB0F9E6CF13800C370E4BA72240004885D1DF8B1000FC9D7DD2CE63DFFCD704EFF92F6A49BAECDBE74FBCE75FE42B7F9E00A436062E94A1000120437C17962600B83045F33DC4B9F957D754CBBA352B53BFF9EF096EFEED453CF63F5F';
wwv_flow_imp.g_varchar2_table(87) := '8BB700CCEF1D564C4F8000909EA5975722007839F6444DC7BDF9879FF65FB6F8A2446B9E7F72F8CA3F8D9B3F6F01A436122E9491000120237857962500B83249337D74F70CC857EFFB891C79F364C10573B94AB92CF83DFF341FFB779CE9939DC1EFF977';
wwv_flow_imp.g_varchar2_table(88) := '9CEE2AB87E456585D4D7D54877775FDE63790250909103140B1000140FC786D20800364C49478DB16EFED5C1CD7F6DB637FF3FFDD71F97279FD92E3B771F2400E8D8425491B20001206550DF2E4700F06DE2C5F5DBDDDD2F7F79FFCFA4ADED44C10BD4D4';
wwv_flow_imp.g_varchar2_table(89) := 'D6C89AD5CBD37DECDF1E3CF60FBEE427CA7BFE55B99CFCBB2F7C4CAE5CBF58EEB97F0301A0E0C438C056010280AD935352B70D01606C6C5C1EFFF956D9B2EDA01C6E3B2EA3A3634AF4CC97D13A7FAEAC5C3E5F6EFBC45532774EBD9102E2DFFCC3F7FC53';
wwv_flow_imp.g_varchar2_table(90) := 'FCB47F9137FF10870060648BB048460204808CE05D59567B00086FFEF704AF3C77EF3DE40A792A7DD4D5D6CA97EFBA5D16B6CE48E57AF92E92F9CD7FE2037F078357FEA70BF679FE2BFFC983090005D938C062010280C5C3D350BAF600F0C4D3BBE48107';
wwv_flow_imp.g_varchar2_table(91) := '9FD540A5AE86952B16C9DD77DD5AB2BA6CBFF9F304A0645B830B2B112000281984AD65680F00F77E63836CDF95FF435CB6BAA751775353A3DCFB953B6546534D1A977BC735E2FCAADFB9F7FC537EEC1FE3957F4BCB4CB9E3D6EBE5BAF72D7B97034F0052';
wwv_flow_imp.g_varchar2_table(92) := 'DF1A5C5091000140D1306C2C850060E3D4CED55CAA0090F5CDFFE4C437FC457BEC3FDDCD9F2700F6EE6D2A8F26400088E6C4517904B40780F0C37F0F3FFA02F39B4260C18216B9EFEE3B52B5C9FAB17F9C9BFF54EFF95F88C1138054B707175326400050';
wwv_flow_imp.g_varchar2_table(93) := '3610DBCAD11E00060747E44B5F7B440E1F39651B6D49EBADACAC94BBBE789BACBE785E6AEBB876F3E709406A5B830B29152000281D8C2D65690F00A1637FFFB07CEFA14DB265EBABD27776C016DA92D499CB55C9F265ADF2B9DBAF9715CB66A7B6868B37';
wwv_flow_imp.g_varchar2_table(94) := '7F02406ADB830B29152000281D8C2D65D910006CB1B4B54E9BDEF3BFE8A25972FB27DF3FE507FEA6F2E72D005B772575471120004451E298BC020400BF37877537FF5B839BFFD5EFFEB47FBE291200FCDEDFAE774F00707DC225EE8F00506260C59777FD';
wwv_flow_imp.g_varchar2_table(95) := 'E6CF5B008A371FA5A52240004885D1DF8B1000FC9CBD0F377F02809F7BDBA7AE09003E4DBB04BD12004A80AAFC92716FFE6B832FF9599AE277FBC7F955BFF9C17BFE9F8EF9D8FF7C7EDE0250BE19292F91000120111F271300FCDA03F1FEA46F955C1EFC';
wwv_flow_imp.g_varchar2_table(96) := '49DF258BD2FB55C3F6337DB26BD73EE938DD5510BEA2B242C23FE97BE5FA45058FE53300451371A2C50204008B87A7A1740280862998A9E1E8B16EF9FEC39B64DB8ED70A2E187EBD6FFAAFFC3BDFFA86BF3305D70F5FF9DFFE87D7CBB5572D2D78EC7407';
wwv_flow_imp.g_varchar2_table(97) := 'F00420111F272B172000281F90F6F20800DA27944E7D0303C3F2E023BF955F3EFB72C10B96ECE6BF37F87ADF0E7337FFB0510240C1717380C50204008B87A7A1740280862994BE869FFE6287FCF0915F155CC8A59B3F01A0E0B839C072010280E503CCBA';
wwv_flow_imp.g_varchar2_table(98) := '7C0240D61328FDFA2FFEF6A07CF7FB4F4B6F5FFFB48B4DDCFC2F0D3EF0B7A825B5A24E7674CA9EE0957F479457FEF367CBEDC107FE923EF63FBF789E00A4364A2EA4508000A0702836954400B0695AF16B1D1B1B97FFF0E70FC9B1E31DD39E9CAB0E3EF0';
wwv_flow_imp.g_varchar2_table(99) := 'B76E952C5998DECD3FFCC0DFCE9DFBE4F419331FF89BAA410240FC3DC319F6081000EC9995CA4A09002AC7925A514F3EB34FBEFB83A70A5EEF3DEBD7CAF225E9DDFC07864664E3A6ADD2DDDD5370ED8B5A9AE533B77D50AEB97249C163E31E4000882BC6';
wwv_flow_imp.g_varchar2_table(100) := 'F1360910006C9A96C25A09000A879252495DDD03F237DFFE7BD9B7FFF0B4575CBB6665F0570517A7B4AA48DCC7FE77048FFDAF49F869FF7CC51300521B2B17522840005038149B4A2200D834AD78B53EF3FC2BF29DEF3D39ED49CB962E94CBD6AD90AA8A';
wwv_flow_imp.g_varchar2_table(101) := '8A7817CF73B4A69B7F5822012095B17211A5020400A583B1A52C02802D938A57E7D9E04F287FEB7F3C293B761DC87B624570D3FFF0CDD7495D4D2EDEC5F31CADE5B1FFF9E5110052192D17512A4000503A185BCA2200D832A978751E3CD421FFE5EE07A7';
wwv_flow_imp.g_varchar2_table(102) := '3D69DD9A1572C9C5E9BCEFDE7E3AF8C05FF00D7F597EE06FAA660900F1F60D47DB254000B06B5EEAAA2500A81B492A057DEFA1CDF2F7BF7C29EFB51A1BEBE5FDD75C2E0DF5B589D73BD91EFCAADFBE68BFEAD7DA1AFCAADF274BF79EFF85CD1000128F97';
wwv_flow_imp.g_varchar2_table(103) := '0B28162000281E8E0DA511006C9852BC1A7B7A06E52FEE7B4C8EBC792AEF894B972E902BAFB824DE85A7383AD663FF8B9AE5CE4F7D50DE57824FFBE76B84009078C45C40B1000140F1706C288D0060C394E2D5F8BB970FC937FEEEA7794F2A2B13B9F183';
wwv_flow_imp.g_varchar2_table(104) := '57CBECE6C67817BEE0E853ED5DB27BDF81485FF213BEF2BFE3D6EB8DDEFCC37209008946CCC9CA050800CA07A4BD3C0280F609C5AFAFD0E3FF9679B3E503D75D11FFC2E79D61C3CD9F009068C49C6C810001C08221692E9100A0793AF16B8BF2E77ED705';
wwv_flow_imp.g_varchar2_table(105) := 'BFF77F4982DFFB3F19BCF2DFA3FC95FFA41C4F00E2EF21CEB047800060CFAC54564A00503996A28BFADDD636F9C6DF3E3EEDF9BF7FE3FB64567343516BC479CF7FFE4533E5339FBAC1F863FFF31B23001435664EB244800060C9A0B4964900D03A99E2EA';
wwv_flow_imp.g_varchar2_table(106) := '2AF8F8BF658E7CE0DACB8BBAF8E1374FCAABAFB5496767E1EFF65FD03A476EFFC3F7CBFBDE9BCEAF19165570701201A05839CEB341800060C39414D74800503C9C98A54579FCBF76EDC5B27AE5A258571E1D1B95D70E1C95FDAFBE214343C305CFD572F3';
wwv_flow_imp.g_varchar2_table(107) := '0F0B2500141C1707582C4000B078781A4A27006898423A3594E2F17F574FAFBCF6FA1179E3D0D14845868FFDEFBCED06B93AE357FE93C51200228D8D832C152000583A382D651300B44C22791D0FFCF0D7F2C453BFCB7BA1BABA5AF9D81F5C5770A17119';
wwv_flow_imp.g_varchar2_table(108) := '9753C197FBBC76E04D3976EC64C1E3270F689D7FEE3D7F2D377F9E00441E1D075A2A4000B074705ACA2600689944B23AA23CFE5FB76655F0E9FF85532ED43F3814FC3E7FA7849FF06F3F755A7A7AFB6215B470C11CF974F057FDB27ECFFFC2A27902106B';
wwv_flow_imp.g_varchar2_table(109) := '8C1C6C990001C0B281692B9700A06D22C5D5F3FAC176F9F3AF3E34EDC997AE5E2E6B2E59FAF631E12BFDAEAE1E79F378BBB41D3E2E7D67078A5ABC26F86342FFE65FDC2257AE8FF7D982A2168B791201202618875B254000B06A5CFA8A2500E89B493115';
wwv_flow_imp.g_varchar2_table(110) := '157AFC3F79CD2BD65D2C73E6CC487CD39FBCDE95EB57C8C76FB95A56AD985B4CD9253F870050726216C85080009021BE0B4B1300EC9FE2C4E3FFAFFF548E1C3961B4998FDC7C957CECE6CB64DEDCE2BE53C044B1040013CAAC91950001202B7947D62500';
wwv_flow_imp.g_varchar2_table(111) := 'D83FC842DFFD9F7687E15F10FCF82DEF938FDCB45672B98AB42F9FEAF50800A9727231650204006503B1AD1C02806D137B77BD85BEFC27AD0EE7CD6B966BAEBC2478AF7FA9AC5A392FADCB96F43A048092F272F18C050800190FC0F6E50900764FD0C4E3';
wwv_flow_imp.g_varchar2_table(112) := 'FF654BE7079FEEBF58DEBB7E892C5AD06C151801C0AA71516C4C0102404C300E7FA70001C0EE1D11E5D3FFC576B866F552B9F6EA8B83EFF25F2A4D8D35C55E26D3F3080099F2B37889050800250676FDF20400BB27FCF0635BE4F10D2FA6D6C4E44DFFAA';
wwv_flow_imp.g_varchar2_table(113) := 'E0D57E73736D6AD7CDEA420480ACE459D7840001C084B2C36B1000EC1EEE7DDFFA856CDDFE5AD14DCC6C6E94756B97CA9A550B64F5AA8BA4655E63D1D7D278220140E354A8292D0102405A929E5E870060F7E0BFFEDF9E9097B7BD1ABB09D75EE9E70320';
wwv_flow_imp.g_varchar2_table(114) := '00C4DE1A9C60910001C0A261692C9500A0712AD16B7AE2977BE481879E2E7882EBAFF4090005B70007382840007070A8265B220098D44E7FADA1A111B9FBDE9FC88137A6FE6B7DBEBCD22700A4BFB7B8A27E010280FE19A9AE9000A07A3C918A0B43C003';
wwv_flow_imp.g_varchar2_table(115) := '3FDC1C7C16E0F589EFF35FB97CC1C4A7F75DF9205F24843C07F11640123DCED52E4000D03E21E5F51100940F88F21209100012F171B272010280F201692F8F00A07D42D49744800090448F73B50B1000B44F48797D0400E503A2BC44020480447C9CAC5C';
wwv_flow_imp.g_varchar2_table(116) := '8000A07C40DACB2300689F10F52511200024D1E35CED020400ED13525E1F0140F980282F91000120111F272B172000281F90F6F20800DA27447D4904080049F43857BB000140FB8494D74700503E20CA4B24400048C4C7C9CA050800CA07A4BD3C0280F6';
wwv_flow_imp.g_varchar2_table(117) := '09515F12010240123DCED52E4000D03E21E5F51100940F88F21209100012F171B272010280F201692F8F00A07D42D49744800090448F73B50B1000B44F48797D0400E503A2BC44020480447C9CAC5C8000A07C40DACB2300689F10F52511200024D1E35C';
wwv_flow_imp.g_varchar2_table(118) := 'ED020400ED13525E1F0140F980282F91000120111F272B172000281F90F6F20800DA27447D4904080049F43857BB000140FB8494D74700503E20CA4B24400048C4C7C9CA050800CA07A4BD3C0280F609515F12010240123DCED52E4000D03E21E5F51100';
wwv_flow_imp.g_varchar2_table(119) := '940F88F21209100012F171B272010280F201692F8F00A07D42D49744800090448F73B50B1000B44F48797D0400E503A2BC44020480447C9CAC5C8000A07C40DACB2300689F10F52511200024D1E35CED020400ED13525E1F0140F980282F91000120111F';
wwv_flow_imp.g_varchar2_table(120) := '272B172000281F90F6F20800DA27447D4904080049F43857BB000140FB8494D74700503E20CA4B24400048C4C7C9CA050800CA07A4BD3C0280F609515F12010240123DCED52E4000D03E21E5F5F5741D97E1A1BEBC55FEA77F7F9B5CBEB65579179487C0';
wwv_flow_imp.g_varchar2_table(121) := 'D40204007686CB02040097A76BA0B7DE9E933234D09377A5CF7FF643F2D10FAD3150094B2090AEC0D0D0A8FCD9971E921327CFE4BDF08C998BA4A23297EEC25C0D014302040043D0AE2E73B6AF4306CE76E66DEFA61BD7CB9F7CFE0657DBA72F8705DE38';
wwv_flow_imp.g_varchar2_table(122) := '7C5AEEFACA0FA6EDB079F652292FAF705881D65C162000B83C5D03BD0D0E744B5FCFA9BC2BCD993343BE79CF1F05FF4FB2CC40352C81407A02DB76BE297FFDCD47A7BDE0ACB9CB837F676FA7A7CE954C0A10004C6A3BB8D6F070BFF4741E9DB6B33FBAF3';
wwv_flow_imp.g_varchar2_table(123) := '26F9D81FAC75B07B5A7255E0E8B16EF95FFFE739D9FBCAA1BC2DE66A1AA5A1719EAB04F4E5810001C0832197B6C571E90E02C0C8F040DE655A5A66C917FEF86659BDAAA5B4A5707504521278F0C7BF950D4FFC66DAABD537CE95EA9AA69456E432089817';
wwv_flow_imp.g_varchar2_table(124) := '20009837776EC5FEBED3D27F36FF07A5C286172E9827FFF60B1F91450B9A9DEB9F86DC1278F6F9FDF2BF7FF04B191D199DB6B1E6598BA5BCA2CAADE6E9C62B01028057E32E4DB36363A3D275FAB08C8F8F4DBB404565857CFAD60FC8C73F72199F0928CD';
wwv_flow_imp.g_varchar2_table(125) := '28B86A028153EDBDF29D079E939DBB0F16BC0A8FFF0B127180050204000B86644389E11380F04940949F5CAE4A962C9A27AB562E08DE43AD8D720AC720501281B1D131697BB35D5E3B7054DADBBB22AD5156562E33662EE4D57F242D0ED22C4000D03C1D';
wwv_flow_imp.g_varchar2_table(126) := '8B6A1B1F1F97AE336D32363A6C51D5948A407C81DABA99525B3F2BFE899C818032010280B281D85CCEF0D05939DBDB21A3A34336B741ED08E415A8A99D21750DB3837FE757FFD826F60B1000EC9FA1AA0EC210D0D37D5C820F04A8AA8B6210482A505191';
wwv_flow_imp.g_varchar2_table(127) := '93A6990B247C0B801F045C102000B83045653D0C065F0D3CD0DF157C8A7A5059659483407102E1AFFBD5D4354B059FFA2F0E90B3540A1000548EC5FEA24683CF02F4769F2004D83F4AEF3BA80E1EFBD7F3D8DFFB7DE0220001C0C5A92AE9693CF8F5C0C1';
wwv_flow_imp.g_varchar2_table(128) := 'C15E190AFE33DD17052929973210785B207CCC9FAB6E905C4D835455F19B2A6C0D370508006ECE555557E1F703846F0B849F0F08BF3A98CF07A81A0FC59C275016FC619F5CAE6EE2E65F15FC373F08B82C40007079BA0A7B0B9F0A8C8C0CC9D8D8C8C47F';
wwv_flow_imp.g_varchar2_table(129) := 'F841206B81B2B2B2E08BA92A277EAFBF72E24FFBF209FFAC67C2FA66040800669C59050104104000015502040055E3A018041040000104CC081000CC38B30A020820800002AA040800AAC641310820800002089811200098716615041040000104540910';
wwv_flow_imp.g_varchar2_table(130) := '00548D83621040000104103023400030E3CC2A082080000208A8122000A81A07C52080000208206046800060C699551040000104105025400050350E8A410001041040C08C0001C08C33AB208000020820A04A8000A06A1C148300020820808019010280';
wwv_flow_imp.g_varchar2_table(131) := '1967564100010410404095000140D53828060104104000013302040033CEAC820002082080802A010280AA71500C02082080000266040800669C59050104104000015502040055E3A018041040000104CC081000CC38B30A020820800002AA040800AAC6';
wwv_flow_imp.g_varchar2_table(132) := '4131082080000208981120009871661504104000010454091000548D83621040000104103023400030E3CC2A082080000208A8122000A81A07C52080000208206046800060C699551040000104105025400050350E8A410001041040C08C0001C08C33AB';
wwv_flow_imp.g_varchar2_table(133) := '208000020820A04A8000A06A1C1483000208208080190102801967564100010410404095000140D53828060104104000013302040033CEAC820002082080802A010280AA71500C02082080000266040800669C59050104104000015502040055E3A01804';
wwv_flow_imp.g_varchar2_table(134) := '1040000104CC081000CC38B30A020820800002AA040800AAC64131082080000208981120009871661504104000010454091000548D83621040000104103023400030E3CC2A082080000208A8122000A81A07C52080000208206046800060C69955104000';
wwv_flow_imp.g_varchar2_table(135) := '0104105025400050350E8A410001041040C08C0001C08C33AB208000020820A04A8000A06A1C1483000208208080190102801967564100010410404095000140D53828060104104000013302040033CEAC820002082080802A010280AA71500C02082080';
wwv_flow_imp.g_varchar2_table(136) := '000266040800669C59050104104000015502040055E3A018041040000104CC081000CC38B30A020820800002AA040800AAC64131082080000208981120009871661504104000010454091000548D83621040000104103023400030E3CC2A082080000208';
wwv_flow_imp.g_varchar2_table(137) := 'A8122000A81A07C52080000208206046800060C699551040000104105025400050350E8A410001041040C08C0001C08C33AB208000020820A04A8000A06A1C1483000208208080190102801967564100010410404095000140D538280601041040000133';
wwv_flow_imp.g_varchar2_table(138) := '02040033CEAC820002082080802A010280AA71500C02082080000266040800669C59050104104000015502040055E3A018041040000104CC081000CC38B30A020820800002AA040800AAC641310820800002089811200098716615041040000104540910';
wwv_flow_imp.g_varchar2_table(139) := '00548D83621040000104103023400030E3CC2A082080000208A8122000A81A07C52080000208206046800060C699551040000104105025400050350E8A410001041040C08C0001C08C33AB208000020820A04A8000A06A1C148300020820808019010280';
wwv_flow_imp.g_varchar2_table(140) := '1967564100010410404095000140D53828060104104000013302040033CEAC820002082080802A010280AA71500C02082080000266040800669C59050104104000015502040055E3A018041040000104CC081000CC38B30A020820800002AA040800AAC6';
wwv_flow_imp.g_varchar2_table(141) := '4131082080000208981120009871661504104000010454091000548D83621040000104103023400030E3CC2A082080000208A8122000A81A07C52080000208206046800060C699551040000104105025400050350E8A410001041040C08C0001C08C33AB';
wwv_flow_imp.g_varchar2_table(142) := '208000020820A04A8000A06A1C1483000208208080190102801967564100010410404095000140D53828060104104000013302040033CEAC820002082080802A010280AA71500C02082080000266040800669C59050104104000015502040055E3A01804';
wwv_flow_imp.g_varchar2_table(143) := '1040000104CC081000CC38B30A020820800002AA040800AAC64131082080000208981120009871661504104000010454091000548D83621040000104103023400030E3CC2A082080000208A8122000A81A07C52080000208206046800060C69955104000';
wwv_flow_imp.g_varchar2_table(144) := '0104105025400050350E8A410001041040C08C0001C08C33AB208000020820A04A8000A06A1C1483000208208080190102801967564100010410404095000140D53828060104104000013302040033CEAC820002082080802A010280AA71500C02082080';
wwv_flow_imp.g_varchar2_table(145) := '000266040800669C59050104104000015502040055E3A018041040000104CC081000CC38B30A020820800002AA040800AAC64131082080000208981120009871661504104000010454091000548D83621040000104103023400030E3CC2A082080000208';
wwv_flow_imp.g_varchar2_table(146) := 'A8122000A81A07C52080000208206046800060C699551040000104105025400050350E8A410001041040C08C0001C08C33AB208000020820A04A8000A06A1C1483000208208080190102801967564100010410404095000140D538280601041040000133';
wwv_flow_imp.g_varchar2_table(147) := '02040033CEAC820002082080802A81FF0F598E8587BAA9609C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5373719569454889)
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
 p_id=>wwv_flow_imp.id(5376568185454903)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:3yhrn6vMomFS9lJSiUELavVJBvfPg1Nm_2g2zEGMqLs'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5376762078454903)
,p_name=>'Contribution Rights'
,p_static_id=>'contribution-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator,Contributor',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>'SH256:ciFz4rcxddalYIUr3Jinzh7tWbPXCTrEEDvj0GvJb6Y'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5376699992454903)
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
,p_version_scn=>'SH256:rraFlo6EMInHtSUuxfoZXPob0ulO3Y_yKNkQ5x_t8NI'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5376169238454894)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>'SH256:dheqzA6FvJpxO1XvRjEkdmp8Sopp4a5_9FwX9SJ6d2A'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5376327077454903)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>'SH256:E1I9yvnWl7TTVCZZdLycGZM5J4upKtPrWG-og_uLylc'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5376419599454903)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>'SH256:vmP-ozbK0YK2PWJBw-FIve6SxhPxsqFi7yI6JPE-efc'
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
 p_id=>wwv_flow_imp.id(5377786942454963)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(5373803694454890)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>'SH256:wtFSXAJO6ZfBIDZaLT-NWeHYfr8jXR6d7K_DuhjTxbQ'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(5377535530454959)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(5374057713454890)
,p_version_scn=>'SH256:zBoHxELbCF64JiYwSzQdItfu58AlSVUWmbfwVhVGpyo'
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
 p_id=>wwv_flow_imp.id(5501157669456483)
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
,p_version_scn=>'SH256:hw1yHwou0QVtzlsCnrLSXndSn95AkdZHJv9ZCO7rHeg'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5386541753455093)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(5386541753455093)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5387252176455103)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5386806769455099)
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
 p_id=>wwv_flow_imp.id(5400265854456061)
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
,p_version_scn=>'SH256:BV99rFiD2E3hUCMQwqdJUP9mSBtytAbj6XTz8AGFmsA'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5508342158456522)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(5508342158456522)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:og77UyB456nZ1KlCr4DAkFaNaKZm9jBHGC16mBmSJsk'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5508631634456523)
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
 p_id=>wwv_flow_imp.id(5524033996456672)
,p_lov_name=>'FEEDBACK_RATING'
,p_static_id=>'feedback-rating'
,p_lov_query=>'.'||wwv_flow_imp.id(5524033996456672)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:QHID2_AL91pivdhRvWMf8rTxRdNvsqexHwq5MFyhCN4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5525145637456673)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_static_id=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5524767105456673)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_static_id=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5524331899456672)
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
 p_id=>wwv_flow_imp.id(5535856127456679)
,p_lov_name=>'FEEDBACK_STATUS'
,p_static_id=>'feedback-status'
,p_lov_query=>'.'||wwv_flow_imp.id(5535856127456679)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:PpuBEbIoOUhSzFsElNFuOJRnL162R3kqFnYCQDsmzNw'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5536169826456679)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
,p_static_id=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5536502299456680)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
,p_static_id=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5536906741456684)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
,p_static_id=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5537381988456684)
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
 p_id=>wwv_flow_imp.id(5418188306456124)
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
,p_version_scn=>'SH256:MHjq8a1C6UKgUTdUiXoLyw_rytnwJPhwCeLln9D4WW8'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5400947682456080)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_static_id=>'user-theme-preference'
,p_lov_query=>'.'||wwv_flow_imp.id(5400947682456080)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:DLn_dOJ7xpnm9CVvk5HeeBDxUDGi5ktqZfERlWXvyAE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5401266100456080)
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
 p_id=>wwv_flow_imp.id(5467566566456386)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_static_id=>'view-as-report-chart'
,p_lov_query=>'.'||wwv_flow_imp.id(5467566566456386)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:-NiiYPWYjIc3Pc-aCWde6UlxvjCf8ukbfArqZU7onD4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5468236417456387)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_static_id=>'chart'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5467807529456386)
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
 p_id=>wwv_flow_imp.id(5378040190454964)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(5579698859456813)
,p_group_name=>'User Settings'
,p_static_id=>'user-settings'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(5370220085454231)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5563104124456758)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5370424561454233)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
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
 p_id=>wwv_flow_imp.id(5371120836454348)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>3546271551760430036
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
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:YkVkJG_2MgVUhPpoMIqejQJn3OAoaHxycU3s_st71jk'
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
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5369796407454121)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5374571628454890)
,p_build_option_name=>'Feature: About Page'
,p_static_id=>'feature-about-page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:XJT0LyDPwECBH8IlgFn2KNvjd0rsRDXoOWkE0Llo7dI'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5373803694454890)
,p_build_option_name=>'Feature: Access Control'
,p_static_id=>'feature-access-control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:oflPhSoxb6RLGIrI0NPG8HuaDVyLNnJobFXxm8ThcXA'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5373940790454890)
,p_build_option_name=>'Feature: Activity Reporting'
,p_static_id=>'feature-activity-reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:lzgblhVTHdsLZ2SVZQtKCpccbHJ-NIdtYcemlW_ATts'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5374201039454890)
,p_build_option_name=>'Feature: Configuration Options'
,p_static_id=>'feature-configuration-options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:9DZMtxxhBz9UCnZNQtIbo0Dy2HGKowerd3vWs4_gEhU'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5374057713454890)
,p_build_option_name=>'Feature: Feedback'
,p_static_id=>'feature-feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:4w9c61-62VcsI0g96MpTWgQTDraGR_8MLzAozytdVqo'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5579864573456814)
,p_build_option_name=>'Feature: Push Notifications'
,p_static_id=>'feature-push-notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:3WlknQG5FntlPjuOlArqfjFp2TNiokODRfRu8mMBFuw'
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5374696089454890)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_static_id=>'feature-theme-style-selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:QRbJopHL0jPGfJBmzVDfxlGvtK3A5q4-lkLWnG9Vv6I'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5580133270456814)
,p_build_option_name=>'Feature: User Settings'
,p_static_id=>'feature-user-settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>'SH256:JnASmz458-j5t7kNO3o77354WxlsY67o7JM4yPsoWsg'
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
 p_id=>wwv_flow_imp.id(5369992949454226)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
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
,p_step_title=>'test'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5385951274455084)
,p_plug_name=>'test'
,p_static_id=>'test'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
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
,p_step_title=>'test - Log In'
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
 p_id=>wwv_flow_imp.id(5378636979454973)
,p_plug_name=>'test'
,p_static_id=>'test'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5380673395455042)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5378636979454973)
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
 p_id=>wwv_flow_imp.id(5379544213455014)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5378636979454973)
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
 p_id=>wwv_flow_imp.id(5380365365455016)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5378636979454973)
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
 p_id=>wwv_flow_imp.id(5379941535455016)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5378636979454973)
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
 p_id=>wwv_flow_imp.id(5379112648455008)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5378636979454973)
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
 p_id=>wwv_flow_imp.id(5384621409455078)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5384621409455078
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5384277749455077)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>5384277749455077
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5380964024455044)
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
,p_internal_uid=>5380964024455044
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5381923184455076)
,p_page_process_id=>wwv_flow_imp.id(5380964024455044)
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
 p_id=>wwv_flow_imp.id(5382410710455076)
,p_page_process_id=>wwv_flow_imp.id(5380964024455044)
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
 p_id=>wwv_flow_imp.id(5381411472455071)
,p_page_process_id=>wwv_flow_imp.id(5380964024455044)
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
 p_id=>wwv_flow_imp.id(5382860495455077)
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
,p_internal_uid=>5382860495455077
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5383898739455077)
,p_page_process_id=>wwv_flow_imp.id(5382860495455077)
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
 p_id=>wwv_flow_imp.id(5383316872455077)
,p_page_process_id=>wwv_flow_imp.id(5382860495455077)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5572349786456768)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(5571963890456767)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5373803694454890)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5576656395456803)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(5572349786456768)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(5568209449456763)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5573171336456793)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(5572349786456768)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
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
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5571552801456767)
,p_plug_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_parent_plug_id=>wwv_flow_imp.id(5570303485456764)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(5564906072456760)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5562569555456756)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(5370220085454231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5570303485456764)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5571963890456767)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3372714138756020509
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5570730357456765)
,p_plug_name=>'Configuration'
,p_static_id=>'configuration'
,p_parent_plug_id=>wwv_flow_imp.id(5570303485456764)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(5563396812456758)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5374201039454890)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5577052154456803)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback'
,p_parent_plug_id=>wwv_flow_imp.id(5571963890456767)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5374057713454890)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5579243423456813)
,p_plug_name=>'Feedback'
,p_static_id=>'feedback-2'
,p_parent_plug_id=>wwv_flow_imp.id(5577052154456803)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(5569563947456764)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5577403659456803)
,p_name=>'Report'
,p_static_id=>'report'
,p_parent_plug_id=>wwv_flow_imp.id(5577052154456803)
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
 p_id=>wwv_flow_imp.id(5578568859456811)
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
 p_id=>wwv_flow_imp.id(5578151412456810)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5573596866456793)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(5572349786456768)
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
 p_id=>wwv_flow_imp.id(5575066268456800)
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
 p_id=>wwv_flow_imp.id(5574237395456798)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5574681628456799)
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
 p_id=>wwv_flow_imp.id(5571176848456767)
,p_plug_name=>'User Interface'
,p_static_id=>'user-interface'
,p_parent_plug_id=>wwv_flow_imp.id(5570303485456764)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(5564160866456760)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2069471208528591807
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(5374696089454890)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5572720923456792)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5572349786456768)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5575740528456801)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5572720923456792)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5576129309456802)
,p_event_id=>wwv_flow_imp.id(5575740528456801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5573596866456793)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5374201039454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5387654876455104)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5387884822455246)
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5388392929455874)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>5388392929455874
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5389924390456007)
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
 p_id=>wwv_flow_imp.id(5391936232456017)
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
 p_id=>wwv_flow_imp.id(5390738159456011)
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
 p_id=>wwv_flow_imp.id(5389565827455994)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5390315840456009)
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
 p_id=>wwv_flow_imp.id(5391191179456012)
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
 p_id=>wwv_flow_imp.id(5391561989456015)
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
 p_id=>wwv_flow_imp.id(5394763136456022)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5396069981456026)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5387654876455104)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5395346654456025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5387884822455246)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5396914444456027)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5396451872456026)
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
,p_internal_uid=>5396451872456026
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5374696089454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5397245968456053)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5397392881456053)
,p_plug_name=>'Configure Appearance'
,p_static_id=>'configure-appearance'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5398333302456054)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5397245968456053)
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
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5398846430456055)
,p_button_id=>wwv_flow_imp.id(5398333302456054)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5399309322456060)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5397245968456053)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5399869112456061)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5400108630456061)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5397392881456053)
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
 p_id=>wwv_flow_imp.id(5400891096456080)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5397392881456053)
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
 p_id=>wwv_flow_imp.id(5402340801456083)
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
,p_internal_uid=>5402340801456083
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5401925837456081)
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
,p_internal_uid=>5401925837456081
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5403508051456083)
,p_plug_name=>'Filters'
,p_static_id=>'filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5402722500456083)
,p_plug_name=>'Hourly Page Events'
,p_static_id=>'hourly-page-events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5402886333456083)
,p_region_id=>wwv_flow_imp.id(5402722500456083)
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
 p_id=>wwv_flow_imp.id(5404863834456087)
,p_chart_id=>wwv_flow_imp.id(5402886333456083)
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
 p_id=>wwv_flow_imp.id(5406006349456093)
,p_chart_id=>wwv_flow_imp.id(5402886333456083)
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
 p_id=>wwv_flow_imp.id(5405400518456092)
,p_chart_id=>wwv_flow_imp.id(5402886333456083)
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
 p_id=>wwv_flow_imp.id(5403445888456083)
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
 p_id=>wwv_flow_imp.id(5414979847456121)
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
 p_id=>wwv_flow_imp.id(5414597283456120)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5402998633456083)
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
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5403093061456083)
,p_region_id=>wwv_flow_imp.id(5402998633456083)
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
 p_id=>wwv_flow_imp.id(5409816659456095)
,p_chart_id=>wwv_flow_imp.id(5403093061456083)
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
 p_id=>wwv_flow_imp.id(5410494487456096)
,p_chart_id=>wwv_flow_imp.id(5403093061456083)
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
 p_id=>wwv_flow_imp.id(5411073006456096)
,p_chart_id=>wwv_flow_imp.id(5403093061456083)
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
 p_id=>wwv_flow_imp.id(5403399346456083)
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
 p_id=>wwv_flow_imp.id(5412286737456105)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5412649972456113)
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
 p_id=>wwv_flow_imp.id(5403120468456083)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5403229002456083)
,p_region_id=>wwv_flow_imp.id(5403120468456083)
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
 p_id=>wwv_flow_imp.id(5407399573456094)
,p_chart_id=>wwv_flow_imp.id(5403229002456083)
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
 p_id=>wwv_flow_imp.id(5407902509456095)
,p_chart_id=>wwv_flow_imp.id(5403229002456083)
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
 p_id=>wwv_flow_imp.id(5408595055456095)
,p_chart_id=>wwv_flow_imp.id(5403229002456083)
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
 p_id=>wwv_flow_imp.id(5416227670456123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5402722500456083)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5417061879456123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5403120468456083)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user-2'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5416619163456123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5402998633456083)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_static_id=>'view-activity-details'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5417474277456123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5403399346456083)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_static_id=>'view-recent-errors'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5403676821456083)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5403508051456083)
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
 p_id=>wwv_flow_imp.id(5403714226456083)
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
 p_id=>wwv_flow_imp.id(5418983119456129)
,p_event_id=>wwv_flow_imp.id(5403714226456083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5402722500456083)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5419428107456133)
,p_event_id=>wwv_flow_imp.id(5403714226456083)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5403120468456083)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5419997811456134)
,p_event_id=>wwv_flow_imp.id(5403714226456083)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5402998633456083)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5420487573456134)
,p_event_id=>wwv_flow_imp.id(5403714226456083)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5403399346456083)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5420927760456134)
,p_event_id=>wwv_flow_imp.id(5403714226456083)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5403445888456083)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
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
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5455412603456270)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5455370813456270)
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5456446269456270)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>5456446269456270
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5460043284456376)
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
 p_id=>wwv_flow_imp.id(5458072802456367)
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
 p_id=>wwv_flow_imp.id(5459617764456374)
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
 p_id=>wwv_flow_imp.id(5458860795456370)
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
 p_id=>wwv_flow_imp.id(5460452063456377)
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
 p_id=>wwv_flow_imp.id(5458428035456368)
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
 p_id=>wwv_flow_imp.id(5459241373456372)
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
 p_id=>wwv_flow_imp.id(5457618524456364)
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
 p_id=>wwv_flow_imp.id(5463543928456382)
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
 p_id=>wwv_flow_imp.id(5455682743456270)
,p_plug_name=>'Top Users Chart'
,p_static_id=>'top-users-chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5455714038456270)
,p_region_id=>wwv_flow_imp.id(5455682743456270)
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
 p_id=>wwv_flow_imp.id(5466924267456385)
,p_chart_id=>wwv_flow_imp.id(5455714038456270)
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
 p_id=>wwv_flow_imp.id(5464205722456383)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5455370813456270)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5456023919456270)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5455412603456270)
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
 p_id=>wwv_flow_imp.id(5455804176456270)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5455412603456270)
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
 p_id=>wwv_flow_imp.id(5455564167456270)
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
 p_id=>wwv_flow_imp.id(5465517765456384)
,p_event_id=>wwv_flow_imp.id(5455564167456270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5455370813456270)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5468933956456388)
,p_event_id=>wwv_flow_imp.id(5455564167456270)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5455370813456270)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5447830497456252)
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5448441385456252)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>5448441385456252
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5450535733456262)
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
 p_id=>wwv_flow_imp.id(5450902888456264)
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
 p_id=>wwv_flow_imp.id(5451760448456267)
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
 p_id=>wwv_flow_imp.id(5451341756456265)
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
 p_id=>wwv_flow_imp.id(5449792907456258)
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
 p_id=>wwv_flow_imp.id(5450147260456260)
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
 p_id=>wwv_flow_imp.id(5454210646456269)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5454912282456270)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5447830497456252)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5433416515456217)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5433375405456217)
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5433900461456217)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>5433900461456217
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5437532755456237)
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
 p_id=>wwv_flow_imp.id(5440336023456247)
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
 p_id=>wwv_flow_imp.id(5437162646456235)
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
 p_id=>wwv_flow_imp.id(5436756374456234)
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
 p_id=>wwv_flow_imp.id(5439530012456244)
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
 p_id=>wwv_flow_imp.id(5438353109456240)
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
 p_id=>wwv_flow_imp.id(5435966454456231)
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
 p_id=>wwv_flow_imp.id(5439969241456245)
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
 p_id=>wwv_flow_imp.id(5435127122456226)
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
 p_id=>wwv_flow_imp.id(5435589911456229)
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
 p_id=>wwv_flow_imp.id(5437975447456238)
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
 p_id=>wwv_flow_imp.id(5439141080456242)
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
 p_id=>wwv_flow_imp.id(5438718002456241)
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
 p_id=>wwv_flow_imp.id(5436342408456232)
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
 p_id=>wwv_flow_imp.id(5445260863456250)
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
 p_id=>wwv_flow_imp.id(5445957815456251)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5433375405456217)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5433239368456217)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5433416515456217)
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
 p_id=>wwv_flow_imp.id(5433540095456217)
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
 p_id=>wwv_flow_imp.id(5447247243456252)
,p_event_id=>wwv_flow_imp.id(5433540095456217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5433375405456217)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5421637070456135)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5421543605456135)
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5422181218456135)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>5422181218456135
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5425876756456183)
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
 p_id=>wwv_flow_imp.id(5424654802456178)
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
 p_id=>wwv_flow_imp.id(5427081783456187)
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
 p_id=>wwv_flow_imp.id(5426678841456185)
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
 p_id=>wwv_flow_imp.id(5426235232456184)
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
 p_id=>wwv_flow_imp.id(5425023771456180)
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
 p_id=>wwv_flow_imp.id(5425456474456181)
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
 p_id=>wwv_flow_imp.id(5423474905456172)
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
 p_id=>wwv_flow_imp.id(5424270200456177)
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
 p_id=>wwv_flow_imp.id(5423827170456175)
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
 p_id=>wwv_flow_imp.id(5430771016456190)
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
 p_id=>wwv_flow_imp.id(5431481104456190)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5421543605456135)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5421494344456135)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5421637070456135)
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
 p_id=>wwv_flow_imp.id(5421705166456135)
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
 p_id=>wwv_flow_imp.id(5432771463456216)
,p_event_id=>wwv_flow_imp.id(5421705166456135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5421543605456135)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5469504986456388)
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5470196923456388)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>5470196923456388
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5472203262456414)
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
 p_id=>wwv_flow_imp.id(5474632739456424)
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
 p_id=>wwv_flow_imp.id(5473462470456418)
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
 p_id=>wwv_flow_imp.id(5471474072456409)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5474269359456422)
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
 p_id=>wwv_flow_imp.id(5473856279456420)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5471853693456412)
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
 p_id=>wwv_flow_imp.id(5472687302456415)
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
 p_id=>wwv_flow_imp.id(5473078746456417)
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
 p_id=>wwv_flow_imp.id(5477920951456427)
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
 p_id=>wwv_flow_imp.id(5478636524456427)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5469504986456388)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373940790454890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5479340221456428)
,p_plug_name=>'Automation Execution'
,p_static_id=>'automation-execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5481707150456430)
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
 p_id=>wwv_flow_imp.id(5482824168456436)
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
 p_id=>wwv_flow_imp.id(5482419556456434)
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
 p_id=>wwv_flow_imp.id(5483288354456437)
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
 p_id=>wwv_flow_imp.id(5483601945456438)
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
 p_id=>wwv_flow_imp.id(5480102815456428)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5479340221456428)
,p_prompt=>'Automation'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5479740659456428)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5479340221456428)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5480514200456429)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5479340221456428)
,p_prompt=>'Started'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5480916177456429)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5479340221456428)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5481348286456429)
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
,p_internal_uid=>5481348286456429
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373803694454890)
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
 p_id=>wwv_flow_imp.id(5485520574456462)
,p_plug_name=>'Access Control Configuration'
,p_static_id=>'access-control-configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5485686271456462)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5486704216456462)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5485686271456462)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5487125839456463)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5485686271456462)
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
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5487655326456463)
,p_button_id=>wwv_flow_imp.id(5487125839456463)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5488277943456463)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5488570224456463)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5485520574456462)
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
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5488978523456464)
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
,p_internal_uid=>5488978523456464
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373803694454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5489360857456464)
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5490107985456464)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5490107985456464
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5492251909456475)
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
 p_id=>wwv_flow_imp.id(5491445749456471)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5491829215456474)
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
 p_id=>wwv_flow_imp.id(5493809238456477)
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
 p_id=>wwv_flow_imp.id(5494938370456478)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5489360857456464)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5495312091456478)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5489360857456464)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5494531883456477)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5489360857456464)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5489425625456464)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5489360857456464)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5496045289456478)
,p_event_id=>wwv_flow_imp.id(5489425625456464)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5489360857456464)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373803694454890)
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
 p_id=>wwv_flow_imp.id(5496699674456479)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5496536297456479)
,p_plug_name=>'Form on Manage User Access'
,p_static_id=>'form-on-manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
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
 p_id=>wwv_flow_imp.id(5497675129456480)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5496699674456479)
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
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5498118481456480)
,p_button_id=>wwv_flow_imp.id(5497675129456480)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5499431177456481)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5496699674456479)
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
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5498667714456480)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5496699674456479)
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
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5499001652456480)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5496699674456479)
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
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5500263890456482)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5496536297456479)
,p_item_source_plug_id=>wwv_flow_imp.id(5496536297456479)
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5499889041456481)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5496536297456479)
,p_item_source_plug_id=>wwv_flow_imp.id(5496536297456479)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5501099610456483)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5496536297456479)
,p_item_source_plug_id=>wwv_flow_imp.id(5496536297456479)
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
 p_id=>wwv_flow_imp.id(5500678076456482)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5496536297456479)
,p_item_source_plug_id=>wwv_flow_imp.id(5496536297456479)
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5502290747456489)
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
 p_id=>wwv_flow_imp.id(5503491363456491)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5503491363456491
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5502673565456490)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(5496536297456479)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_static_id=>'initialize-form-manage-user-access'
,p_internal_uid=>5502673565456490
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5503013421456490)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5496536297456479)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_static_id=>'process-form-manage-user-access'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5503013421456490
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373803694454890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5503851260456491)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5503946727456491)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5506066149456492)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5503851260456491)
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
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5506549404456521)
,p_button_id=>wwv_flow_imp.id(5506066149456492)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5504007720456491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5503851260456491)
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
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5507039916456522)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(5504007720456491)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5507879860456522)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5503946727456491)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5507494194456522)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5503946727456491)
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
 p_id=>wwv_flow_imp.id(5508224959456522)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5503946727456491)
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
 p_id=>wwv_flow_imp.id(5509339037456523)
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
,p_process_when_button_id=>wwv_flow_imp.id(5504007720456491)
,p_internal_uid=>5509339037456523
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
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
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5373803694454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5504145184456491)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5504449556456491)
,p_name=>'Exceptions'
,p_static_id=>'exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(5504290347456491)
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
 p_id=>wwv_flow_imp.id(5511546240456660)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5511111553456659)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5504698769456491)
,p_plug_name=>'Hidden Items'
,p_static_id=>'hidden-items'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5514414628456664)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_static_id=>'no-valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
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
 p_id=>wwv_flow_imp.id(5504501723456491)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_static_id=>'p10044-valid-count-users-to-add'
,p_parent_plug_id=>wwv_flow_imp.id(5504290347456491)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
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
 p_id=>wwv_flow_imp.id(5513794638456664)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_static_id=>'valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5504290347456491)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5515514293456665)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5504145184456491)
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
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5516001317456665)
,p_button_id=>wwv_flow_imp.id(5515514293456665)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5515176570456665)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5504145184456491)
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5504711369456491)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5504145184456491)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5517396748456666)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5504698769456491)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5516551144456666)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5504698769456491)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5516976978456666)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5504698769456491)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5517763116456668)
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
,p_process_when_button_id=>wwv_flow_imp.id(5504711369456491)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>5517763116456668
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5518106714456668)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5518106714456668
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5374057713454890)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5518630997456668)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5518559881456668)
,p_plug_name=>'Form on Feedback'
,p_static_id=>'form-on-feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5521792722456671)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5518630997456668)
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
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5522286704456671)
,p_button_id=>wwv_flow_imp.id(5521792722456671)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5518775940456668)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5518630997456668)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(5529117316456675)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5522790781456671)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5518559881456668)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5525843669456674)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5518559881456668)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5523124753456671)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5518559881456668)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5523911164456672)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(5518559881456668)
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
 p_id=>wwv_flow_imp.id(5523536700456672)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5518559881456668)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from sys.dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5528624819456675)
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
 p_id=>wwv_flow_imp.id(5526277309456674)
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
,p_process_when_button_id=>wwv_flow_imp.id(5518775940456668)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>5526277309456674
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5527244581456674)
,p_page_process_id=>wwv_flow_imp.id(5526277309456674)
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
 p_id=>wwv_flow_imp.id(5526770461456674)
,p_page_process_id=>wwv_flow_imp.id(5526277309456674)
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
 p_id=>wwv_flow_imp.id(5527753505456674)
,p_page_process_id=>wwv_flow_imp.id(5526277309456674)
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
 p_id=>wwv_flow_imp.id(5528270553456675)
,p_page_process_id=>wwv_flow_imp.id(5526277309456674)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5374057713454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5519114234456668)
,p_plug_name=>'Feedback Submitted'
,p_static_id=>'feedback-submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5519010839456668)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5519114234456668)
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
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5530389428456676)
,p_button_id=>wwv_flow_imp.id(5519010839456668)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5374057713454890)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5520417884456668)
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5543003262456688)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5543003262456688
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5545121405456699)
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
 p_id=>wwv_flow_imp.id(5545552096456700)
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
 p_id=>wwv_flow_imp.id(5545976456456702)
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
 p_id=>wwv_flow_imp.id(5544345280456695)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5549180474456714)
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
 p_id=>wwv_flow_imp.id(5544782385456697)
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
 p_id=>wwv_flow_imp.id(5546377999456703)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(5524033996456672)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5546754244456705)
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
 p_id=>wwv_flow_imp.id(5547512946456708)
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
 p_id=>wwv_flow_imp.id(5547127124456706)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5535856127456679)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5548367937456711)
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
 p_id=>wwv_flow_imp.id(5548752995456712)
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
 p_id=>wwv_flow_imp.id(5547996633456709)
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
 p_id=>wwv_flow_imp.id(5553783834456718)
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
 p_id=>wwv_flow_imp.id(5554422288456718)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5520417884456668)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5520390026456668)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5520417884456668)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5555169844456718)
,p_event_id=>wwv_flow_imp.id(5520390026456668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5520417884456668)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5376568185454903)
,p_required_patch=>wwv_flow_imp.id(5374057713454890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5519846632456668)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5519773025456668)
,p_plug_name=>'Form Items Region'
,p_static_id=>'form-items-region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5532073473456677)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5519846632456668)
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
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5532506290456677)
,p_button_id=>wwv_flow_imp.id(5532073473456677)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5520120172456668)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5519846632456668)
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
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5519914185456668)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5519846632456668)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5534927006456678)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5519773025456668)
,p_prompt=>'Feedback'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5535773463456679)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5519773025456668)
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
 p_id=>wwv_flow_imp.id(5534177330456678)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5519773025456668)
,p_prompt=>'Filed'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5533304061456677)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5519773025456668)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5533739165456678)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5519773025456668)
,p_prompt=>'Page'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5534541597456678)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5519773025456668)
,p_prompt=>'Rating'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5535308953456679)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5519773025456668)
,p_prompt=>'Response'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5538080181456684)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5519773025456668)
,p_prompt=>'User Agent'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5541656409456686)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5520120172456668)
,p_internal_uid=>5541656409456686
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5542083755456686)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5542083755456686
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5540752837456686)
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
,p_process_when_button_id=>wwv_flow_imp.id(5520120172456668)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>5540752837456686
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5541276660456686)
,p_page_process_id=>wwv_flow_imp.id(5540752837456686)
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
 p_id=>wwv_flow_imp.id(5538442796456685)
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
,p_internal_uid=>5538442796456685
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5538895983456685)
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
,p_process_when_button_id=>wwv_flow_imp.id(5519914185456668)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>5538895983456685
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5539317809456685)
,p_page_process_id=>wwv_flow_imp.id(5538895983456685)
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
 p_id=>wwv_flow_imp.id(5540312873456686)
,p_page_process_id=>wwv_flow_imp.id(5538895983456685)
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
 p_id=>wwv_flow_imp.id(5539889827456686)
,p_page_process_id=>wwv_flow_imp.id(5538895983456685)
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
,p_group_id=>wwv_flow_imp.id(5378040190454964)
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5374571628454890)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5556150407456720)
,p_plug_name=>'About Page'
,p_static_id=>'about-page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2323592004483952560
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
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
,p_required_patch=>wwv_flow_imp.id(5374571628454890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5556806897456721)
,p_plug_name=>'Search Dialog'
,p_static_id=>'search-dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
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
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5557250468456721)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5556806897456721)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
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
,p_group_id=>wwv_flow_imp.id(5579698859456813)
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(5580133270456814)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5584787688456915)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
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
 p_id=>wwv_flow_imp.id(5585116046456916)
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
 p_id=>wwv_flow_imp.id(5585674324456917)
,p_region_id=>wwv_flow_imp.id(5585116046456916)
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
 p_id=>wwv_flow_imp.id(5586177574456920)
,p_plug_name=>'Settings'
,p_static_id=>'settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(5583708087456913)
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
,p_group_id=>wwv_flow_imp.id(5579698859456813)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(5579864573456814)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5581521394456816)
,p_plug_name=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5581111279456815)
,p_plug_name=>'Push Notifications Not Supported'
,p_static_id=>'push-notifications-not-supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported u-DisplayNone'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2042159785845301134
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5580741733456815)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5582068279456818)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5581521394456816)
,p_prompt=>'Enable push notifications on this device'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5582350981456819)
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
 p_id=>wwv_flow_imp.id(5582747865456819)
,p_event_id=>wwv_flow_imp.id(5582350981456819)
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
 p_id=>wwv_flow_imp.id(5583209986456819)
,p_event_id=>wwv_flow_imp.id(5582350981456819)
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
