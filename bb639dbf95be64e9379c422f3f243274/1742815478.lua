local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueLayerSettlementMissionFinishDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 7
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/DicePassLvMissionToastDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.exit_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/BoxInfo/TxtDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.desc_txt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/BoxDesc/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.completed_mission_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDimensionGraphPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDimensionGraphPanelBinder
  L5_2 = "Contents/MainPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.graph_panel = L1_2
end
L0_1._on_bind = L2_1
return L0_1
