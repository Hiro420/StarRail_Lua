local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Test.TestDataStruct.TestDataStructObject"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TestDataStruct"
L2_1 = G
L2_1 = L2_1.TestBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._TestA
  L1_2(L2_2)
end
L0_1.Run = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.TestDataStructObject
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TestDataStructObject
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.TestDataStructObject
  L4_2 = L4_2(L5_2)
  L6_2 = L1_2
  L5_2 = L1_2.Add
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L6_2 = L1_2
  L5_2 = L1_2.Add
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = L1_2
  L5_2 = L1_2.Add
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = L1_2
  L5_2 = L1_2.Remove
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = L1_2
  L5_2 = L1_2.Count
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  L7_2 = L5_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = L1_2
    L10_2 = L1_2.Get
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
end
L0_1._TestA = L1_1
return L0_1
