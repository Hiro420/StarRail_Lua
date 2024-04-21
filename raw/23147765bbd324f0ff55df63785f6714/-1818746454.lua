local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Dice.ActivityClockParkGamePlayDiceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Dice.ActivityClockParkGamePlayDiceItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkGamePlaySlotItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/ClockPark/Widget/GamePlayPageChooseItem.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayDiceItemPanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayDiceItemPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_dice_item = L1_2
end
L0_1._on_bind = L1_1
return L0_1
