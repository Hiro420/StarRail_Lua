local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Qte.QteSwipePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QteSwipePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Menu_QTESwipeUp"
L2_1 = "Menu_QTESwipeDown"
L3_1 = "Menu_QTESwipeLeft"
L4_1 = "Menu_QTESwipeRight"
L5_1 = "MiniGameQTEActionPanel_ArrowLoop"
L6_1 = "MiniGameQTEActionPanel_ArrowLoop2"
L7_1 = 30
L8_1 = 0.8
function L9_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L1_2 = L1_2.zero
  A0_2._stick_vector = L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeStart
  L4_2 = A0_2._on_swipe_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._on_swipe
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeEnd
  L4_2 = A0_2._on_swipe_end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pc_btn_click
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_short_down_click
    L3_2 = A0_2._binder
    L3_2 = L3_2.pc_btn_click
    L4_2 = A0_2._on_btn_click_short_down_click
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_load = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.count_down_bar
  L3_2 = L2_2
  L2_2 = L2_2.mono_tick
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.mono_tick = L9_1
function L9_1(A0_2, A1_2)
  A0_2._cfg = A1_2
end
L0_1.set_config = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._end_callback = A1_2
  A0_2._end_handler = A2_2
end
L0_1.register_end_callback = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_button
  L2_2 = L2_2.transform
  L2_2.localPosition = A1_2
end
L0_1.set_position = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_screen_swipe_direction
  L3_2 = A0_2._cfg
  L3_2 = L3_2.SwipeDirection
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._swipe_direction_vector2 = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.MMathf
  L1_2 = L1_2.Cos
  L2_2 = L7_1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.MMathf
  L3_2 = L3_2.Deg2Rad
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2(L2_2)
  A0_2._swipe_direction_threshold = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_in_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rotate
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.count_down_bar
  L2_2 = L1_2
  L1_2 = L1_2.start
  L3_2 = A0_2._cfg
  L3_2 = L3_2.Duration
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.count_down_bar
  L2_2 = L1_2
  L1_2 = L1_2.register_time_out_callback
  L3_2 = A0_2._fail
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_swipe_panel
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_swipe_panel
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L0_1.start = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_in_control_action_name
  L3_2 = A0_2._cfg
  L3_2 = L3_2.SwipeDirection
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.pc_in_control_button
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.pc_in_control_button
    L3_2 = L2_2
    L2_2 = L2_2.SetActionName
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.pc_in_control_tip
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.pc_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SetInControlTipKey
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_in_control = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_node_euler_angle
  L3_2 = A0_2._cfg
  L3_2 = L3_2.SwipeDirection
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_swipe_panel
  L2_2.localEulerAngles = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.pc_node_in_control_tip
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.pc_node_in_control_tip
    L3_2 = -L1_2
    L2_2.localEulerAngles = L3_2
  end
end
L0_1._setup_rotate = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._end_callback
  L2_2 = A0_2._end_handler
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._success = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._end_callback
  L2_2 = A0_2._end_handler
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._fail = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_in_control_action_name
  L4_2 = A0_2._cfg
  L4_2 = L4_2.SwipeDirection
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InControlActionsManager
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.GetInControlActionData
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = L3_2.BindKeyboard
  L4_2 = L4_2(L5_2)
  if L4_2 ~= A1_2 then
    L6_2 = A0_2
    L5_2 = A0_2._fail
    L5_2(L6_2)
  end
end
L0_1._on_keyboard_click = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickX
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_stick_x
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickY
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._set_stick_y
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.DPadX
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._set_dpad_x
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.DPadY
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._set_dpad_y
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_press = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._stick_vector
  L2_2.x = A1_2
  A0_2._stick_x_new = true
  L3_2 = A0_2
  L2_2 = A0_2._update_stick
  L2_2(L3_2)
end
L0_1._set_stick_x = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._stick_vector
  L2_2.y = A1_2
  A0_2._stick_y_new = true
  L3_2 = A0_2
  L2_2 = A0_2._update_stick
  L2_2(L3_2)
end
L0_1._set_stick_y = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._stick_vector
  L2_2.x = A1_2
  A0_2._stick_x_new = true
  L2_2 = A0_2._stick_vector
  L2_2.y = 0
  A0_2._stick_y_new = true
  L3_2 = A0_2
  L2_2 = A0_2._update_stick
  L2_2(L3_2)
end
L0_1._set_dpad_x = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._stick_vector
  L2_2.x = 0
  A0_2._stick_x_new = true
  L2_2 = A0_2._stick_vector
  L2_2.y = A1_2
  A0_2._stick_y_new = true
  L3_2 = A0_2
  L2_2 = A0_2._update_stick
  L2_2(L3_2)
