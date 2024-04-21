local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyFovPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._fov_step_ratio = 0.05
L0_1._long_press_fov_step_ratio = 0.01
L0_1._long_press_repeat_time = 0.01
L0_1._fov_max_ratio = 1
L0_1._fov_min_ratio = 0
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._pack_ui3d_page = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_slider_fov
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._forbid_mouse_wheel_area = nil
  A0_2._mouse_wheel_change_fov_callback = nil
  A0_2._mouse_wheel_change_fov_callback_self = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_plus
  L4_2 = A0_2._on_btn_fov_plus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_minus
  L4_2 = A0_2._on_btn_fov_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_plus
  L4_2 = A0_2._on_long_btn_fov_plus
  L5_2 = nil
  L6_2 = nil
  L7_2 = L0_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_fov_minus
  L4_2 = A0_2._on_long_btn_fov_minus
  L5_2 = nil
  L6_2 = nil
  L7_2 = L0_1._long_press_repeat_time
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_fov
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = L0_1._fov_max_ratio
  L1_2(L2_2, L3_2)
  L1_2 = L0_1._fov_max_ratio
  A0_2._cur_fov_slider_value = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_fov
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._get_valid_ratio
    L3_3 = A0_3
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 ~= A0_3 then
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._set_slider_value
      L4_3 = A0_2._cur_fov_slider_value
      L2_3(L3_3, L4_3)
    end
    A0_2._cur_fov_slider_value = L1_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._set_camera_fov
    L4_3 = A0_2._cur_fov_slider_value
    L4_3 = 1 - L4_3
    L2_3(L3_3, L4_3)
    L2_3 = G
    L2_3 = L2_3.Utils
    L2_3 = L2_3.invoke_callback
    L3_3 = A0_2._mouse_wheel_change_fov_callback
    L4_3 = A0_2._mouse_wheel_change_fov_callback_self
    L2_3(L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._init_slider_fov = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_camera_fov
  L3_2 = A0_2._cur_fov_slider_value
  L3_2 = 1 - L3_2
  L1_2(L2_2, L3_2)
end
L0_1.reset_fov = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cur_fov_slider_value = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.reset_fov
  L2_2(L3_2)
end
L0_1.set_fov = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_fov_slider_value
  return L1_2
end
L0_1.get_fov = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L0_1._fov_step_ratio
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_fov_plus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L0_1._fov_step_ratio
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_fov_minus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_fov_slider_value
  L2_2 = L0_1._fov_max_ratio
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
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L0_1._long_press_fov_step_ratio
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_long_btn_fov_plus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_fov_slider_value
  L2_2 = L0_1._fov_min_ratio
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
  L1_2 = A0_2._set_slider_value
  L3_2 = A0_2._cur_fov_slider_value
  L4_2 = L0_1._long_press_fov_step_ratio
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_long_btn_fov_minus = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_fov
  L4_2 = A0_2
  L3_2 = A0_2._get_valid_ratio
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.value = L3_2
end
L0_1._set_slider_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A1_2
  L4_2 = L0_1._fov_max_ratio
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = A1_2
  L4_2 = L0_1._fov_min_ratio
  L2_2 = L2_2(L3_2, L4_2)
  A1_2 = L2_2
  return A1_2
end
L0_1._get_valid_ratio = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.set_camera_fov_ratio
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_camera_fov = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._is_in_forbid_mouse_wheel_area
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  if 0 < A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_btn_fov_plus
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_btn_fov_minus
    L2_2(L3_2)
  end
end
L0_1._on_mouse_wheel_roll = L1_1
function L1_1(A0_2, A1_2)
  A0_2._forbid_mouse_wheel_area = A1_2
end
L0_1.register_forbid_mouse_wheel_area = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._forbid_mouse_wheel_area
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Input
  L1_2 = L1_2.mousePosition
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransformUtility
  L3_2 = L3_2.ScreenPointToLocalPointInRectangle
  L4_2 = A0_2._forbid_mouse_wheel_area
  L5_2 = L2_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_UICamera
  L7_2 = nil
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = A0_2._forbid_mouse_wheel_area
  L5_2 = L5_2.rect
  L6_2 = L5_2
  L5_2 = L5_2.Contains
  L7_2 = L4_2
  return L5_2(L6_2, L7_2)
end
L0_1._is_in_forbid_mouse_wheel_area = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._mouse_wheel_change_fov_callback = A1_2
  A0_2._mouse_wheel_change_fov_callback_self = A2_2
end
L0_1.register_mouse_wheel_change_fov_callback = L1_1
return L0_1
