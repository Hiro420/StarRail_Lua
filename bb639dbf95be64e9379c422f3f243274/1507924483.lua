local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabGroupListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabGroupListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardQuestListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardQuestListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardTabHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardFinalQuestPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityReward.CommonActivityRewardFinalQuestPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonActivityRewardMainPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PageInfo/TitleType/ExtraContent/RemainTimeIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_remain_timer_page_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Root/PageInfo/TitleType/ExtraContent/RemainTimeIcon/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer_page_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/TopTabPanel"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.panel_tab_group_list_root = L1_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = A0_2.panel_tab_group_list_root
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._create_panel_with_root_trans
    L3_2 = G
    L3_2 = L3_2.CommonActivityRewardTabGroupListPanel
    L4_2 = G
    L4_2 = L4_2.CommonActivityRewardTabGroupListPanelBinder
    L5_2 = A0_2.panel_tab_group_list_root
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.panel_tab_group_list = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonActivityRewardTabListPanel
  L4_2 = G
  L4_2 = L4_2.CommonActivityRewardTabListPanelBinder
  L5_2 = "Root/PanelContent/QuestTabList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_tab_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonActivityRewardQuestListPanel
  L4_2 = G
  L4_2 = L4_2.CommonActivityRewardQuestListPanelBinder
  L5_2 = "Root/PanelContent/RightPanel/RewardPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_quest_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonActivityRewardTabHintPanel
  L4_2 = G
  L4_2 = L4_2.CommonActivityRewardTabHintPanelBinder
  L5_2 = "Root/PanelContent/RightPanel/LockTipPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_tab_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonActivityRewardFinalQuestPanel
  L4_2 = G
  L4_2 = L4_2.CommonActivityRewardFinalQuestPanelBinder
  L5_2 = "Root/PanelContent/BottomRewardPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_final_quest = L1_2
end
L0_1._on_bind = L1_1
return L0_1
