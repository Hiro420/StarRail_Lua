local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "UIText_ClockPark_EndlessMode_Round"
L2_1 = 2
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityClockParkGamePlayEndlessScorePanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.get_endless_rank_config
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L2_1
    L2_2 = L1_2[L2_2]
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = 0
  ::lbl_12::
  A0_2._max_rank_score = L2_2
  L2_2 = G
  L2_2 = L2_2.ActivityClockParkUtils
  L2_2 = L2_2.get_rank_index
  L3_2 = L0_1.ClockParkInstance
  L3_2 = L3_2.ScriptInfo
  L3_2 = L3_2.EndlessScore
  L2_2 = L2_2(L3_2)
  A0_2._rank_index = L2_2
  A0_2._goal_finish = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_score_controller
  L3_2 = L2_2
  L2_2 = L2_2.Init
  L4_2 = 0
  L2_2(L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.IsInEndless
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_round
    L4_2 = L0_1.ClockParkInstance
    L4_2 = L4_2.ScriptInfo
    L4_2 = L4_2.ChapterInfo
    L4_2 = L4_2.RoundIndex
    L4_2 = L4_2 - 1
    L2_2(L3_2, L4_2)
    L2_2 = L0_1.ClockParkInstance
    L2_2 = L2_2.ScriptInfo
    L2_2 = L2_2.EndlessScore
    L4_2 = A0_2
    L3_2 = A0_2._setup_score
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_goal
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._last_score
  if L2_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_score_controller
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A1_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_score_controller
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2._last_score
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  A0_2._last_score = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_rank
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkUtils
  L4_2 = L4_2.get_rank
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.ActivityClockParkUtils
  L2_2 = L2_2.get_rank_index
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._rank_index
  if L2_2 > L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.animation
    L5_2 = "CommonRankHint_Upgrade"
    L3_2(L4_2, L5_2)
  end
  A0_2._rank_index = L2_2
end
L3_1._setup_score = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._setup_round = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_goal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ClockPark_EndlessMode_Target_Tips"
  L5_2 = A0_2._max_rank_score
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._max_rank_score
  L2_2 = A1_2 >= L2_2
  if L2_2 then
    L3_2 = A0_2._goal_finish
    if not L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator_goal
      L4_2 = L3_2
      L3_2 = L3_2.ResetTrigger
      L5_2 = "Pending"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator_goal
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = "SuccessHint"
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator_goal
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "SuccessHint"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator_goal
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Pending"
    L3_2(L4_2, L5_2)
  end
  A0_2._goal_finish = L2_2
end
L3_1._setup_goal = L4_1
return L3_1
