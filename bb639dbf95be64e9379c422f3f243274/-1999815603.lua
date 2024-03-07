local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.Decal.PhotoGraphDecalPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.Decal.PhotoGraphDecalPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = 108
L1_1 = "8004"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PhotoGraphMainPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PhotoGraphMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._is_showing_options = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.PhotoGraphUIMode
  L1_2 = L1_2.CommonShot
  A0_2._init_ui_mode = L1_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhotoGraphPageBeforeEnter
  L1_2(L2_2)
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._init_ui_mode = A1_2
end
L2_1.init_extra_mode = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_menu
  L4_2 = A0_2._on_btn_menu
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
  L3_2 = L3_2.PhotoGraphFuncSwitchUIVisibility
  L4_2 = A0_2._on_switch_ui_visibility
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphFuncSwitchPerspective
  L4_2 = A0_2._on_perspective_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.close_waypoint_billboard
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._init_photograph_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_joy_stick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_extra_mode
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.shield_pause
  L1_2()
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.init_photograph_settings
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._setup_joy_stick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_water_mark
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_extra_mode
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_global_set_voWorld_bus_unmute"
  L1_2(L2_2, L3_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_global_set_voWorld_bus_unmute"
  L1_2(L2_2, L3_2)
end
L2_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_joy_stick_open_status
  L1_2(L2_2)
  L1_2 = A0_2._joy_stick_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_response_area_scale
  L3_2 = 0.65
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_joy_stick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._joy_stick_panel
  if L2_2 then
    L2_2 = A0_2._joy_stick_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_pc_or_ps_or_mobile_gamepad_mode
    L4_2 = L4_2()
    L4_2 = not L4_2 and L4_2
    L2_2(L3_2, L4_2)
  end
end
L2_1.enable_joy_stick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.get_cur_photograph_mode
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PhotoGraphModeType
  L2_2 = L2_2.CommonShotFirstPerson
  L1_2 = L1_2 == L2_2
  L3_2 = A0_2
  L2_2 = A0_2.enable_joy_stick
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._refresh_joy_stick_open_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.recover_pause
  L1_2()
  A0_2._init_ui_mode = nil
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
L2_1._on_dispose = L3_1
function L3_1(A0_2)
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
end
L2_1._init_photograph_panel = L3_1
function L3_1(A0_2)
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
L2_1._init_joy_stick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L2_1._init_water_mark = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_hiding_ui
  if L1_2 then
    L1_2 = A0_2._photograph_panel
    L2_2 = L1_2
    L1_2 = L1_2.unhide
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._is_showing_options = true
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_tip_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._photograph_panel
  L2_2 = L1_2
  L1_2 = L1_2.save_fov_ratio
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PhotoGraph.CameraOptions.CameraOptionsDialog"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_exit_option_handler
  L4_2 = A0_2._on_exit_option_dialog
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_exit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.load_photograph_meta
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._photograph_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_shot_handler_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._short_cut_hint_panel
  if L2_2 then
    L2_2 = A0_2._short_cut_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L2_1._on_btn_menu = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_exit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_tip_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.load_photograph_meta
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._photograph_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_shot_handler_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._photograph_panel
  L2_2 = L1_2
  L1_2 = L1_2.recover_fov_ratio
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._apply_settings
  L1_2(L2_2)
  A0_2._is_showing_options = false
  L1_2 = A0_2._short_cut_hint_panel
  if L1_2 then
    L1_2 = A0_2._short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L2_1._on_exit_option_dialog = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L2_1._apply_settings = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_exit = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    A0_2._is_hiding_ui = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.camera_lens_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_exit
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._is_showing_options
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_menu
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_joy_stick_open_status
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mode_tab
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._is_show_mode_tab
    L2_2(L3_2, L4_2)
  else
    A0_2._is_hiding_ui = true
    L2_2 = A0_2._binder
    L2_2 = L2_2.camera_lens_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_exit
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_menu
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.enable_joy_stick
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mode_tab
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L2_1._on_switch_ui_visibility = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.PhotoGraphUtils
    L0_3 = L0_3.init_photograph_settings
    L0_3()
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_joy_stick_open_status
    L0_3(L1_3)
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.PhotoGraphEnableFunc
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._photograph_panel
    L1_3 = L0_3
    L0_3 = L0_3.setup_fov
    L0_3(L1_3)
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PhotoGraphEnableFunc
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.camera_lens_panel
  L4_2 = L3_2
  L3_2 = L3_2.switch_perspective
  L5_2 = A1_2
  L6_2 = L2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L2_1._on_perspective_change = L3_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.SilverWolfModule
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tab_extra_mode
  L4_2 = A0_2._switch_to_extra_mode
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tab_shot
  L4_2 = A0_2._switch_to_shot_mode
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_tab_extra_mode
  L4_2 = A0_2._switch_to_extra_mode
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_tab_shot
  L4_2 = A0_2._switch_to_shot_mode
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_show_mode_tab = false
  A0_2._is_in_extra_mode = false
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.MainMissionDataPromised
  L3_2 = L4_1.DecalFuncUnlockMissionList
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_decal_mode_state
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1._init_extra_mode = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._init_ui_mode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.PhotoGraphUIMode
  L2_2 = L2_2.CommonShot
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._switch_to_extra_mode
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mode_tab
  L1_2(L2_2)
end
L2_1._setup_extra_mode = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_in_extra_mode
  if L2_2 then
    return
  end
  A0_2._is_in_extra_mode = true
  L2_2 = A0_2._photograph_decal_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._init_photograph_decal_panel
    L2_2(L3_2)
  else
    L2_2 = A0_2._photograph_decal_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_decal_preview
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._photograph_decal_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._photograph_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_menu
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._switch_perspective
    L4_2 = true
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_switch_mode_after_perspective_change
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_switch_mode_after_perspective_change
    L2_2(L3_2)
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
end
L2_1._switch_to_extra_mode = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_in_extra_mode
  if not L2_2 then
    return
  end
  A0_2._is_in_extra_mode = false
  L2_2 = A0_2._photograph_decal_panel
  if L2_2 then
    L2_2 = A0_2._photograph_decal_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_decal_preview
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._photograph_decal_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._photograph_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_menu
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._switch_perspective
    L4_2 = false
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_switch_mode_after_perspective_change
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_switch_mode_after_perspective_change
    L2_2(L3_2)
  end
end
L2_1._switch_to_shot_mode = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.init_photograph_settings
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mode_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_joy_stick_open_status
  L1_2(L2_2)
end
L2_1._on_switch_mode_after_perspective_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.load_photograph_decal_meta
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.load_photograph_decal_meta
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphDecalPanel
  L5_2 = G
  L5_2 = L5_2.PhotoGraphDecalPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._photograph_decal_panel = L2_2
  L2_2 = A0_2._photograph_decal_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._photograph_decal_panel
  L3_2 = L2_2
  L2_2 = L2_2.init_decal
  L2_2(L3_2)
end
L2_1._init_photograph_decal_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tab_shot
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_in_extra_mode
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tab_extra_mode
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_in_extra_mode
  L1_2(L2_2, L3_2)
end
L2_1._refresh_mode_tab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.SilverWolfModule
  L1_2 = L1_2.IsDecalFuncUnlock
  A0_2._is_show_mode_tab = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mode_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_mode_tab
  L1_2(L2_2, L3_2)
end
L2_1._refresh_decal_mode_state = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.camera_lens_panel
  L4_2 = L3_2
  L3_2 = L3_2.switch_perspective
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._photograph_panel
  L4_2 = L3_2
  L3_2 = L3_2.refresh_perspective_func
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L2_1._switch_perspective = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_extra_mode
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_shot
  L2_2.IsShowTip = A1_2
end
L2_1._setup_in_control_tip_enable = L5_1
return L2_1
