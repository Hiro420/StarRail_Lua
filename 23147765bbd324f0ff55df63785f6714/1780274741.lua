local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ChessRogueShortCutWheelDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutMidWheelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutLittleWheelPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueShortCutWheelDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueShortCutWheelDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._short_cut_mid_wheel_panel
  L2_2 = L1_2
  L1_2 = L1_2.custom_on_right_stick_release
  L1_2(L2_2)
end
L0_1.on_right_stick_release = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_enter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ShortCutLittleWheelPanel
  L4_2 = G
  L4_2 = L4_2.ShortCutLittleWheelPanelBinder
  L5_2 = ShortCutWheelType
  L5_2 = L5_2.Left
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._short_cut_left_wheel_panel = L1_2
  L1_2 = A0_2._short_cut_left_wheel_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_left_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ShortCutMidWheelPanel
  L4_2 = G
  L4_2 = L4_2.ShortCutMidWheelPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._short_cut_mid_wheel_panel = L1_2
  L1_2 = A0_2._short_cut_mid_wheel_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mid_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ShortCutLittleWheelPanel
  L4_2 = G
  L4_2 = L4_2.ShortCutLittleWheelPanelBinder
  L5_2 = ShortCutWheelType
  L5_2 = L5_2.Right
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._short_cut_right_wheel_panel = L1_2
  L1_2 = A0_2._short_cut_right_wheel_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_right_panel
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetLuaCallback
  L4_2 = A0_2._update_entrance_tip
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_back_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2, L5_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_camera_zoom_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._short_cut_mid_wheel_panel
  L2_2 = L1_2
  L1_2 = L1_2.tick_custom
  L1_2(L2_2)
end
L0_1._update_entrance_tip = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_back_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
