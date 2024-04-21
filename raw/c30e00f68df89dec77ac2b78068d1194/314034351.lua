local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeEditTeamData"
L0_1 = L0_1(L1_1)
L1_1 = 4
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.team_data = A1_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.get_avatars_in_team
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2.avatars = L2_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._avatar_data_list = nil
  A0_2.team_data = nil
end
L0_1.dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data_list
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._avatar_data_list
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      if L5_2 ~= nil then
        L6_2 = false
        return L6_2
      end
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_empty = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.team_data
  return L1_2
end
L0_1.get_team = L2_1
function L2_1(A0_2, A1_2)
  A0_2.avatars = A1_2
end
L0_1.set_avatars = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.avatars
  return L1_2
end
L0_1.get_avatar = L2_1
return L0_1
