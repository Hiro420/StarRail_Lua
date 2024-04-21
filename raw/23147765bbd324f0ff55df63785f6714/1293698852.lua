local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.BasePage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionVerticalSubMenuPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionVerticalSubMenuPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfActivityMissionPage"
L2_1 = G
L2_1 = L2_1.BasePage
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityModule
L2_1 = 8002
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SilverWolfActivityMissionPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.canvas_group_zoom_1
    L3_2.alpha = 1
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = A0_2._vertical_submenu
    L6_2 = L5_2
    L5_2 = L5_2.get_zoom_target
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._vertical_submenu
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = A0_2._vertical_submenu
    L3_2 = L2_2
    L2_2 = L2_2._is_can_to_zoom
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
end
L0_1._is_can_to_zoom = L3_1
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SilverWolfActivityScheduleEnd
  L4_2 = A0_2._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_vertical_submenu
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_res_bar
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._top_bar_area_panel = L1_2
  L1_2 = A0_2._top_bar_area_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_bar_area
  L1_2(L2_2, L3_2)
end
L0_1._init_res_bar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSilverWolfActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_activity_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityConstValueSilverWolfExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "SilverWolf_ResourceBar"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._top_bar_area_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.Value
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._vertical_submenu
  if L1_2 then
    L1_2 = A0_2._vertical_submenu
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L1_2(L2_2)
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2, A1_2)
  A0_2._horizon_tab_index = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_back = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SilverWolfActivityMissionVerticalSubMenuPanel
  L4_2 = G
  L4_2 = L4_2.SilverWolfActivityMissionVerticalSubMenuPanelBinder
  L5_2 = A0_2._binder
  L5_2 = L5_2.tab_control_root
  L6_2 = A0_2._horizon_tab_index
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._vertical_submenu = L1_2
  L1_2 = A0_2._vertical_submenu
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.vertical_submemu_root
  L1_2(L2_2, L3_2)
end
L0_1._init_vertical_submenu = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_activity_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Tutorial.GuideDetailDialog"
  L3_2 = L2_1
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_intro = L3_1
return L0_1
