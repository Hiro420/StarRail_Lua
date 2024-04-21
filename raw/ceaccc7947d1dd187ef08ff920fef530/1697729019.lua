local L0_1, L1_1
L0_1 = require
L1_1 = "Test.TestLang.TestLang"
L0_1(L1_1)
L0_1 = require
L1_1 = "Test.TestInherit.TestInherit"
L0_1(L1_1)
L0_1 = require
L1_1 = "Test.TestAsset.TestAssetRecord"
L0_1(L1_1)
L0_1 = require
L1_1 = "Test.TestDataStruct.TestDataStruct"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TestMain"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TestLang
  L1_2 = L1_2(L2_2)
  A0_2._TestLang = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TestInherit
  L1_2 = L1_2(L2_2)
  A0_2._TestInherit = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TestDataStruct
  L1_2 = L1_2(L2_2)
  A0_2._TestDataStruct = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._TestLang
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
  L1_2 = A0_2._TestInherit
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
  L1_2 = A0_2._TestDataStruct
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._TestLang
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  A0_2._TestLang = nil
  L1_2 = A0_2._TestInherit
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  A0_2._TestInherit = nil
  L1_2 = A0_2._TestDataStruct
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  A0_2._TestDataStruct = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._TestDataStruct
  L2_2 = L1_2
  L1_2 = L1_2.Run
  L1_2(L2_2)
end
L0_1.Run = L1_1
return L0_1
