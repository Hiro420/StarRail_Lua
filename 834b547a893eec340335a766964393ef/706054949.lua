local L0_1, L1_1
L0_1 = class
L1_1 = "Singleton"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.GetClass
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = assert
  L3_2 = L1_2.Instance
  L3_2 = L3_2 == nil
  L4_2 = L1_2.__name
  L5_2 = " already has instance!"
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L1_2.Instance = A0_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GetClass
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2.Instance = nil
end
L0_1.dtor = L1_1
return L0_1
