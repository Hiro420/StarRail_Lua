local L0_1, L1_1, L2_1
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
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionBattleResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/Television/TelevisionBattleResultDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.settlement_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ScorePanel/ScoreInfoPanel/NewMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.new_record_hint_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ScorePanel/WatchThreeBuffPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/ScorePanel/WatchThreeBuffPanel/BuffPanel/TelevisionMatchThreeBuffIcon/Frame/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_buff_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ScorePanel/WatchThreeBuffPanel/BuffPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_buff_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/ScorePanel/WatchThreeBuffPanel/BuffPanel/TelevisionMatchThreeBuffIcon/Frame/RateIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_rate_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityRankPanel
  L4_2 = G
  L4_2 = L4_2.ActivityRankPanelBinder
  L5_2 = "Contents/ScorePanel/RankInfo/CommonRankHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.rank_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ScorePanel/ScoreDetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_extra_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ScorePanel/ScoreDetailPanel/BaseScorePanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_base_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ScorePanel/ScoreDetailPanel/TurnInfoPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_left_turn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ScorePanel/ScoreDetailPanel/TurnInfoPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_extra_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ScorePanel/ScoreInfoPanel/TopScorePanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_score_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/ScorePanel/ChallengeTargetPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.target_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ScorePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_challenge = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnPanel/BtnLeft/ClickArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_click_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnPanel/BtnRight/ClickArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_click_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnQuit"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quit = L1_2
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
