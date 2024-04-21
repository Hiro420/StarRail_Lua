local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlusMinusSliderPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._long_press_total_time = 0.3
L0_1._long_press_repeat_time = 0.05
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A3_2 == true
  A0_2._has_nested_slider = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_cache_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_plus
  L4_2 = A0_2._on_btn_plus
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_max
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_max
    L4_2 = A0_2._on_btn_max
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_long_btn_minus_repeat
  L5_2 = nil
  L6_2 = L0_1._long_press_total_time
  L7_2 = L0_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_plus
  L4_2 = A0_2._on_long_btn_plus_repeat
  L5_2 = nil
  L6_2 = L0_1._long_press_total_time
  L7_2 = L0_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.bind_long_press_event
  L1_2(L2_2)
  L1_2 = A0_2._has_nested_slider
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.nested_slider
    A0_2._interactive_slider = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_nested_num
    A0_2._interactive_text_num = L1_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider
    A0_2._interactive_slider = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_num
    A0_2._interactive_text_num = L1_2
  end
  L1_2 = A0_2._interactive_slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2._interactive_text_num
    L2_3 = L1_3
    L1_3 = L1_3.SafeSetText
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    A0_2._cur_amount = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_slider_btn_and_num_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2.minValue = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider
  L1_2.maxValue = 1
  L1_2 = A0_2._has_nested_slider
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.nested_slider
    L1_2 = L1_2.onValueChanged
    L2_2 = L1_2
    L1_2 = L1_2.RemoveAllListeners
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.nested_slider
    L1_2.minValue = 0
    L1_2 = A0_2._binder
    L1_2 = L1_2.nested_slider
    L1_2.maxValue = 1
    L1_2 = A0_2._binder
    L1_2 = L1_2.nested_slider
    L1_2.value = 1
  end
end
L0_1._clear_cache_state = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._min_amount = A1_2
  A0_2._max_amount = A2_2
  L5_2 = A0_2._min_amount
  A0_2._cur_amount = L5_2
  A0_2._value_change_call_back_func = A3_2
  A0_2._value_change_call_back_self = A4_2
  L5_2 = A0_2._interactive_text_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A0_2._min_amount
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_progress_bar
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._set_slider_amount
  L7_2 = A0_2._min_amount
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  A0_2._min_amount = A1_2
  A0_2._max_amount = A2_2
  A0_2._real_max_amount = A3_2
  L6_2 = A0_2._min_amount
  A0_2._cur_amount = L6_2
  A0_2._value_change_call_back_func = A4_2
  A0_2._value_change_call_back_self = A5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.slider
  L7_2 = A2_2 / A3_2
  L6_2.normalizedValue = L7_2
  L6_2 = A0_2._interactive_text_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A0_2._min_amount
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_progress_bar
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._set_slider_amount
  L8_2 = A0_2._min_amount
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._refresh
  L6_2(L7_2)
end
L0_1.setup_view_with_nested_slider = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._has_nested_slider
  if not L2_2 then
    return
  end
end
L0_1.setup_nested_slider_fill_area = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_minus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_plus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_max_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.left_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.right_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_slider_btn_and_num_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._interactive_slider
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_plus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_minus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_max
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_max
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_progress_bar
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.left_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.right_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.max_key_map_info
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.max_key_map_info
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_slider_and_btn_interactable = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._cur_amount = nil
  A0_2._max_amount = nil
  A0_2._min_amount = nil
  A0_2._value_change_call_back_func = nil
  A0_2._value_change_call_back_self = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText_Num
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_num
  L3_2 = A0_2._min_amount
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText_Num
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_max_num
  L3_2 = A0_2._real_max_amount
  if not L3_2 then
    L3_2 = A0_2._max_amount
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._min_amount
  L2_2 = A0_2._max_amount
  if L1_2 >= L2_2 then
    L1_2 = A0_2._interactive_slider
    L1_2.interactable = false
    return
  end
  L1_2 = A0_2._interactive_slider
  L1_2.interactable = true
  L1_2 = A0_2._interactive_slider
  L2_2 = A0_2._min_amount
  L1_2.minValue = L2_2
  L1_2 = A0_2._interactive_slider
  L2_2 = A0_2._max_amount
  L1_2.maxValue = L2_2
  L1_2 = A0_2._interactive_slider
  L1_2.wholeNumbers = true
