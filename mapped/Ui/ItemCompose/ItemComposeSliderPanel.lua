local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSliderPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeSliderPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.plus_long_press_event
  L2_2 = L1_2
  L1_2 = L1_2.InvokPointerUpByReset
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.minus_long_press_event
  L2_2 = L1_2
  L1_2 = L1_2.InvokPointerUpByReset
  L1_2(L2_2)
end
L0_1._on_lost_focus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_num_plus
  L4_2 = A0_2._btn_plus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_num_minus
  L4_2 = A0_2._btn_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_num_plus
  L4_2 = A0_2._long_btn_plus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_num_minus
  L4_2 = A0_2._long_btn_minus
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_lock_value_change_callback = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_bar
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._is_lock_value_change_callback
    if L1_3 then
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_slider_value_changed
    L3_3 = math
    L3_3 = L3_3.floor
    L4_3 = A0_3
    L3_3, L4_3 = L3_3(L4_3)
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_value_change_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.plus_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.minus_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.plus_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.minus_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._check_value_overflow
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  A0_2._compose_num = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_bar
  L2_2.value = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_num_plus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A0_2._max_compose_count
  L4_2 = A1_2 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_num_minus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = 1 < A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_left_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.0f"
  L6_2 = 1
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.0f"
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._max_compose_count = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_num_plus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._max_compose_count
  L4_2 = 1 <= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_num_minus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._max_compose_count
  L4_2 = 1 <= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_left_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._max_compose_count
  L4_2 = 1 <= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_right_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._max_compose_count
  L4_2 = 1 <= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_right_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.0f"
  L6_2 = A0_2._max_compose_count
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._max_compose_count
  if 1 < L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_54
    end
  end
  L2_2 = 0
  ::lbl_54::
  L3_2 = A0_2._max_compose_count
  if 1 < L3_2 then
    L3_2 = A0_2._max_compose_count
    if L3_2 then
      goto lbl_61
    end
  end
  L3_2 = 1
  ::lbl_61::
  L4_2 = A0_2._binder
  L4_2 = L4_2.num_bar
  L4_2.minValue = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.num_bar
  L4_2.maxValue = L3_2
end
L0_1.setup_max_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_hint = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_lock_value_change_callback = A1_2
end
L0_1.set_lock_value_change_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_bar
  L1_2 = L1_2.value
  L3_2 = A0_2
  L2_2 = A0_2._check_value_overflow
  L4_2 = L1_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._compose_num = L2_2
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._compose_num
  L2_2(L3_2, L4_2)
end
L0_1._btn_plus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_bar
  L1_2 = L1_2.value
  L3_2 = A0_2
  L2_2 = A0_2._check_value_overflow
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._compose_num = L2_2
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._compose_num
  L2_2(L3_2, L4_2)
end
L0_1._btn_minus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_bar
  L1_2 = L1_2.value
  L2_2 = A0_2._max_compose_count
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
  L1_2 = A0_2._btn_plus
  L1_2(L2_2)
end
L0_1._long_btn_plus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_bar
  L1_2 = L1_2.value
  if L1_2 <= 1 then
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
  L1_2 = A0_2._btn_minus
  L1_2(L2_2)
end
L0_1._long_btn_minus = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_value_overflow
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._compose_num = L2_2
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._compose_num
  L2_2(L3_2, L4_2)
end
L0_1._on_slider_value_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A1_2
  L4_2 = A0_2._max_compose_count
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = A1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  return A1_2
end
L0_1._check_value_overflow = L1_1
return L0_1
