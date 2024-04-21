local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateTitlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.QuestRogueNousDlcPanelIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueNousActivityPanelBinder"
L3_1 = G
L3_1 = L3_1.TabItemBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.auto_bind
  L4_2 = L0_1
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
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.CommonActivityStateTitlePanel
  L5_2 = G
  L5_2 = L5_2.CommonActivityStateTitlePanelBinder
  L6_2 = A0_2.panel_title_root
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_title = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.CommonActivityStateRewardPanel
  L5_2 = G
  L5_2 = L5_2.CommonActivityStateRewardPanelBinder
  L6_2 = A0_2.panel_reward_root
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_reward = L2_2
end
L1_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_in_btn
  L3_2 = G
  L3_2 = L3_2.ActivityTabLeftPanel
  L4_2 = G
  L4_2 = L4_2.ActivityTabLeftPanelBinder
  L5_2 = A0_2.tab_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tab_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_btn_reddot = L1_2
end
L1_1._on_tab_btn_bind = L2_1
return L1_1
