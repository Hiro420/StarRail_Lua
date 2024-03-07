local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "TextmapStatic"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2
  L3_2 = ...
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2
end
L0_1.GetText = L1_1
return L0_1
