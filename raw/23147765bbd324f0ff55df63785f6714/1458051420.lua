local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyActivityPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/NamePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/TitlePanel/BtnRuleTip/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/TitlePanel/BtnRuleTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_explain = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Content/TitlePanel/EventTime/Timer/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/TitlePanel/EventTime"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ChallengePanel/KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_zoom = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_go = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_go = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/BtnExtra"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_extra = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/BtnPanel/BtnExtra"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_extra = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Content/RewardPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_reward_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ConditionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_condition_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RewardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/ChallengePanel/BtnQuestReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quest = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/ChallengePanel/BtnAvatarReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/TitlePanel/StoryDescPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ChallengePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_activity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RewardPanel/DescTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_complete = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/WarningTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_warning_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ChallengePanel/BtnQuestReward/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_quest_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ChallengePanel/BtnAvatarReward/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/BtnGo/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_jump_btn_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/BtnExtra/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_extra_btn_reddot = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
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
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
