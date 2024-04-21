local L0_1, L1_1, L2_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.Map3DUtils
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "Map3DModelIconInfo"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2.icon3d_object = A2_2
  A0_2.visible = true
  A0_2.pose_ids = nil
  A0_2._container = A1_2
  A0_2._target_item = A3_2
  A0_2._is_circle = A4_2
  A0_2._is_player_direction = A5_2
  A0_2._set_opacity_coroutine = nil
  A0_2._opacity = 1
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.visible = A1_2
  L2_2 = A0_2.icon3d_object
  if L2_2 ~= nil then
    L2_2 = A0_2.icon3d_object
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.set_visible = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.icon3d_object
  if L1_2 ~= nil then
    L1_2 = A0_2._container
    L2_2 = L1_2
    L1_2 = L1_2.destroy_object
    L3_2 = A0_2.icon3d_object
    L1_2(L2_2, L3_2)
  end
end
L1_1.destroy_icons = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.GetRotatableRegionItemWorldPosition
  L2_2 = A0_2._target_item
  L3_2 = A0_2._is_circle
  L3_2 = not L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = nil
  L3_2 = A0_2._is_player_direction
  if L3_2 then
    L3_2 = L0_1.GetMainCameraWorldRotation
    L4_2 = A0_2._target_item
    L4_2 = L4_2.RotatableRegionMapData
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L3_2 = A0_2._target_item
    L3_2 = L3_2.IsPlayer
    if L3_2 then
      L3_2 = L0_1.ComputePlayerWorldRotation
      L4_2 = A0_2._target_item
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    else
      L3_2 = L0_1.GetRotatableRegionItemWorldRotation
      L4_2 = A0_2._target_item
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_position_and_rotation
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1.refresh_transform = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._is_player_direction
  if not L2_2 then
    L2_2 = A0_2._is_circle
    if not L2_2 then
      goto lbl_13
    end
  end
  L2_2 = L0_1.GetRotatableRegionCircleOpacity
  L3_2 = A0_2._target_item
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  goto lbl_18
  ::lbl_13::
  L2_2 = L0_1.GetRotatableRegionItemOpacity
  L3_2 = A0_2._target_item
  L4_2 = A0_2.icon3d_object
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  ::lbl_18::
  L3_2 = A0_2
  L2_2 = A0_2._set_opacity
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_player_direction
  if not L2_2 then
    L2_2 = A0_2._is_circle
    if not L2_2 then
      goto lbl_33
    end
  end
  L2_2 = L0_1.GetRotatableRegionItemCircleScale
  L3_2 = A0_2._target_item
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.icon3d_object
  L3_2 = L3_2.transform
  L3_2.localScale = L2_2
  ::lbl_33::
end
L1_1.refresh_opacity = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.icon3d_object
  if L3_2 ~= nil then
    L3_2 = A0_2.icon3d_object
    L3_2 = L3_2.transform
    L3_2.position = A1_2
    L3_2 = A0_2.icon3d_object
    L3_2 = L3_2.transform
    L3_2.rotation = A2_2
  end
end
L1_1._set_position_and_rotation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = A0_2._opacity
  L3_2 = A1_2 - L3_2
  L2_2 = L2_2(L3_2)
  if L2_2 < 1.0E-5 then
    return
  end
  A0_2._opacity = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._start_smoothly_set_opacity
  L4_2 = A1_2
  L5_2 = 0.2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._set_opacity = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._set_opacity_coroutine
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.StopCoroutine
    L2_2 = A0_2._set_opacity_coroutine
    L1_2(L2_2)
    A0_2._set_opacity_coroutine = nil
  end
end
L1_1._cancel_smoothly_set_opacity = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._cancel_smoothly_set_opacity
  L3_2(L4_2)
  L3_2 = L0_1.SmoothlySetOpacity
  L4_2 = A0_2.icon3d_object
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._set_opacity_coroutine = L3_2
end
L1_1._start_smoothly_set_opacity = L2_1
