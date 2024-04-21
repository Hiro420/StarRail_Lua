local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DAvatar"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DAvatarPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._owner = A1_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.List
  L2_2 = L2_2(L3_2)
  A0_2._ui3d_avatars = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._ui3d_avatars
  L4_2 = L3_2
  L3_2 = L3_2.Pairs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_avatar_real_id
    L8_2 = L8_2(L9_2)
    L9_2 = A1_2.RealID
    if L8_2 == L9_2 then
      L9_2 = L7_2
      L8_2 = L7_2.is_dress_same_skin
      L10_2 = A2_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L9_2 = L7_2
        L8_2 = L7_2.is_in_use
        L8_2 = L8_2(L9_2)
        if not L8_2 then
          L9_2 = L7_2
          L8_2 = L7_2.set_in_use
          L10_2 = true
          L8_2(L9_2, L10_2)
          L9_2 = L7_2
          L8_2 = L7_2.set_visible
          L10_2 = true
          L8_2(L9_2, L10_2)
          return L7_2
        end
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.create_ui3d_avatar
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_in_use
  L6_2 = true
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1.fetch_ui3d_avatar = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.UI3DAvatar
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.create_entity
  L6_2 = A0_2._root
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._ui3d_avatars
  L5_2 = L4_2
  L4_2 = L4_2.Add
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1.create_ui3d_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._ui3d_avatars
    if L2_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A0_2._ui3d_avatars
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.dispose
  L2_2(L3_2)
  L2_2 = delete
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1.remove_ui3d_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._ui3d_avatars
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d_avatars
    L2_2 = L1_2
    L1_2 = L1_2.Count
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._ui3d_avatars
  L2_2 = L1_2
  L1_2 = L1_2.Pairs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.dispose
    L6_2(L7_2)
    L6_2 = delete
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L1_2 = A0_2._ui3d_avatars
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1.remove_all_ui3d_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._ui3d_avatars
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d_avatars
    L2_2 = L1_2
    L1_2 = L1_2.Count
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._ui3d_avatars
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 - 1
  L2_2 = 0
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._ui3d_avatars
    L6_2 = L5_2
    L5_2 = L5_2.Get
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.is_in_use
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.remove_ui3d_avatar
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.remove_unused_ui3d_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._ui3d_avatars
  L2_2 = L1_2
  L1_2 = L1_2.Pairs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_visible
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1.hide_all_ui3d_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._ui3d_avatars
  L2_2 = L1_2
  L1_2 = L1_2.Pairs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_in_use
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.set_visible
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.hide_unused_ui3d_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._ui3d_avatars
  L2_2 = L1_2
  L1_2 = L1_2.Pairs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2
    L8_2 = L6_2
    L7_2 = L6_2.set_in_use
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_all_ui3d_avatars_unused = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._ui3d_avatars
  return L1_2
end
L0_1.get_all_ui3d_avatars = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._ui3d_avatars
  L3_2 = L2_2
  L2_2 = L2_2.Pairs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_visible
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_all_avatar_visible = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._ui3d_avatars
  L2_2 = L1_2
  L1_2 = L1_2.Pairs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_eye_look
    L8_2 = nil
    L6_2(L7_2, L8_2)
  end
end
L0_1.reset_eye_look = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._ui3d_avatars
  L3_2 = L2_2
  L2_2 = L2_2.Pairs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_visible_when_active_change
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_all_avatar_visible_when_active_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_all_ui3d_avatars
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.set_all_avatar_visible_when_active_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.owner_active_change = L1_1
return L0_1
