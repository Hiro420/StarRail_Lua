local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAutoCloseToastPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "CommonChallengeTargetInfoPanel_FadeIn"
L2_1 = "CommonChallengeTargetInfoPanel_FadeOut"
L3_1 = "CommonChallengeTargetInfoPanel_Finish"
L4_1 = {}
L4_1.FadeIn = 1
L4_1.Remain = 2
L4_1.FadeOut = 3
L4_1.Exit = 4
function L5_1(A0_2)
  local L1_2
  L1_2 = L4_1.FadeIn
  A0_2._state = L1_2
  L1_2 = L1_1
  A0_2._fade_in_anim = L1_2
  L1_2 = L2_1
  A0_2._fade_out_anim = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = L3_1
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = L2_1
  ::lbl_7::
  A0_2._fade_out_anim = L2_2
end
L0_1.set_fade_out_with_finish = L5_1
function L5_1(A0_2, A1_2)
  A0_2._duration = A1_2
end
L0_1.set_remain_duration = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = A0_2._fade_in_anim
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._fadein_duration = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = A0_2._fade_out_anim
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._fadeout_duration = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.start_fade_in_status
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Sample
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1.setup_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L4_1.Remain
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.start_remain_status
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._state
  L2_2 = L4_1.FadeOut
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.start_fade_in_status
    L1_2(L2_2)
    return
  end
end
L0_1.reset_status = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._exit_callback = A1_2
  A0_2._exit_callback_listner = A2_2
end
L0_1.set_exit_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._fadein_finish_callback = A1_2
  A0_2._fadein_finish_callback_self = A2_2
end
L0_1.register_fadein_finish_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1.FadeIn
  A0_2._state = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._begin_time = L1_2
end
L0_1.start_fade_in_status = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = L4_1.Remain
  A0_2._state = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._begin_time = L1_2
end
L0_1.start_remain_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1.FadeOut
  A0_2._state = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._fade_out_anim
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._begin_time = L1_2
end
L0_1.start_fade_out_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._exit_callback
  L3_2 = A0_2._exit_callback_listner
  L1_2(L2_2, L3_2)
  L1_2 = L4_1.Exit
  A0_2._state = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._begin_time = L1_2
end
L0_1.start_exit_status = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.BattleUIUtils
  L2_2 = L2_2.is_battle_pause
  L2_2 = L2_2()
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2._state
  L4_2 = L4_1.FadeIn
  if L3_2 == L4_2 then
    L3_2 = A0_2._begin_time
    L3_2 = L2_2 - L3_2
    L4_2 = A0_2._fadein_duration
    if L3_2 > L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.start_remain_status
      L3_2(L4_2)
      L3_2 = A0_2._fadein_finish_callback
      if L3_2 then
        L3_2 = G
        L3_2 = L3_2.Utils
        L3_2 = L3_2.invoke_callback
        L4_2 = A0_2._fadein_finish_callback
        L5_2 = A0_2._fadein_finish_callback_self
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = A0_2._state
  L4_2 = L4_1.Remain
  if L3_2 == L4_2 then
    L3_2 = A0_2._begin_time
    L3_2 = L2_2 - L3_2
    L4_2 = A0_2._duration
    if L3_2 > L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.start_fade_out_status
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2._state
  L4_2 = L4_1.FadeOut
  if L3_2 == L4_2 then
    L3_2 = A0_2._begin_time
    L3_2 = L2_2 - L3_2
    L4_2 = A0_2._fadeout_duration
    if L3_2 > L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.start_exit_status
      L3_2(L4_2)
    end
  end
end
L0_1._on_tick = L5_1
return L0_1
