local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.getmetatable
L2_1 = L0_1.pairs
L3_1 = L0_1.rawget
L4_1 = L0_1.setmetatable
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = {}
    A1_2 = L2_2
  end
  A1_2.__is_instance = true
  L2_2 = L4_1
  L3_2 = A1_2
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end
function L6_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.__new
  if L1_2 ~= nil then
    L2_2 = L1_2
    L3_2 = A0_2
    L4_2 = ...
    return L2_2(L3_2, L4_2)
  end
  L2_2 = L5_1
  L3_2 = A0_2
  L4_2 = ...
  return L2_2(L3_2, L4_2)
end
function L7_1(A0_2)
  local L1_2
  if A0_2 == nil then
    L1_2 = {}
    A0_2 = L1_2
  end
  L1_2 = A0_2.__index
  if L1_2 == nil then
    A0_2.__index = A0_2
  end
  return A0_2
end
L8_1 = {}
L8_1.initclass = L7_1
L8_1.getclass = L1_1
L8_1.getmember = L3_1
L8_1.members = L2_1
L8_1.new = L6_1
L8_1.rawnew = L5_1
L9_1 = L4_1
L10_1 = {}
L10_1.__call = L6_1
L11_1 = {}
L11_1.__index = L8_1
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L2_2 = L7_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L9_1
  return L1_2(L2_2, L3_2)
end
L8_1.class = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L9_1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L8_1.isclass = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 == A1_2
  return L2_2
end
L8_1.isinstanceof = L10_1
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2 ~= nil and L1_2
  return L1_2
end
L8_1.isinstance = L10_1
return L8_1
