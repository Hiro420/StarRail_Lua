local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleGraphListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleGraphListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleTopWorldItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleTopWorldItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.ChronicleUtilities.MissionChronicleUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionChronicleModule
L2_1 = 40
L3_1 = 80
L4_1 = "ChroniclePage_BgSwitch_FadeIn"
L5_1 = "ChroniclePage_BgSwitch_FadeOut"
L6_1 = "ChroniclePage_FadeIn_ZoomIn"
L7_1 = "ChroniclePage_FadeOut"
L8_1 = "ChroniclePage_FadeOut_ZoomIn"
L9_1 = "ChroniclePage_FadeIn_ZoomOut"
L10_1 = 10
L11_1 = 1.5
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MissionChronicleMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_first = true
end
L0_1.ctor = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_first
  if L1_2 then
    L1_2 = L6_1
    return L1_2
  else
    L1_2 = L9_1
    return L1_2
  end
end
L0_1.get_custom_fade_in_anim_name = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Name
  if L2_2 == "MissionChronicleSubDialog" then
    L2_2 = L8_1
    return L2_2
  else
    L2_2 = L7_1
    return L2_2
  end
end
L0_1.get_custom_fade_out_anim_name = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BlockFixedTime
  L3_2 = L11_1
  L4_2 = L11_1
  L5_2 = nil
  L6_2 = false
  L7_2 = "MissionChronicleMainPage"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._block_id = L1_2
end
L0_1.init = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputDeviceClass
  L2_2 = L2_2.Controller
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_ui_navigation
    L2_2(L3_2)
  end
end
L0_1._on_in_control_input_switch = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mission_graph_panel
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_object
  return L1_2(L2_2)
end
L0_1.get_selected_object = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_detail_panel_node
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.gameObject
  L2_2 = L2_2.activeSelf
  if L2_2 then
    L2_2 = A0_2._mission_graph_panel
    L2_2 = L2_2.nav_detail_object
    if L2_2 ~= nil then
      L2_2 = A0_2._mission_graph_panel
      L2_2.nav_detail_object = nil
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._mission_graph_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_last_nav_panel
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2
      L4_2 = L4_2.get_btn
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.gameObject
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._mission_graph_panel
      L3_2 = L2_2
      L2_2 = L2_2.close_detail_panel
      L2_2(L3_2)
    end
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_click_close
  L2_2(L3_2)
end
L0_1._in_control_exit_click = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  return L1_2
end
L0_1.get_btn_close = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_selected_path_data
  return L1_2(L2_2)
end
L0_1.get_cur_selected_path_data = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "MissionChronicleSubDialog"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MissionChronicleGraphListPanel
  L4_2 = G
  L4_2 = L4_2.MissionChronicleGraphListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_graph_panel = L1_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_graph_btn
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_world_change_callback
  L3_2 = A0_2._on_graph_world_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_drag_change_callback
  L3_2 = A0_2._on_drag_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_can_take_tip_callback
  L3_2 = A0_2._on_click_can_take_tip
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_tick_callback
  L3_2 = A0_2._on_graph_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_world_scroll_rect
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect_world
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_graph_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.grid_view_world
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_world_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left_world
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right_world
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2.belong_path_chapter_id = 0
end
L0_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._top_world_idx
  if L1_2 == 1 then
    return
  end
  L1_2 = A0_2._top_world_idx
  L1_2 = L1_2 - 1
  L1_2 = L1_2 - 1
  L2_2 = A0_2._top_world_idx
  L2_2 = L2_2 - 1
  A0_2._top_world_idx = L2_2
  L2_2 = A0_2._mission_graph_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_is_click_world
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.grid_view_world
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.UserObjectData
  L4_2 = L2_2
  L3_2 = L2_2.trigger_click
  L3_2(L4_2)
end
L0_1._select_prev = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._top_world_idx
  L2_2 = A0_2._world_info_table
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._top_world_idx
  L1_2 = L1_2 - 1
  L1_2 = L1_2 + 1
  L2_2 = A0_2._top_world_idx
  L2_2 = L2_2 + 1
  A0_2._top_world_idx = L2_2
  L2_2 = A0_2._mission_graph_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_is_click_world
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.grid_view_world
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.UserObjectData
  L4_2 = L2_2
  L3_2 = L2_2.trigger_click
  L3_2(L4_2)
