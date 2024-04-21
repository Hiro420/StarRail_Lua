local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidEntranceTargetsPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TargetList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "TargetList"
  L6_2 = "Ui.TreasureChallenge.Components.RaidEntranceTargetItemPanel"
  L7_2 = "Ui.TreasureChallenge.Components.RaidEntranceTargetItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.challenge_targets = L1_2
end
L0_1._on_bind = L1_1
return L0_1
