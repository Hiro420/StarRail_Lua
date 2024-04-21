local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardMapPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardMapPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueBoardBgFramePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardFramePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardMapPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardMapPanelBinder
  L5_2 = "Root/BoxMap"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_board_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardBgFramePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardBgFramePanelBinder
  L5_2 = "Root/Frame"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_bg_frame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_res_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ResBarPanel
  L4_2 = G
  L4_2 = L4_2.ResBarPanelBinder
  L5_2 = "Root/TopBarArea/AreaPanel/ResBarArea/Root/ResBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_res_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopBarArea/AreaPanel/ResBarArea/Root/ResBar/ResChangeOnce"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_res_change = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/TopBarArea/AreaPanel/ResBarArea/Root/ResBar/ResChangeOnce/Root/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_res_change = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/TopBarArea/AreaPanel/ResBarArea/Root/ResBar/ResChangeOnce/Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_res_change_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/TopBarArea/AreaPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_res_refresh = L1_2
end
L0_1._on_bind = L1_1
return L0_1
