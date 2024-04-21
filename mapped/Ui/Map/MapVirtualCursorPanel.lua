local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.MapVirtualCursorPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapVirtualCursorPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20
L2_1 = 50
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._is_default_show = true
  L6_2 = tonumber
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = "%.2f"
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.UIUtils
  L9_2 = L9_2.UIScaleFactor
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  A0_2.ui_scale_factor = L6_2
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = L1_1
  end
  A0_2._move_factor = L6_2
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  if A4_2 == nil then
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Screen
    L9_2 = L9_2.width
    L10_2 = A0_2.ui_scale_factor
    L6_2 = L9_2 / L10_2
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Screen
    L9_2 = L9_2.height
    L10_2 = A0_2.ui_scale_factor
    L7_2 = L9_2 / L10_2
  else
    L9_2 = A4_2.rect
    L9_2 = L9_2.size
    L9_2 = L9_2.x
    if L9_2 ~= 0 then
      L9_2 = A4_2.rect
      L9_2 = L9_2.size
      L9_2 = L9_2.y
      if L9_2 ~= 0 then
        goto lbl_58
      end
    end
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Screen
    L9_2 = L9_2.width
    L10_2 = A0_2.ui_scale_factor
    L6_2 = L9_2 / L10_2
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Screen
    L9_2 = L9_2.height
    L10_2 = A0_2.ui_scale_factor
    L7_2 = L9_2 / L10_2
    L8_2 = 150
    goto lbl_64
    ::lbl_58::
    L9_2 = A4_2.rect
    L9_2 = L9_2.size
    L6_2 = L9_2.x
    L9_2 = A4_2.rect
    L9_2 = L9_2.size
    L7_2 = L9_2.y
  end
  ::lbl_64::
  L9_2 = L8_2 or L9_2
  L9_2 = A5_2 or L9_2
  if not L8_2 and not A5_2 then
    L9_2 = L2_1
  end
  L10_2 = L6_2 / 2
  L10_2 = L10_2 - L9_2
  A0_2._safe_half_width = L10_2
  L10_2 = L7_2 / 2
  L10_2 = L10_2 - L9_2
  A0_2._safe_half_height = L10_2
  A0_2._change_navigation_type_enable = false
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.is_gamepad_input
  L6_2 = L6_2()
  A0_2._enable = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.safe_set_active
  L8_2 = A0_2._enable
  L6_2(L7_2, L8_2)
  A0_2._callback_obj = A1_2
  A0_2._press_callback_func = A2_2
  A0_2._limit_press_callback_func = A3_2
  A0_2._release_callback_func = A4_2
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.is_gamepad_input
  L6_2 = L6_2()
  if L6_2 then
    if A5_2 == nil then
      L6_2 = true
      if L6_2 then
        goto lbl_25
      end
    end
    L6_2 = A5_2
    ::lbl_25::
    A0_2._is_default_show = L6_2
  else
    A0_2._is_default_show = false
  end
  L7_2 = A0_2
  L6_2 = A0_2.setup_image_active
  L8_2 = A0_2._is_default_show
  L6_2(L7_2, L8_2)
end
L0_1.setup_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_image
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_image
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetLightWeightActive
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.setup_image_active
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.update_virtual_cursor_image_active
      L2_2(L3_2)
    end
  end
end
L0_1.set_image_light_weight_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    A0_2._enable = true
    L2_2 = A0_2
    L1_2 = A0_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    A0_2._enable = false
    L2_2 = A0_2
    L1_2 = A0_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1.update_virtual_cursor_image_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_image
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  A0_2._is_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_image_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_image_active
  L3_2 = A0_2._is_active
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_image
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_image
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.setup_image_active = L3_1
function L3_1(A0_2, A1_2)
  A0_2._change_navigation_type_enable = A1_2
end
L0_1.setup_change_navigation_type_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_image
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_image
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.setup_image_active_by_multiple = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_image
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_image
      L1_2 = L1_2.gameObject
      L1_2 = L1_2.activeSelf
    end
  end
  return L1_2
