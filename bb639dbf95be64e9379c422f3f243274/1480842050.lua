local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideTrainerLevelRewardDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/AetherDivide/AetherDivideAvatarLevelRewardDialog.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/RewardPanel/ItemList/InControlBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_item_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/RewardPanel/ProgressBtnPanel/BtnGet"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_receive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/BtnLeftArrowLeft/BtnLeftArrow"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_pre = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/BtnLeftArrowRight/BtnRightArrow"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/LevelTitle/TextLevelTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/Pregress/ProgressNum/CurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_exp_cur = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/Pregress/ProgressNum/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_exp_total = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/RewardPanel/ProgressBtnPanel/BtnGet/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_receive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/Pregress/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_exp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Contents/Root/PhasePanel/ContentRightMission/Root/MissionList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.quest_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/RewardPanel/ItemList/Reward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/LevelBadgePanel/LevelBadgeList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.badge_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/BtnLeftArrowLeft/BtnLeftArrow/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.incontrol_tip_pre = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/BtnLeftArrowRight/BtnRightArrow/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.incontrol_tip_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/BtnLeftArrowLeft/BtnLeftArrow/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/BtnLeftArrowRight/BtnRightArrow/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/PhasePanel/ContentRightMission/Root/MissionList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_quest_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/PhasePanel/ContentRightMission/Root/EmptyStatePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/RewardPanel/ProgressBtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_receive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/PhasePanel/Pregress"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/PhasePanel/ContentLeftLevelInfo/Root/RewardPanel/TextInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint = L1_2
end
L0_1._on_bind = L1_1
return L0_1
