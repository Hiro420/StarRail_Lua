local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Reward.Quest.ActivityMonopolyQuestIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Reward.Quest.ActivityMonopolyFinalQuestIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyJackpotFinalDonatedItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyQuestIconPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyFinalQuestIconPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L5_2 = "Root/NumPanel/NumText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Text
  L6_2 = "Root/NumPanel/NumActive"
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  A0_2.txts_target_progress = L1_2
  A0_2.bar_progress = nil
  A0_2.node_not_started = nil
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/Locked"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/NumPanel/NumActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reached = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/NumPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_not_reached = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
