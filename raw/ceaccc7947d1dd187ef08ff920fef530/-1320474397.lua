local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Test.TestInherit.TestInheritNativeClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Test.TestInherit.TestInheritCtorParamA"
L0_1(L1_1)
L0_1 = require
L1_1 = "Test.TestInherit.TestInheritCtorParamB"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TestInherit"
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
  L1_2 = A0_2._TestB
  L1_2(L2_2)
end
L0_1.Run = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.GameObject
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.GameObject
  L3_2 = print
  L4_2 = "aa"
  L3_2(L4_2)
end
L0_1._TestA = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TestInheritCtorParamA
  L3_2 = 10
  L4_2 = "aaa"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
end
L0_1._TestB = L1_1
return L0_1
