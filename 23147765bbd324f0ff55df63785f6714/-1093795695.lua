local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.MemberEdit.BaseTeamMemberEditOperation"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidTeamMemberEditOperation"
L2_1 = G
L2_1 = L2_1.BaseTeamMemberEditOperation
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._raid_config = A2_2
  L3_2 = A0_2._raid_config
  L3_2 = L3_2.TeamType
  A0_2._raid_type = L3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_trial_raid
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_raid_trial_avatar
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._can_leave_trial = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._is_trial_raid
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._is_raid_trial_avatar
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._is_raid_trial_avatar
      L5_2 = A2_2
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        goto lbl_17
      end
    end
    L3_2 = false
    return L3_2
  end
  ::lbl_17::
  L3_2 = true
  return L3_2
end
L0_1._can_swap_two_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._raid_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidTeamType
  L2_2 = L2_2.TrialAndPlayer
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_trial_raid = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil then
    L2_2 = A1_2.IsDisplayOnly
    if L2_2 then
      goto lbl_8
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_8::
  L2_2 = 0
  L3_2 = A0_2._raid_config
  L3_2 = L3_2.TrialAvatarList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._raid_config
    L6_2 = L6_2.TrialAvatarList
    L6_2 = L6_2[L5_2]
    L7_2 = A1_2.TrialPlayerID
    if L6_2 == L7_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_raid_trial_avatar = L1_1
return L0_1
