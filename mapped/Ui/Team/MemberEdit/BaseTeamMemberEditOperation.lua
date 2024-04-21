local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseTeamMemberEditOperation"
L0_1 = L0_1(L1_1)
L1_1 = "UITextmap_TeamEditPage_Toast_SameAvatar"
L2_1 = "UITextmap_TeamEditPage_Toast_Unchange"
L3_1 = "UITextmap_TeamEditPage_Toast_TrialAvatarLockPosition"
L4_1 = "UITextmap_TeamEditPage_Toast_MaxCount"
function L5_1(A0_2, A1_2)
  A0_2._team_data = A1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._is_in_team
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = false
    L3_2 = L1_1
    return L2_2, L3_2
  end
  L2_2 = A0_2._team_data
  L2_2 = L2_2.IsFull
  if L2_2 then
    L2_2 = false
    L3_2 = L4_1
    return L2_2, L3_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_who_has_same_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._is_trial_avatar
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._can_leave_trial
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = false
      L4_2 = L1_1
      return L3_2, L4_2
    end
  end
  L3_2 = true
  L4_2 = ""
  return L3_2, L4_2
end
L0_1.can_join_avatar = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.can_join_avatar
    L5_2 = A2_2
    return L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_in_team
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = false
    L4_2 = L1_1
    return L3_2, L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_trial_avatar
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._can_leave_trial
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = false
      L4_2 = L2_1
      return L3_2, L4_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_lock_avatar
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_avatar_alive
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = false
      L4_2 = L2_1
      return L3_2, L4_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_lock_avatar
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_same_avatar_id
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if not L3_2 then
      L3_2 = false
      L4_2 = L2_1
      return L3_2, L4_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_avatar_who_has_same_id
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._is_trial_avatar
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._can_leave_trial
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = false
      L5_2 = L1_1
      return L4_2, L5_2
    end
  end
  L4_2 = true
  L5_2 = ""
  return L4_2, L5_2
end
L0_1.can_replace_avatar = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._can_swap_two_avatar
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = L3_1
    return L3_2, L4_2
  end
  L3_2 = true
  L4_2 = ""
  return L3_2, L4_2
end
L0_1.can_swap_avatar = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A2_2 then
    A2_2 = false
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_trial_avatar
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._can_leave_trial
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = false
      L4_2 = L2_1
      return L3_2, L4_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_lock_avatar
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 and not A2_2 then
    L3_2 = false
    L4_2 = L2_1
    return L3_2, L4_2
  end
  L3_2 = true
  L4_2 = ""
  return L3_2, L4_2
end
L0_1.can_leave_avatar = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.is_avatar_in_team
  L3_2 = A1_2
  L4_2 = A0_2._team_data
  return L2_2(L3_2, L4_2)
end
L0_1._is_in_team = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 ~= nil and L2_2
  return L2_2
end
L0_1._is_trial_avatar = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_locked_avatar_id_list
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.Contains
  L5_2 = A1_2.ID
  L3_2 = A1_2 ~= nil and L3_2
  return L3_2
end
L0_1._is_lock_avatar = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.get_avatar_hp_percent
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = 0 < L2_2
  return L2_2
end
L0_1._is_avatar_alive = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.get_avatar_in_team_by_id
  L3_2 = A1_2.ID
  L4_2 = A0_2._team_data
  return L2_2(L3_2, L4_2)
end
L0_1._get_avatar_who_has_same_id = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 == nil or A2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = A1_2.ID
  L4_2 = A2_2.ID
  L3_2 = L3_2 == L4_2
  return L3_2
end
L0_1._is_same_avatar_id = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L0_1._can_leave_trial = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = true
  return L3_2
end
L0_1._can_swap_two_avatar = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1._get_locked_avatar_id_list = L5_1
return L0_1
