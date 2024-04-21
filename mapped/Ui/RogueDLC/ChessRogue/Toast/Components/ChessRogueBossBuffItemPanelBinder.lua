local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.BossBattleBuffInfoItemIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChessRogueBossBuffItemPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ChessRogueUnderLinePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueUnderLinePanelBinder
  L5_2 = A0_2.underline_panel_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.underline_panel = L1_2
end
L1_1._on_bind = L2_1
return L1_1
