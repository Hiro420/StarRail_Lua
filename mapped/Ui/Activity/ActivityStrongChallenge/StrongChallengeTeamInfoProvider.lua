local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.BaseTeamInfoProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StrongChallengeTeamInfoProvider"
L2_1 = G
L2_1 = L2_1.BaseTeamAvatarInfoProvider
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._team = A1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._team
  L2_2 = L1_2
  L1_2 = L1_2.to_raw_table
  return L1_2(L2_2)
end
L0_1.get_avatars_in_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._team
  L3_2 = L2_2
  L2_2 = L2_2.contains
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.is_avatar_in_team = L1_1
return L0_1
