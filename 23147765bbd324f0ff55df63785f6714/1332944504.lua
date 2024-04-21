local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Bingo.ActivityMonopolyBingoRewardRankIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Bingo.ActivityMonopolyBingoRewardRankIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyBingoRewardRankPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.panel_reward_icon = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Icon%s"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = L5_2
    L9_2 = false
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 == nil then
      break
    end
    L8_2 = A0_2
    L7_2 = A0_2._create_panel_with_root_trans
    L9_2 = G
    L9_2 = L9_2.ActivityMonopolyBingoRewardRankIconPanel
    L10_2 = G
    L10_2 = L10_2.ActivityMonopolyBingoRewardRankIconPanelBinder
    L11_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.panel_reward_icon
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
