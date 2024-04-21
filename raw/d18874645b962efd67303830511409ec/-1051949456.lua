local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.next
L2_1 = L0_1.rawset
L3_1 = L0_1.setmetatable
L4_1 = {}
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = L1_1
  L3_2 = A0_2
  L4_2 = nil
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L2_1
    L8_2 = A1_2
    L9_2 = L5_2
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  return A1_2
end
L4_1.copy = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = A0_2
  L3_2 = nil
  for L4_2 in L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L6_2 = A0_2
    L7_2 = L4_2
    L8_2 = nil
    L5_2(L6_2, L7_2, L8_2)
  end
  return A0_2
end
L4_1.clear = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L3_1
  L3_2 = {}
  L4_2 = {}
  L4_2.__mode = A1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_2
    L3_3 = A1_3
    L2_3 = L2_3(L3_3)
    if L2_3 ~= nil then
      A0_3[A1_3] = L2_3
    end
    return L2_3
  end
  L4_2.__index = L5_2
  return L2_2(L3_2, L4_2)
end
L4_1.memoize = L5_1
return L4_1
