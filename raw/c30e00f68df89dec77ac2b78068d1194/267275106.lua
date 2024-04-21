local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ExpBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ExpBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusActionDayResultExpBarPanel"
L2_1 = G
L2_1 = L2_1.ExpBarPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 2
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
  A0_2._last_tween_value = nil
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._tween_callback = A1_2
  A0_2._tween_callback_self = A2_2
end
L0_1.register_anim_end_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._level_up_callback = A1_2
  A0_2._level_up_callback_self = A2_2
end
L0_1.register_level_up_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._tick_callback = A1_2
  A0_2._tick_callback_self = A2_2
end
L0_1.register_tick_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L5_2 = A0_2._last_tween_value
  if L5_2 ~= nil then
    L5_2 = math
    L5_2 = L5_2.ceil
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = math
    L6_2 = L6_2.ceil
    L7_2 = A0_2._last_tween_value
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 - L6_2
    if L5_2 == 1 then
      L6_2 = A0_2
      L5_2 = A0_2._invoke_level_up_callback
      L5_2(L6_2)
    end
  end
  A0_2._last_tween_value = L4_2
  L6_2 = A0_2
  L5_2 = A0_2._set_current_slider
  L7_2 = L4_2 % 1
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.preview_slider
  if L5_2 ~= nil then
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
  end
  L6_2 = A0_2
  L5_2 = A0_2._invoke_tick_callback
  L7_2 = A0_2._time_elapsed
  L8_2 = L1_1
  L7_2 = L7_2 / L8_2
  L5_2(L6_2, L7_2)
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
    A0_2._last_tween_value = nil
  end
end
L0_1._mono_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._level_up_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._level_up_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._level_up_callback
      L2_2 = A0_2._level_up_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._invoke_level_up_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tick_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._tick_callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._tick_callback
      L3_2 = A0_2._tick_callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._invoke_tick_callback = L2_1
