local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DCamera"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._native_camera_state = nil
  A0_2._is_enable_auto_fit = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._root
  return L1_2
end
L0_1.root = L1_1
function L1_1(A0_2, A1_2)
  A0_2._native_camera_state = A1_2
end
L0_1.set_native = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._native_camera_state
  return L1_2
end
L0_1.native_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_camera_state
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._native_camera_state
  L2_2 = L1_2
  L1_2 = L1_2.Active
  L1_2(L2_2)
end
L0_1.active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native_camera_state
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._native_camera_state
  L3_2 = L2_2
  L2_2 = L2_2.SetFollow
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_follow = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native_camera_state
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._native_camera_state
  L3_2 = L2_2
  L2_2 = L2_2.SetLookAt
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_look_at = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native_camera_state
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._native_camera_state
  L3_2 = L2_2
  L2_2 = L2_2.SetFov
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_fov = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native_camera_state
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._native_camera_state
  L3_2 = L2_2
  L2_2 = L2_2.SetTrackedOffset
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_tracked_offset = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native_camera_state
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._native_camera_state
  L3_2 = L2_2
  L2_2 = L2_2.AddTrackedOffset
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_tracked_offset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_camera_state
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._native_camera_state
  L2_2 = L1_2
  L1_2 = L1_2.IsActive
  return L1_2(L2_2)
end
L0_1.is_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native_camera_state
  if L2_2 ~= nil then
    if A1_2 ~= false then
      goto lbl_10
    end
    L2_2 = A0_2._is_enable_auto_fit
    if L2_2 ~= A1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  A0_2._is_enable_auto_fit = A1_2
  L2_2 = A0_2._native_camera_state
  L3_2 = L2_2
  L2_2 = L2_2.EnableAutoFitScreen
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_auto_fit_screen = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native_camera_state
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._native_camera_state
  L3_2 = L2_2
  L2_2 = L2_2.SetOrbitalTransposerFollowOffset
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_orbital_transposer_follow_offset = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.dispose = L1_1
return L0_1
