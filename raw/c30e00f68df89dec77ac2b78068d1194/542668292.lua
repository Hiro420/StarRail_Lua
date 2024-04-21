local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRankPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRankPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.Target.ActivityTelevisionTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.Target.ActivityTelevisionTargetPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionBuffIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionBuffIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionEnterPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/Television/TelevisionEntrancePage.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose/Btn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/BtnPanel/BtnChallenge"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_start = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/NamePanel/NameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/LeftPanel/BtnPanel/BtnReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/BtnPanel/BtnReward/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot_btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/Contents/LeftPanel/BtnPanel/BtnReward/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_cumulative_rewards_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityRankPanel
  L4_2 = G
  L4_2 = L4_2.ActivityRankPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScorePanel/ScorePanel/CommonRankHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.rank_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScorePanel/ScorePanel/TextPanel/TextPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScorePanel/ScorePanel/TextPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScorePanel/ScorePanel/EmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityTelevisionBuffIconPanel
  L4_2 = G
  L4_2 = L4_2.ActivityTelevisionBuffIconPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScorePanel/MatchThreeBuffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeBuffPanel/TitleRow/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_buff_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScorePanel/MatchThreeBuffPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewMonsterPanel
  L4_2 = G
  L4_2 = L4_2.PreviewMonsterPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeMonsterPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.monster_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeMonsterPanel/TitleRow/KeyMapInfo/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_monster_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityTelevisionTargetPanel
  L4_2 = G
  L4_2 = L4_2.ActivityTelevisionTargetPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeTargetPanel/TargetList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.target_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeBuffPanel/BuffList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level_buff = L1_2
end
L0_1._bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
end
L0_1._on_pc_bind = L1_1
return L0_1
