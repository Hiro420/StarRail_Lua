local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DTouchPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonoUI3DTouch
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._ui3d_touch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonoExUICamera
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mono_ex_ui_camera = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._on_swipe_handler = nil
  A0_2._on_swipe_listener = nil
  A0_2._on_swipe_end_handler = nil
  A0_2._on_swipe_end_listener = nil
  A0_2._on_pinch_handler = nil
  A0_2._on_pinch_listener = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._ui3d_touch
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L4_2 = A0_2
  L3_2 = A0_2.get_camera
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.init_touch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d_touch
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_touch_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mono_ex_ui_camera
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_mono_ex_ui_camera_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui3d_touch
  L2_2 = L1_2
  L1_2 = L1_2.Refresh
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mono_ex_ui_camera
  L3_2 = L2_2
  L2_2 = L2_2.SetCameraOriginPos
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._ui3d_touch
  L3_2 = L2_2
  L2_2 = L2_2.Refresh
  L2_2(L3_2)
end
L0_1.set_camera_origin_pos = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mono_ex_ui_camera
  L3_2 = L2_2
  L2_2 = L2_2.SetDragGoPosOffset
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_drag_offset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mono_ex_ui_camera
  L2_2 = L1_2
  L1_2 = L1_2.GetCameraPivot
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.z
  return L1_2
end
L0_1.get_camera_pos_z = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._on_swipe_handler = A1_2
  A0_2._on_swipe_listener = A2_2
  L3_2 = A0_2._ui3d_touch
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_swipe
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L3_2.onSwipe = L4_2
end
L0_1.register_swipe_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._on_swipe_end_handler = A1_2
  A0_2._on_swipe_end_listener = A2_2
  L3_2 = A0_2._ui3d_touch
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_swipe_end
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L3_2.onSwipeEnd = L4_2
end
L0_1.register_swipe_end_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._on_pinch_handler = A1_2
  A0_2._on_pinch_listener = A2_2
  L3_2 = A0_2._ui3d_touch
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_pinch
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L3_2.onPinch = L4_2
end
L0_1.register_pinch_handler = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = 0.1
  end
  if not A2_2 then
    A2_2 = 0.1
  end
  if not A3_2 then
    A3_2 = 0.1
  end
  if not A4_2 then
    A4_2 = 0.1
  end
  L5_2 = A0_2._mono_ex_ui_camera
  L6_2 = L5_2
  L5_2 = L5_2.SetCanvasMargin
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.set_margin = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_swipe_handler
  if L2_2 then
    L2_2 = A0_2._on_swipe_handler
    L3_2 = A0_2._on_swipe_listener
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_swipe = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_swipe_end_handler
  if L2_2 then
    L2_2 = A0_2._on_swipe_end_handler
    L3_2 = A0_2._on_swipe_end_listener
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_swipe_end = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_pinch_handler
  if L2_2 then
    L2_2 = A0_2._on_pinch_handler
    L3_2 = A0_2._on_pinch_listener
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_pinch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mono_ex_ui_camera
  L3_2 = L2_2
  L2_2 = L2_2.SwipeCamera
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.swipe_camera = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._mono_ex_ui_camera
  L4_2 = L3_2
  L3_2 = L3_2.FocusCamera
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.focus_camera = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mono_ex_ui_camera
  L3_2 = L2_2
  L2_2 = L2_2.MoveCamera
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.move_camera = L1_1
return L0_1
