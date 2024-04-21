local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.IdentifyMode.IdentifyMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = "PhotoGraph_Identify_Forbid_Shot"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "IdentifyMainPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.IdentifyMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 113
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphExit
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphIdentifyStateChanged
  L4_2 = L1_1._on_identify_state_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.close_waypoint_billboard
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._init_panels
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_water_mark
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_joy_stick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_override_view
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._setup_override_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_menu
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_photograph_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_joy_stick
  L1_2(L2_2)
end
L1_1._init_panels = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_joystick
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_or_mobile_gamepad_mode
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._joy_stick_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_response_area_scale
  L3_2 = 0.65
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_joy_stick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._identify_state = nil
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.FinishPhotoGraph
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.reopen_waypoint_billboard
  L1_2()
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.load_photograph_meta
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.load_photograph_meta
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphPanel
  L5_2 = G
  L5_2 = L5_2.PhotoGraphPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._photograph_panel = L2_2
  L2_2 = A0_2._photograph_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._photograph_panel
  L3_2 = L2_2
  L2_2 = L2_2.override_btn_shot_click_callback
  L4_2 = A0_2._on_btn_shot
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._init_photograph_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._identify_state
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.PhotoGraphIdentifyState
  L2_2 = L2_2.IdentifyPending
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._has_manual_aim_in_range
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = L0_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.identify_panel
      L2_2 = L1_2
      L1_2 = L1_2.trigger_hint_error_anim
      L1_2(L2_2)
      return
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.PhotoGraphSys
  L4_2 = L2_2
  L3_2 = L2_2.TakePhoto
  L5_2 = A0_2._binder
  L5_2 = L5_2.identify_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_manual_aim_entity_in_range
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_btn_shot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.JoyStickPanel
  L4_2 = G
  L4_2 = L4_2.JoyStickPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._joy_stick_panel = L1_2
  L1_2 = A0_2._joy_stick_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_joystick
  L1_2(L2_2, L3_2)
end
L1_1._init_joy_stick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L1_1._init_water_mark = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_exit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.IdentifyState
  A0_2._identify_state = L2_2
  L2_2 = A0_2._identify_state
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PhotoGraphIdentifyState
  L3_2 = L3_2.IdentifyTargetAppear
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._photograph_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_shot_btn_show_state
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._has_manual_aim_in_range
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._photograph_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_shot_btn_show_state
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L1_1._on_identify_state_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.identify_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_manual_aim_entity_in_range
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  return L2_2
end
L1_1._has_manual_aim_in_range = L2_1
return L1_1
