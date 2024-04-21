local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Gacha.ActivityMonopolyGachaARewardRankIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Gacha.ActivityMonopolyGachaARewardRankIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyGachaARewardRankPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2.panel_reward_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyGachaARewardRankIconPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyGachaARewardRankIconPanelBinder
  L5_2 = "Icon1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.panel_reward_icon
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L5_2 = "TextPanel/NumText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_num = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animation
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.anim_root = L2_2
end
L0_1._on_bind = L1_1
return L0_1
