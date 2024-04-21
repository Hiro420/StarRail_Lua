local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.DecalMode.DecalPuzzleSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.DecalMode.DecalPuzzleSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphMovePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphMovePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DecalPuzzlePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Camera/Widget/PhotoGraffitiPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DecalPuzzleSelectPanel
  L4_2 = G
  L4_2 = L4_2.DecalPuzzleSelectPanelBinder
  L5_2 = "BoxLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_decal_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxRight/RightDownArea/BtnUndo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_undo = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxRight/RightDownArea/BtnClear"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_clear = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BoxRight/ActionBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_cast_decal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PhotoGraphDecalContainer
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.photograph_decal_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatePanel/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_state_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatePanel/Block"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_state_disable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxRight/ActionBtn/CountTag/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress1/TaskName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
end
L0_1._on_bind = L1_1
return L0_1
