local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeAvatarData"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.avatar_id
  A0_2.AvatarId = L2_2
  L2_2 = A1_2.left_hp
  A0_2.LeftHp = L2_2
  L2_2 = A1_2.sp
  A0_2.Sp = L2_2
end
L0_1.Update = L1_1
return L0_1