end
L0_1._setup_progress_bar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._trigger_value_change_callback
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_minus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._cur_amount
  L4_2 = A0_2._min_amount
  L3_2 = L3_2 > L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_plus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._cur_amount
  L4_2 = A0_2._max_amount
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_max
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_max
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._max_amount
    L3_2 = 1 < L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_max
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = A0_2._cur_amount
    L4_2 = A0_2._max_amount
    L3_2 = L3_2 < L4_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_progress_bar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_slider_amount
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_amount = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._max_amount
  if A1_2 > L2_2 then
    L2_2 = A0_2._interactive_slider
    L2_2.normalizedValue = 1
    return
  end
  L2_2 = A0_2._min_amount
  if A1_2 < L2_2 then
    L2_2 = A0_2._interactive_slider
    L2_2.normalizedValue = 0
    return
  end
  L2_2 = A0_2._interactive_slider
  L2_2.value = A1_2
end
L0_1._set_slider_amount = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_plus
  L1_2 = L1_2.interactable
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_amount
  L2_2 = A0_2._max_amount
  if L1_2 < L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_slider_amount
    L3_2 = A0_2._cur_amount
    L3_2 = L3_2 + 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_plus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_minus
  L1_2 = L1_2.interactable
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_amount
  L2_2 = A0_2._min_amount
  if L1_2 > L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_slider_amount
    L3_2 = A0_2._cur_amount
    L3_2 = L3_2 - 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_minus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_plus
  L1_2 = L1_2.interactable
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_amount
  L2_2 = A0_2._max_amount
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_press_event_plus
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.long_press_event_plus
    L2_2 = L1_2
    L1_2 = L1_2.GetPressDownTime
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_37
    end
  end
  L1_2 = 0
  ::lbl_37::
  L3_2 = A0_2
  L2_2 = A0_2._get_long_press_count
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_slider_amount
  L5_2 = A0_2._cur_amount
  L5_2 = L5_2 + L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_long_btn_plus_repeat = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_minus
  L1_2 = L1_2.interactable
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_amount
  L2_2 = A0_2._min_amount
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_press_event_mius
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.long_press_event_mius
    L2_2 = L1_2
    L1_2 = L1_2.GetPressDownTime
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_37
    end
  end
  L1_2 = 0
  ::lbl_37::
  L3_2 = A0_2
  L2_2 = A0_2._get_long_press_count
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_slider_amount
  L5_2 = A0_2._cur_amount
  L5_2 = L5_2 - L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_long_btn_minus_repeat = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 <= 2 then
    L2_2 = 1
    return L2_2
  elseif A1_2 < 4 then
    L2_2 = 5
    return L2_2
  elseif A1_2 < 5 then
    L2_2 = 10
    return L2_2
  elseif A1_2 < 6 then
    L2_2 = 100
    return L2_2
  else
    L2_2 = 300
    return L2_2
  end
end
L0_1._get_long_press_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_amount
  L3_2 = A0_2._max_amount
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_max = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._value_change_call_back_func
  if L1_2 then
    L1_2 = A0_2._value_change_call_back_self
    if L1_2 then
      L1_2 = A0_2._value_change_call_back_func
      L2_2 = A0_2._value_change_call_back_self
      L3_2 = A0_2._cur_amount
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._value_change_call_back_func
      L2_2 = A0_2._cur_amount
      L1_2(L2_2)
    end
  end
end
L0_1._trigger_value_change_callback = L1_1
return L0_1
