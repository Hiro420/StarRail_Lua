local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryRewardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousMainStoryPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.RogueNousMissionBigItemIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogError
    L2_2 = G
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "RogueNousMainStoryPanelBinder: auto_bind Failed."
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueNousStoryRewardPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousStoryRewardPanelBinder
  L5_2 = A0_2.reward_panel_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.reward_panel = L1_2
end
L0_1._on_bind = L2_1
return L0_1
