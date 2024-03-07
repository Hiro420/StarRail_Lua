local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.ipairs
L2_1 = L0_1.getmetatable
L3_1 = L0_1.select
L4_1 = L0_1.setmetatable
L5_1 = require
L6_1 = "table"
L5_1 = L5_1(L6_1)
L6_1 = L5_1.unpack
if not L6_1 then
  L6_1 = L0_1.unpack
end
L7_1 = require
L8_1 = "Packages.loop.table"
L7_1 = L7_1(L8_1)
L8_1 = L7_1.copy
L9_1 = require
L10_1 = "Packages.loop.proto"
L9_1 = L9_1(L10_1)
L10_1 = L9_1.clone
L11_1 = require
L12_1 = "Packages.loop.simple"
L11_1 = L11_1(L12_1)
L12_1 = L11_1.initclass
L13_1 = L11_1.isclass
L14_1 = L11_1.getsuper
L15_1 = L11_1.getclass
L16_1 = L11_1.new
L17_1 = L11_1.class
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1
  L3_2 = L15_1
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2[A1_2]
    if L7_2 ~= nil then
      return L7_2
    end
  end
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 ~= nil and A1_2 == nil then
    L2_2 = 1
    L3_2 = A0_2
    return L2_2, L3_2
  end
end
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.__index
    L3_2 = L18_1
    if L2_2 == L3_2 then
      L2_2 = L1_1
      L3_2 = L1_2
      return L2_2(L3_2)
    end
    L2_2 = L19_1
    L3_2 = L14_1
    L4_2 = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    return L2_2, L3_2, L4_2
  end
  L2_2 = L19_1
  return L2_2
end
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == A1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = L20_1
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L21_1
    L8_2 = L6_2
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L22_1 = L10_1
L23_1 = L11_1
L24_1 = {}
L24_1.supers = L20_1
L24_1.issubclassof = L21_1
L22_1 = L22_1(L23_1, L24_1)
L23_1 = {}
L23_1.__index = L22_1
function L24_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1
  L2_2 = "#"
  L3_2, L4_2 = ...
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if 1 < L1_2 then
    L1_2 = {}
    L2_2 = L16_1
    L1_2.__call = L2_2
    L2_2 = L18_1
    L1_2.__index = L2_2
    L2_2, L3_2, L4_2 = ...
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L2_2 = L4_1
    L3_2 = L1_2
    L4_2 = L23_1
    L2_2(L3_2, L4_2)
    L2_2 = L4_1
    L3_2 = L12_1
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L1_2
    return L2_2(L3_2, L4_2)
  end
  L1_2 = L17_1
  L2_2 = A0_2
  L3_2, L4_2 = ...
  return L1_2(L2_2, L3_2, L4_2)
end
L22_1.class = L24_1
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.__index
    L3_2 = L18_1
    if L2_2 == L3_2 then
      L2_2 = true
      return L2_2
    end
    L2_2 = L13_1
    L3_2 = A0_2
    return L2_2(L3_2)
  end
  L2_2 = false
  return L2_2
end
L22_1.isclass = L24_1
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L21_1
  L3_2 = L15_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L22_1.isinstanceof = L24_1
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.__index
    L3_2 = L18_1
    if L2_2 == L3_2 then
      L2_2 = L6_1
      L3_2 = L1_2
      return L2_2(L3_2)
    end
    L2_2 = L14_1
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end
L22_1.getsuper = L24_1
return L22_1