end
L0_1.is_cursor_image_active = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  return L1_2
end
L0_1.get_virtual_cursor_root = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  A0_2._enable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = A0_2._enable
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_image_active
  L3_2 = A0_2._is_default_show
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_image
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  A0_2._is_active = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.update_virtual_cursor_image_active
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._check_is_continue
  L3_2 = L3_2(L4_2)
  if L3_2 == false then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_process_cursor_move_up
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._press_callback_func
    if L3_2 then
      L3_2 = A0_2._press_callback_func
      L4_2 = A0_2._callback_obj
      L5_2 = A0_2._binder
      L5_2 = L5_2.root
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_process_cursor_move_down
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._press_callback_func
      if L3_2 then
        L3_2 = A0_2._press_callback_func
        L4_2 = A0_2._callback_obj
        L5_2 = A0_2._binder
        L5_2 = L5_2.root
        L3_2(L4_2, L5_2)
      end
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_process_cursor_move_left
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._press_callback_func
        if L3_2 then
          L3_2 = A0_2._press_callback_func
          L4_2 = A0_2._callback_obj
          L5_2 = A0_2._binder
          L5_2 = L5_2.root
          L3_2(L4_2, L5_2)
        end
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_process_cursor_move_right
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
          L3_2 = A0_2._press_callback_func
          if L3_2 then
            L3_2 = A0_2._press_callback_func
            L4_2 = A0_2._callback_obj
            L5_2 = A0_2._binder
            L5_2 = L5_2.root
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
end
L0_1._on_in_control_press = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_continue
  L2_2 = L2_2(L3_2)
  if L2_2 == false then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickUp
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.LeftStickDown
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.LeftStickLeft
      L2_2 = #L2_2
      if A1_2 ~= L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.LeftStickRight
        L2_2 = #L2_2
        if A1_2 ~= L2_2 then
          goto lbl_42
        end
      end
    end
  end
  L2_2 = A0_2._release_callback_func
  if L2_2 then
    L2_2 = A0_2._release_callback_func
    L3_2 = A0_2._callback_obj
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L2_2(L3_2, L4_2)
  end
  ::lbl_42::
end
L0_1._on_in_control_released = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable
  if L1_2 == false then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_image
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.lightWeightDeactivate
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_InControlActionsManager
  L1_2 = L1_2.IsBlockByTask
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._check_is_continue = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L4_2 = A0_2
  L3_2 = A0_2._is_in_safe_zoom
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.float_equal
    L4_2 = L2_2.y
    L5_2 = A0_2._safe_half_height
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2._limit_press_callback_func
      if L3_2 then
        L3_2 = A0_2._limit_press_callback_func
        L4_2 = A0_2._callback_obj
        L5_2 = CS
        L5_2 = L5_2.InControl
        L5_2 = L5_2.InputControlType
        L5_2 = L5_2.LeftStickUp
        L5_2 = #L5_2
        L6_2 = A1_2
        L3_2(L4_2, L5_2, L6_2)
      end
    else
      L3_2 = math
      L3_2 = L3_2.min
      L4_2 = L2_2.y
      L5_2 = A0_2._move_factor
      L5_2 = A1_2 * L5_2
      L4_2 = L4_2 + L5_2
      L5_2 = A0_2._safe_half_height
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.root
      L4_2 = L4_2.transform
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector3
      L6_2 = L2_2.x
      L7_2 = L3_2
      L8_2 = 0
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.localPosition = L5_2
    end
  end
end
L0_1._on_process_cursor_move_up = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L4_2 = A0_2
  L3_2 = A0_2._is_in_safe_zoom
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.float_equal
    L4_2 = L2_2.y
    L5_2 = A0_2._safe_half_height
    L5_2 = -L5_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2._limit_press_callback_func
      if L3_2 then
        L3_2 = A0_2._limit_press_callback_func
        L4_2 = A0_2._callback_obj
        L5_2 = CS
        L5_2 = L5_2.InControl
        L5_2 = L5_2.InputControlType
        L5_2 = L5_2.LeftStickDown
        L5_2 = #L5_2
        L6_2 = A1_2
        L3_2(L4_2, L5_2, L6_2)
      end
    else
      L3_2 = math
      L3_2 = L3_2.max
      L4_2 = L2_2.y
      L5_2 = A0_2._move_factor
      L5_2 = A1_2 * L5_2
      L4_2 = L4_2 - L5_2
      L5_2 = A0_2._safe_half_height
      L5_2 = -L5_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.root
      L4_2 = L4_2.transform
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector3
      L6_2 = L2_2.x
      L7_2 = L3_2
      L8_2 = 0
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.localPosition = L5_2
    end
  end
