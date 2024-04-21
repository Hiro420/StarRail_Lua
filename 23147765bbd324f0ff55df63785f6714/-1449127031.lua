local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousSubStoryPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousSubStoryPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryLinePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryLinePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.RogueNousNewMissionDialogIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueNousNewSubStoryPageBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/RogueNous/RogueNousNewMissionDialog.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
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
  L3_2 = L3_2.RogueNousSubStoryPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousSubStoryPanelBinder
  L5_2 = A0_2.prev_story_item_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.prev_item_panel = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.RogueNousSubStoryPanel
  L5_2 = G
  L5_2 = L5_2.RogueNousSubStoryPanelBinder
  L6_2 = A0_2.next_story_item_root_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.RogueNousSubStoryPanel
  L6_2 = G
  L6_2 = L6_2.RogueNousSubStoryPanelBinder
  L7_2 = A0_2.next_story_item_root_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_panel_with_root_trans
  L6_2 = G
  L6_2 = L6_2.RogueNousSubStoryPanel
  L7_2 = G
  L7_2 = L7_2.RogueNousSubStoryPanelBinder
  L8_2 = A0_2.next_story_item_root_3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._create_panel_with_root_trans
  L7_2 = G
  L7_2 = L7_2.RogueNousSubStoryPanel
  L8_2 = G
  L8_2 = L8_2.RogueNousSubStoryPanelBinder
  L9_2 = A0_2.next_story_item_root_4
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  A0_2.next_item_panels = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.RogueNousStoryLinePanel
  L5_2 = G
  L5_2 = L5_2.RogueNousStoryLinePanelBinder
  L6_2 = A0_2.line_root_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.RogueNousStoryLinePanel
  L6_2 = G
  L6_2 = L6_2.RogueNousStoryLinePanelBinder
  L7_2 = A0_2.line_root_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_panel_with_root_trans
  L6_2 = G
  L6_2 = L6_2.RogueNousStoryLinePanel
  L7_2 = G
  L7_2 = L7_2.RogueNousStoryLinePanelBinder
  L8_2 = A0_2.line_root_3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._create_panel_with_root_trans
  L7_2 = G
  L7_2 = L7_2.RogueNousStoryLinePanel
  L8_2 = G
  L8_2 = L8_2.RogueNousStoryLinePanelBinder
  L9_2 = A0_2.line_root_4
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  A0_2.line_panels = L1_2
end
L1_1._on_bind = L2_1
return L1_1
