local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Challenge.Components.DrinkMakerChallengDetailPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerChallengeDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.DrinkMakerChallengeDialogIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/DrinkMaker/DrinkMakerChallengeDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.DrinkMakerChallengDetailPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerChallengDetailPanelBinder
  L5_2 = A0_2.node_detail
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.detail_panel = L1_2
end
L0_1._on_bind = L2_1
return L0_1
