local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumActivityPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Widget/QuestMuseumPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
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
  L3_2 = "Content/BtnPanel/BtnGo/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.btn_go_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/BtnPanel/BtnGo/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_go = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_go = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Content/RewardPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_reward_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Content/ConditionPanel/ConditionList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_mission_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ConditionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unlock_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/WarningTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RewardBtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/BtnPanel/BtnPhaseReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_phase_reward_resident = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/BtnPhaseReward/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot_btn_phase_resident = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/RewardBtnPanel/BtnPhaseReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_phase_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/RewardBtnPanel/BtnLimitedReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_limit_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RewardBtnPanel/BtnPhaseReward/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot_btn_phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RewardBtnPanel/BtnLimitedReward/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot_btn_limit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RewardBtnPanel/KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_btn_panel_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RewardBtnPanel/BtnLimitedReward"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_limit_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/TitlePanel/EventTime"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.remain_timer_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RewardPanel/DescTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.all_finish_hint_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EffectContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_effect = L1_2
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
