local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameBetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Gacha.ActivityMonopolyMiniGameBetPanelGachaBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameResultPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Components.ActivityMonopolyMiniGameResultPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Bingo.ActivityMonopolyBingoRewardRankPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Gacha.ActivityMonopolyGachaARewardRankPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyBuffOverviewBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyBuffOverviewBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMiniGameGachaAPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.MonopolyMiniGameGachaAPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Monopoly/MonopolyMiniGameGachaAPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameBetPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyMiniGameBetPanelGachaBinder
  L5_2 = A0_2.node_bet
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_bet = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMiniGameResultPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyMiniGameResultPanelBinder
  L5_2 = A0_2.node_result
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_result = L1_2
  L1_2 = {}
  A0_2.panel_bingo_reward_rank = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Root/PanelContent/BtnRuleTip/Root/TipList1/Diagram%s"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyBingoRewardRankPanel
    L9_2 = G
    L9_2 = L9_2.ActivityMonopolyGachaARewardRankPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.panel_bingo_reward_rank
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyBuffOverviewBtnPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyBuffOverviewBtnPanelBinder
  L5_2 = A0_2.node_buff
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_buff_overview = L1_2
end
L0_1._on_bind = L2_1
return L0_1
