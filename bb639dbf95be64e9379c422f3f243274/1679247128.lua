local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapZoomSliderPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapZoomSliderPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._step_zoom = 0.1
L0_1._long_press_step_zoom = 0.01
L0_1._long_press_total_time = 0.2
L0_1._long_press_repeat_time = 0.001
function L1_1(A0_2, A1_2, A2_2)
  A0_2._in_control_press_enable = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._slider_value_change_callback_obj = A1_2
  A0_2._slider_value_change_callback_func = A2_2
end
L0_1.reg_slider_value_change_call_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress_slider
  L2_2 = L2_2.value
  if 0 <= L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.progress_slider
    L2_2 = L2_2.value
    if L2_2 <= 1 then
      L2_2 = A0_2._slider_value_change_callback_func
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.progress_slider
        L3_2 = A0_2._binder
        L3_2 = L3_2.progress_slider
        L3_2 = L3_2.value
        L3_2 = L3_2 + A1_2
        L2_2.value = L3_2
        L2_2 = A0_2._slider_value_change_callback_func
        L3_2 = A0_2._slider_value_change_callback_obj
        L4_2 = A0_2._binder
        L4_2 = L4_2.progress_slider
        L4_2 = L4_2.value
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1.setup_slider_value = L1_1
function L1_1(A0_2, A1_2)
  A0_2._in_control_press_enable = A1_2
end
L0_1.setup_in_control_press_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_slider
  L2_2 = G
  L2_2 = L2_2.MapUtil
  L2_2 = L2_2.Map_Input_Scale_Ratio
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.Map_Scale_Lower_Ratio
  L2_2 = L2_2 - L3_2
  L1_2.value = L2_2
end
L0_1.on_map_scale_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_slider
  L2_2 = L1_2
  L1_2 = L1_2.SetValueWithoutNotify
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.Map_Input_Scale_Ratio
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.Map_Scale_Lower_Ratio
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L0_1.on_map_scale_change_without_notify = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress_slider
  L3_2 = L2_2
  L2_2 = L2_2.SetValueWithoutNotify
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_slider_value_without_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.is_in_special_zoom
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = A0_2._in_control_press_enable
  if not L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftTrigger
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_left_trigger_press
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightTrigger
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_right_trigger_press
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_in_control_press = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_slider_value
  L4_2 = -A1_2
  L4_2 = L4_2 / 50
  L2_2(L3_2, L4_2)
end
L0_1._on_left_trigger_press = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_slider_value
  L4_2 = A1_2 / 50
  L2_2(L3_2, L4_2)
end
L0_1._on_right_trigger_press = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_plus
  L4_2 = A0_2._on_btn_plus_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_minus_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_plus
  L4_2 = A0_2._on_long_btn_plus_repeat
  L5_2 = nil
  L6_2 = L0_1._long_press_total_time
  L7_2 = L0_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_long_btn_minus_repeat
  L5_2 = nil
  L6_2 = L0_1._long_press_total_time
  L7_2 = L0_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_slider
  L2_2 = G
  L2_2 = L2_2.MapUtil
  L2_2 = L2_2.Map_Input_Scale_Ratio
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.Map_Scale_Lower_Ratio
  L2_2 = L2_2 - L3_2
  L1_2.value = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_slider
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2._slider_value_change_callback_func
    if L1_3 then
      L1_3 = A0_2._slider_value_change_callback_func
      L2_3 = A0_2._slider_value_change_callback_obj
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._plus_progress_slider_value
  L3_2 = L0_1._step_zoom
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_plus_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._minus_progress_slider_value
  L3_2 = L0_1._step_zoom
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_minus_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_slider
  L1_2 = L1_2.value
  if not (1 <= L1_2) then
    L1_2 = A0_2._slider_value_change_callback_func
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
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
  L1_2 = A0_2._plus_progress_slider_value
  L3_2 = L0_1._long_press_step_zoom
  L1_2(L2_2, L3_2)
end
L0_1._on_long_btn_plus_repeat = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_slider
  L1_2 = L1_2.value
  if not (L1_2 <= 0) then
    L1_2 = A0_2._slider_value_change_callback_func
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
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
  L1_2 = A0_2._minus_progress_slider_value
  L3_2 = L0_1._long_press_step_zoom
  L1_2(L2_2, L3_2)
end
L0_1._on_long_btn_minus_repeat = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress_slider
  L2_2 = L2_2.value
  if L2_2 < 1 then
    L2_2 = A0_2._slider_value_change_callback_func
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.progress_slider
      L3_2 = A0_2._binder
      L3_2 = L3_2.progress_slider
      L3_2 = L3_2.value
      L3_2 = L3_2 + A1_2
      L2_2.value = L3_2
      L2_2 = A0_2._slider_value_change_callback_func
      L3_2 = A0_2._slider_value_change_callback_obj
      L4_2 = A0_2._binder
      L4_2 = L4_2.progress_slider
      L4_2 = L4_2.value
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._plus_progress_slider_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress_slider
  L2_2 = L2_2.value
  if 0 < L2_2 then
    L2_2 = A0_2._slider_value_change_callback_func
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.progress_slider
      L3_2 = A0_2._binder
      L3_2 = L3_2.progress_slider
      L3_2 = L3_2.value
      L3_2 = L3_2 - A1_2
      L2_2.value = L3_2
      L2_2 = A0_2._slider_value_change_callback_func
      L3_2 = A0_2._slider_value_change_callback_obj
      L4_2 = A0_2._binder
      L4_2 = L4_2.progress_slider
      L4_2 = L4_2.value
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._minus_progress_slider_value = L1_1
return L0_1
