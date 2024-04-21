local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TestLang"
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
  local L1_2
end
L0_1.Run = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  function L2_2()
    local L0_3, L1_3
    L0_3 = localFunction
    L0_3()
  end
  L3_2 = L2_2
  L3_2()
end
L0_1._TestA = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  L2_2 = nil
  function L3_2()
    local L0_3, L1_3
    L0_3 = L2_2
    L0_3()
  end
  L2_2 = L3_2
  L3_2 = L2_2
  L3_2()
end
L0_1._TestB = L1_1
return L0_1
