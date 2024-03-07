local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Common.ToastChallengePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastChallengePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.none = 0
L1_1.playing = 1
L1_1.waiting = 2
L2_1 = "LabyrinthPlayHint_FadeIn"
L3_1 = "LabyrinthPlayHint_FadeOut"
L4_1 = 3
function L5_1(A0_2)
  local L1_2
  A0_2._time = 0
  L1_2 = L1_1.none
  A0_2._status = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._status
  L3_2 = L1_1.none
  if L2_2 == L3_2 then
    return
  else
    L2_2 = A0_2._status
    L3_2 = L1_1.playing
    if L2_2 == L3_2 then
      L2_2 = A0_2._time
      L2_2 = L2_2 - A1_2
      A0_2._time = L2_2
      L2_2 = A0_2._time
      if L2_2 < 0 then
        L3_2 = A0_2
        L2_2 = A0_2._wait
        L2_2(L3_2)
      end
    else
      L2_2 = A0_2._status
      L3_2 = L1_1.waiting
      if L2_2 == L3_2 then
        L2_2 = A0_2._time
        L2_2 = L2_2 - A1_2
        A0_2._time = L2_2
        L2_2 = A0_2._time
        if L2_2 < 0 then
          L3_2 = A0_2
          L2_2 = A0_2._complete
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1._on_tick = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._panel_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._play
  L2_2(L3_2)
end
L0_1.refresh = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._complete_obj = A1_2
  A0_2._complete_callback = A2_2
end
L0_1.set_complete_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L4_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_exit
  L4_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.none
  A0_2._status = L1_2
  L1_2 = A0_2._complete_obj
  if L1_2 ~= nil then
    L1_2 = A0_2._complete_callback
    if L1_2 ~= nil then
      L1_2 = A0_2._complete_callback
      L2_2 = A0_2._complete_obj
      L1_2(L2_2)
    end
  end
end
L0_1._complete = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit
  L1_2(L2_2)
end
L0_1._on_exit = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.playing
  A0_2._status = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._time = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._panel_data
  L3_2 = L3_2.MessageOne
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_condition
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._panel_data
  L3_2 = L3_2.MessageTwo
  L1_2(L2_2, L3_2)
end
L0_1._play = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = L1_1.waiting
  A0_2._status = L1_2
  A0_2._time = 0
end
L0_1._wait = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._hide = L5_1
return L0_1
