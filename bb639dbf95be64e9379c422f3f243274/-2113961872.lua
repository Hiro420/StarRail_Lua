local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.TeamDataUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberEditPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.DefaultTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.MemberEdit.DefaultTeamMemberEditOperation"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.MemberEdit.VirtualTeamMemberEditOperation"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.MemberEdit.RaidTeamMemberEditOperation"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberEditPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TeamModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.FixPoint
L3_1 = L3_1.MaxValue
L4_1 = L3_1
L3_1 = L3_1.ToFloat
L3_1 = L3_1(L4_1)
L4_1 = 4
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TeamMemberEditPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._team_data = nil
  A0_2._cur_selected_avatar = nil
  A0_2._orig_selected_avatar = nil
  A0_2._wait_member_join = false
  A0_2._is_member_joining = false
  L1_2 = {}
  A0_2._damage_types = L1_2
  A0_2._use_multi_list_avatar_select_panel = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  A0_2._index = A1_2
  A0_2._team_data = A2_2
  A0_2._show_hp = A3_2
  L7_2 = A4_2 or L7_2
  if not A4_2 then
    L7_2 = {}
  end
  A0_2._limit_ids = L7_2
  L7_2 = A5_2 or L7_2
  if not A5_2 then
    L7_2 = {}
  end
  A0_2._limit_index_list = L7_2
  L7_2 = A0_2._team_data
  L8_2 = L7_2
  L7_2 = L7_2.GetMemberData
  L9_2 = A0_2._index
  L9_2 = L9_2 - 1
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._cur_selected_avatar
  if L8_2 == nil and L7_2 ~= nil then
    L8_2 = G
    L8_2 = L8_2.AvatarUtils
    L8_2 = L8_2.get_avatar_data_by_member_data
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    A0_2._orig_selected_avatar = L8_2
    L8_2 = A0_2._orig_selected_avatar
    A0_2._cur_selected_avatar = L8_2
  end
  L8_2 = A6_2 or L8_2
  if not A6_2 then
    L8_2 = G
    L8_2 = L8_2.TeamDataUtils
    L8_2 = L8_2.fetch_team_data_provider
    L8_2 = L8_2()
  end
  A0_2._team_data_provider = L8_2
  L8_2 = A0_2._team_data_provider
  L9_2 = L8_2
  L8_2 = L8_2.set_team
  L10_2 = A2_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._get_member_operation
  L8_2 = L8_2(L9_2)
  A0_2._member_operation = L8_2
end
L0_1.init = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._use_multi_list_avatar_select_panel = true
  A0_2._all_avatar_table_list = A1_2
  A0_2._title_list = A2_2
end
L0_1.setup_multi_list_avatar_select_panel = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._btn_buff_textid = A1_2
  A0_2._btn_buff_state_callback = A2_2
  A0_2._btn_buff_state_callback_self = A3_2
end
L0_1.setup_team_buff_panel = L5_1
function L5_1(A0_2, A1_2)
  A0_2._damage_types = A1_2
end
L0_1.set_damage_tip = L5_1
function L5_1(A0_2, A1_2)
  A0_2._title_id = A1_2
end
L0_1.set_weakness_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._team_data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_operation_provider
  L1_2 = L1_2(L2_2)
  return L1_2
