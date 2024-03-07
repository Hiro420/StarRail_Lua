local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "DataUtils"
L0_1 = L0_1(L1_1)
L0_1.s_FloatEpsilon = 1.0E-5
L0_1.s_InvalidFloat = -1.0
L0_1.s_InvisibleWorldPosY = -9999.0
L0_1.s_InvalidInt = -1
L1_1 = CS
L1_1 = L1_1.System
L1_1 = L1_1.UInt32
L1_1 = L1_1.MaxValue
L0_1.s_InvalidUInt32 = L1_1
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.MVector3
L2_1 = CS
L2_1 = L2_1.System
L2_1 = L2_1.Single
L2_1 = L2_1.MaxValue
L3_1 = CS
L3_1 = L3_1.System
L3_1 = L3_1.Single
L3_1 = L3_1.MaxValue
L4_1 = CS
L4_1 = L4_1.System
L4_1 = L4_1.Single
L4_1 = L4_1.MaxValue
L1_1 = L1_1(L2_1, L3_1, L4_1)
L0_1.s_InvalidVector3 = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = L0_1.s_FloatEpsilon
  L1_2 = A0_2 < L1_2
  return L1_2
end
L0_1.IsAlmostZero = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2 < A1_2
  return L2_2
end
L0_1.IsAlmostZeroWithEpsilon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.MMathf
  L1_2 = L1_2.RoundToInt
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.StrictRoundToInt = L1_1
return L0_1
