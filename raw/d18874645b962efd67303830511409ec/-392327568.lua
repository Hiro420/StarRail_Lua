local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.getmetatable
L2_1 = L0_1.pairs
L3_1 = L0_1.setmetatable
L4_1 = L0_1.rawget
L5_1 = require
L6_1 = "Packages.loop.table"
L5_1 = L5_1(L6_1)
L6_1 = L5_1.memoize
L7_1 = require
L8_1 = "Packages.loop.base"
L7_1 = L7_1(L8_1)
L8_1 = L7_1.class
L9_1 = L7_1.initclass
L10_1 = L7_1.isclass
L11_1 = L7_1.isinstance
L12_1 = L7_1.getclass
L13_1 = L7_1.new
L14_1 = require
L15_1 = "Packages.loop.proto"
L14_1 = L14_1(L15_1)
L15_1 = L14_1.clone
L16_1 = L15_1
L17_1 = L7_1
L16_1 = L16_1(L17_1)
L17_1 = {}
L17_1.__index = L16_1
L18_1 = L6_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = {}
  L2_2.__index = A0_2
  L3_2 = L13_1
  L2_2.__call = L3_2
  L3_2 = L17_1
  return L1_2(L2_2, L3_2)
end
L20_1 = "v"
L18_1 = L18_1(L19_1, L20_1)
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.__index
    L3_2 = L4_1
    L4_2 = L18_1
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L1_2 == L3_2 then
      return L2_2
    end
  end
end
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  while A0_2 ~= nil do
    if A0_2 == A1_2 then
      L2_2 = true
      return L2_2
    end
    L2_2 = L19_1
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
  end
  L2_2 = false
  return L2_2
end
L16_1.getsuper = L19_1
L16_1.issubclassof = L20_1
L16_1.isinstance = L11_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = L3_1
    L3_2 = L9_1
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L18_1[A1_2]
    return L2_2(L3_2, L4_2)
  end
  L2_2 = L8_1
  L3_2 = A0_2
  return L2_2(L3_2)
end
L16_1.class = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L4_1
    L3_2 = L18_1
    L4_2 = L1_2.__index
    L2_2 = L2_2(L3_2, L4_2)
    if L1_2 == L2_2 then
      L2_2 = true
      return L2_2
    end
    L2_2 = L10_1
    L3_2 = A0_2
    return L2_2(L3_2)
  end
  L2_2 = false
  return L2_2
end
L16_1.isclass = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L20_1
  L3_2 = L12_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L16_1.isinstanceof = L21_1
return L16_1
