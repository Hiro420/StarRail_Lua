local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnTabLeftPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnMissionPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/PlayerReturn/Widget/PlayerReturnMissionPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/ContentList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_item_root = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/BtnStage/TabControl/CommonTabMiddle1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/BtnStage/TabControl/CommonTabMiddle2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/BtnStage/TabControl/CommonTabMiddle3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/BtnStage/TabControl/CommonTabMiddle4"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[4] = L2_2
  A0_2.node_tab_phase_list = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/GradeInfo/RewardProgress/ProgressPanel/RewardList/Reward01"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/GradeInfo/RewardProgress/ProgressPanel/RewardList/Reward02"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/GradeInfo/RewardProgress/ProgressPanel/RewardList/Reward03"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/GradeInfo/RewardProgress/ProgressPanel/RewardList/Reward04"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[4] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/GradeInfo/RewardProgress/ProgressPanel/RewardList/Reward05"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[5] = L2_2
  A0_2.node_mission_reward_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/BtnStage/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_tab_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/BtnStage/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_tab_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Content/BtnStage/KeyMapInfo_Left"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tip_mono_tab_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Content/BtnStage/KeyMapInfo_Right/"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tip_mono_tab_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/GradeInfo/TodayTotalNum/Title/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total_points = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/Preunlocked"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unlock_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/Frame/ContentBg/Train"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bg_train = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Content/Preunlocked/LockStatusTip/TextPanel/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.time_unlock_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UILineRenderer
  L4_2 = "Content/GradeInfo/RewardProgress/CustomProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.line_renderer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIValueChangeAnimation
  L4_2 = "Content/GradeInfo/RewardProgress/CustomProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.value_anim = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_in_btn
  L3_2 = G
  L3_2 = L3_2.PlayerReturnTabLeftPanel
  L4_2 = G
  L4_2 = L4_2.PlayerReturnTabLeftPanelBinder
  L5_2 = A0_2.tab_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tab_btn_panel = L1_2
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_title
  L3_2 = "UIText_PlayerReturn_Title04"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PlayerReturnMissionReward"
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_icon
  L3_2 = "SpriteOutput/TabIcon/PlayerReturn/PlayerReturnMissionIcon.png"
  L1_2(L2_2, L3_2)
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