end
L0_1._set_dpad_y = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._stick_x_new
  if L1_2 then
    L1_2 = A0_2._stick_y_new
  end
  if not L1_2 then
    return
  end
  A0_2._stick_x_new = false
  A0_2._stick_y_new = false
  L2_2 = A0_2._stick_vector
  L2_2 = L2_2.magnitude
  L3_2 = L8_1
  if L2_2 < L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L3_2 = L3_2.Dot
  L4_2 = A0_2._stick_vector
  L4_2 = L4_2.normalized
  L5_2 = A0_2._swipe_direction_vector2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._swipe_direction_threshold
  if L3_2 < L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._fail
    L4_2(L5_2)
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._success
  L4_2(L5_2)
end
L0_1._update_stick = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.QTEUIData
  L2_2 = L2_2.SwipeDirectionType
  L2_2 = L2_2.Up
  if A1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector2
    L2_2 = L2_2.up
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.QTEUIData
    L2_2 = L2_2.SwipeDirectionType
    L2_2 = L2_2.Down
    if A1_2 == L2_2 then
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.Vector2
      L2_2 = L2_2.down
      return L2_2
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.QTEUIData
      L2_2 = L2_2.SwipeDirectionType
      L2_2 = L2_2.Left
      if A1_2 == L2_2 then
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.Vector2
        L2_2 = L2_2.left
        return L2_2
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.QTEUIData
        L2_2 = L2_2.SwipeDirectionType
        L2_2 = L2_2.Right
        if A1_2 == L2_2 then
          L2_2 = CS
          L2_2 = L2_2.UnityEngine
          L2_2 = L2_2.Vector2
          L2_2 = L2_2.right
          return L2_2
        else
          L2_2 = CS
          L2_2 = L2_2.UnityEngine
          L2_2 = L2_2.Vector2
          L2_2 = L2_2.right
          return L2_2
        end
      end
    end
  end
end
L0_1._get_screen_swipe_direction = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.QTEUIData
  L2_2 = L2_2.SwipeDirectionType
  L2_2 = L2_2.Up
  if A1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = 0
    L4_2 = 0
    L5_2 = 90
    return L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.QTEUIData
    L2_2 = L2_2.SwipeDirectionType
    L2_2 = L2_2.Down
    if A1_2 == L2_2 then
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.Vector3
      L3_2 = 0
      L4_2 = 0
      L5_2 = -90
      return L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.QTEUIData
      L2_2 = L2_2.SwipeDirectionType
      L2_2 = L2_2.Left
      if A1_2 == L2_2 then
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.Vector3
        L3_2 = 0
        L4_2 = 0
        L5_2 = 180
        return L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.QTEUIData
        L2_2 = L2_2.SwipeDirectionType
        L2_2 = L2_2.Right
        if A1_2 == L2_2 then
          L2_2 = CS
          L2_2 = L2_2.UnityEngine
          L2_2 = L2_2.Vector3
          L3_2 = 0
          L4_2 = 0
          L5_2 = 0
          return L2_2(L3_2, L4_2, L5_2)
        else
          L2_2 = CS
          L2_2 = L2_2.UnityEngine
          L2_2 = L2_2.Vector3
          L3_2 = 0
          L4_2 = 0
          L5_2 = 0
          return L2_2(L3_2, L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._get_node_euler_angle = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.QTEUIData
  L2_2 = L2_2.SwipeDirectionType
  L2_2 = L2_2.Up
  if A1_2 == L2_2 then
    L2_2 = _UP_ACTION_NAME
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.QTEUIData
    L2_2 = L2_2.SwipeDirectionType
    L2_2 = L2_2.Down
    if A1_2 == L2_2 then
      L2_2 = L2_1
      return L2_2
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.QTEUIData
      L2_2 = L2_2.SwipeDirectionType
      L2_2 = L2_2.Left
      if A1_2 == L2_2 then
        L2_2 = L3_1
        return L2_2
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.QTEUIData
        L2_2 = L2_2.SwipeDirectionType
        L2_2 = L2_2.Right
        if A1_2 == L2_2 then
          L2_2 = L4_1
          return L2_2
        else
          L2_2 = L4_1
          return L2_2
        end
      end
    end
  end
end
L0_1._get_in_control_action_name = L9_1
function L9_1(A0_2, A1_2)
  A0_2._is_swiping = true
end
L0_1._on_swipe_start = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_swiping = true
  L2_2 = A1_2.position
  L3_2 = A1_2.startPosition
  L2_2 = L2_2 - L3_2
  L3_2 = L2_2.magnitude
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AppUtils
  L4_2 = L4_2.Dpi
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2._cfg
  L4_2 = L4_2.SwipeDistanceInch
  if L3_2 < L4_2 then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L4_2 = L4_2.Dot
  L5_2 = L2_2.normalized
  L6_2 = A0_2._swipe_direction_vector2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._swipe_direction_threshold
  if L4_2 < L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._fail
    L5_2(L6_2)
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._success
  L5_2(L6_2)
end
L0_1._on_swipe = L9_1
function L9_1(A0_2, A1_2)
  A0_2._is_swiping = false
end
L0_1._on_swipe_end = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._success
  L1_2(L2_2)
end
L0_1._on_btn_click_short_down_click = L9_1
return L0_1
