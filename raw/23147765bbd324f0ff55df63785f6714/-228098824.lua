local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Attribute.ActivityClockParkGamePlayAttributePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Attribute.ActivityClockParkGamePlayAttributePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Attribute.ActivityClockParkGamePlayAttributeMergeProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Attribute.ActivityClockParkGamePlayAttributeMergeProgressPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Dice.ActivityClockParkGamePlayDiceChoosePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Dice.ActivityClockParkGamePlayDiceChoosePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Card.ActivityClockParkGamePlayCardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Card.ActivityClockParkGamePlayCardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Chapter.ActivityClockParkGamePlayChapterProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Chapter.ActivityClockParkGamePlayChapterProgressPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Endless.ActivityClockParkGamePlayEndlessScorePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Endless.ActivityClockParkGamePlayEndlessScorePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.BranchSelect.ActivityClockParkGamePlayBranchSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.BranchSelect.ActivityClockParkGamePlayBranchSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.ActivityClockParkGamePlayMainPageBinderIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayMainPageBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/ClockPark/ClockParkGamePlayPage.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L4_2 = A0_2.root
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayAttributePanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayAttributePanelBinder
  L5_2 = A0_2.node_panel_attribute
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_attribute = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayCardPanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCardPanelBinder
  L5_2 = A0_2.node_panel_card
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_card = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayChapterProgressPanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayChapterProgressPanelBinder
  L5_2 = A0_2.node_panel_chapter_progress
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_chapter_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayAttributeMergeProgressPanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayAttributeMergeProgressPanelBinder
  L5_2 = A0_2.node_panel_merge_attribute_progress
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_merge_attribute_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayDiceChoosePanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayDiceChoosePanelBinder
  L5_2 = A0_2.node_panel_dice_choose
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_dice_choose = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayEndlessScorePanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayEndlessScorePanelBinder
  L5_2 = A0_2.node_panel_endless_info
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_endless = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayBranchSelectPanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayBranchSelectPanelBinder
  L5_2 = "Root/PanelContent/CenterContent/ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_branch_select = L1_2
end
L1_1._on_bind = L2_1
return L1_1
