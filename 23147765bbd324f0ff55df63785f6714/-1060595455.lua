local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._result = A1_2
end
L0_1.init_result = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._result
  if L1_2 then
    L1_2 = "UI/Maze/MiniGame/ShootingTarget/MiniGameShootingResultDialog.prefab"
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = "UI/Maze/MiniGame/ShootingTarget/MiniGameShootingResultFailDialog.prefab"
  ::lbl_8::
  return L1_2
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
  A0_2.root_anim_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RightPanelBlurRoot/RightPanel/CollectPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_collect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/CollectPanel/HintCounter/Num/Hint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/CollectPanel/HintCounter/Num/Current"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_shoot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/CollectPanel/AdditionScore/Num/Integral"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_addition_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/CollectPanel/TopKiller/Num/Integral"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_top_kill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/CollectPanel/CountDownScore/Num/Integral"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_count_down_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/GainScore/Info/Num/Num/RedDotNew"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score_new = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/GainScore/Info/Num/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/HistoryScore/Info/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_history_max_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RightPanelBlurRoot/RightPanel/EndlessCollectPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_end_less_collect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/EndlessCollectPanel/HintCounter/Num/Hint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_end_less_hint_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/EndlessCollectPanel/HintCounter/Num/Current"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_end_less_shoot_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/EndlessCollectPanel/LastingTime/RemainTime/Minute"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_end_less_minute = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/EndlessCollectPanel/LastingTime/RemainTime/Second"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_end_less_second = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/RightPanelBlurRoot/BtnPanel/BtnOut"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/RightPanelBlurRoot/BtnPanel/BtnReStart"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_restart = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/GainScore/RankPanel/Rank"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rank = L1_2
  L1_2 = {}
  A0_2.node_rank_list = L1_2
  L1_2 = A0_2.node_rank_list
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/GainScore/RankPanel/Rank/RankText_SS"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2 = A0_2.node_rank_list
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/GainScore/RankPanel/Rank/RankText_S"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L1_2 = A0_2.node_rank_list
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/GainScore/RankPanel/Rank/RankText_A"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L1_2 = A0_2.node_rank_list
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/GainScore/RankPanel/Rank/RankText_B"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[4] = L2_2
  L1_2 = A0_2.node_rank_list
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/RightPanelBlurRoot/RightPanel/ScorePanel/GainScore/RankPanel/Rank/RankText_C"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[5] = L2_2
end
L0_1._on_bind = L1_1
return L0_1