end
L0_1._get_member_operation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff_state
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_team_buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff_state_btn
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._btn_buff_textid
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_team_buff_state_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_leave_special_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_avatar_select
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_avatar_select
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_state
  L4_2 = A0_2._on_btn_buff_state
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._use_multi_list_avatar_select_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.multi_list_panel_avater_select
    A0_2._panel_avatar_select = L1_2
    L1_2 = A0_2._panel_avatar_select
    L2_2 = L1_2
    L1_2 = L1_2.init
    L3_2 = A0_2._all_avatar_table_list
    L4_2 = A0_2._title_list
    L5_2 = A0_2._orig_selected_avatar
    L6_2 = A0_2._team_data
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_avatar_select
    A0_2._panel_avatar_select = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_avatar_select
    L2_2 = L1_2
    L1_2 = L1_2.init
    L3_2 = A0_2._team_data
    L4_2 = A0_2._orig_selected_avatar
    L5_2 = A0_2._team_data_provider
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = A0_2._use_multi_list_avatar_select_panel
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.multi_list_panel_avater_select
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = A0_2._use_multi_list_avatar_select_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.register_async_shown_callback
  L3_2 = A0_2.force_set_first_navigation_target
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.register_selection_callback
  L3_2 = A0_2._on_selected_avatar_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.switch_team
  L3_2 = A0_2._team_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.remove_avatar_selected_eff
  L3_2 = A0_2._index
  L4_2 = A0_2._cur_selected_avatar
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_buff_state_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamDataRefresh
  L4_2 = L0_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LocalEditTeamDataRefresh
  L4_2 = L0_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tip_view
  L1_2(L2_2)
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._btn_buff_state_callback
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_team_buff_state_view
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.should_show
  L3_2 = A0_2._limit_ids
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_damages
  L3_2 = L2_2
  L2_2 = L2_2.should_show
  L4_2 = A0_2._damage_types
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  if not L1_2 then
    L5_2 = L2_2
  end
  L3_2(L4_2, L5_2)
  if L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_team_limit
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._limit_ids
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_damages
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._damage_types
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._title_id
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_damages
      L4_2 = L3_2
      L3_2 = L3_2.setup_title
      L5_2 = A0_2._title_id
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._setup_tip_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_ui_3d
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_page
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_avatar
  L1_2 = L1_2(L2_2)
  A0_2._cur_selected_avatar = L1_2
  L1_2 = A0_2._cur_selected_avatar
  if L1_2 == nil then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.setup_empty_show
    L3_2 = A0_2._index
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.setup_avatar_show
    L3_2 = A0_2._index
    L4_2 = A0_2._cur_selected_avatar
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_ui_3d = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._refresh_page = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.is_same_avatar
  L3_2 = A0_2._cur_selected_avatar
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_avatar_info
    L2_2(L3_2)
  else
    A0_2._cur_selected_avatar = A1_2
    L2_2 = A0_2._cur_selected_avatar
    if L2_2 == nil then
      L2_2 = A0_2._avatar_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.setup_empty_show
      L4_2 = A0_2._index
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._avatar_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.setup_avatar_show
      L4_2 = A0_2._index
      L5_2 = A0_2._cur_selected_avatar
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_team_limit
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1._on_selected_avatar_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_selected_avatar
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_empty_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_TeamEdit_MaxMemberNum_Tip"
    L5_2 = L4_1
    L6_2 = A0_2._limit_index_list
    L6_2 = #L6_2
    L5_2 = L5_2 - L6_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L2_2.IsInFakeDisableState = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_detail_btn
  L2_2(L3_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_avatar_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_join
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Teamedit_Join"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._member_operation
    L3_2 = L2_2
    L2_2 = L2_2.can_replace_avatar
    L4_2 = A0_2._orig_selected_avatar
    L5_2 = A0_2._cur_selected_avatar
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_confirm
    L5_2 = not L2_2
    L4_2.IsInFakeDisableState = L5_2
    L4_2 = A0_2._on_btn_join_click
    A0_2._confirm_action = L4_2
    A0_2._disable_tips = L3_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._is_swap
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_confirm
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Teamedit_Replace"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._member_operation
      L3_2 = L2_2
      L2_2 = L2_2.can_swap_avatar
      L4_2 = A0_2._orig_selected_avatar
      L5_2 = A0_2._cur_selected_avatar
      L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.btn_confirm
      L5_2 = not L2_2
      L4_2.IsInFakeDisableState = L5_2
      L4_2 = A0_2._on_btn_swap_click
      A0_2._confirm_action = L4_2
      A0_2._disable_tips = L3_2
    else
      L3_2 = A0_2
      L2_2 = A0_2._is_leave
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_confirm
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_Teamedit_Leave"
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._member_operation
        L3_2 = L2_2
        L2_2 = L2_2.can_leave_avatar
        L4_2 = A0_2._orig_selected_avatar
        L2_2, L3_2 = L2_2(L3_2, L4_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.btn_confirm
        L5_2 = not L2_2
        L4_2.IsInFakeDisableState = L5_2
        L4_2 = A0_2._on_btn_leave_click
        A0_2._confirm_action = L4_2
        A0_2._disable_tips = L3_2
      end
    end
  end
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._selected_in_team
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  return L1_2
end
L0_1._is_join = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._selected_in_team
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_selected_origin
  return L1_2(L2_2)
end
L0_1._is_leave = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._selected_in_team
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_empty_slot
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_selected_origin
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._is_swap = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.is_avatar_in_team
  L2_2 = A0_2._cur_selected_avatar
  L3_2 = A0_2._team_data
  return L1_2(L2_2, L3_2)
end
L0_1._selected_in_team = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._orig_selected_avatar
  L1_2 = L1_2 == nil
  return L1_2
end
L0_1._is_empty_slot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_selected_avatar
  L2_2 = A0_2._orig_selected_avatar
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_selected_origin = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cur_selected_avatar
  L2_2 = L2_2 ~= nil
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.UtilEngineWrap
    L3_2 = L3_2.IsCsType
    L4_2 = L1_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.BattleGamePhase
    L3_2 = L3_2(L4_2, L5_2)
    L3_2 = not L3_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_detail
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._refresh_detail_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_selected_avatar
  if L1_2 == nil then
    return
  end
  L1_2 = nil
  L2_2 = A0_2._show_hp
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.AvatarUtils
    L2_2 = L2_2.get_avatar_hp_percent
    L3_2 = A0_2._cur_selected_avatar
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_member_info
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._cur_selected_avatar
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_avatar_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._wait_member_join
  if L1_2 then
    L1_2 = A0_2._team_data
    L2_2 = L1_2
    L1_2 = L1_2.GetMemberData
    L3_2 = A0_2._index
    L3_2 = L3_2 - 1
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.AvatarID
      L3_2 = A0_2._cur_selected_avatar
      L3_2 = L3_2.ID
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2.exit
        L2_2(L3_2)
      end
    end
    return
  end
  L1_2 = A0_2._is_member_joining
  if L1_2 then
    L1_2 = A0_2._cur_selected_avatar
    L2_2 = A0_2._team_data
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.CoroutineUtils
    L3_2 = L3_2.InvokeAfterSeconds
    L4_2 = 0.5
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_AudioManager
      L1_3 = L0_3
      L0_3 = L0_3.TryPlayJoinTeamCharacterVO
      L2_3 = L1_2
      L3_3 = L2_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L3_2(L4_2, L5_2)
    A0_2._is_member_joining = false
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_team_data_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = A0_2._disable_tips
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm_disable_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_confirm_disable_click
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._confirm_action
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._confirm_action
    L1_2(L2_2)
  end
end
L0_1._on_btn_confirm_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._team_data
  L1_2 = L1_2.ReplacedMemberCache
  if L1_2 ~= nil then
    L1_2 = A0_2._team_data
    L1_2 = L1_2.ReplacedMemberCache
    L1_2 = L1_2.AvatarID
    L2_2 = A0_2._cur_selected_avatar
    L2_2 = L2_2.ID
    if L1_2 == L2_2 then
      A0_2._wait_member_join = true
    end
  end
  L1_2 = A0_2._cur_selected_avatar
  L1_2 = L1_2.ID
  L2_2 = A0_2._cur_selected_avatar
  L2_2 = L2_2.IsTrialPlayer
  if L2_2 then
    L2_2 = A0_2._cur_selected_avatar
    L1_2 = L2_2.TrialPlayerID
  end
  A0_2._is_member_joining = true
  L2_2 = A0_2._cur_selected_avatar
  L2_2 = L2_2.IsTrialPlayer
  if L2_2 then
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.JoinMemberToTeam
    L4_2 = A0_2._team_data
    L5_2 = L1_2
    L6_2 = A0_2._index
    L6_2 = L6_2 - 1
    L7_2 = A0_2._cur_selected_avatar
    L7_2 = L7_2.AvatarType
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.JoinMemberToTeam
    L4_2 = A0_2._team_data
    L5_2 = L1_2
    L6_2 = A0_2._index
    L6_2 = L6_2 - 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_btn_join_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._team_data
  L2_2 = L1_2
  L1_2 = L1_2.GetAssistMember
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 ~= nil
  L2_2 = false
  if L1_2 then
    L3_2 = 1
    L4_2 = 4
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._team_data
      L8_2 = L7_2
      L7_2 = L7_2.GetMemberData
      L9_2 = L6_2 - 1
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = A0_2._index
      if L8_2 ~= L6_2 and L7_2 then
        L8_2 = L7_2.IsAlive
        if L8_2 then
          L8_2 = L7_2.IsAssistAvatar
          if not L8_2 then
            L2_2 = true
          end
        end
      end
    end
  else
    L2_2 = true
  end
  if not L2_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_TeamEdit_LimitHint"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.QuitMemberFromTeam
  L5_2 = A0_2._team_data
  L6_2 = A0_2._cur_selected_avatar
  L6_2 = L6_2.ID
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_btn_leave_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._team_data
  L2_2 = L1_2
  L1_2 = L1_2.GetSlotByAvatarID
  L3_2 = A0_2._cur_selected_avatar
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.SwapMemberSlotInTeam
  L4_2 = A0_2._team_data
  L5_2 = L1_2
  L6_2 = A0_2._index
  L6_2 = L6_2 - 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_swap_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.on_show_avatar_main_page
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.DefaultTeamInfoProvider
  L3_2 = A0_2._team_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Avatar.AvatarMainPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = nil
  L6_2 = 1
  L7_2 = L1_2
  L8_2 = A0_2._cur_selected_avatar
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2._use_multi_list_avatar_select_panel
  if L3_2 then
    L3_2 = {}
    L5_2 = L1_2
    L4_2 = L1_2.get_avatars_in_team
    L4_2 = L4_2(L5_2)
    L5_2 = pairs
    L6_2 = A0_2._all_avatar_table_list
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = pairs
      L11_2 = L9_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = L3_2
        L17_2 = L14_2
        L15_2(L16_2, L17_2)
        L15_2 = L14_2.IsTrialPlayer
        if L15_2 then
          L15_2 = G
          L15_2 = L15_2.Utils
          L15_2 = L15_2.index_of_item
          L16_2 = L4_2
          L17_2 = L14_2
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 == nil then
            L15_2 = table
            L15_2 = L15_2.insert
            L16_2 = L4_2
            L17_2 = L14_2
            L15_2(L16_2, L17_2)
          end
        end
      end
    end
    L5_2 = G
    L5_2 = L5_2.AvatarUtils
    L5_2 = L5_2.sort_avatars
    L6_2 = L3_2
    L7_2 = AvatarSortType
    L7_2 = L7_2.Level
    L8_2 = false
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = L2_2
    L5_2 = L2_2.set_avatar_data_list
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L0_1._on_btn_detail_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_buff_state_callback
  if L1_2 then
    L1_2 = A0_2._btn_buff_state_callback
    L2_2 = A0_2._btn_buff_state_callback_self
    L1_2(L2_2)
  end
end
L0_1._on_btn_buff_state = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._block_id
    if L2_2 == nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.BlockFixedTime
      L4_2 = L3_1
      L5_2 = L3_1
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._block_id = L2_2
    end
  else
    L2_2 = A0_2._block_id
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.TryUnblockFixedTime
      L4_2 = A0_2._block_id
      L2_2(L3_2, L4_2)
      A0_2._block_id = nil
    end
  end
end
L0_1._try_block_input = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._team_data = nil
  A0_2._cur_selected_avatar = nil
  A0_2._orig_selected_avatar = nil
  A0_2._damage_type_filter_list = nil
  A0_2._base_type_filter_list = nil
end
L0_1._on_dispose = L5_1
return L0_1
