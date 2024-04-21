local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeBuffSelectPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.FeverTimeSkillInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeTrialAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeBuffSelectTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Buff.FeverTimeMonsterDataProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeBuffSelectPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityFeverTimeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AvatarModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ScheduleModule
L4_1 = 4
L5_1 = 5001001
L6_1 = {}
L6_1.None = 0
L6_1.Buff1 = 1
L6_1.Buff2 = 2
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityFeverTimeBuffSelectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._selected_avatars = L1_2
  A0_2._is_team_panel_open = false
  A0_2._is_buff_list_open = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetFeverTimeBuffDetailToggle
  L1_2 = L1_2(L2_2)
  A0_2._is_short_desc = L1_2
  A0_2._cur_select_buff_item_index = -1
  L1_2 = L6_1.None
  A0_2._cur_buff_list_show_type = L1_2
  L1_2 = {}
  A0_2._panel_avatar_icon_list = L1_2
  L1_2 = {}
  A0_2._panel_buff_item_list = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
function L7_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_team_panel_open
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_select_avatar
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = A0_2._is_buff_list_open
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_first_buff_list_item
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_first_buff_list_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_enter_team_list_btn_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_enter_team_list_btn_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._try_refresh_selected_object
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_team_panel_open
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L1_2 = L1_2.currentSelectedGameObject
    if L1_2 then
      L2_2 = L1_2.lightWeightDeactivate
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L5_2 = A0_2
        L4_2 = A0_2.get_first_selected_object
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._try_refresh_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_team_panel_open
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_avatar_select_panel
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._is_buff_list_open
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._show_buff_list_panel
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._get_avatar_id_list
      L1_2 = L1_2(L2_2)
      L3_2 = A0_2
      L2_2 = A0_2._try_save_team_data
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.exit
      L2_2(L3_2)
    end
  end
end
L0_1._in_control_exit_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_buff_list_open
  if L2_2 == false then
    L2_2 = A0_2._is_team_panel_open
    if L2_2 == false then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_equip_buff_key_map_hint
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = G
      L4_2 = L4_2.Utils
      L4_2 = L4_2.is_gamepad_input
      L4_2 = L4_2()
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_in_control_input_switch = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._level_config_row = A1_2
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.FeverTimeID
  A0_2._fever_time_id = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetLineupData
  L4_2 = A0_2._fever_time_id
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_avatar_data_from_id_list
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SetHasSeenLevel
  L3_2 = A0_2._fever_time_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._level_config_row
  L3_2 = L3_2.StageName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_detail_tog
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_short_desc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_select_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_icon_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_fever_time_info_list_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_right_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_buff_list_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_btn_challenge_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L1_2 = A0_2.panel_trial_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._fever_time_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_lis_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_target_list_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._refresh_shor_cur_hint
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_equip_buff_key_map_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_buff3
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Scroll"
    L5_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_shor_cur_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_p2_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_p3_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_tab_control = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityFeverTimeBuffSelectTabItem
  L4_2 = G
  L4_2 = L4_2.ActivityFeverTimeBuffSelectTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_control_root
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_title
  L4_2 = "UIText_FeverTime_StageNameP1"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_p2_tab_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityFeverTimeBuffSelectTabItem
  L4_2 = G
  L4_2 = L4_2.ActivityFeverTimeBuffSelectTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_control_root
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_title
  L4_2 = "UIText_FeverTime_StageNameP2"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_p3_tab_item = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_buff_list_show_type
  L3_2 = L6_1.None
  if L2_2 == L3_2 then
    if A1_2 == 1 then
      L3_2 = A0_2
      L2_2 = A0_2._trigger_btn_buff1_click
      L2_2(L3_2)
    elseif A1_2 == 2 then
      L3_2 = A0_2
      L2_2 = A0_2._trigger_btn_buff2_click
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2._cur_buff_list_show_type
    L3_2 = L6_1.Buff1
    if L2_2 == L3_2 then
      if A1_2 == 2 then
        L3_2 = A0_2
        L2_2 = A0_2._trigger_btn_buff2_click
        L2_2(L3_2)
      end
    else
      L2_2 = A0_2._cur_buff_list_show_type
      L3_2 = L6_1.Buff2
      if L2_2 == L3_2 and A1_2 == 1 then
        L3_2 = A0_2
        L2_2 = A0_2._trigger_btn_buff1_click
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_tab_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._on_btn_select_pre_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._on_btn_select_next_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByActivityModuleID
  L3_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  ::lbl_13::
