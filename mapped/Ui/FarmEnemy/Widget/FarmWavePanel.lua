local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmWavePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_minus_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_plus
  L4_2 = A0_2._on_btn_plus_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_minus_long_press
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_plus
  L4_2 = A0_2._on_btn_plus_long_press
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_wave
  L1_2.wholeNumbers = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_wave
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3
    A0_2._wave = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_wave_changed
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  A0_2._min_wave = 1
  A0_2._max_wave = 1
  A0_2._wave = 1
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._wave_change_callback = A1_2
  A0_2._wave_change_handler = A2_2
end
L0_1.register_wave_change_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._min_wave
  L3_2 = L3_2 ~= A1_2
  if not L3_2 then
    return
  end
  A0_2._min_wave = A1_2
  A0_2._max_wave = A2_2
  L4_2 = G
  L4_2 = L4_2.MathUtils
  L4_2 = L4_2.get_clamp
  L5_2 = A0_2._wave
  L6_2 = A0_2._min_wave
  L7_2 = A0_2._max_wave
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._wave = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_clamp_view
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_wave
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_callback
  L5_2 = A0_2._wave_change_callback
  L6_2 = A0_2._wave_change_handler
  L7_2 = A0_2._wave
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_min_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._min_wave
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_max_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._max_wave
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_wave
  L2_2 = A0_2._min_wave
  L1_2.minValue = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_wave
  L2_2 = A0_2._max_wave
  L1_2.maxValue = L2_2
end
L0_1._setup_clamp_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_wave
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._wave_change_callback
  L3_2 = A0_2._wave_change_handler
  L4_2 = A0_2._wave
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_wave_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._wave
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_minus
  L2_2 = A0_2._wave
  L3_2 = A0_2._min_wave
  L2_2 = L2_2 ~= L3_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_plus
  L2_2 = A0_2._wave
  L3_2 = A0_2._max_wave
  L2_2 = L2_2 ~= L3_2
  L1_2.interactable = L2_2
end
L0_1._refresh_wave = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._wave
  L2_2 = A0_2._min_wave
  if L1_2 <= L2_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_wave
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_wave
  L2_2 = L2_2.value
  L2_2 = L2_2 - 1
  L1_2.value = L2_2
end
L0_1._on_btn_minus_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._wave
  L2_2 = A0_2._max_wave
  if L1_2 >= L2_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_wave
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_wave
  L2_2 = L2_2.value
  L2_2 = L2_2 + 1
  L1_2.value = L2_2
end
L0_1._on_btn_plus_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wave
  L2_2 = A0_2._min_wave
  if L1_2 <= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L3_2 = L3_2.AudioConfig
  L3_2 = L3_2.EventUISliderMinus
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_minus_click
  L1_2(L2_2)
end
L0_1._on_btn_minus_long_press = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wave
  L2_2 = A0_2._max_wave
  if L1_2 >= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L3_2 = L3_2.AudioConfig
  L3_2 = L3_2.EventUISliderPlus
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_plus_click
  L1_2(L2_2)
end
L0_1._on_btn_plus_long_press = L1_1
return L0_1
