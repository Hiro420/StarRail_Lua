local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1.0
function L2_1(A0_2)
  local L1_2
  A0_2._current_value = 0
  A0_2._tween_value_begin = 0
  A0_2._tween_value_end = 0
  A0_2._tween_playing = false
  A0_2._time_elapsed = 0
  A0_2._tween_circulation = 0
  A0_2._block_on_tween = true
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = typeof
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoPerformanceUITransfer
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L5_2 = ""
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mono_ticker = L2_2
  L2_2 = A0_2._mono_ticker
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.ComponentExtensions
    L2_2 = L2_2.SafeAddCmpt
    L3_2 = L1_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._mono_ticker = L2_2
  end
  L2_2 = A0_2._mono_ticker
  L3_2 = L2_2
  L2_2 = L2_2.SetTickCallback
  L4_2 = A0_2._mono_tick
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mono_ticker
  if L1_2 ~= nil then
    L1_2 = A0_2._mono_ticker
    L2_2 = L1_2
    L1_2 = L1_2.ClearTickCallback
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_current_slider
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._current_value = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._stop_tween
  L2_2(L3_2)
end
L0_1.set_value = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_preview_slider
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_preview_value = L2_1
function L2_1(A0_2, A1_2)
  A0_2._block_on_tween = A1_2
end
L0_1.set_block_on_tween = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._current_value
  A0_2._tween_value_begin = L3_2
  A0_2._tween_value_end = A1_2
  L3_2 = A0_2._tween_value_end
  L4_2 = A0_2._tween_value_begin
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 + A2_2
  A0_2._tween_distance = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._start_tween
  L3_2(L4_2)
end
L0_1.set_value_with_tween = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._tween_callback = A1_2
  A0_2._tween_callback_self = A2_2
end
L0_1.set_tween_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._tween_playing
  if not L2_2 then
    return
  end
  L2_2 = A0_2._time_elapsed
  L2_2 = L2_2 + A1_2
  A0_2._time_elapsed = L2_2
  L2_2 = A0_2._time_elapsed
  L3_2 = L1_1
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._tween_distance
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._tween_distance
  L3_2 = L3_2 - L2_2
  L4_2 = A0_2._tween_value_begin
  L4_2 = L4_2 + L2_2
  L6_2 = A0_2
  L5_2 = A0_2._set_current_slider
  L7_2 = L4_2 % 1
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._tween_value_end
  if L3_2 < L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._set_preview_slider
    L7_2 = A0_2._tween_value_end
    L5_2(L6_2, L7_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._set_preview_slider
    L7_2 = 1
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._time_elapsed
  L6_2 = L1_1
  if L5_2 > L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2.set_value
    L7_2 = A0_2._tween_value_end
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._invoke_tween_callback
    L5_2(L6_2)
  end
end
L0_1._mono_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tween_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._tween_callback
    L2_2 = A0_2._tween_callback_self
    L1_2(L2_2)
    A0_2._tween_callback = nil
    A0_2._tween_callback_self = nil
  end
end
L0_1._invoke_tween_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.current_slider
  L2_2.value = A1_2
end
L0_1._set_current_slider = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.preview_slider
  L2_2.value = A1_2
end
L0_1._set_preview_slider = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_feedback_characterPage_experience_increase"
  L1_2(L2_2, L3_2)
  A0_2._tween_playing = true
  A0_2._time_elapsed = 0
  L1_2 = A0_2._block_on_tween
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.BlockFixedTime
    L3_2 = L1_1
    L4_2 = L1_1
    L5_2 = nil
    L6_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    A0_2._block_id = L1_2
  end
end
L0_1._start_tween = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._tween_playing = false
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
    A0_2._block_id = nil
  end
end
L0_1._stop_tween = L2_1
