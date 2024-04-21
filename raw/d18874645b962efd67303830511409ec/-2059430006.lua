local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.getmetatable
L2_1 = L0_1.rawget
L3_1 = L0_1.setmetatable
L4_1 = require
L5_1 = "Packages.loop.table"
L4_1 = L4_1(L5_1)
L5_1 = L4_1.memoize
L6_1 = L5_1
function L7_1(A0_2)
  local L1_2
  L1_2 = {}
  L1_2.__index = A0_2
  return L1_2
end
L8_1 = "v"
L6_1 = L6_1(L7_1, L8_1)
L7_1 = {}
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = L3_1
  L3_2 = A1_2
  L4_2 = L6_1[A0_2]
  return L2_2(L3_2, L4_2)
end
L7_1.clone = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.__index
    L3_2 = L2_1
    L4_2 = L6_1
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L1_2 == L3_2 then
      return L2_2
    end
  end
end
L7_1.getproto = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1
  L3_2 = L6_1
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil
  return L3_2
end
L7_1.iscloneof = L8_1
return L7_1
