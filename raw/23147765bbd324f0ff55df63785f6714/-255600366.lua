local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportVirtualCursorPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportVirtualCursorPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 10
L2_1 = 8
L3_1 = 5
L4_1 = 70
L5_1 = 30
L6_1 = 30
L7_1 = 30
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._is_default_show = true
  L4_2 = tonumber
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%.2f"
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.UIUtils
  L7_2 = L7_2.UIScaleFactor
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.ui_scale_factor = L4_2
  L4_2 = L1_1
  A0_2._move_factor = L4_2
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Screen
  L4_2 = L4_2.height
  L5_2 = A0_2.ui_scale_factor
  L4_2 = L4_2 / L5_2
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Screen
  L5_2 = L5_2.width
  L6_2 = A0_2.ui_scale_factor
  L5_2 = L5_2 / L6_2
  if A3_2 ~= nil then
    L6_2 = A3_2.rect
    L6_2 = L6_2.size
    L6_2 = L6_2.y
    L6_2 = L4_2 - L6_2
    L5_1 = L6_2
    L6_2 = A3_2.rect
    L6_2 = L6_2.size
    L6_2 = L6_2.x
    L6_2 = L5_2 - L6_2
    L6_1 = L6_2
  end
  L6_2 = L4_2 / 2
  L7_2 = L4_1
  L6_2 = L6_2 - L7_2
  A0_2._safe_up_pos = L6_2
  L6_2 = L4_2 / 2
  L7_2 = L5_1
  L6_2 = L6_2 - L7_2
  L6_2 = -L6_2
  A0_2._safe_down_pos = L6_2
  L6_2 = L5_2 / 2
  L7_2 = L6_1
  L6_2 = L6_2 - L7_2
  L6_2 = -L6_2
  A0_2._safe_left_pos = L6_2
  L6_2 = L5_2 / 2
  L7_2 = L7_1
  L6_2 = L6_2 - L7_2
  A0_2._safe_right_pos = L6_2
  A0_2._x_pos = 0
  A0_2._y_pos = 0
  L7_2 = A0_2
  L6_2 = A0_2.fetch_ui3d
  L6_2 = L6_2(L7_2)
  A0_2._alley_transport_ui3d = L6_2
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_preview_cursor
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_preview_cursor
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeSelf
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_key_map_info
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "ActionGroupTextmapID_ActionGroup_PropertyCheck"
      L1_2(L2_2, L3_2)
      L1_2 = G
      L1_2 = L1_2.CS
      L1_2 = L1_2.EventSystem
      L1_2 = L1_2.current
      L1_2 = L1_2.currentSelectedGameObject
      if L1_2 == nil then
        L2_2 = A0_2
        L1_2 = A0_2.setup_key_map_info_active
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_erase_cursor
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_erase_cursor
      L1_2 = L1_2.gameObject
      L1_2 = L1_2.activeSelf
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.setup_key_map_info_active
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_key_map_info
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "ActionGroupTextmapID_ActionGroup_AlleyMapDraw2"
        L1_2(L2_2, L3_2)
    end
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_draw_cursor
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_draw_cursor
        L1_2 = L1_2.gameObject
        L1_2 = L1_2.activeSelf
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.text_key_map_info
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetTextID
          L3_2 = "ActionGroupTextmapID_ActionGroup_AlleyMapDraw"
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L0_1.custom_tick = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_key_map_info_active = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  A0_2._cur_alley_transport_route_state = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportRouteState
  L2_2 = L2_2.Draw
  if A1_2 ~= L2_2 then
    L2_2 = L1_1
    A0_2._move_factor = L2_2
  end
end
L0_1.set_cur_alley_transport_route_state = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._callback_obj = A1_2
  A0_2._press_callback_func = A2_2
  A0_2._limit_press_callback_func = A3_2
  A0_2._release_callback_func = A4_2
