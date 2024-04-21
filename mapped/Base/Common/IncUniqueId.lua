local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "IncUniqueId"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2._BaseId = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._BaseId
  L1_2 = L1_2 + 1
  A0_2._BaseId = L1_2
  L1_2 = A0_2._BaseId
  return L1_2
end
L0_1.GetId = L1_1
return L0_1
