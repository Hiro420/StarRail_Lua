local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyTabPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.RaidEntranceTargetsPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeLevelPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Adventure/ChallengeLevelPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/NamePanel/NameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.current_level_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.challenge_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfoWithSub/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.challenge_sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Root/PageInfoWithSub/TitleType/ExtraContent/RemainTimeIcon/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.page_info_remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PageInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_page_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PageInfoWithSub"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_page_info_with_sub = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ChallengeHardLevelTabList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.difficulty_selection_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ChallengeHardLevelTabList/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.difficulty_btns_tabcontrol_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/TeamLevelWarning"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.hint_root = L1_2
  L1_2 = A0_2.hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg/PictureBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Bg/PictureBg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHardLevelInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.difficulty_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHardLevelInfoPanel/HardLevel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.difficulty_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHardLevelInfoPanel/StatusPanel/Completed"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.current_lv_completed_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHardLevelInfoPanel/StatusPanel/Locked"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.current_lv_locked_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/RecommendTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.recommand_team_lv_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/RecommendTip/TextPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.recommand_team_lv = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/BtnPanel/BtnChallenge"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.confirm_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/BtnPanel/BtnChallenge/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_confirm_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/TeamLevelWarning"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/LeftPanel/ChallengeStoryDescPanel/DescTextPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ip_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose/Btn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.exit_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/Contents/RightPanelBlurRoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.switch_tab_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.env_buff_desc_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.env_buff_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel/TitleRow/BtnDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.localized_resize_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonEnvBuffPanel
  L4_2 = G
  L4_2 = L4_2.CommonEnvBuffPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.env_buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeTargetPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.challenge_goal_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeTargetPanel/TargetList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.challenge_goals_load_meta = L1_2
  L1_2 = A0_2.challenge_goal_root
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeTeamLimitPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.team_limit_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeTeamLimitPanel/LimitList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.team_limit_load_meta_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonTeamLimitPanel
  L4_2 = G
  L4_2 = L4_2.CommonTeamLimitPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeTeamLimitPanel/LimitList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.team_limit_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeRewardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reward_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewRewardPanel
  L4_2 = G
  L4_2 = L4_2.ChallengePreviewRewardBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeRewardPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.reward_preview_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeMonsterPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.monster_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewMonsterPanel
  L4_2 = G
  L4_2 = L4_2.ChallengePreviewMonsterBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeMonsterPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.monster_preview_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeTargetPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.target_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RaidEntranceTargetsPanel
  L4_2 = G
  L4_2 = L4_2.RaidEntranceTargetsPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeTargetPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.targets_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeRewardPanel/TitleRow/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.clearance_reward_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/UnlockTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.unlock_node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/UnlockTip/TextPanel/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/UnlockTip/TextPanel/RemainTime"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.btns_node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_save_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_save_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/UnlockTip/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_unlock_hint = L1_2
end
L0_1._on_bind = L1_1
return L0_1