end
L0_1._select_next = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._mission_path_info_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._mission_path_info_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.ID
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_mission_btn_by_id = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._mission_path_info_table = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetEmptyMissionDataList
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._generate_mission_path_info_table
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._generate_all_path_table
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_chronicle_graph
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._get_graph_bound
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._get_world_info
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_world
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._init_ui_navigation
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._report_chronicle_open
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._record_page_fade_in_anim
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2.IsMissionChronicleFirstOpened = true
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MissionChronicleOpenMainPage
  L1_2(L2_2)
  A0_2._is_first = false
end
L0_1._setup_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_can_take_path_table
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = #L1_2
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = 0
  ::lbl_10::
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SDKLuaReportAdapter
  L3_2 = L3_2.ReportOpenMissionChronicle
  L4_2 = A0_2.__name
  L5_2 = L2_2
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._report_chronicle_open = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1.ChronicleMainPathDict
  L2_2 = L1_2
  L1_2 = L1_2.TryGetValue
  L3_2 = L1_1.FirstPathID
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._mission_path_info_table
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = 1
  while true do
    L4_2 = A0_2._mission_path_info_table
    L4_2 = #L4_2
    if not (L3_2 <= L4_2) then
      break
    end
    L5_2 = A0_2
    L4_2 = A0_2._generate_next_chronicle
    L6_2 = A0_2._mission_path_info_table
    L6_2 = L6_2[L3_2]
    L4_2(L5_2, L6_2)
    L3_2 = L3_2 + 1
  end
