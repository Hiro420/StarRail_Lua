local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeBattleResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/FeverTime/FeverTimeChallengeResultDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/Root/BtnRetry"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_retry = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/Root/BtnQuit"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RecentlyFloorPanel/PopUpNewMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.new_record_hint_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RecentlyFloorPanel/CommonRankHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rank = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ScoreListPanel/Content/ChallengeTargetPanel/ChallengeTargetList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_challenge_target_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ScoreListPanel/Content/LeftTurnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_turn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ScoreListPanel/Content/LeftTurnPanel/LeftTurnInfo/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cur_turn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ScoreListPanel/Content/LeftTurnPanel/TitleInfo/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_history_turn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ScoreListPanel/Content/LeftTurnPanel/LeftTurnInfo/PopUpNewMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.new_turn_record_hint_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
