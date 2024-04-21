local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ActivityClockParkStoryLineItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkStoryLinePanelNewPlayerBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2.chapter_panels = L1_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkStoryLineItemPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkStoryLineItemPanelBinder
  L6_2 = "StorylineDialogItemStart"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2 = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.chapter_panels
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkStoryLineItemPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkStoryLineItemPanelBinder
  L6_2 = "StorylineDialogItemFork"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2 = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.chapter_panels
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkStoryLineItemPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkStoryLineItemPanelBinder
  L6_2 = "StorylineDialogItemFirstRoadEnd"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2 = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.chapter_panels
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_bind = L1_1
return L0_1
