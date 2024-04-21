local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.assert
L2_1 = require
L3_1 = "debug"
L2_1 = L2_1(L3_1)
L3_1 = L2_1.getupvalue
L4_1 = {}
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1
  L2_2 = A0_2
  L3_2 = 4
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_1
  L4_2 = L1_2 == "method"
  L5_2 = "Oops! Got the wrong upvalue in 'methodfunction'"
  L3_2(L4_2, L5_2)
  return L2_2
end
L4_1.methodfunction = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1
  L2_2 = A0_2
  L3_2 = 2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_1
  L4_2 = L1_2 == "class"
  L5_2 = "Oops! Got the wrong upvalue in 'methodclass'"
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.proxy
  return L3_2
end
L4_1.methodclass = L5_1
return L4_1
