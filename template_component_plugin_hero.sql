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
,p_release=>'24.1.2'
,p_default_workspace_id=>1748486311670242969
,p_default_application_id=>177310
,p_default_id_offset=>17545842170155679470
,p_default_owner=>'TIMPLATING'
);
end;
/

prompt APPLICATION 177310 - APEX Escapes
--
-- Application Export:
--   Application:     177310
--   Name:            Timplating
--   Date and Time:   01:41 Monday July 29, 2024
--   Exported By:     Tim Kimberl
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 17610153400759390722
--   Manifest End
--   Version:         24.1.2
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/hero
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(17610153400759390722)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'HERO'
,p_display_name=>'Hero'
,p_supported_component_types=>'REGION_ONLY'
,p_css_file_urls=>'#PLUGIN_FILES#hero#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="c-Hero #APEX$COMPONENT_CSS_CLASSES#" id="#APEX$DOM_ID#">',
'  {if BACKDROP_VIDEO/}<div class="c-Hero-video">#BACKDROP_VIDEO#</div>{endif/}',
'  <div class="c-Hero-body">',
'    {if OVERLINE/}<div class="c-Hero-overline">#OVERLINE#</div>{endif/}',
'    <h1 class="c-Hero-title">#APEX$TITLE#</h1>',
'    {if DESCRIPTION/}<div class="c-Hero-description">#DESCRIPTION#</div>{endif/}',
'    {if SEARCH/}',
'    <div class="c-HeroSearch" role="search">',
'      <div class="c-HeroSearch-input">#SEARCH#</div>',
'      {if CATEGORY/}<div class="c-HeroSearch-category">#CATEGORY#</div>{endif/}',
'      {if ACTION/}<div class="c-HeroSearch-action">#ACTION#</div>{endif/}',
'    </div>',
'    {endif/}',
'  </div>',
'</div>',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>true
,p_api_version=>1
,p_default_slot_region=>'BACKDROP_VIDEO'
,p_default_slot_item=>'SEARCH'
,p_default_slot_button=>'ACTION'
,p_substitute_attributes=>true
,p_version_scn=>15548952544969
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/Vastyles/timplating-hero'
,p_files_version=>115
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17610153643699390724)
,p_plugin_id=>wwv_flow_imp.id(17610153400759390722)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'OVERLINE'
,p_prompt=>'Overline'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_demo_value=>'Lorem Ipsum'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Brief text positioned above the region title to provide additional context or categorization.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17610154093322390726)
,p_plugin_id=>wwv_flow_imp.id(17610153400759390722)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_demo_value=>'Simply dummy text of the printing and typesetting industry.'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'A brief explanation that provides additional context and details.'
);
wwv_flow_imp_shared.create_plugin_slot(
 p_id=>wwv_flow_imp.id(17557581817467127013)
,p_plugin_id=>wwv_flow_imp.id(17610153400759390722)
,p_name=>'Backdrop Video'
,p_placeholder=>'BACKDROP_VIDEO'
,p_has_grid_support=>false
,p_has_item_support=>false
,p_has_button_support=>false
,p_supported_region_types=>'["TMPL_YOUTUBE_EMBED","TMPL_THEME_42$YOUTUBE_EMBED"]'
);
wwv_flow_imp_shared.create_plugin_slot(
 p_id=>wwv_flow_imp.id(17662290941188784269)
,p_plugin_id=>wwv_flow_imp.id(17610153400759390722)
,p_name=>'Search'
,p_placeholder=>'SEARCH'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_supported_item_types=>'["NATIVE_TEXT_FIELD"]'
);
wwv_flow_imp_shared.create_plugin_slot(
 p_id=>wwv_flow_imp.id(17662291372503784270)
,p_plugin_id=>wwv_flow_imp.id(17610153400759390722)
,p_name=>'Category'
,p_placeholder=>'CATEGORY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_supported_item_types=>'["NATIVE_SELECT_LIST"]'
);
wwv_flow_imp_shared.create_plugin_slot(
 p_id=>wwv_flow_imp.id(17662291891519784270)
,p_plugin_id=>wwv_flow_imp.id(17610153400759390722)
,p_name=>'Action'
,p_placeholder=>'ACTION'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_glv_new_row=>false
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A204865726F2054656D706C61746520436F6D706F6E656E74202A2F0A2E632D4865726F207B0A20206261636B67726F756E642D636F6C6F723A20766172282D2D632D6865726F2D6261636B67726F756E642D636F6C6F72293B0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(2) := '20766172282D2D632D6865726F2D746578742D636F6C6F72293B0A202070616464696E672D626C6F636B3A20766172282D2D632D6865726F2D70616464696E672D792C203272656D293B0A202070616464696E672D696E6C696E653A20766172282D2D63';
wwv_flow_imp.g_varchar2_table(3) := '2D6865726F2D70616464696E672D782C203272656D293B0A2020706F736974696F6E3A2072656C61746976653B0A20206F766572666C6F773A2068696464656E3B0A7D0A0A2F2A204865726F20436F6E74656E74202A2F0A2E632D4865726F2D626F6479';
wwv_flow_imp.g_varchar2_table(4) := '207B0A2020706F736974696F6E3A2072656C61746976653B0A2020646973706C61793A20666C65783B0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0A2020746578742D616C69676E3A20766172282D2D632D6865726F2D746578742D';
wwv_flow_imp.g_varchar2_table(5) := '616C69676E2C207374617274293B0A20206D61782D696E6C696E652D73697A653A20766172282D2D632D6865726F2D626F64792D6D61782D7769647468293B0A20206761703A20766172282D2D632D6865726F2D6761702C202E323572656D293B0A2020';
wwv_flow_imp.g_varchar2_table(6) := '7A2D696E6465783A20323B0A20206D617267696E2D696E6C696E653A20766172282D2D632D6865726F2D626F64792D6D617267696E2D78293B0A7D0A0A2F2A204865726F204F7665726C696E65202A2F0A2E632D4865726F2D6F7665726C696E65207B0A';
wwv_flow_imp.g_varchar2_table(7) := '2020666F6E742D73697A653A20766172282D2D632D6865726F2D6F7665726C696E652D666F6E742D73697A652C202E373572656D293B0A20206C696E652D6865696768743A20766172282D2D632D6865726F2D6F7665726C696E652D6C696E652D686569';
wwv_flow_imp.g_varchar2_table(8) := '676874293B0A2020636F6C6F723A20766172282D2D632D6865726F2D6F7665726C696E652D746578742D636F6C6F72293B0A20206F7061636974793A20766172282D2D632D6865726F2D6F7665726C696E652D6F7061636974792C202E37293B0A7D0A0A';
wwv_flow_imp.g_varchar2_table(9) := '2F2A204865726F205469746C65202A2F0A2E632D4865726F2D7469746C65207B0A20206D617267696E3A20303B0A2020666F6E742D73697A653A20766172282D2D632D6865726F2D7469746C652D666F6E742D73697A652C20312E3572656D293B0A2020';
wwv_flow_imp.g_varchar2_table(10) := '666F6E742D7765696768743A20766172282D2D632D6865726F2D7469746C652D666F6E742D7765696768742C20373030293B0A20206C696E652D6865696768743A20766172282D2D632D6865726F2D7469746C652D6C696E652D686569676874293B0A20';
wwv_flow_imp.g_varchar2_table(11) := '20636F6C6F723A20766172282D2D632D6865726F2D7469746C652D746578742D636F6C6F72293B0A7D0A0A2F2A204865726F204465736372697074696F6E202A2F0A2E632D4865726F2D6465736372697074696F6E207B0A2020666F6E742D73697A653A';
wwv_flow_imp.g_varchar2_table(12) := '20766172282D2D632D6865726F2D6465736372697074696F6E2D666F6E742D73697A652C203172656D293B0A20206C696E652D6865696768743A20766172282D2D632D6865726F2D6465736372697074696F6E2D6C696E652D686569676874293B0A2020';
wwv_flow_imp.g_varchar2_table(13) := '636F6C6F723A20766172282D2D632D6865726F2D6465736372697074696F6E2D746578742D636F6C6F72293B0A7D0A0A2F2A204865726F20536561726368202A2F0A2E632D4865726F536561726368207B0A20202D2D75742D6669656C642D7061646469';
wwv_flow_imp.g_varchar2_table(14) := '6E672D793A203072656D3B0A20202D2D75742D6669656C642D70616464696E672D783A203072656D3B0A20202D2D612D6669656C642D696E7075742D666C65782D67726F773A20313B0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A';
wwv_flow_imp.g_varchar2_table(15) := '653A203172656D3B0A0A2020646973706C61793A20666C65783B0A2020616C69676E2D6974656D733A2063656E7465723B0A2020696E6C696E652D73697A653A20313030253B0A20206761703A20766172282D2D632D6865726F2D7365617263682D6761';
wwv_flow_imp.g_varchar2_table(16) := '702C202E323572656D293B0A202070616464696E672D626C6F636B3A20766172282D2D632D6865726F2D7365617263682D70616464696E672D792C202E323572656D293B0A202070616464696E672D696E6C696E653A20766172282D2D632D6865726F2D';
wwv_flow_imp.g_varchar2_table(17) := '7365617263682D70616464696E672D782C202E323572656D293B0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D632D6865726F2D7365617263682D6D617267696E2D792C202E373572656D293B0A2020636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(18) := '282D2D612D6669656C642D696E7075742D73746174652D746578742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D666965';
wwv_flow_imp.g_varchar2_table(19) := '6C642D696E7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0A2020626F726465722D7261646975733A20766172282D2D612D6669';
wwv_flow_imp.g_varchar2_table(20) := '656C642D696E7075742D626F726465722D7261646975732C20302E31323572656D293B0A2020626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D626F726465722D636F6C6F722C20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(21) := '6669656C642D696E7075742D626F726465722D636F6C6F7229293B0A2020626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D77696474682C20317078293B0A2020626F726465722D7374796C653A20';
wwv_flow_imp.g_varchar2_table(22) := '736F6C69643B0A2020626F782D736861646F773A20766172282D2D612D6669656C642D696E7075742D73746174652D736861646F772C20766172282D2D612D6669656C642D696E7075742D736861646F7729293B0A7D0A0A2F2A2052656D6F766520696E';
wwv_flow_imp.g_varchar2_table(23) := '697469616C205549206F6620696E70757473202A2F0A2E632D4865726F5365617263682D696E7075742C0A2E632D4865726F5365617263682D63617465676F7279207B0A20202D2D612D6669656C642D696E7075742D626F726465722D77696474683A20';
wwv_flow_imp.g_varchar2_table(24) := '3070783B0A20202D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2F2A2053747265746368207468652073656172636820696E707574202A2F0A2E632D4865726F5365617263';
wwv_flow_imp.g_varchar2_table(25) := '682D696E707574207B0A2020666C65782D62617369733A206175746F3B0A2020666C65782D67726F773A20313B0A7D0A0A2F2A2041646420736570657261746F7220666F722063617465676F727920616E64207365742067656E6572616C207769647468';
wwv_flow_imp.g_varchar2_table(26) := '202A2F0A2E632D4865726F5365617263682D63617465676F7279207B0A2020666C65782D62617369733A203330253B0A2020626F726465722D696E6C696E652D73746172743A2031707820736F6C696420766172282D2D75742D636F6D706F6E656E742D';
wwv_flow_imp.g_varchar2_table(27) := '626F726465722D636F6C6F72293B0A202070616464696E672D696E6C696E652D73746172743A20766172282D2D632D6865726F2D7365617263682D6761702C202E323572656D293B0A7D0A0A2F2A205365742073697A65206F6620616374696F6E206275';
wwv_flow_imp.g_varchar2_table(28) := '74746F6E7320746F206265206C617267657220616E642073747265746368202A2F0A2E632D4865726F5365617263682D616374696F6E207B0A20202D2D612D627574746F6E2D666F6E742D73697A653A202E38373572656D3B0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(29) := '6F6E2D6C696E652D6865696768743A203172656D3B0A20202D2D612D627574746F6E2D70616464696E672D793A202E373572656D3B0A20202D2D612D627574746F6E2D70616464696E672D783A203172656D3B0A0A2020616C69676E2D73656C663A2073';
wwv_flow_imp.g_varchar2_table(30) := '7472657463683B0A2020646973706C61793A20666C65783B0A2020666C65782D736872696E6B3A20303B0A20206761703A202E323572656D3B0A7D0A0A2F2A2053657420466F6E7420415045582069636F6E7320746F20626520626F6C646572202A2F0A';
wwv_flow_imp.g_varchar2_table(31) := '2E632D4865726F5365617263682D616374696F6E202E6661207B0A2020666F6E742D7765696768743A203730303B0A7D0A0A2F2A2048696465206C6162656C73207768656E2061626F7665202A2F0A2E632D4865726F536561726368202E742D466F726D';
wwv_flow_imp.g_varchar2_table(32) := '2D6669656C64436F6E7461696E65722D2D737461636B6564202E742D466F726D2D6C6162656C436F6E7461696E6572207B0A2020706F736974696F6E3A206162736F6C7574653B0A20206F766572666C6F773A2068696464656E3B0A2020636C69703A20';
wwv_flow_imp.g_varchar2_table(33) := '726563742830203020302030293B0A20206D617267696E3A202D3170783B0A202070616464696E673A20303B0A2020696E6C696E652D73697A653A203170783B0A2020626C6F636B2D73697A653A203170783B0A2020626F726465723A20303B0A7D0A0A';
wwv_flow_imp.g_varchar2_table(34) := '2F2A20496E637261736520696E7075742070616464696E67207768656E206C6162656C732061626F7665202A2F0A2E632D4865726F536561726368202E742D466F726D2D6669656C64436F6E7461696E65722D2D737461636B6564207B0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(35) := '6669656C642D696E7075742D70616464696E672D783A202E3572656D3B0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A202E373572656D3B0A7D0A0A2F2A204865726F20566964656F202A2F0A2E632D4865726F2D766964656F';
wwv_flow_imp.g_varchar2_table(36) := '20696672616D65207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203530252021696D706F7274616E743B0A20206C6566743A203530252021696D706F7274616E743B0A202077696474683A20756E7365742021696D706F72';
wwv_flow_imp.g_varchar2_table(37) := '74616E743B0A20206865696768743A20756E7365742021696D706F7274616E743B0A20206D696E2D696E6C696E652D73697A653A20313030253B0A20206D696E2D626C6F636B2D73697A653A20313030253B0A20207472616E73666F726D3A207472616E';
wwv_flow_imp.g_varchar2_table(38) := '736C617465282D3530252C202D353025293B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20206173706563742D726174696F3A203136202F20393B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2F2A20536574';
wwv_flow_imp.g_varchar2_table(39) := '206461726B206F7665726C6179202A2F0A2E632D4865726F2D766964656F3A6166746572207B0A2020636F6E74656E743A2027273B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020696E7365';
wwv_flow_imp.g_varchar2_table(40) := '743A20303B0A20207A2D696E6465783A20313B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C202E3535293B0A7D0A0A2F2A204368616E6765207374796C696E67207768656E20766964656F206973207573656420';
wwv_flow_imp.g_varchar2_table(41) := '2A2F0A2E632D4865726F3A686173282E632D4865726F2D766964656F29207B0A20202D2D632D6865726F2D70616464696E672D793A203472656D3B0A20202D2D632D6865726F2D746578742D616C69676E3A2063656E7465723B0A20202D2D632D686572';
wwv_flow_imp.g_varchar2_table(42) := '6F2D626F64792D6D61782D77696474683A20343072656D3B0A20202D2D632D6865726F2D626F64792D6D617267696E2D783A206175746F3B0A20202D2D632D6865726F2D746578742D636F6C6F723A20766172282D2D632D6865726F2D6461726B2D7465';
wwv_flow_imp.g_varchar2_table(43) := '78742D636F6C6F722C2023666666293B0A20202D2D632D6865726F2D7365617263682D6D617267696E2D793A20312E3572656D3B0A7D0A0A2F2A20547765616B2073697A696E67206F66207465787420666F72206C617267657220646973706C61797320';
wwv_flow_imp.g_varchar2_table(44) := '2A2F0A406D6564696120286D696E2D77696474683A20363430707829207B0A20202E632D4865726F3A686173282E632D4865726F2D766964656F29207B0A202020202D2D632D6865726F2D6F7665726C696E652D666F6E742D73697A653A203172656D3B';
wwv_flow_imp.g_varchar2_table(45) := '0A202020202D2D632D6865726F2D7469746C652D666F6E742D73697A653A203372656D3B0A202020202D2D632D6865726F2D6465736372697074696F6E2D666F6E742D73697A653A20312E323572656D3B0A20207D0A7D0A0A2F2A204D6F62696C652074';
wwv_flow_imp.g_varchar2_table(46) := '7765616B73202A2F0A406D6564696120286D61782D77696474683A20363339707829207B0A0A20202F2A20526564756365642070616464696E67202A2F0A20202E632D4865726F207B0A202020202D2D632D6865726F2D70616464696E672D793A20312E';
wwv_flow_imp.g_varchar2_table(47) := '3572656D3B0A202020202D2D632D6865726F2D70616464696E672D783A203172656D3B0A20207D0A0A20202F2A204368616E676520616C69676E6D656E74206F6620746865206974656D7320736F207468657920737461636B202A2F0A20202E632D4865';
wwv_flow_imp.g_varchar2_table(48) := '726F536561726368207B0A20202020666C65782D646972656374696F6E3A20636F6C756D6E3B0A20202020616C69676E2D6974656D733A20737472657463683B0A20207D0A0A20202F2A204368616E676520646972656374696F6E206F66207365706572';
wwv_flow_imp.g_varchar2_table(49) := '61746F7220666F722063617465676F7279202A2F0A20202E632D4865726F5365617263682D63617465676F7279207B0A20202020626F726465722D696E6C696E652D73746172743A20303B0A20202020626F726465722D626C6F636B2D73746172743A20';
wwv_flow_imp.g_varchar2_table(50) := '31707820736F6C696420766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0A2020202070616464696E672D696E6C696E652D73746172743A20756E7365743B0A2020202070616464696E672D626C6F636B3A2076617228';
wwv_flow_imp.g_varchar2_table(51) := '2D2D632D6865726F2D7365617263682D6761702C202E323572656D293B0A20207D0A0A20202F2A20537472657463682074686520616374696F6E73202A2F0A20202E632D4865726F5365617263682D616374696F6E202E742D427574746F6E207B0A2020';
wwv_flow_imp.g_varchar2_table(52) := '2020666C65782D67726F773A20313B0A20207D0A7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(17610156287503390729)
,p_plugin_id=>wwv_flow_imp.id(17610153400759390722)
,p_file_name=>'hero.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E632D4865726F7B6261636B67726F756E642D636F6C6F723A766172282D2D632D6865726F2D6261636B67726F756E642D636F6C6F72293B636F6C6F723A766172282D2D632D6865726F2D746578742D636F6C6F72293B70616464696E672D626C6F636B';
wwv_flow_imp.g_varchar2_table(2) := '3A766172282D2D632D6865726F2D70616464696E672D792C203272656D293B70616464696E672D696E6C696E653A766172282D2D632D6865726F2D70616464696E672D782C203272656D293B706F736974696F6E3A72656C61746976653B6F766572666C';
wwv_flow_imp.g_varchar2_table(3) := '6F773A68696464656E7D2E632D4865726F2D626F64797B706F736974696F6E3A72656C61746976653B646973706C61793A666C65783B666C65782D646972656374696F6E3A636F6C756D6E3B746578742D616C69676E3A766172282D2D632D6865726F2D';
wwv_flow_imp.g_varchar2_table(4) := '746578742D616C69676E2C207374617274293B6D61782D696E6C696E652D73697A653A766172282D2D632D6865726F2D626F64792D6D61782D7769647468293B6761703A766172282D2D632D6865726F2D6761702C202E323572656D293B7A2D696E6465';
wwv_flow_imp.g_varchar2_table(5) := '783A323B6D617267696E2D696E6C696E653A766172282D2D632D6865726F2D626F64792D6D617267696E2D78297D2E632D4865726F2D6F7665726C696E657B666F6E742D73697A653A766172282D2D632D6865726F2D6F7665726C696E652D666F6E742D';
wwv_flow_imp.g_varchar2_table(6) := '73697A652C202E373572656D293B6C696E652D6865696768743A766172282D2D632D6865726F2D6F7665726C696E652D6C696E652D686569676874293B636F6C6F723A766172282D2D632D6865726F2D6F7665726C696E652D746578742D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(7) := '3B6F7061636974793A766172282D2D632D6865726F2D6F7665726C696E652D6F7061636974792C202E37297D2E632D4865726F2D7469746C657B6D617267696E3A303B666F6E742D73697A653A766172282D2D632D6865726F2D7469746C652D666F6E74';
wwv_flow_imp.g_varchar2_table(8) := '2D73697A652C20312E3572656D293B666F6E742D7765696768743A766172282D2D632D6865726F2D7469746C652D666F6E742D7765696768742C20373030293B6C696E652D6865696768743A766172282D2D632D6865726F2D7469746C652D6C696E652D';
wwv_flow_imp.g_varchar2_table(9) := '686569676874293B636F6C6F723A766172282D2D632D6865726F2D7469746C652D746578742D636F6C6F72297D2E632D4865726F2D6465736372697074696F6E7B666F6E742D73697A653A766172282D2D632D6865726F2D6465736372697074696F6E2D';
wwv_flow_imp.g_varchar2_table(10) := '666F6E742D73697A652C203172656D293B6C696E652D6865696768743A766172282D2D632D6865726F2D6465736372697074696F6E2D6C696E652D686569676874293B636F6C6F723A766172282D2D632D6865726F2D6465736372697074696F6E2D7465';
wwv_flow_imp.g_varchar2_table(11) := '78742D636F6C6F72297D2E632D4865726F5365617263687B2D2D75742D6669656C642D70616464696E672D793A3072656D3B2D2D75742D6669656C642D70616464696E672D783A3072656D3B2D2D612D6669656C642D696E7075742D666C65782D67726F';
wwv_flow_imp.g_varchar2_table(12) := '773A313B2D2D612D6669656C642D696E7075742D666F6E742D73697A653A3172656D3B646973706C61793A666C65783B616C69676E2D6974656D733A63656E7465723B696E6C696E652D73697A653A313030253B6761703A766172282D2D632D6865726F';
wwv_flow_imp.g_varchar2_table(13) := '2D7365617263682D6761702C202E323572656D293B70616464696E672D626C6F636B3A766172282D2D632D6865726F2D7365617263682D70616464696E672D792C202E323572656D293B70616464696E672D696E6C696E653A766172282D2D632D686572';
wwv_flow_imp.g_varchar2_table(14) := '6F2D7365617263682D70616464696E672D782C202E323572656D293B6D617267696E2D626C6F636B2D73746172743A766172282D2D632D6865726F2D7365617263682D6D617267696E2D792C202E373572656D293B636F6C6F723A766172282D2D612D66';
wwv_flow_imp.g_varchar2_table(15) := '69656C642D696E7075742D73746174652D746578742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B6261636B67726F756E642D636F6C6F723A766172282D2D612D6669656C642D696E7075742D73';
wwv_flow_imp.g_varchar2_table(16) := '746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B626F726465722D7261646975733A766172282D2D612D6669656C642D696E7075742D626F7264';
wwv_flow_imp.g_varchar2_table(17) := '65722D7261646975732C20302E31323572656D293B626F726465722D636F6C6F723A766172282D2D612D6669656C642D696E7075742D73746174652D626F726465722D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D626F72646572';
wwv_flow_imp.g_varchar2_table(18) := '2D636F6C6F7229293B626F726465722D77696474683A766172282D2D612D6669656C642D696E7075742D626F726465722D77696474682C20317078293B626F726465722D7374796C653A736F6C69643B626F782D736861646F773A766172282D2D612D66';
wwv_flow_imp.g_varchar2_table(19) := '69656C642D696E7075742D73746174652D736861646F772C20766172282D2D612D6669656C642D696E7075742D736861646F7729297D2E632D4865726F5365617263682D63617465676F72792C2E632D4865726F5365617263682D696E7075747B2D2D61';
wwv_flow_imp.g_varchar2_table(20) := '2D6669656C642D696E7075742D626F726465722D77696474683A3070783B2D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F723A7472616E73706172656E747D2E632D4865726F5365617263682D696E7075747B666C65782D';
wwv_flow_imp.g_varchar2_table(21) := '62617369733A6175746F3B666C65782D67726F773A317D2E632D4865726F5365617263682D63617465676F72797B666C65782D62617369733A3330253B626F726465722D696E6C696E652D73746172743A31707820736F6C696420766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(22) := '636F6D706F6E656E742D626F726465722D636F6C6F72293B70616464696E672D696E6C696E652D73746172743A766172282D2D632D6865726F2D7365617263682D6761702C202E323572656D297D2E632D4865726F5365617263682D616374696F6E7B2D';
wwv_flow_imp.g_varchar2_table(23) := '2D612D627574746F6E2D666F6E742D73697A653A2E38373572656D3B2D2D612D627574746F6E2D6C696E652D6865696768743A3172656D3B2D2D612D627574746F6E2D70616464696E672D793A2E373572656D3B2D2D612D627574746F6E2D7061646469';
wwv_flow_imp.g_varchar2_table(24) := '6E672D783A3172656D3B616C69676E2D73656C663A737472657463683B646973706C61793A666C65783B666C65782D736872696E6B3A303B6761703A2E323572656D7D2E632D4865726F5365617263682D616374696F6E202E66617B666F6E742D776569';
wwv_flow_imp.g_varchar2_table(25) := '6768743A3730307D2E632D4865726F536561726368202E742D466F726D2D6669656C64436F6E7461696E65722D2D737461636B6564202E742D466F726D2D6C6162656C436F6E7461696E65727B706F736974696F6E3A6162736F6C7574653B6F76657266';
wwv_flow_imp.g_varchar2_table(26) := '6C6F773A68696464656E3B636C69703A726563742830203020302030293B6D617267696E3A2D3170783B70616464696E673A303B696E6C696E652D73697A653A3170783B626C6F636B2D73697A653A3170783B626F726465723A307D2E632D4865726F53';
wwv_flow_imp.g_varchar2_table(27) := '6561726368202E742D466F726D2D6669656C64436F6E7461696E65722D2D737461636B65647B2D2D612D6669656C642D696E7075742D70616464696E672D783A2E3572656D3B2D2D612D6669656C642D696E7075742D70616464696E672D793A2E373572';
wwv_flow_imp.g_varchar2_table(28) := '656D7D2E632D4865726F2D766964656F20696672616D657B706F736974696F6E3A6162736F6C7574653B746F703A35302521696D706F7274616E743B6C6566743A35302521696D706F7274616E743B77696474683A756E73657421696D706F7274616E74';
wwv_flow_imp.g_varchar2_table(29) := '3B6865696768743A756E73657421696D706F7274616E743B6D696E2D696E6C696E652D73697A653A313030253B6D696E2D626C6F636B2D73697A653A313030253B7472616E73666F726D3A7472616E736C617465282D3530252C2D353025293B61737065';
wwv_flow_imp.g_varchar2_table(30) := '63742D726174696F3A31362F393B706F696E7465722D6576656E74733A6E6F6E657D2E632D4865726F2D766964656F3A61667465727B636F6E74656E743A22223B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B696E73';
wwv_flow_imp.g_varchar2_table(31) := '65743A303B7A2D696E6465783A313B6261636B67726F756E642D636F6C6F723A7267626128302C302C302C2E3535297D2E632D4865726F3A686173282E632D4865726F2D766964656F297B2D2D632D6865726F2D70616464696E672D793A3472656D3B2D';
wwv_flow_imp.g_varchar2_table(32) := '2D632D6865726F2D746578742D616C69676E3A63656E7465723B2D2D632D6865726F2D626F64792D6D61782D77696474683A343072656D3B2D2D632D6865726F2D626F64792D6D617267696E2D783A6175746F3B2D2D632D6865726F2D746578742D636F';
wwv_flow_imp.g_varchar2_table(33) := '6C6F723A766172282D2D632D6865726F2D6461726B2D746578742D636F6C6F722C2023666666293B2D2D632D6865726F2D7365617263682D6D617267696E2D793A312E3572656D7D406D6564696120286D696E2D77696474683A3634307078297B2E632D';
wwv_flow_imp.g_varchar2_table(34) := '4865726F3A686173282E632D4865726F2D766964656F297B2D2D632D6865726F2D6F7665726C696E652D666F6E742D73697A653A3172656D3B2D2D632D6865726F2D7469746C652D666F6E742D73697A653A3372656D3B2D2D632D6865726F2D64657363';
wwv_flow_imp.g_varchar2_table(35) := '72697074696F6E2D666F6E742D73697A653A312E323572656D7D7D406D6564696120286D61782D77696474683A3633397078297B2E632D4865726F7B2D2D632D6865726F2D70616464696E672D793A312E3572656D3B2D2D632D6865726F2D7061646469';
wwv_flow_imp.g_varchar2_table(36) := '6E672D783A3172656D7D2E632D4865726F5365617263687B666C65782D646972656374696F6E3A636F6C756D6E3B616C69676E2D6974656D733A737472657463687D2E632D4865726F5365617263682D63617465676F72797B626F726465722D696E6C69';
wwv_flow_imp.g_varchar2_table(37) := '6E652D73746172743A303B626F726465722D626C6F636B2D73746172743A31707820736F6C696420766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B70616464696E672D696E6C696E652D73746172743A756E7365743B';
wwv_flow_imp.g_varchar2_table(38) := '70616464696E672D626C6F636B3A766172282D2D632D6865726F2D7365617263682D6761702C202E323572656D297D2E632D4865726F5365617263682D616374696F6E202E742D427574746F6E7B666C65782D67726F773A317D7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(19284402267363797139)
,p_plugin_id=>wwv_flow_imp.id(17610153400759390722)
,p_file_name=>'hero.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
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