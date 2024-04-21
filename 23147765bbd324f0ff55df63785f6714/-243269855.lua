local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphMovePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphMovePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphFovPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphFovPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphShotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphShotPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoGraphPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
  L1_2 = A0_2.panel_move
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_pc_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "PhotoShotPanel/PhotoShotBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_shot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnUnhide"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_unhide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphMovePanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphMovePanelBinder
  L5_2 = "PhotoShotPanel/MovePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_move = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightDownArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fuc_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PhotoShotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_shot_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.HudIconItemPanel
  L4_2 = G
  L4_2 = L4_2.HudIconItemPanelBinder
  L5_2 = "RightDownArea/FirstPersonIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.func_panel_perspective = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.HudIconItemPanel
  L4_2 = G
  L4_2 = L4_2.HudIconItemPanelBinder
  L5_2 = "RightDownArea/HideIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.func_panel_hide_ui = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.HudIconItemPanel
  L4_2 = G
  L4_2 = L4_2.HudIconItemPanelBinder
  L5_2 = "RightDownArea/PerspectiveIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.func_panel_reset_camera = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphFovPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphFovPanelBinder
  L5_2 = "ExchangePanelHorizontal"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_fov = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphShotPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphShotPanelBinder
  L5_2 = "PhotoShotPanel/PhotoShotBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_shot = L1_2
end
L0_1._common_bind = L1_1
return L0_1
