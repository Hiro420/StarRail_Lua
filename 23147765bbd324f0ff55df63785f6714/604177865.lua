local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleGraphListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleGraphListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.Sub.MissionChronicleSubDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleSubDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionChronicleModule
L2_1 = "UI/Atlas/AtlasRoot/Common/Icon/BackIcon.png"
L3_1 = 40
L4_1 = 80
L5_1 = "ChronicleMissionDialog_FadeIn"
L6_1 = 8
L7_1 = 1.4
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MissionChronicleSubDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_OpenWithCut
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._main_path_data = A1_2
  A0_2._all_path_table = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UIManager
  L4_2 = L3_2
  L3_2 = L3_2.BlockFixedTime
  L5_2 = L7_1
  L6_2 = L7_1
  L7_2 = nil
  L8_2 = false
  L9_2 = "MissionChronicleSubDialog"
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._block_id = L3_2
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_in_control_input_switch = L8_1
function L8_1(A0_2)
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
L0_1.get_selected_object = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._on_open_callback = A1_2
  A0_2._on_open_callback_self = A2_2
end
L0_1.register_on_open_callback = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._on_close_callback = A1_2
  A0_2._on_close_callback_self = A2_2
end
L0_1.register_on_close_callback = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mission_graph_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_slider_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_slider_value = L8_1
function L8_1(A0_2)
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
L0_1._in_control_exit_click = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_back
  return L1_2
end
L0_1.get_btn_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_selected_path_data
  return L1_2(L2_2)
end
L0_1.get_cur_selected_path_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "MissionChronicleMainPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_click_close
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
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_graph_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._main_path_data
  L1_2 = L1_2.NodeNameParam
  A0_2.belong_path_chapter_id = L1_2
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2)
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
L0_1.get_mission_btn_by_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._mission_path_info_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_mission_path_info_table
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_chronicle_graph
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_graph_bound
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._report_chronicle_open
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._play_fade_in_anim
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_root
  L1_2.alpha = 0
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
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
  L6_2 = A0_2.belong_path_chapter_id
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._report_chronicle_open = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_open_callback
  if L1_2 then
    L1_2 = A0_2._on_open_callback_self
    if L1_2 then
      L1_2 = A0_2._on_open_callback
      L2_2 = A0_2._on_open_callback_self
      L1_2(L2_2)
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = L6_1
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
L0_1._play_fade_in_anim = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._main_path_data
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WorldDataConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._main_path_data
  L2_2 = L2_2.WorldID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_world_bg
  L5_2 = L1_2.ChronicleWorldSubBgPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_bg = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._all_path_table
  L2_2 = A0_2._main_path_data
  L2_2 = L2_2.ID
  L1_2 = L1_2[L2_2]
  A0_2._mission_path_info_table = L1_2
end
L0_1._generate_mission_path_info_table = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2
  L2_2 = A1_2.IsCanStepNextPath
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = 0
  L3_2 = A1_2.ConnectionList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2.ConnectionList
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.LineType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ChronicleLineType
    L8_2 = L8_2.Normal
    if L7_2 ~= L8_2 then
      L7_2 = L6_2.LineType
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.ChronicleLineType
      L8_2 = L8_2.Hide
      if L7_2 ~= L8_2 then
        goto lbl_33
      end
    end
    L8_2 = A0_2
    L7_2 = A0_2._generate_chronicle_info
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    ::lbl_33::
  end
end
L0_1._generate_next_chronicle = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.MissionChronicleUtils
  L2_2 = L2_2.check_is_path_data_available
  L3_2 = A1_2.PathData
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._mission_path_info_table
  L4_2 = A1_2.PathData
  L2_2(L3_2, L4_2)
end
L0_1._generate_chronicle_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_last_locate_path_id
  L1_2 = L1_2(L2_2)
  A0_2._first_locate_path_id = L1_2
  L1_2 = A0_2._first_locate_path_id
  if L1_2 == nil then
    L1_2 = A0_2._main_path_data
    L1_2 = L1_2.FirstSubPathID
    A0_2._first_locate_path_id = L1_2
  end
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._mission_path_info_table
  L4_2 = true
  L5_2 = A0_2._first_locate_path_id
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_chronicle_graph = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._mission_path_info_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._mission_path_info_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.NodeType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ChronicleNodeType
    L8_2 = L8_2.MissionMain
    if L7_2 == L8_2 then
      L7_2 = L6_2.MainMissionType
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.MainMissionType
      L8_2 = L8_2.Companion
      if L7_2 ~= L8_2 then
        L7_2 = L6_2.Status
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.ChronicleStatus
        L8_2 = L8_2.Processing
        if L7_2 == L8_2 then
          L7_2 = L6_2.ID
          return L7_2
        end
      end
    end
    L8_2 = L6_2
    L7_2 = L6_2.CheckIsCanTakeMission
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = L1_2[1]
    L3_2 = L2_2.PosX
    L4_2 = L2_2.PosX
    L3_2 = L3_2 * L4_2
    L4_2 = L2_2.PosY
    L5_2 = L2_2.PosY
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2 + L4_2
    L4_2 = 2
    L5_2 = #L1_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L1_2[L7_2]
      L9_2 = L8_2.PosX
      L10_2 = L8_2.PosX
      L9_2 = L9_2 * L10_2
      L10_2 = L8_2.PosY
      L11_2 = L8_2.PosY
      L10_2 = L10_2 * L11_2
      L9_2 = L9_2 + L10_2
      if L3_2 > L9_2 then
        L3_2 = L9_2
        L2_2 = L8_2
      end
    end
    L4_2 = L2_2.ID
    return L4_2
  end
  L2_2 = G
  L2_2 = L2_2.MissionChronicleUtils
  L2_2 = L2_2.get_last_locate_path_id
  L3_2 = A0_2._mission_path_info_table
  return L2_2(L3_2)
end
L0_1._get_last_locate_path_id = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
end
L0_1._on_graph_world_change = L8_1
function L8_1(A0_2)
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
L0_1._get_graph_bound = L8_1
function L8_1(A0_2, A1_2, A2_2)
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
  L7_2 = L7_2.rect_bg_trans
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.Vector2
  L9_2 = L5_2
  L10_2 = L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.anchoredPosition = L8_2
end
L0_1._calc_set_bg_pos = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L4_1
  L3_2 = L3_2 * 2
  L4_2 = L4_1
  L4_2 = L4_2 * 2
  L5_2 = L4_1
  L5_2 = 0 - L5_2
  L6_2 = 1 - A1_2
  L6_2 = L3_2 * L6_2
  L5_2 = L5_2 + L6_2
  L6_2 = L4_1
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
L0_1._calc_set_eff_bg_pos = L8_1
function L8_1(A0_2)
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
L0_1._get_graph_pos_factor = L8_1
function L8_1(A0_2, A1_2)
end
L0_1._on_click_graph_btn = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_slider_value
  L1_2 = L1_2(L2_2)
  A0_2._slider_value = L1_2
  L1_2 = A0_2._on_close_callback
  if L1_2 then
    L1_2 = A0_2._on_close_callback_self
    if L1_2 then
      L1_2 = A0_2._on_close_callback
      L2_2 = A0_2._on_close_callback_self
      L3_2 = A0_2._slider_value
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_unload = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L8_1
return L0_1
