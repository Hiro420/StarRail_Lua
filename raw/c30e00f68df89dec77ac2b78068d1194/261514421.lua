local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MultiTeamSelection"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = {}
  A0_2._selected_teams = L4_2
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = 4
  end
  A0_2._max_member_count_each_team = L4_2
  A0_2._team_count = A1_2
  L4_2 = 1
  L5_2 = A0_2._team_count
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._selected_teams
    L9_2 = A0_2._selected_teams
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L8_2[L9_2] = L10_2
  end
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = 1
  end
  A0_2._editing_team_index = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._editing_team_index = A1_2
end
L0_1.set_editing_team = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 ~= 0 then
    L3_2 = A0_2._team_count
    if not (A2_2 > L3_2) then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L3_2 = A0_2._selected_teams
  L3_2[A2_2] = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._mark_selection_dirty
  L3_2(L4_2)
end
L0_1.set_avatars_by_index = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._max_member_count_each_team
  return L1_2
end
L0_1.get_max_member_count_each_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._selected_teams
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_avatars_by_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._selected_teams
  L2_2 = A0_2._editing_team_index
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1.get_editing_selection = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._selected_teams
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2._selected_teams
  L5_2 = A0_2._selected_teams
  L5_2 = L5_2[A2_2]
  L4_2[A1_2] = L5_2
  L4_2 = A0_2._selected_teams
  L4_2[A2_2] = L3_2
  L5_2 = A0_2
  L4_2 = A0_2._mark_selection_dirty
  L4_2(L5_2)
end
L0_1.swap_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_team_by_index
  L3_2 = A0_2._editing_team_index
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1
  L3_2 = A0_2._max_member_count_each_team
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 == nil then
      L6_2 = false
      return L6_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.is_full = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_team_by_index
  L4_2 = A0_2._editing_team_index
  L2_2 = L2_2(L3_2, L4_2)
  if A1_2 == nil or L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = 1
  L4_2 = A0_2._max_member_count_each_team
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = A1_2[L6_2]
    if L7_2 ~= L8_2 then
      L7_2 = false
      return L7_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.is_selection_equal_editing_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_team_by_index
  L4_2 = A0_2._editing_team_index
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 1
  L4_2 = A0_2._max_member_count_each_team
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L9_2 = A0_2
    L8_2 = A0_2._get_avatar_data_from_team_data
    L10_2 = A1_2
    L11_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L7_2 ~= L8_2 then
      L7_2 = false
      return L7_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.is_team_data_equal_editing_team = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_team_by_index
  L3_2 = A0_2._editing_team_index
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._clear_selection_in_team
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.clear_selection_in_editing_team = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._selected_teams
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._clear_selection_in_team
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.clear_all_selection = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._get_team_by_index
  L5_2 = A0_2._editing_team_index
  L3_2 = L3_2(L4_2, L5_2)
  L3_2[A2_2] = A1_2
end
L0_1.set_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_team_by_index
  L4_2 = A0_2._editing_team_index
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 1
  L4_2 = A0_2._max_member_count_each_team
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 == nil then
      L2_2[L6_2] = A1_2
      L8_2 = A0_2
      L7_2 = A0_2._mark_selection_dirty
      L7_2(L8_2)
      return
    end
  end
end
L0_1.add_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 == nil then
    return
  end
  L2_2 = ipairs
  L3_2 = A0_2._selected_teams
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = 1
    L8_2 = A0_2._max_member_count_each_team
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L6_2[L10_2]
      if L11_2 == A1_2 then
        L6_2[L10_2] = nil
        L12_2 = A0_2
        L11_2 = A0_2._mark_selection_dirty
        L11_2(L12_2)
        return
      end
    end
  end
end
L0_1.remove_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ipairs
  L3_2 = A0_2._selected_teams
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = 1
    L8_2 = A0_2._max_member_count_each_team
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L6_2[L10_2]
      if L11_2 == A1_2 then
        L11_2 = true
        return L11_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.has_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._all_selected_avatars
  if L1_2 == nil then
    L1_2 = {}
    A0_2._all_selected_avatars = L1_2
    L1_2 = ipairs
    L2_2 = A0_2._selected_teams
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = 1
      L7_2 = A0_2._max_member_count_each_team
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = A0_2._all_selected_avatars
        L11_2 = A0_2._all_selected_avatars
        L11_2 = #L11_2
        L11_2 = L11_2 + 1
        L12_2 = L5_2[L9_2]
        L10_2[L11_2] = L12_2
      end
    end
  end
  L1_2 = A0_2._all_selected_avatars
  return L1_2
end
L0_1.get_all_selected_avatars = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ipairs
  L3_2 = A0_2._selected_teams
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = 1
    L8_2 = A0_2._max_member_count_each_team
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L6_2[L10_2]
      if L11_2 == A1_2 then
        return L5_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_team_index_by_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ipairs
  L3_2 = A0_2._selected_teams
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = 1
    L8_2 = A0_2._max_member_count_each_team
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L6_2[L10_2]
      if L11_2 == A1_2 then
        return L10_2
      end
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1.get_selection_order = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._selected_teams
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1._get_team_by_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = 1
  L3_2 = A0_2._max_member_count_each_team
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    A1_2[L5_2] = nil
  end
  L3_2 = A0_2
  L2_2 = A0_2._mark_selection_dirty
  L2_2(L3_2)
end
L0_1._clear_selection_in_team = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._all_selected_avatars = nil
end
L0_1._mark_selection_dirty = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.GetMemberData
  L5_2 = A2_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = nil
    return L4_2
  end
  L4_2 = L3_2.AvatarData
  return L4_2
end
L0_1._get_avatar_data_from_team_data = L1_1
return L0_1