end
L0_1._on_process_cursor_move_down = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L4_2 = A0_2
  L3_2 = A0_2._is_in_safe_zoom
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.float_equal
    L4_2 = L2_2.x
    L5_2 = A0_2._safe_half_width
    L5_2 = -L5_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2._limit_press_callback_func
      if L3_2 then
        L3_2 = A0_2._limit_press_callback_func
        L4_2 = A0_2._callback_obj
        L5_2 = CS
        L5_2 = L5_2.InControl
        L5_2 = L5_2.InputControlType
        L5_2 = L5_2.LeftStickLeft
        L5_2 = #L5_2
        L6_2 = A1_2
        L3_2(L4_2, L5_2, L6_2)
      end
    else
      L3_2 = math
      L3_2 = L3_2.max
      L4_2 = L2_2.x
      L5_2 = A0_2._move_factor
      L5_2 = A1_2 * L5_2
      L4_2 = L4_2 - L5_2
      L5_2 = A0_2._safe_half_width
      L5_2 = -L5_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.root
      L4_2 = L4_2.transform
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector3
      L6_2 = L3_2
      L7_2 = L2_2.y
      L8_2 = 0
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.localPosition = L5_2
    end
  end
end
L0_1._on_process_cursor_move_left = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L4_2 = A0_2
  L3_2 = A0_2._is_in_safe_zoom
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.float_equal
    L4_2 = L2_2.x
    L5_2 = A0_2._safe_half_width
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2._limit_press_callback_func
      if L3_2 then
        L3_2 = A0_2._limit_press_callback_func
        L4_2 = A0_2._callback_obj
        L5_2 = CS
        L5_2 = L5_2.InControl
        L5_2 = L5_2.InputControlType
        L5_2 = L5_2.LeftStickRight
        L5_2 = #L5_2
        L6_2 = A1_2
        L3_2(L4_2, L5_2, L6_2)
      end
    else
      L3_2 = math
      L3_2 = L3_2.min
      L4_2 = L2_2.x
      L5_2 = A0_2._move_factor
      L5_2 = A1_2 * L5_2
      L4_2 = L4_2 + L5_2
      L5_2 = A0_2._safe_half_width
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.root
      L4_2 = L4_2.transform
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector3
      L6_2 = L3_2
      L7_2 = L2_2.y
      L8_2 = 0
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.localPosition = L5_2
    end
  end
end
L0_1._on_process_cursor_move_right = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.localPosition
  L2_2 = A0_2._safe_half_width
  L2_2 = -L2_2
  L3_2 = A0_2._safe_half_width
  L4_2 = A0_2._safe_half_height
  L4_2 = -L4_2
  L5_2 = A0_2._safe_half_height
  L6_2 = L1_2.x
  L6_2 = G
  L6_2 = L6_2.MathUtils
  L6_2 = L6_2.float_equal
  L7_2 = L1_2.x
  L8_2 = L2_2
  L6_2 = L2_2 < L6_2 or L6_2
  L7_2 = L1_2.x
  L7_2 = G
  L7_2 = L7_2.MathUtils
  L7_2 = L7_2.float_equal
  L8_2 = L1_2.x
  L9_2 = L3_2
  L7_2 = L3_2 > L7_2 or L7_2
  L8_2 = L1_2.y
  L8_2 = G
  L8_2 = L8_2.MathUtils
  L8_2 = L8_2.float_equal
  L9_2 = L1_2.y
  L10_2 = L4_2
  L8_2 = L4_2 < L8_2 or L8_2
  L9_2 = L1_2.y
  L9_2 = G
  L9_2 = L9_2.MathUtils
  L9_2 = L9_2.float_equal
  L10_2 = L1_2.y
  L11_2 = L5_2
  L9_2 = L5_2 > L9_2 or L9_2
  L10_2 = L6_2 or L10_2
  L10_2 = L7_2 or L10_2
  L10_2 = L8_2 or L10_2
  if L6_2 and L7_2 and L8_2 then
    L10_2 = L9_2
  end
  return L10_2
end
L0_1._is_in_safe_zoom = L3_1
return L0_1
