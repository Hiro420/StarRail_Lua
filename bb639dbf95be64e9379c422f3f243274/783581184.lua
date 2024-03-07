local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.Decal.PhotoGraphDecalSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.Decal.PhotoGraphDecalSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphMovePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphMovePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoGraphDecalPanelBinder"
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
  L3_2 = L3_2.PhotoGraphDecalSelectPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphDecalSelectPanelBinder
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
  L4_2 = "BoxRight/GraffitiPanel/GraffitiBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_cast_decal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphMovePanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphMovePanelBinder
  L5_2 = "BoxRight/GraffitiPanel/MovePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_move = L1_2
  L1_2 = A0_2.panel_move
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
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
  L4_2 = "BoxRight/BoxCollected/BoxTotal/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cur_decal_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BoxRight/BoxCollected/BoxTotal/TxtTotal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_decal_num = L1_2
end
L0_1._on_bind = L1_1
return L0_1
