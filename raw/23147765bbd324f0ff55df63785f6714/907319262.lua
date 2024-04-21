local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.UnityEngine
L0_1 = L0_1.EventSystems
L1_1 = 20
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityClockParkGamePlayDragDiceItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = 0
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._gamepad_control_pos = L3_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetLuaCallback
  L4_2 = A0_2._custom_tick
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_item
  L3_2 = L2_2
  L2_2 = L2_2.register_dice_op_callback
  L4_2 = A0_2
  L5_2 = A0_2._stop_drag
  L6_2 = A0_2._stop_drag
  L7_2 = A0_2._stop_drag
  L8_2 = A0_2._stop_drag
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._on_drag_callback_func = nil
  A0_2._end_drag_callback_func = nil
  A0_2._drag_callback_self = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 and A1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UICamera
    L3_2 = L2_2
    L2_2 = L2_2.WorldToScreenPoint
    L5_2 = A1_2
    L4_2 = A1_2.get_trans_pos
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    A0_2._gamepad_control_pos = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_dice_item
    L3_2 = L2_2
    L2_2 = L2_2.set_enable_action
    L4_2 = true
    L6_2 = A1_2
    L5_2 = A1_2.get_action_name
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_dice_item
    L5_2 = L4_2
    L4_2 = L4_2.get_first_selected_object
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L2_1.begin_drag = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_dice_item
  L2_2 = L1_2
  L1_2 = L1_2.set_enable_action
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L2_2 = L1_2
    L1_2 = L1_2.SetSelectedGameObject
    L3_2 = nil
    L1_2(L2_2, L3_2)
  end
end
L2_1.end_drag = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.InputProxy
    L1_2 = L1_2.GetMouseButton
    L2_2 = 0
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._stop_drag
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_dice_drag_pos
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_drag_pos
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._on_drag_callback_func
  L4_2 = A0_2._drag_callback_self
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._custom_tick = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_gamepad_input_pos
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_13
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_mouse_input_pos
  L1_2 = L1_2(L2_2)
  ::lbl_13::
  return L1_2
end
L2_1._get_dice_drag_pos = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = A0_2._gamepad_control_pos
  L2_2 = L2_2.x
  L3_2 = A0_2._gamepad_control_pos
  L3_2 = L3_2.y
  return L1_2(L2_2, L3_2)
end
L2_1._get_gamepad_input_pos = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Input
  L2_2 = L2_2.mousePosition
  L2_2 = L2_2.x
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Input
  L3_2 = L3_2.mousePosition
  L3_2 = L3_2.y
  return L1_2(L2_2, L3_2)
end
L2_1._get_mouse_input_pos = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.RectTransformUtility
  L2_2 = L2_2.ScreenPointToLocalPointInRectangle
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.parent
  L4_2 = A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UICamera
  L6_2 = nil
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "pang: \232\142\183\229\143\150\229\157\144\230\160\135\229\164\177\232\180\165"
    L4_2(L5_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L2_1._update_drag_pos = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Vector3
    L4_2 = A0_2._gamepad_control_pos
    L4_2 = L4_2.x
    L5_2 = A0_2._gamepad_control_pos
    L5_2 = L5_2.y
    L6_2 = L1_1
    L6_2 = A2_2 * L6_2
    L5_2 = L5_2 + L6_2
    L6_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._gamepad_control_pos = L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickDown
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Vector3
    L4_2 = A0_2._gamepad_control_pos
    L4_2 = L4_2.x
    L5_2 = A0_2._gamepad_control_pos
    L5_2 = L5_2.y
    L6_2 = L1_1
    L6_2 = A2_2 * L6_2
    L5_2 = L5_2 - L6_2
    L6_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._gamepad_control_pos = L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickLeft
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Vector3
    L4_2 = A0_2._gamepad_control_pos
    L4_2 = L4_2.x
    L5_2 = L1_1
    L5_2 = A2_2 * L5_2
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2._gamepad_control_pos
    L5_2 = L5_2.y
    L6_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._gamepad_control_pos = L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickRight
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Vector3
    L4_2 = A0_2._gamepad_control_pos
    L4_2 = L4_2.x
    L5_2 = L1_1
    L5_2 = A2_2 * L5_2
    L4_2 = L4_2 + L5_2
    L5_2 = A0_2._gamepad_control_pos
    L5_2 = L5_2.y
    L6_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._gamepad_control_pos = L3_2
  end
end
L2_1._on_in_control_press = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_dice_item
  L3_2 = L2_2
  L2_2 = L2_2.set_up_dice_value
  L4_2 = A1_2.DiceValue
  L2_2(L3_2, L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_dice_drag_pos
  return L1_2(L2_2)
end
L2_1.get_drag_dice_pos = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._on_drag_callback_func = A1_2
  A0_2._end_drag_callback_func = A2_2
  A0_2._drag_callback_self = A3_2
end
L2_1.register_on_drag_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._stop_drag
  L2_2(L3_2)
end
L2_1._on_in_control_input_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._stop_drag
  L1_2(L2_2)
end
L2_1._on_leave_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._end_drag_callback_func
  L3_2 = A0_2._drag_callback_self
  L5_2 = A0_2
  L4_2 = A0_2._get_dice_drag_pos
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1._stop_drag = L3_1
return L2_1