end
L0_1.setup_callback = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L3_2 = L2_2
    L2_2 = L2_2.SetSelectedGameObject
    L4_2 = nil
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.custom_safe_set_active = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  return L1_2
end
L0_1.get_virtual_cursor_root = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_preview_cursor
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  return L1_2
end
L0_1.check_is_preview_cursor_active = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.custom_safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.custom_safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._check_is_continue
  L3_2 = L3_2(L4_2)
  if L3_2 == false then
    return
  end
  L3_2 = A0_2._cur_alley_transport_route_state
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AlleyTransportRouteState
  L4_2 = L4_2.Draw
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.DPadUp
    L3_2 = #L3_2
    if A1_2 ~= L3_2 then
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.DPadDown
      L3_2 = #L3_2
      if A1_2 ~= L3_2 then
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.DPadLeft
        L3_2 = #L3_2
        if A1_2 ~= L3_2 then
          L3_2 = CS
          L3_2 = L3_2.InControl
          L3_2 = L3_2.InputControlType
          L3_2 = L3_2.DPadRight
          L3_2 = #L3_2
          if A1_2 ~= L3_2 then
            goto lbl_45
          end
        end
      end
    end
    L3_2 = L3_1
    A0_2._move_factor = L3_2
    goto lbl_47
    ::lbl_45::
    L3_2 = L2_1
    A0_2._move_factor = L3_2
  end
  ::lbl_47::
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 ~= L3_2 then
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.DPadUp
    L3_2 = #L3_2
    if A1_2 ~= L3_2 then
      goto lbl_82
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._on_process_cursor_move_up
  L5_2 = A2_2
  L6_2 = CS
  L6_2 = L6_2.InControl
  L6_2 = L6_2.InputControlType
  L6_2 = L6_2.LeftStickUp
  L6_2 = #L6_2
  L6_2 = A1_2 == L6_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._press_callback_func
  if L3_2 then
    L3_2 = A0_2._press_callback_func
    L4_2 = A0_2._callback_obj
    L5_2 = A0_2._binder
    L5_2 = L5_2.root
    L3_2(L4_2, L5_2)
    goto lbl_186
    ::lbl_82::
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 ~= L3_2 then
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.DPadDown
      L3_2 = #L3_2
      if A1_2 ~= L3_2 then
        goto lbl_117
      end
    end
    L4_2 = A0_2
    L3_2 = A0_2._on_process_cursor_move_down
    L5_2 = A2_2
    L6_2 = CS
    L6_2 = L6_2.InControl
    L6_2 = L6_2.InputControlType
    L6_2 = L6_2.LeftStickDown
    L6_2 = #L6_2
    L6_2 = A1_2 == L6_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._press_callback_func
    if L3_2 then
      L3_2 = A0_2._press_callback_func
      L4_2 = A0_2._callback_obj
      L5_2 = A0_2._binder
      L5_2 = L5_2.root
      L3_2(L4_2, L5_2)
      goto lbl_186
      ::lbl_117::
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 ~= L3_2 then
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.DPadLeft
        L3_2 = #L3_2
        if A1_2 ~= L3_2 then
          goto lbl_152
        end
      end
      L4_2 = A0_2
      L3_2 = A0_2._on_process_cursor_move_left
      L5_2 = A2_2
      L6_2 = CS
      L6_2 = L6_2.InControl
      L6_2 = L6_2.InputControlType
      L6_2 = L6_2.LeftStickLeft
      L6_2 = #L6_2
      L6_2 = A1_2 == L6_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2._press_callback_func
      if L3_2 then
        L3_2 = A0_2._press_callback_func
        L4_2 = A0_2._callback_obj
        L5_2 = A0_2._binder
        L5_2 = L5_2.root
        L3_2(L4_2, L5_2)
        goto lbl_186
        ::lbl_152::
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 ~= L3_2 then
          L3_2 = CS
          L3_2 = L3_2.InControl
          L3_2 = L3_2.InputControlType
          L3_2 = L3_2.DPadRight
          L3_2 = #L3_2
          if A1_2 ~= L3_2 then
            goto lbl_186
          end
        end
        L4_2 = A0_2
        L3_2 = A0_2._on_process_cursor_move_right
        L5_2 = A2_2
        L6_2 = CS
        L6_2 = L6_2.InControl
        L6_2 = L6_2.InputControlType
        L6_2 = L6_2.LeftStickRight
        L6_2 = #L6_2
        L6_2 = A1_2 == L6_2
        L3_2(L4_2, L5_2, L6_2)
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
  ::lbl_186::
