local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseAvatarSelectStrategy"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._selectable_check = L1_2
  L1_2 = {}
  A0_2._selectable_check_callback = L1_2
  L1_2 = {}
  A0_2._unselectable_check = L1_2
  L1_2 = {}
  A0_2._unselectable_check_callback = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1.has_been_selected
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_unselect
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._try_select
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.get_selected_avatars = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.AvatarUtils
    L7_2 = L7_2.is_same_avatar
    L8_2 = L6_2
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.has_been_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    if L6_2 == nil then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1.get_first_vacancy_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 1
  L4_2 = A2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    if L7_2 then
      L8_2 = G
      L8_2 = L8_2.AvatarUtils
      L8_2 = L8_2.is_same_avatar
      L9_2 = L7_2
      L10_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        return L6_2
      end
    end
  end
  L3_2 = 0
  return L3_2
end
L0_1.get_avatar_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = A2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = A0_2[L6_2]
      L7_2 = L7_2.ID
      if A1_2 == L7_2 then
        return L6_2
      end
    end
  end
  L3_2 = 0
  return L3_2
end
L0_1.get_avatar_id_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ipairs
  L4_2 = A0_2._selectable_check
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._selectable_check_callback
    L8_2 = L8_2[L6_2]
    L9_2 = L7_2
    L10_2 = A1_2
    L11_2 = A2_2
    L9_2 = L9_2(L10_2, L11_2)
    if L8_2 ~= nil then
      L10_2 = L8_2
      L11_2 = L9_2
      L10_2(L11_2)
    end
    if L9_2 == false then
      return A1_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._do_select
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._try_select = L1_1
function L1_1(A0_2, A1_2, A2_2)
end
L0_1._do_select = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ipairs
  L4_2 = A0_2._unselectable_check
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._unselectable_check_callback
    L8_2 = L8_2[L6_2]
    L9_2 = L7_2
    L10_2 = A1_2
    L11_2 = A2_2
    L9_2 = L9_2(L10_2, L11_2)
    if L8_2 ~= nil then
      L10_2 = L8_2
      L11_2 = L9_2
      L10_2(L11_2)
    end
    if L9_2 == false then
      return A1_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._do_unselect
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._try_unselect = L1_1
function L1_1(A0_2, A1_2, A2_2)
end
L0_1._do_unselect = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._selectable_check
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = A0_2._selectable_check
  L4_2[L3_2] = A1_2
  L4_2 = A0_2._selectable_check_callback
  L4_2[L3_2] = A2_2
end
L0_1.add_select_check = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._unselectable_check
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = A0_2._unselectable_check
  L4_2[L3_2] = A1_2
  L4_2 = A0_2._unselectable_check_callback
  L4_2[L3_2] = A2_2
end
L0_1.add_unselect_check = L1_1
return L0_1
