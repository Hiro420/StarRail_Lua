local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.Decal.PhotoGraphDecalMainPageBinder"
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
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoGraphDecalMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PhotoGraphDecalMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_photograph_decal_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_joy_stick
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
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
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_joystick
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_or_ps_or_mobile_gamepad_mode
  L4_2 = L4_2()
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._joy_stick_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_response_area_scale
  L4_2 = 0.65
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_joy_stick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._init_water_mark = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.FinishPhotoGraph
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
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
L0_1._init_photograph_decal_panel = L1_1
function L1_1(A0_2)
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
L0_1._init_joy_stick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L1_1
return L0_1
