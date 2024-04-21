local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameRewardRankPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameRewardRankPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMiniGameRuleTipPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.panels_item = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "Root/TipList1/Diagram"
    L6_2 = tostring
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyMiniGameRewardRankPanel
    L9_2 = G
    L9_2 = L9_2.ActivityMonopolyMiniGameRewardRankPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.panels_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_rule_tip = L1_2
end
L0_1._on_bind = L1_1
return L0_1
