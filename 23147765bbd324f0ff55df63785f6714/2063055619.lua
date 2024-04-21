local L0_1, L1_1, L2_1, L3_1
L0_1 = class
L1_1 = "BlackBoard"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._content = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._content
  L3_2[A1_2] = A2_2
end
L0_1.update = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._content
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.query = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._content = L1_2
end
L0_1.clear = L1_1
