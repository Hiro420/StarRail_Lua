local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivitySelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivitySelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityMonsterPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityDetailPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/ChallengePanel/BoxingClubDetailPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Root/PageInfo/Title/EventTime/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/RightPanel/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_group_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/RightPanel/Environment/ScrollView/Viewport/Content/Text/TextDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_group_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/RightPanel/ChallengeGoals/CombatTarget/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_fight_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/RightPanel/DifficultTab/TipsPanel/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_difficulty_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/CommonBtnList/BtnRoleDetails"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_role_details = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/CommonBtnList/BtnChallenge"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_challenge = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AnimatorButton
  L5_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabLight"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AnimatorButton
  L5_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabMiddle"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AnimatorButton
  L5_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabRight"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[3] = L2_2
  A0_2.btn_levels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabRight/TextPanel/LockIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hard_lock_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabRight/TextPanel/IconBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hard_icon_bg = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabLight/TextPanel/IconBg/IconComplete"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabMiddle/TextPanel/IconBg/IconComplete"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabRight/TextPanel/IconBg/IconComplete"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.btn_complete_bgs = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabLight/TextPanel/IconBg/LevelText"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabMiddle/TextPanel/IconBg/LevelText"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabRight/TextPanel/IconBg/LevelText"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.btn_level_text = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabLight/TextPanel/IconBg/Dot"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabMiddle/TextPanel/IconBg/Dot"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/Content/RightPanel/DifficultTab/TabControl/CommonTabRight/TextPanel/IconBg/Dot"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.node_level_dot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Content/RightPanel/DifficultTab/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Content/RightPanel/DifficultTab/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L5_2 = "Root/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_top_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTipTop"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTipTop/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_reward_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTipTop/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reward_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/CommonBtnList/BtnChallenge/WarningTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_warning_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.FightActivitySelectPanel
  L4_2 = G
  L4_2 = L4_2.FightActivitySelectPanelBinder
  L5_2 = "Root/MemberList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_select_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.FightActivityMonsterPanel
  L4_2 = G
  L4_2 = L4_2.FightActivityMonsterPanelBinder
  L5_2 = "Root/Content/RightPanel/InfoPanel/MonsterPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_monster_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/Content/RightPanel/InfoPanel/Team/TeamPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.avatar_icon_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/RightPanel/ChallengeGoals/CombatTarget/TaskPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.task_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/Content/RightPanel/ChallengeGoals/CombatTarget/TaskPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_loadmeta_task_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/RightPanel/InfoPanel/MonsterPanel/Title/Info/Strength/80Percent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.monster_strength_80 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/RightPanel/InfoPanel/MonsterPanel/Title/Info/Strength/100Percent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.monster_strength_100 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/RightPanel/InfoPanel/MonsterPanel/Title/Info/Strength/EndlessMode"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.monster_strength_endless = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Bg/Mask/Light1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Bg/Mask/Light2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Bg/Mask/Light3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.light = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/Tips"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_botton_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/CommonBtnList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_common_btn_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/RightPanel/InfoPanel/MonsterPanel/DifficultyInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hard_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/Content/RightPanel/DifficultTab"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_animation = L1_2
end
L0_1._on_bind = L1_1
return L0_1