end
L0_1._on_in_control_press = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_in_control_released = L8_1
function L8_1(A0_2)
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
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1._check_is_continue = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._y_pos = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.localPosition
  L5_2 = A0_2
  L4_2 = A0_2.check_is_in_safe_zoom
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.float_equal
    L5_2 = L3_2.y
    L6_2 = A0_2._safe_up_pos
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = A0_2._limit_press_callback_func
      if L4_2 then
        L4_2 = A0_2._limit_press_callback_func
        L5_2 = A0_2._callback_obj
        L6_2 = CS
        L6_2 = L6_2.InControl
        L6_2 = L6_2.InputControlType
        L6_2 = L6_2.LeftStickUp
        L6_2 = #L6_2
        L7_2 = A1_2
        L4_2(L5_2, L6_2, L7_2)
      end
    else
      L4_2 = true
      if A2_2 then
        L5_2 = A0_2._cur_alley_transport_route_state
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.AlleyTransportRouteState
        L6_2 = L6_2.Draw
        if L5_2 == L6_2 then
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.UIUtils
          L5_2 = L5_2.GetWheelItemIndexByFourWheel
          L6_2 = A0_2._x_pos
          L7_2 = A0_2._y_pos
          L5_2 = L5_2(L6_2, L7_2)
          L4_2 = L5_2 == 1
        end
      end
      if L4_2 then
        L5_2 = math
        L5_2 = L5_2.min
        L6_2 = L3_2.y
        L7_2 = A0_2._move_factor
        L7_2 = A1_2 * L7_2
        L6_2 = L6_2 + L7_2
        L7_2 = A0_2._safe_up_pos
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.root
        L6_2 = L6_2.transform
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.Vector3
        L8_2 = L3_2.x
        L9_2 = L5_2
        L10_2 = 0
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L6_2.localPosition = L7_2
      end
    end
  end
end
L0_1._on_process_cursor_move_up = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = -A1_2
  A0_2._y_pos = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.localPosition
  L5_2 = A0_2
  L4_2 = A0_2.check_is_in_safe_zoom
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.float_equal
    L5_2 = L3_2.y
    L6_2 = A0_2._safe_down_pos
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = A0_2._limit_press_callback_func
      if L4_2 then
        L4_2 = A0_2._limit_press_callback_func
        L5_2 = A0_2._callback_obj
        L6_2 = CS
        L6_2 = L6_2.InControl
        L6_2 = L6_2.InputControlType
        L6_2 = L6_2.LeftStickDown
        L6_2 = #L6_2
        L7_2 = A1_2
        L4_2(L5_2, L6_2, L7_2)
      end
    else
      L4_2 = true
      if A2_2 then
        L5_2 = A0_2._cur_alley_transport_route_state
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.AlleyTransportRouteState
        L6_2 = L6_2.Draw
        if L5_2 == L6_2 then
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.UIUtils
          L5_2 = L5_2.GetWheelItemIndexByFourWheel
          L6_2 = A0_2._x_pos
          L7_2 = A0_2._y_pos
          L5_2 = L5_2(L6_2, L7_2)
          L4_2 = L5_2 == 3
        end
      end
      if L4_2 then
        L5_2 = math
        L5_2 = L5_2.max
        L6_2 = L3_2.y
        L7_2 = A0_2._move_factor
        L7_2 = A1_2 * L7_2
        L6_2 = L6_2 - L7_2
        L7_2 = A0_2._safe_down_pos
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.root
        L6_2 = L6_2.transform
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.Vector3
        L8_2 = L3_2.x
        L9_2 = L5_2
        L10_2 = 0
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L6_2.localPosition = L7_2
      end
    end
  end
end
L0_1._on_process_cursor_move_down = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = -A1_2
  A0_2._x_pos = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.localPosition
  L5_2 = A0_2
  L4_2 = A0_2.check_is_in_safe_zoom
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.float_equal
    L5_2 = L3_2.x
    L6_2 = A0_2._safe_left_pos
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = A0_2._limit_press_callback_func
      if L4_2 then
        L4_2 = A0_2._limit_press_callback_func
        L5_2 = A0_2._callback_obj
        L6_2 = CS
        L6_2 = L6_2.InControl
        L6_2 = L6_2.InputControlType
        L6_2 = L6_2.LeftStickLeft
        L6_2 = #L6_2
        L7_2 = A1_2
        L4_2(L5_2, L6_2, L7_2)
      end
    else
      L4_2 = true
      if A2_2 then
        L5_2 = A0_2._cur_alley_transport_route_state
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.AlleyTransportRouteState
        L6_2 = L6_2.Draw
        if L5_2 == L6_2 then
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.UIUtils
          L5_2 = L5_2.GetWheelItemIndexByFourWheel
          L6_2 = A0_2._x_pos
          L7_2 = A0_2._y_pos
          L5_2 = L5_2(L6_2, L7_2)
          L4_2 = L5_2 == 4
        end
      end
      if L4_2 then
        L5_2 = math
        L5_2 = L5_2.max
        L6_2 = L3_2.x
        L7_2 = A0_2._move_factor
        L7_2 = A1_2 * L7_2
        L6_2 = L6_2 - L7_2
        L7_2 = A0_2._safe_left_pos
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.root
        L6_2 = L6_2.transform
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.Vector3
        L8_2 = L5_2
        L9_2 = L3_2.y
        L10_2 = 0
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L6_2.localPosition = L7_2
      end
    end
  end
