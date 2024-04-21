local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Dice.ActivityClockParkGamePlayDiceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Dice.ActivityClockParkGamePlayDiceItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkGamePlayDiceChoosePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.ActivityClockParkGamePlayDiceChoosePanelBinderIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.auto_bind
  L4_2 = L1_1
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "[%s] auto bind fail"
    L4_2 = A0_2.__name
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = {}
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayDiceItemPanel
  L6_2 = G
  L6_2 = L6_2.ActivityClockParkGamePlayDiceItemPanelBinder
  L7_2 = A0_2.node_dice_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2[1] = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayDiceItemPanel
  L6_2 = G
  L6_2 = L6_2.ActivityClockParkGamePlayDiceItemPanelBinder
  L7_2 = A0_2.node_dice_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2[2] = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayDiceItemPanel
  L6_2 = G
  L6_2 = L6_2.ActivityClockParkGamePlayDiceItemPanelBinder
  L7_2 = A0_2.node_dice_3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2[3] = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayDiceItemPanel
  L6_2 = G
  L6_2 = L6_2.ActivityClockParkGamePlayDiceItemPanelBinder
  L7_2 = A0_2.node_dice_4
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2[4] = L3_2
  A0_2.panel_dice_list = L2_2
end
L0_1._on_bind = L2_1
return L0_1