end
L0_1._generate_mission_path_info_table = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._all_path_table = L1_2
  L1_2 = A0_2._all_path_table
  L2_2 = A0_2._mission_path_info_table
  L1_2[0] = L2_2
  L1_2 = 1
  L2_2 = A0_2._mission_path_info_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._mission_path_info_table
    L5_2 = L5_2[L4_2]
    L6_2 = {}
    L7_2 = L5_2.ChronicleSubPathDict
    L8_2 = L7_2
    L7_2 = L7_2.TryGetValue
    L9_2 = L5_2.FirstSubPathID
    L7_2, L8_2 = L7_2(L8_2, L9_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L6_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = 1
    while true do
      L10_2 = #L6_2
      if not (L9_2 <= L10_2) then
        break
      end
      L11_2 = A0_2
      L10_2 = A0_2._generate_next_chronicle
      L12_2 = L6_2[L9_2]
      L13_2 = L6_2
      L10_2(L11_2, L12_2, L13_2)
      L9_2 = L9_2 + 1
    end
    L10_2 = A0_2._all_path_table
    L11_2 = L5_2.ID
    L10_2[L11_2] = L6_2
  end
end
L0_1._generate_all_path_table = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.IsCanStepNextPath
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = 0
  L4_2 = A1_2.ConnectionList
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2.ConnectionList
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.LineType
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ChronicleLineType
    L9_2 = L9_2.Normal
    if L8_2 ~= L9_2 then
      L8_2 = L7_2.LineType
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ChronicleLineType
      L9_2 = L9_2.Hide
      if L8_2 ~= L9_2 then
        goto lbl_34
      end
    end
    L9_2 = A0_2
    L8_2 = A0_2._generate_chronicle_info
    L10_2 = L7_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
    ::lbl_34::
  end
end
L0_1._generate_next_chronicle = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.MissionChronicleUtils
  L3_2 = L3_2.check_is_path_data_available
  L4_2 = A1_2.PathData
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  if A2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._check_is_path_data_exist
    L5_2 = A0_2._mission_path_info_table
    L6_2 = A1_2.PathData
    L6_2 = L6_2.ID
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if not L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._mission_path_info_table
      L5_2 = A1_2.PathData
      L3_2(L4_2, L5_2)
    end
  else
    L4_2 = A0_2
    L3_2 = A0_2._check_is_path_data_exist
    L5_2 = A2_2
    L6_2 = A1_2.PathData
    L6_2 = L6_2.ID
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if not L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A2_2
      L5_2 = A1_2.PathData
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._generate_chronicle_info = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.ID
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_path_data_exist = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.MissionChronicleUtils
  L1_2 = L1_2.get_last_locate_path_id
  L2_2 = A0_2._mission_path_info_table
  L1_2 = L1_2(L2_2)
  A0_2._first_locate_path_id = L1_2
  L1_2 = A0_2._first_locate_path_id
  if L1_2 == nil then
    L1_2 = L1_1.FirstPathID
    A0_2._first_locate_path_id = L1_2
  end
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._mission_path_info_table
  L4_2 = true
  L5_2 = A0_2._first_locate_path_id
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = L10_1
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._mission_graph_panel
      L1_3 = L0_3
      L0_3 = L0_3.play_fade_in
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_chronicle_graph = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_fade_in_finish = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L6_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = L1_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      A0_2._is_fade_in_finish = true
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._record_page_fade_in_anim = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  A0_2._world_info_table = L1_2
  L1_2 = 1
  L2_2 = A0_2._mission_path_info_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._mission_path_info_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.WorldID
    L7_2 = L5_2.IsBelongNoWorld
    if not L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._check_is_world_id_exist
      L9_2 = A0_2._world_info_table
      L10_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if not L7_2 then
        L7_2 = {}
        L7_2.id = L6_2
        L7_2.FirstPathData = L5_2
        L9_2 = A0_2
        L8_2 = A0_2._get_world_most_left_pos_x
        L10_2 = L6_2
        L8_2 = L8_2(L9_2, L10_2)
        L7_2.MostLeftPosX = L8_2
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._world_info_table
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L1_2 = 1
  L2_2 = A0_2._world_info_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._world_info_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.FirstPathData
    L6_2 = L6_2.NodeType
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ChronicleNodeType
    L7_2 = L7_2.WorldNode
    if L6_2 ~= L7_2 then
      L6_2 = 1
      L7_2 = A0_2._mission_path_info_table
      L7_2 = #L7_2
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = A0_2._mission_path_info_table
        L10_2 = L10_2[L9_2]
        L11_2 = L10_2.IsBelongNoWorld
        if not L11_2 then
          L11_2 = L10_2.WorldID
          L12_2 = L5_2.id
          if L11_2 == L12_2 then
            L11_2 = L10_2.NodeType
            L12_2 = CS
            L12_2 = L12_2.RPG
            L12_2 = L12_2.GameCore
            L12_2 = L12_2.ChronicleNodeType
            L12_2 = L12_2.WorldNode
            if L11_2 == L12_2 then
              L5_2.FirstPathData = L10_2
              break
            end
          end
        end
      end
    end
  end
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._mission_path_info_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._mission_path_info_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.ID
    L7_2 = A0_2._first_locate_path_id
    if L6_2 == L7_2 then
      L6_2 = A0_2._mission_path_info_table
      L1_2 = L6_2[L5_2]
      break
    end
  end
  L2_2 = 1
  if L1_2 then
    L3_2 = 1
    L4_2 = A0_2._world_info_table
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._world_info_table
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.id
      L8_2 = L1_2.WorldID
      if L7_2 == L8_2 then
        L2_2 = L6_2
        break
      end
    end
  end
  L3_2 = A0_2._world_info_table
  L3_2 = L3_2[L2_2]
  A0_2._cur_selected_world_info = L3_2
  L3_2 = A0_2._world_info_table
  L3_2 = L3_2[L2_2]
  A0_2._cur_world_bg_info = L3_2
  A0_2._cur_world_idx = L2_2
  A0_2._top_world_idx = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_world_bg
  L3_2(L4_2)
end
L0_1._get_world_info = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._mission_path_info_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._mission_path_info_table
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.IsBelongNoWorld
    if not L8_2 then
      L8_2 = L7_2.WorldID
      if A1_2 == L8_2 then
        if L2_2 ~= nil then
          L8_2 = L7_2.PosX
          if not (L2_2 > L8_2) then
            goto lbl_21
          end
        end
        L2_2 = L7_2.PosX
      end
    end
    ::lbl_21::
  end
  return L2_2
end
L0_1._get_world_most_left_pos_x = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.id
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_world_id_exist = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.grid_view_world
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._world_info_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.grid_view_world
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_world_change
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.grid_view_world
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._cur_world_idx
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.UserObjectData
  A0_2._last_world_item = L1_2
  L1_2 = A0_2._last_world_item
  L2_2 = L1_2
  L1_2 = L1_2.get_width
  L1_2 = L1_2(L2_2)
  A0_2._world_item_width = L1_2
  A0_2._world_item_left_pos = 0
end
L0_1._setup_world = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MissionChronicleTopWorldItem
    L8_2 = G
    L8_2 = L8_2.MissionChronicleTopWorldItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_world
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._world_info_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cur_selected_world_info
  L6_2 = L6_2.id
  L7_2 = L5_2.id
  L6_2 = L6_2 == L7_2
  L8_2 = L4_2
  L7_2 = L4_2.set_selected
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  if L6_2 then
    L7_2 = A2_2 + 1
    A0_2._cur_world_idx = L7_2
    L7_2 = A2_2 + 1
    A0_2._top_world_idx = L7_2
  end
  return L3_2
end
L0_1._on_world_item_changed = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._cur_world_bg_info
  L3_2 = L3_2.id
  L4_2 = A1_2.id
  if L3_2 == L4_2 then
    return
  end
  L3_2 = A1_2.FirstPathData
  L4_2 = A0_2._mission_graph_panel
  L5_2 = L4_2
  L4_2 = L4_2.move_to_target_path
  L6_2 = L3_2.ID
  L4_2(L5_2, L6_2)
  A0_2._cur_world_bg_info = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_world_bg
  L4_2(L5_2)
end
L0_1._on_click_world = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_left_world
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_selected_world_info
  L3_2 = L3_2.id
  L4_2 = A0_2._world_info_table
  L4_2 = L4_2[1]
  L4_2 = L4_2.id
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_right_world
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_selected_world_info
  L3_2 = L3_2.id
  L4_2 = A0_2._world_info_table
  L5_2 = A0_2._world_info_table
  L5_2 = #L5_2
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.id
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._world_info_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._world_info_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.id
    L6_2 = A0_2._cur_selected_world_info
    L6_2 = L6_2.id
    if L5_2 == L6_2 then
      A0_2._cur_world_idx = L4_2
      A0_2._top_world_idx = L4_2
      break
    end
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._cur_selected_world_info
    A0_2._cur_world_bg_info = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._setup_world_bg
    L1_2(L2_2)
  end
end
L0_1._on_world_change = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._world_info_table
  if L2_2 == nil then
    return
  end
  L2_2 = 1
  L3_2 = A0_2._world_info_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._cur_selected_world_info
    L6_2 = L6_2.id
    L7_2 = A0_2._world_info_table
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.id
    if L6_2 ~= L7_2 then
      L6_2 = A0_2._world_info_table
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.FirstPathData
      L6_2 = L6_2.PosX
      L7_2 = nil
      L8_2 = A0_2._world_info_table
      L9_2 = L5_2 + 1
      L8_2 = L8_2[L9_2]
      if L8_2 ~= nil then
        L8_2 = A0_2._world_info_table
        L9_2 = L5_2 + 1
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.FirstPathData
        L7_2 = L8_2.PosX
      end
      if A1_2 >= L6_2 and L7_2 == nil or A1_2 >= L6_2 and A1_2 < L7_2 then
        L8_2 = A0_2._world_info_table
        L8_2 = L8_2[L5_2]
        A0_2._cur_selected_world_info = L8_2
        L9_2 = A0_2
        L8_2 = A0_2._on_world_change
        L8_2(L9_2)
        L9_2 = A0_2
        L8_2 = A0_2._set_world_item_selected
        L8_2(L9_2)
        return
      end
    end
  end
  L2_2 = A0_2._graph_bound_up
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_graph_pos_factor
    L2_2, L3_2 = L2_2(L3_2)
    L5_2 = A0_2
    L4_2 = A0_2._calc_set_bg_pos
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._calc_set_eff_bg_pos
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_world
  L2_2 = L2_2.Dragging
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_update_world_item_move
    L2_2(L3_2)
  end
end
L0_1._on_graph_world_change = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._last_world_item
  if L1_2 ~= nil then
    L1_2 = A0_2._last_world_item
    L2_2 = L1_2
    L1_2 = L1_2.set_selected
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.grid_view_world
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._cur_world_idx
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.set_selected
    L5_2 = true
    L3_2(L4_2, L5_2)
    A0_2._last_world_item = L2_2
  end
end
L0_1._set_world_item_selected = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._cur_selected_world_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_actual_pos
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.x
  L1_2 = -L1_2
  L2_2 = nil
  L3_2 = nil
  L5_2 = A0_2
  L4_2 = A0_2._get_cur_world_left_right_bound
  L6_2 = A0_2._cur_world_idx
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L3_2 = L5_2
  L2_2 = L4_2
  if L3_2 == L2_2 then
    L4_2 = A0_2._world_item_width
    L3_2 = L3_2 + L4_2
  end
  L4_2 = L1_2 - L2_2
  L5_2 = L3_2 - L2_2
  L4_2 = L4_2 / L5_2
  L5_2 = A0_2._world_item_left_pos
  L6_2 = A0_2._cur_world_idx
  L6_2 = L6_2 - 1
  L6_2 = L6_2 + L4_2
  L7_2 = A0_2._world_item_width
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_trans_world
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector2
  L8_2 = -L5_2
  L9_2 = 0
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.anchoredPosition = L7_2
end
L0_1._on_update_world_item_move = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._world_info_table
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.MostLeftPosX
  L3_2 = nil
  L4_2 = A0_2._world_info_table
  L5_2 = A1_2 + 1
  L4_2 = L4_2[L5_2]
  if L4_2 ~= nil then
    L4_2 = A0_2._world_info_table
    L5_2 = A1_2 + 1
    L4_2 = L4_2[L5_2]
    L3_2 = L4_2.MostLeftPosX
  else
    L3_2 = A0_2._graph_bound_right
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._get_cur_world_left_right_bound = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_graph_bound
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  A0_2._graph_bound_right = L4_2
  A0_2._graph_bound_left = L3_2
  A0_2._graph_bound_down = L2_2
  A0_2._graph_bound_up = L1_2
end
L0_1._get_graph_bound = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L2_1
  L3_2 = L3_2 * 2
  L4_2 = L2_1
  L4_2 = L4_2 * 2
  L5_2 = L2_1
  L5_2 = 0 - L5_2
  L6_2 = 1 - A1_2
  L6_2 = L3_2 * L6_2
  L5_2 = L5_2 + L6_2
  L6_2 = L2_1
  L6_2 = 0 - L6_2
  L7_2 = 1 - A2_2
  L7_2 = L4_2 * L7_2
  L6_2 = L6_2 + L7_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.rect_bg_trans
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.Vector2
  L9_2 = L5_2
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.anchoredPosition = L8_2
end
L0_1._calc_set_bg_pos = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L3_1
  L3_2 = L3_2 * 2
  L4_2 = L3_1
  L4_2 = L4_2 * 2
  L5_2 = L3_1
  L5_2 = 0 - L5_2
  L6_2 = 1 - A1_2
  L6_2 = L3_2 * L6_2
  L5_2 = L5_2 + L6_2
  L6_2 = L3_1
  L6_2 = 0 - L6_2
  L7_2 = 1 - A2_2
  L7_2 = L4_2 * L7_2
  L6_2 = L6_2 + L7_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.rect_bg_eff_trans
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.Vector2
  L9_2 = L5_2
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.anchoredPosition = L8_2
end
L0_1._calc_set_eff_bg_pos = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_actual_pos
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.x
  L2_2 = -L2_2
  L3_2 = A0_2._graph_bound_left
  L2_2 = L2_2 - L3_2
  L3_2 = L1_2.y
  L3_2 = -L3_2
  L4_2 = A0_2._graph_bound_down
  L3_2 = L3_2 - L4_2
  if not (0 <= L2_2) or not L2_2 then
    L2_2 = 0
  end
  if not (0 <= L3_2) or not L3_2 then
    L3_2 = 0
  end
  L4_2 = nil
  L5_2 = A0_2._graph_bound_right
  L6_2 = A0_2._graph_bound_left
  L5_2 = L5_2 - L6_2
  if L5_2 ~= 0 then
    L5_2 = A0_2._graph_bound_right
    L6_2 = A0_2._graph_bound_left
    L5_2 = L5_2 - L6_2
    L4_2 = L2_2 / L5_2
  else
    L4_2 = 0.5
  end
  L5_2 = nil
  L6_2 = A0_2._graph_bound_up
  L7_2 = A0_2._graph_bound_down
  L6_2 = L6_2 - L7_2
  if L6_2 ~= 0 then
    L6_2 = A0_2._graph_bound_up
    L7_2 = A0_2._graph_bound_down
    L6_2 = L6_2 - L7_2
    L5_2 = L3_2 / L6_2
  else
    L5_2 = 0.5
  end
  if 1 < L4_2 then
    L6_2 = 1
    L4_2 = L6_2 or L4_2
    if not L6_2 then
    end
  end
  if 1 < L5_2 then
    L6_2 = 1
    L5_2 = L6_2 or L5_2
    if not L6_2 then
    end
  end
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L0_1._get_graph_pos_factor = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    L2_2 = A0_2._cur_selected_world_info
    L2_2 = L2_2.id
    L3_2 = A0_2._cur_world_bg_info
    L3_2 = L3_2.id
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._cur_selected_world_info
      A0_2._cur_world_bg_info = L2_2
      L3_2 = A0_2
      L2_2 = A0_2._setup_world_bg
      L2_2(L3_2)
    end
  end
end
L0_1._on_drag_change = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_trans_world
  L1_2 = L1_2.anchoredPosition
  L2_2 = A0_2._last_world_pos
  L2_2 = L2_2 == nil
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect_world
    L3_2 = L3_2.Dragging
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_update_graph_move
      L3_2(L4_2)
    end
  end
  A0_2._last_world_pos = L1_2
end
L0_1._on_graph_tick = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._cur_selected_world_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_trans_world
  L1_2 = L1_2.anchoredPosition
  L1_2 = L1_2.x
  L1_2 = -L1_2
  L2_2 = A0_2._world_item_width
  L2_2 = L1_2 % L2_2
  L3_2 = A0_2._world_item_width
  L3_2 = L2_2 / L3_2
  L4_2 = math
  L4_2 = L4_2.ceil
  L5_2 = A0_2._world_item_width
  L5_2 = L1_2 / L5_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._world_info_table
  L5_2 = L5_2[L4_2]
  if L5_2 == nil then
    if L4_2 < 1 then
      L4_2 = 1
      L3_2 = 0
    else
      L5_2 = A0_2._world_info_table
      L5_2 = #L5_2
      if L4_2 > L5_2 then
        L5_2 = A0_2._world_info_table
        L4_2 = #L5_2
        L3_2 = 1
      end
    end
  end
  L5_2 = nil
  L6_2 = nil
  L8_2 = A0_2
  L7_2 = A0_2._get_cur_world_left_right_bound
  L9_2 = L4_2
  L7_2, L8_2 = L7_2(L8_2, L9_2)
  L6_2 = L8_2
  L5_2 = L7_2
  L7_2 = L6_2 - L5_2
  L7_2 = L7_2 * L3_2
  L7_2 = L5_2 + L7_2
  L8_2 = A0_2._mission_graph_panel
  L9_2 = L8_2
  L8_2 = L8_2.direct_set_graph_pos
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end
L0_1._on_update_graph_move = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._actual_world_bg_id
  L2_2 = A0_2._cur_world_bg_info
  L2_2 = L2_2.id
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._is_play_bg_fade_out
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_bg
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_bg
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._is_play_bg_fade_out = true
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = L1_2
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.GameCore
      L0_3 = L0_3.WorldDataConfigExcelTable
      L0_3 = L0_3.GetData
      L1_3 = A0_2._cur_world_bg_info
      L1_3 = L1_3.id
      L0_3 = L0_3(L1_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.async_load_sprite_to
      L3_3 = A0_2._binder
      L3_3 = L3_3.img_world_bg
      L4_3 = L0_3.ChronicleWorldBgPath
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.UIAnimationUtils
      L1_3 = L1_3.PlayFromBegin
      L2_3 = A0_2._binder
      L2_3 = L2_3.anim_bg
      L3_3 = L4_1
      L1_3(L2_3, L3_3)
      A0_2._is_play_bg_fade_out = false
      L1_3 = A0_2._cur_world_bg_info
      L1_3 = L1_3.id
      A0_2._actual_world_bg_id = L1_3
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._setup_world_bg = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.WorldID
  L3_2 = A0_2._actual_world_bg_id
  if L3_2 == L2_2 then
    return
  end
  L3_2 = 1
  L4_2 = A0_2._world_info_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._world_info_table
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.id
    if L2_2 == L7_2 then
      L7_2 = A0_2._world_info_table
      L7_2 = L7_2[L6_2]
      A0_2._cur_world_bg_info = L7_2
      L8_2 = A0_2
      L7_2 = A0_2._setup_world_bg
      L7_2(L8_2)
      return
    end
  end
end
L0_1._on_click_can_take_tip = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Mission.Chronicle.Sub.MissionChronicleSubDialog"
  L4_2 = A1_2
  L5_2 = A0_2._all_path_table
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._sub_dialog = L2_2
  L2_2 = A0_2._sub_dialog
  L2_2 = L2_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_on_open_callback
  L4_2 = A0_2._on_sub_open
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._sub_dialog
  L2_2 = L2_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_on_close_callback
  L4_2 = A0_2._on_sub_exit
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_click_graph_btn = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_slider_value
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._sub_dialog
  L2_2 = L2_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.setup_slider_value
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_sub_open = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mission_graph_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_slider_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_sub_exit = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L12_1
function L12_1(A0_2)
  local L1_2
end
L0_1._on_unload = L12_1
function L12_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L12_1
return L0_1
