local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "StrUtils"
L0_1 = L0_1(L1_1)
function L1_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L8_2 = tostring
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L1_2[L7_2] = L8_2
  end
  L2_2 = nil
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  return L2_2
end
L0_1.Concat = L1_1
return L0_1
