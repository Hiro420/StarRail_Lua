local L0_1, L1_1, L2_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L1_1 = table
L2_1 = table
L2_1 = L2_1.getn
if not L2_1 then
  L2_1 = L0_1
end
L1_1.getn = L2_1
L1_1 = unpack
if not L1_1 then
  L1_1 = table
  L1_1 = L1_1.unpack
end
unpack = L1_1