end
L0_1._on_new_day_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff1_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff2_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff3_view
  L1_2(L2_2)
end
L0_1._setup_buff_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_monster_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.FeverTimeMonsterDataProvider
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_monster_data
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._level_config_row
  L4_2 = L4_2.MonsterList
  L3_2 = L3_2(L4_2)
  L5_2 = L1_2
  L4_2 = L1_2.init
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = A0_2._level_config_row
  L8_2 = L8_2.EventID
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_monster
  L5_2 = L4_2
  L4_2 = L4_2.setup_view_by_provider
  L6_2 = L1_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_monster_lis_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.LevelDes1
  L3_2 = L2_2
  L2_2 = L2_2.IsEmpty
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.LevelDes1
    L2_2.text_id = L3_2
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.ExtraEffectID
    L2_2.extra_effect_id = L3_2
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.LevelDes2
  L3_2 = L2_2
  L2_2 = L2_2.IsEmpty
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.LevelDes2
    L2_2.text_id = L3_2
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.ExtraEffectID
    L2_2.extra_effect_id = L3_2
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = A0_2._level_config_row
    L5_2 = L5_2.LevelDes2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2.panel_fever_time_info_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_fever_time_info_list_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityFeverTimeQuestExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.QuestGroupID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.QuestIDList
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.panel_challenge_target_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_challenge_target_list_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._in_control_exit_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._in_control_exit_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_btn_bg_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail_tog
  L4_2 = A0_2._on_btn_detail_tog_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff1
  L4_2 = A0_2._on_btn_buff1_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff2
  L4_2 = A0_2._on_btn_buff2_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_equip_buff
  L4_2 = A0_2._on_btn_finish_equip_buff_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._on_btn_avatar_detail_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_buff_list_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_monster_detail
  L4_2 = A0_2._on_btn_monster_detail_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_team_list
  L4_2 = A0_2._on_btn_team_list
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_pre
  L4_2 = A0_2._on_btn_select_pre_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_next
  L4_2 = A0_2._on_btn_select_next_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._on_new_day_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeInfoItem"
  L6_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeInfoItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_fever_time_info_list = L1_2
  L1_2 = A0_2.panel_fever_time_info_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fever_time_info_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeChallengeTargetInfo"
  L6_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeChallengeTargetInfoBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_challenge_target_list = L1_2
  L1_2 = A0_2.panel_challenge_target_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_challenge_target
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityFeverTimeTrialAvatarIconPanel
  L4_2 = G
  L4_2 = L4_2.ActivityFeverTimeTrialAvatarIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.panel_trial_avatar_list = L1_2
  L1_2 = A0_2.panel_trial_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_trial_avatar_panel
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_icon_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueAvatarIconPanel
    L8_2 = G
    L8_2 = L8_2.RogueAvatarIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_avatar_icon_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._panel_avatar_icon_list
    L6_2[L4_2] = L5_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_avatar_list
  L2_2 = L2_2.transform
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.AddAnimationEvent
  L4_2 = "UI_TvChallengeDetailPage_MemberChoose_FadeOut"
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_fever_time_list
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_team_choose
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RPGAnimationEvent
  L2_2 = L2_2.Get
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_content
  L3_2 = L3_2.transform
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.AddAnimationEvent
  L5_2 = "UI_FeverSelectAvatar_PanelSwitch_DetailToBuff"
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_buff_list
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_right_panel
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L3_2 = L3_2.Get
  L4_2 = A0_2._binder
  L4_2 = L4_2.animation_content
  L4_2 = L4_2.transform
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.AddAnimationEvent
  L6_2 = "UI_FeverSelectAvatar_PanelSwitch_BuffToDetail"
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_buff_list
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_right_panel
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_bg_close_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_short_desc
  L1_2 = not L1_2
  A0_2._is_short_desc = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.SetFeverTimeBuffDetailToggle
  L3_2 = A0_2._is_short_desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_detail_tog
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_short_desc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_buff_list
  L1_2(L2_2)
