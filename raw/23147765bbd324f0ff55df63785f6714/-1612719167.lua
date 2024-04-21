local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.EntityTimeline.EntityTimelineMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EntityTimelineMainPage"
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
  L3_2 = L3_2.EntityTimelineMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
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
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.shield_pause
  L1_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimelinePageProxy
  L1_2 = L1_2.Instance
  A0_2._timeline_page_csharp = L1_2
  L1_2 = A0_2._timeline_page_csharp
  L2_2 = L1_2
  L1_2 = L1_2.InitDelegate
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_fov
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_fov
  L4_2 = L4_2.set_ratio
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.bind_csharp_proxy
  L3_2 = A0_2._timeline_page_csharp
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.recover_pause
  L1_2()
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.reopen_waypoint_billboard
  L1_2()
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
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
