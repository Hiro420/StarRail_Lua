local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapZoomSliderPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleZoomSliderPanel"
L2_1 = G
L2_1 = L2_1.MapZoomSliderPanel
L0_1 = L0_1(L1_1, L2_1)
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
        L2_2.value = A1_2
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
L0_1.setup_slider_value_without_delta = L1_1
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
  L1_2.value = 0
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
return L0_1