end
L0_1._on_btn_detail_tog_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_buff_list_panel
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff2
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff1
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_buff1_select_item_index
  L1_2 = L1_2(L2_2)
  A0_2._cur_select_buff_item_index = L1_2
  L1_2 = {}
  A0_2._cur_show_buff_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_show_buff_list
  L1_2 = L1_2(L2_2)
  A0_2._cur_show_buff_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._cur_show_buff_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_btn_buff1_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff2
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff1
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_buff_list_panel
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L6_1.Buff1
  A0_2._cur_buff_list_show_type = L1_2
  L1_2 = {}
  A0_2._cur_show_buff_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_show_buff_list
  L1_2 = L1_2(L2_2)
  A0_2._cur_show_buff_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_buff1_select_item_index
  L1_2 = L1_2(L2_2)
  A0_2._cur_select_buff_item_index = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._cur_show_buff_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_buff_list
  L2_2 = L2_2.transform
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_btn_equip_show_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._trigger_btn_buff1_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_buff_list_panel
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff1
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff2
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_buff2_select_item_index
  L1_2 = L1_2(L2_2)
  A0_2._cur_select_buff_item_index = L1_2
  L1_2 = {}
  A0_2._cur_show_buff_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_show_buff_list
  L1_2 = L1_2(L2_2)
  A0_2._cur_show_buff_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._cur_show_buff_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_btn_buff2_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.panel_trial_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.refresh_avatar_icon_list_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff1
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff2
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_buff_list_panel
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L6_1.Buff2
  A0_2._cur_buff_list_show_type = L1_2
  L1_2 = {}
  A0_2._cur_show_buff_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_show_buff_list
  L1_2 = L1_2(L2_2)
  A0_2._cur_show_buff_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_buff2_select_item_index
  L1_2 = L1_2(L2_2)
  A0_2._cur_select_buff_item_index = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._cur_show_buff_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_buff_list
  L2_2 = L2_2.transform
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_btn_equip_show_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._trigger_btn_buff2_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._in_control_exit_click
    L0_3(L1_3)
  end
  L4_2 = 1.2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_finish_equip_buff_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_buff_list_show_type
  L2_2 = L6_1.Buff1
  if L1_2 == L2_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetP1BuffID
    L3_2 = A0_2._fever_time_id
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._cur_show_buff_list
    L3_2 = A0_2._cur_select_buff_item_index
    L3_2 = L3_2 + 1
    L2_2 = L2_2[L3_2]
    if L1_2 ~= L2_2 then
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.SaveP1BuffID
      L5_2 = A0_2._fever_time_id
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2._setup_buff_view
      L3_2(L4_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.scroll_view_buff_list
      L4_2 = L3_2
      L3_2 = L3_2.RefreshAllShownItem
      L3_2(L4_2)
      L3_2 = CS
      L3_2 = L3_2.UnityEngine
      L3_2 = L3_2.UI
      L3_2 = L3_2.LayoutRebuilder
      L3_2 = L3_2.ForceRebuildLayoutImmediate
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_view_buff_list
      L4_2 = L4_2.transform
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2._update_btn_equip_show_state
      L3_2(L4_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator_buff1
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = "ConfirmHint"
      L3_2(L4_2, L5_2)
    end
  else
    L1_2 = A0_2._cur_buff_list_show_type
    L2_2 = L6_1.Buff2
    if L1_2 == L2_2 then
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.GetP2BuffID
      L3_2 = A0_2._fever_time_id
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = A0_2._cur_show_buff_list
      L3_2 = A0_2._cur_select_buff_item_index
      L3_2 = L3_2 + 1
      L2_2 = L2_2[L3_2]
      if L1_2 ~= L2_2 then
        L3_2 = L1_1
        L4_2 = L3_2
        L3_2 = L3_2.SaveP2BuffID
        L5_2 = A0_2._fever_time_id
        L6_2 = L2_2
        L3_2(L4_2, L5_2, L6_2)
        L4_2 = A0_2
        L3_2 = A0_2._setup_buff_view
        L3_2(L4_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.scroll_view_buff_list
        L4_2 = L3_2
        L3_2 = L3_2.RefreshAllShownItem
        L3_2(L4_2)
        L3_2 = CS
        L3_2 = L3_2.UnityEngine
        L3_2 = L3_2.UI
        L3_2 = L3_2.LayoutRebuilder
        L3_2 = L3_2.ForceRebuildLayoutImmediate
        L4_2 = A0_2._binder
        L4_2 = L4_2.scroll_view_buff_list
        L4_2 = L4_2.transform
        L3_2(L4_2)
        L4_2 = A0_2
        L3_2 = A0_2._update_btn_equip_show_state
        L3_2(L4_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.animator_buff2
        L4_2 = L3_2
        L3_2 = L3_2.SetTrigger
        L5_2 = "ConfirmHint"
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._on_btn_equip_buff_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ActivityTelevisionTeamInfoProvider
  L3_2 = A0_2._selected_avatars
  L4_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2._selected_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._trial_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.sort_avatars
  L4_2 = A0_2._total_avatars
  L5_2 = AvatarSortType
  L5_2 = L5_2.Level
  L6_2 = false
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._total_avatars
  L3_2 = L3_2[1]
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = "Ui.Avatar.AvatarMainPage"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L7_2 = nil
  L8_2 = nil
  L9_2 = L1_2
  L10_2 = L3_2
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_avatar_data_list
  L7_2 = A0_2._total_avatars
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.async_show
  L5_2(L6_2)
end
L0_1._on_btn_avatar_detail_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_table_length
  L2_2 = A0_2._selected_avatars
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UICenterToastMessageTextID
    L4_2 = "UIText_Heliobus_Challenge_AvatarEmptyTips"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_icon_list
  L2_2 = #L2_2
  if L1_2 < L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowOkCancelHint
    L3_2 = "UIText_Rogue_Start_Tip1"
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    function L5_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._confirm_to_start_challenge
        L1_3(L2_3)
      end
    end
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._confirm_to_start_challenge
  L2_2(L3_2)
end
L0_1._on_btn_challenge_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._get_avatar_id_list
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_save_team_data
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetP1BuffID
  L4_2 = A0_2._fever_time_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetP2BuffID
  L5_2 = A0_2._fever_time_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.StartFeverTimeBattle
  L6_2 = A0_2._fever_time_id
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._confirm_to_start_challenge = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._selected_avatars = L2_2
  L2_2 = nil
  if A1_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.AvatarModule
    L8_2 = L7_2
    L7_2 = L7_2.GetAvatar
    L9_2 = A1_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    L2_2 = L7_2
    if L2_2 == nil then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_ModuleManager
      L7_2 = L7_2.AvatarModule
      L8_2 = L7_2
      L7_2 = L7_2.GetTrialAvatar
      L9_2 = A1_2[L6_2]
      L7_2 = L7_2(L8_2, L9_2)
      L2_2 = L7_2
    end
    if L2_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._selected_avatars
      L9_2 = L2_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._init_avatar_data_from_id_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_selection_callback
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2._binder
    L1_3 = L1_3.panel_select_avatar
    L2_3 = L1_3
    L1_3 = L1_3.get_selected_avatars
    L1_3 = L1_3(L2_3)
    A0_2._selected_avatars = L1_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_avatar_icon_panel
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.init
  L4_2 = A0_2
  L3_2 = A0_2._get_all_avatars
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = "UIText_ActivityTelevision_BattleEntrance_Role_Title1"
  L6_2 = "UIText_ActivityTelevision_BattleEntrance_Role_Title2"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = A0_2._selected_avatars
  if not L5_2 then
    L5_2 = {}
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_show_damage_type
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.overrider_get_top_avatars
  L3_2 = A0_2._on_get_top_avatars
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._init_avatar_select_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.init
  L4_2 = A0_2
  L3_2 = A0_2._get_all_avatars_by_recommend
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = "UIText_FeverTime_Recommend_Avatar_Title"
  L6_2 = "UIText_FeverTime_Others_Avatar_Title"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = A0_2._selected_avatars
  if not L5_2 then
    L5_2 = {}
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._refresh_avatar_select_panel_by_recommend = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._all_avatars
  if L1_2 ~= nil then
    L1_2 = {}
    L2_2 = A0_2._trial_avatars
    L3_2 = A0_2._all_avatars
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    return L1_2
  end
  L1_2 = {}
  A0_2._trial_avatars = L1_2
  L1_2 = {}
  A0_2._all_avatars = L1_2
  L1_2 = {}
  A0_2._trial_avatars_sorted = L1_2
  L1_2 = {}
  A0_2._total_avatars = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetTrialAvatars
  L3_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._trial_avatars
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._trial_avatars_sorted
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._total_avatars
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = L2_1.AllAvatars
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._all_avatars
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._total_avatars
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = {}
  L4_2 = A0_2._trial_avatars
  L5_2 = A0_2._all_avatars
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  return L3_2
end
L0_1._get_all_avatars = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetP1BuffID
  L5_2 = A0_2._fever_time_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetTrialAvatars
  L6_2 = A0_2._fever_time_id
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = A0_2
    L10_2 = A0_2._check_is_recommend_avatar
    L12_2 = L3_2
    L13_2 = L9_2.Row
    L13_2 = L13_2.AvatarID
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    if L10_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L1_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    else
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L5_2 = L2_1.AllAvatars
  L6_2 = pairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L2_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = {}
  L7_2 = L1_2
  L8_2 = L2_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  return L6_2
end
L0_1._get_all_avatars_by_recommend = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_select_avatar
  L3_2 = L3_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = pairs
  L3_2 = A0_2._trial_avatars_sorted
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1._on_get_top_avatars = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._panel_avatar_icon_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._panel_avatar_icon_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.set_empty_interactable
    L8_2 = true
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view_avatar_data
    L8_2 = A0_2._selected_avatars
    L8_2 = L8_2[L4_2]
    L9_2 = A0_2._on_avatar_icon_click
    L10_2 = A0_2
    L11_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1._refresh_avatar_icon_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_team_panel_open
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_avatar_select_panel
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.set_selected_avatar
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_avatar_icon_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_team_panel_open = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_team_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mono_tip_enable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_fever_time_list
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_team_choose
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = nil
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_avatar_list
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "UI_TvChallengeDetailPage_MemberChoose_FadeIn"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_equip_buff_key_map_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_avatar_list
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "UI_TvChallengeDetailPage_MemberChoose_FadeOut"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_shor_cur_hint
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_equip_buff_key_map_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_gamepad_input
    L4_2, L5_2 = L4_2()
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_back
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_avatar_select_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._is_buff_list_open
  if L2_2 == false and A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_buff_list
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_right_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_content
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "UI_FeverSelectAvatar_PanelSwitch_DetailToBuff"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._is_buff_list_open
    if L2_2 and A1_2 == false then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_buff_list
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_right_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation_content
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "UI_FeverSelectAvatar_PanelSwitch_BuffToDetail"
      L2_2(L3_2, L4_2)
    end
  end
  A0_2._is_buff_list_open = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_character_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_back
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_buff1
  L3_2 = not A1_2
  L2_2.ActionEnabled = L3_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_show_buff_list_panel_hide
    L2_2(L3_2)
    A0_2._cur_select_buff_item_index = -1
    L2_2 = A0_2.panel_trial_avatar_list
    L3_2 = L2_2
    L2_2 = L2_2.refresh_avatar_icon_list_view
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_buff1
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_buff2
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._update_btn_challenge_state
    L2_2(L3_2)
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetP1BuffID
    L4_2 = A0_2._fever_time_id
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = 0 < L2_2
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2._refresh_avatar_select_panel_by_recommend
      L4_2(L5_2)
    end
    L5_2 = A0_2
    L4_2 = A0_2._refresh_shor_cur_hint
    L4_2(L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_equip_buff_key_map_hint
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.is_gamepad_input
    L6_2, L7_2 = L6_2()
    L4_2(L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_equip_buff_key_map_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect_buff3
    L3_2 = L2_2
    L2_2 = L2_2.CanScroll
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Select"
      L6_2 = "ActionGroup_Scroll"
      L7_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Select"
      L6_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._show_buff_list_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SaveLineupData
  L4_2 = A0_2._fever_time_id
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._try_save_team_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsTrialPlayer
    if L7_2 then
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.TrialPlayerID
      L7_2(L8_2, L9_2)
    else
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.ID
      L7_2(L8_2, L9_2)
    end
  end
  return L1_2
end
L0_1._get_avatar_id_list = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FeverTimeSkillInfoItem
    L8_2 = G
    L8_2 = L8_2.FeverTimeSkillInfoItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._cur_show_buff_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A2_2
  L9_2 = L5_2
  L10_2 = A0_2._is_short_desc
  L11_2 = A0_2._cur_buff_list_show_type
  L12_2 = A1_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_checked
  L8_2 = A0_2._cur_select_buff_item_index
  L8_2 = A2_2 == L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.reg_btn_root_click_call_back
  L8_2 = A0_2
  L9_2 = A0_2._on_buff_item_click_call_back
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = nil
  L7_2 = A0_2._cur_buff_list_show_type
  L8_2 = L6_1.Buff1
  if L7_2 == L8_2 then
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetP1BuffID
    L9_2 = A0_2._fever_time_id
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L7_2
  else
    L7_2 = A0_2._cur_buff_list_show_type
    L8_2 = L6_1.Buff2
    if L7_2 == L8_2 then
      L7_2 = L1_1
      L8_2 = L7_2
      L7_2 = L7_2.GetP2BuffID
      L9_2 = A0_2._fever_time_id
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L7_2
    end
  end
  L8_2 = L4_2
  L7_2 = L4_2.setup_equip_state
  L9_2 = L6_2 == L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._panel_buff_item_list
  L7_2[L5_2] = L4_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L4_2._binder
  L8_2 = L8_2.root
  L7_2(L8_2)
  L8_2 = A1_2
  L7_2 = A1_2.OnItemSizeChanged
  L9_2 = A2_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_buff_list_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2._level_config_row
  L3_2 = L3_2.WaveMonsterList_1
  L3_2 = L3_2.Length
  if 0 < L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetMonsterDataListByWaveID
    L6_2 = A0_2._fever_time_id
    L7_2 = 1
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L2_2 = L3_2
    L3_2 = ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._level_config_row
  L3_2 = L3_2.WaveMonsterList_2
  L3_2 = L3_2.Length
  if 0 < L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetMonsterDataListByWaveID
    L6_2 = A0_2._fever_time_id
    L7_2 = 2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L2_2 = L3_2
    L3_2 = ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._level_config_row
  L3_2 = L3_2.WaveMonsterList_3
  L3_2 = L3_2.Length
  if 0 < L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetMonsterDataListByWaveID
    L6_2 = A0_2._fever_time_id
    L7_2 = 3
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L2_2 = L3_2
    L3_2 = ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L0_1._get_monster_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_monster
  L2_2 = L1_2
  L1_2 = L1_2.show_monster_tips_dialog
  L1_2(L2_2)
end
L0_1._on_btn_monster_detail_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select_panel
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_btn_team_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetP1BuffID
  L3_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 0 < L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_buff1_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff1_icon_empty
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff1_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.BuffUtils
    L3_2 = L3_2.GetMazeBuffData
    L4_2 = L1_2
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2.async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.image_buff1_icon
      L7_2 = L3_2.BuffIcon
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_buff1_name
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2.BuffName
      L4_2(L5_2, L6_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_buff1_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_FeverTime_BuffChooseTip"
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_buff1_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetP2BuffID
  L3_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 0 < L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_buff2_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff2_icon_empty
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff2_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.BuffUtils
    L3_2 = L3_2.GetMazeBuffData
    L4_2 = L1_2
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2.async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.image_buff2_icon
      L7_2 = L3_2.BuffIcon
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_buff2_name
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2.BuffName
      L4_2(L5_2, L6_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_buff2_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_FeverTime_BuffChooseTip"
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_buff2_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.P3MazeBuffID
  L2_2 = L2_2[0]
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff3_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.BuffName
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.image_buff3_icon
    L5_2 = L1_2.BuffIcon
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._is_short_desc
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_buff3_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.BuffSimpleDesc
      L5_2 = G
      L5_2 = L5_2.UITextUtils
      L5_2 = L5_2.GetSkillParams
      L6_2 = L1_2.ParamList
      L5_2, L6_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_buff3_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.BuffDesc
      L5_2 = G
      L5_2 = L5_2.UITextUtils
      L5_2 = L5_2.GetSkillParams
      L6_2 = L1_2.ParamList
      L5_2, L6_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._setup_buff3_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_buff_list_open
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_view_buff_list
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._cur_show_buff_list
    L3_2 = #L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_view_buff_list
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_view_buff_list
    L2_2 = L2_2.transform
    L1_2(L2_2)
  end
end
L0_1._try_refresh_buff_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetP1BuffID
  L3_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 0 < L1_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetP2BuffID
  L5_2 = A0_2._fever_time_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0 < L3_2
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = L4_2
  end
  L6_2 = nil
  if L2_2 == false and L4_2 == false then
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = "UIText_FeverTime_CanNotEnterTip"
    L7_2 = L7_2(L8_2)
    L8_2 = "  (0/2)"
    L6_2 = L7_2 .. L8_2
  elseif L5_2 then
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = "UIText_FeverTime_CanNotEnterTip"
    L7_2 = L7_2(L8_2)
    L8_2 = "  (2/2)"
    L6_2 = L7_2 .. L8_2
  else
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = "UIText_FeverTime_CanNotEnterTip"
    L7_2 = L7_2(L8_2)
    L8_2 = "  (1/2)"
    L6_2 = L7_2 .. L8_2
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_warning_tip
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_warning_tip
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = not L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_challenge
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetInteractable
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_equip_buff
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetInteractable
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_equip_warning_tip
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_equip_warning_tip
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = not L5_2
  L7_2(L8_2, L9_2)
end
L0_1._update_btn_challenge_state = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_select_buff_item_index = A1_2
  L2_2 = A0_2._cur_buff_list_show_type
  L3_2 = L6_1.Buff1
  if L2_2 == L3_2 then
    L2_2 = A0_2._cur_show_buff_list
    L3_2 = A1_2 + 1
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.panel_trial_avatar_list
    L4_2 = L3_2
    L3_2 = L3_2.refresh_avatar_icon_list_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_equip_buff_click
  L2_2(L3_2)
end
L0_1._on_buff_item_click_call_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_btn_challenge_state
  L1_2(L2_2)
end
L0_1._update_btn_equip_show_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._cur_buff_list_show_type
  L4_2 = L6_1.Buff1
  if L3_2 == L4_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetP1BuffID
    L5_2 = A0_2._fever_time_id
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = 0
    L4_2 = A0_2._level_config_row
    L4_2 = L4_2.P1AvailableBuffList
    L4_2 = L4_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L6_2 + 1
      L8_2 = A0_2._level_config_row
      L8_2 = L8_2.P1AvailableBuffList
      L8_2 = L8_2[L6_2]
      L1_2[L7_2] = L8_2
    end
  else
    L3_2 = A0_2._cur_buff_list_show_type
    L4_2 = L6_1.Buff2
    if L3_2 == L4_2 then
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.GetP2BuffID
      L5_2 = A0_2._fever_time_id
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
      L3_2 = 0
      L4_2 = A0_2._level_config_row
      L4_2 = L4_2.P2AvailableBuffList
      L4_2 = L4_2.Length
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L6_2 + 1
        L8_2 = A0_2._level_config_row
        L8_2 = L8_2.P2AvailableBuffList
        L8_2 = L8_2[L6_2]
        L1_2[L7_2] = L8_2
      end
    end
  end
  return L1_2
end
L0_1._get_cur_show_buff_list = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_team_list
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_team_list
  L2_2.IsShowTip = A1_2
end
L0_1.set_enter_team_list_btn_enable = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 and 0 < A1_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ActivityFeverTimeTutorialExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = 0
      L5_2 = L3_2.RecommendAvatarList
      L5_2 = L5_2.Length
      L5_2 = L5_2 - 1
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = L3_2.RecommendAvatarList
        L8_2 = L8_2[L7_2]
        if L8_2 == A2_2 then
          L8_2 = true
          return L8_2
        end
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_recommend_avatar = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_monster_detail
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_avatar_detail
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_challenge
  L2_2.IsShowTip = A1_2
end
L0_1._setup_mono_tip_enable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._panel_buff_item_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear_show_detail_state
    L6_2(L7_2)
  end
end
L0_1._on_show_buff_list_panel_hide = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetP1BuffID
  L3_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = 0
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.P1AvailableBuffList
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._level_config_row
      L6_2 = L6_2.P1AvailableBuffList
      L6_2 = L6_2[L5_2]
      if L6_2 == L1_2 then
        return L5_2
      end
    end
  end
  L2_2 = -1
  return L2_2
end
L0_1._get_buff1_select_item_index = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetP2BuffID
  L3_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = 0
    L3_2 = A0_2._level_config_row
    L3_2 = L3_2.P2AvailableBuffList
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._level_config_row
      L6_2 = L6_2.P2AvailableBuffList
      L6_2 = L6_2[L5_2]
      if L6_2 == L1_2 then
        return L5_2
      end
    end
  end
  L2_2 = -1
  return L2_2
end
L0_1._get_buff2_select_item_index = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L7_1
return L0_1
