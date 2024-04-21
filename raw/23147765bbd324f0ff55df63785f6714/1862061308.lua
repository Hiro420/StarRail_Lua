local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoGraphHideTouchPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_gesture_listener
  L1_2(L2_2)
end
L0_1.hide = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_pinch
  if not L1_2 then
    L1_2 = A0_2._is_in_swipe
    if not L1_2 then
      goto lbl_9
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2._remove_easy_touch_handlers
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end
L0_1.try_unhide = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.PinchIn
  L4_2 = A0_2._on_pinch
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.PinchOut
  L4_2 = A0_2._on_pinch
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
  L3_2 = L3_2.PinchEnd
  L4_2 = A0_2._on_pinch_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeEnd
  L4_2 = A0_2._on_swipe_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_gesture_listener = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_in_pinch = true
end
L0_1._on_pinch = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_in_swipe = true
end
L0_1._on_swipe = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_in_pinch = false
end
L0_1._on_pinch_end = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_in_swipe = false
end
L0_1._on_swipe_end = L1_1
return L0_1
