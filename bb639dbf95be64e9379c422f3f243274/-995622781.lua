local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.TeamDataUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamQuickEditPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamQuickEditPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TeamModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TeamQuickEditPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._team_data = nil
  A0_2._use_multi_list_avatar_select_panel = false
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._team_data = A1_2
  A0_2._show_hp = A2_2
  A0_2._limit_index_list = A3_2
  L5_2 = A1_2.IsVirtual
  L5_2 = not L5_2
  A0_2._allow_update_trial = L5_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = G
    L5_2 = L5_2.TeamDataUtils
    L5_2 = L5_2.fetch_team_data_provider
    L5_2 = L5_2()
  end
  A0_2._team_data_provider = L5_2
  L5_2 = A0_2._team_data_provider
  L6_2 = L5_2
  L5_2 = L5_2.set_team
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._use_multi_list_avatar_select_panel = true
  A0_2._all_avatar_table_list = A1_2
  A0_2._title_list = A2_2
end
L0_1.setup_multi_list_avatar_select_panel = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._btn_buff_textid = A1_2
  A0_2._btn_buff_state_callback = A2_2
  A0_2._btn_buff_state_callback_self = A3_2
end
L0_1.setup_team_buff_panel = L3_1
function L3_1(A0_2, A1_2)
  A0_2._limit_ids = A1_2
end
L0_1.set_limit_tip = L3_1
function L3_1(A0_2, A1_2)
  A0_2._damage_types = A1_2
end
L0_1.set_damage_tip = L3_1
function L3_1(A0_2, A1_2)
  A0_2._title_id = A1_2
end
L0_1.set_weakness_title = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_leave_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_save
  L4_2 = A0_2._on_btn_save
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_state
  L4_2 = A0_2._on_btn_buff_state
  L1_2(L2_2, L3_2, L4_2)
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
    L6_2 = A0_2
    L5_2 = A0_2._get_team_avatars
    L5_2, L6_2 = L5_2(L6_2)
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
    L5_2 = A0_2
    L4_2 = A0_2._get_team_avatars
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._team_data_provider
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_avatar_select
    L2_2 = L1_2
    L1_2 = L1_2.setup_limit_index_list
    L3_2 = A0_2._limit_index_list
    L1_2(L2_2, L3_2)
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
  L1_2 = L1_2.register_selection_callback
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_btn_view
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_team_limit
  L2_2 = L1_2
  L1_2 = L1_2.switch_team
  L3_2 = A0_2._team_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_buff_state_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._team_data
    L7_2 = L6_2
    L6_2 = L6_2.GetMemberData
    L8_2 = L5_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.AvatarData
      if L7_2 then
        goto lbl_16
      end
    end
    L7_2 = nil
    ::lbl_16::
    L1_2[L5_2] = L7_2
  end
  return L1_2
end
L0_1._get_team_avatars = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_save
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._init_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamDataRefresh
  L4_2 = L0_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tip_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._btn_buff_state_callback
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_team_buff_state_view
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_save
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_team_valid
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_btn_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_current_team
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_selection_empty
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_lock_condition_match
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._is_team_valid = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_avatars
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = false
      return L6_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._is_selection_empty = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_avatars
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = A0_2._team_data
  L3_2 = L3_2.LockedAvatarIDs
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._is_avatar_id_in_team
    L8_2 = A0_2._team_data
    L8_2 = L8_2.LockedAvatarIDs
    L8_2 = L8_2[L5_2]
    L9_2 = L1_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if not L6_2 then
      L6_2 = false
      return L6_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._is_lock_condition_match = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = L1_1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A2_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = A2_2[L6_2]
      L7_2 = L7_2.ID
      if L7_2 == A1_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._is_avatar_id_in_team = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._team_data
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_current_team = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.setup_team_show
    L4_2 = A0_2
    L3_2 = A0_2._get_team_avatars
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_return_top_page = L3_1
function L3_1(A0_2)
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
L0_1._setup_tip_view = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._setup_team_buff_state_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_team_data_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_current_team
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._has_available_avatar
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = "UITextmap_TeamEditPage_Toast_ControlLimit"
      L1_2(L2_2, L3_2)
      return
    end
  end
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.SetTeamMember
  L3_2 = A0_2._team_data
  L5_2 = A0_2
  L4_2 = A0_2._gen_avatar_list
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_save = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._panel_avatar_select
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_avatars
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= nil then
      L9_2 = G
      L9_2 = L9_2.AvatarUtils
      L9_2 = L9_2.get_avatar_hp_percent
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = 0
      end
      if 0 < L9_2 then
        L9_2 = L8_2.IsDisplayOnly
        if not L9_2 then
          L9_2 = true
          return L9_2
        else
          L9_2 = L8_2.SpecialRow
          L10_2 = L9_2.DisableSwitch
          if not L10_2 then
            L2_2 = L2_2 + 1
          end
          L10_2 = L9_2.IsAutoBattle
          if not L10_2 then
            L3_2 = L3_2 + 1
          end
        end
      end
    end
  end
  L4_2 = 0 < L2_2 and 0 < L3_2
  return L4_2
end
L0_1._has_available_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = A0_2._panel_avatar_select
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_avatars
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = L1_1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = L1_2
    L7_2 = L1_2.Add
    L9_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1._gen_avatar_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._btn_buff_state_callback
  if L1_2 then
    L1_2 = A0_2._btn_buff_state_callback
    L2_2 = A0_2._btn_buff_state_callback_self
    L3_2 = A0_2._on_return_top_page
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_buff_state = L3_1
return L0_1