end
L0_1._on_process_cursor_move_left = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._x_pos = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.localPosition
  L5_2 = A0_2
  L4_2 = A0_2.check_is_in_safe_zoom
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.MathUtils
    L4_2 = L4_2.float_equal
    L5_2 = L3_2.x
    L6_2 = A0_2._safe_right_pos
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = A0_2._limit_press_callback_func
      if L4_2 then
        L4_2 = A0_2._limit_press_callback_func
        L5_2 = A0_2._callback_obj
        L6_2 = CS
        L6_2 = L6_2.InControl
        L6_2 = L6_2.InputControlType
        L6_2 = L6_2.LeftStickRight
        L6_2 = #L6_2
        L7_2 = A1_2
        L4_2(L5_2, L6_2, L7_2)
      end
    else
      L4_2 = true
      if A2_2 then
        L5_2 = A0_2._cur_alley_transport_route_state
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.AlleyTransportRouteState
        L6_2 = L6_2.Draw
        if L5_2 == L6_2 then
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.UIUtils
          L5_2 = L5_2.GetWheelItemIndexByFourWheel
          L6_2 = A0_2._x_pos
          L7_2 = A0_2._y_pos
          L5_2 = L5_2(L6_2, L7_2)
          L4_2 = L5_2 == 2
        end
      end
      if L4_2 then
        L5_2 = math
        L5_2 = L5_2.min
        L6_2 = L3_2.x
        L7_2 = A0_2._move_factor
        L7_2 = A1_2 * L7_2
        L6_2 = L6_2 + L7_2
        L7_2 = A0_2._safe_right_pos
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.root
        L6_2 = L6_2.transform
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.Vector3
        L8_2 = L5_2
        L9_2 = L3_2.y
        L10_2 = 0
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L6_2.localPosition = L7_2
      end
    end
  end
end
L0_1._on_process_cursor_move_right = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.transform
    L2_2 = L2_2.localPosition
  end
  L3_2 = L2_2.x
  L4_2 = A0_2._safe_left_pos
  L3_2 = G
  L3_2 = L3_2.MathUtils
  L3_2 = L3_2.float_equal
  L4_2 = L2_2.x
  L5_2 = A0_2._safe_left_pos
  L3_2 = L3_2 > L4_2 or L3_2
  L4_2 = L2_2.x
  L5_2 = A0_2._safe_right_pos
  L4_2 = G
  L4_2 = L4_2.MathUtils
  L4_2 = L4_2.float_equal
  L5_2 = L2_2.x
  L6_2 = A0_2._safe_right_pos
  L4_2 = L4_2 < L5_2 or L4_2
  L5_2 = L2_2.y
  L6_2 = A0_2._safe_down_pos
  L5_2 = G
  L5_2 = L5_2.MathUtils
  L5_2 = L5_2.float_equal
  L6_2 = L2_2.y
  L7_2 = A0_2._safe_down_pos
  L5_2 = L5_2 > L6_2 or L5_2
  L6_2 = L2_2.y
  L7_2 = A0_2._safe_up_pos
  L6_2 = G
  L6_2 = L6_2.MathUtils
  L6_2 = L6_2.float_equal
  L7_2 = L2_2.y
  L8_2 = A0_2._safe_up_pos
  L6_2 = L6_2 < L7_2 or L6_2
  L7_2 = L3_2 or L7_2
  L7_2 = L4_2 or L7_2
  L7_2 = L5_2 or L7_2
  if L3_2 and L4_2 and L5_2 then
    L7_2 = L6_2
  end
  return L7_2
end
L0_1.check_is_in_safe_zoom = L8_1
return L0_1
