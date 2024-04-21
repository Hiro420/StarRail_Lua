local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseTeamAvatarInfoProvider"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_all_avatars
  L2_2 = true
  return L1_2(L2_2)
end
L0_1.get_all_avatars = L1_1
return L0_1
