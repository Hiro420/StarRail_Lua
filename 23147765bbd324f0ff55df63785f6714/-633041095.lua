local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.DecalMode.DecalPuzzleMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.DecalMode.DecalPuzzlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.DecalMode.DecalPuzzlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.SilverWolfModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "DecalPuzzleMainPage"
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
  L3_2 = L3_2.DecalPuzzleMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._decal_ids_arr = A1_2
  A0_2._title = A2_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 108
  L1_2(L2_2, L3_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DecalPuzzleCloseUI
  L4_2 = A0_2._on_decal_puzzle_close_ui
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnDecalPuzzlePhotoOpen
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.init_photograph_settings
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._setup_decals
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_joy_stick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_water_mark
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._photograph_decal_panel
  L2_2 = L1_2
  L1_2 = L1_2.init_decal
  L3_2 = A0_2._decal_ids_arr
  L1_2(L2_2, L3_2)
end
L1_1._setup_decals = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._photograph_decal_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_title
  L3_2 = A0_2._title
  L1_2(L2_2, L3_2)
end
L1_1._setup_title = L2_1
function L2_1(A0_2)
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
L1_1._setup_joy_stick = L2_1
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
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnDecalPuzzlePhotoOpen
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.FinishPhotoGraph
  L1_2(L2_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.load_decal_meta
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.load_decal_meta
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.DecalPuzzlePanel
  L5_2 = G
  L5_2 = L5_2.DecalPuzzlePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._photograph_decal_panel = L2_2
  L2_2 = A0_2._photograph_decal_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._init_photograph_decal_panel = L2_1
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
  local L2_2, L3_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L1_1._on_decal_puzzle_close_ui = L2_1
return L1_1
