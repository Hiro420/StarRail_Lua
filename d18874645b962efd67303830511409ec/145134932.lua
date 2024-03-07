local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.pairs
L2_1 = L0_1.rawget
L3_1 = L0_1.rawset
L4_1 = L0_1.ipairs
L5_1 = L0_1.setmetatable
L6_1 = L0_1.select
L7_1 = require
L8_1 = "table"
L7_1 = L7_1(L8_1)
L8_1 = L7_1.unpack
if not L8_1 then
  L8_1 = L0_1.unpack
end
L9_1 = require
L10_1 = "Packages.loop.table"
L9_1 = L9_1(L10_1)
L10_1 = L9_1.copy
L11_1 = L9_1.clear
L12_1 = require
L13_1 = "Packages.loop.proto"
L12_1 = L12_1(L13_1)
L13_1 = L12_1.clone
L14_1 = require
L15_1 = "Packages.loop.multiple"
L14_1 = L14_1(L15_1)
L15_1 = L14_1.class
L16_1 = L14_1.getclass
L17_1 = L14_1.getmember
L18_1 = L14_1.isinstanceof
L19_1 = L14_1.members
L20_1 = L14_1.rawnew
L21_1 = L14_1.supers
L22_1 = L15_1
L22_1 = L22_1()
function L23_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2[A1_2]
  if L2_2 == nil then
    L2_2 = A0_2.last
    if L2_2 ~= nil then
      A0_2[L2_2] = A1_2
    end
    A0_2.last = A1_2
  end
end
L22_1.enqueue = L23_1
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A1_2 = A0_2[A1_2]
  if A1_2 ~= nil then
    L2_2 = L1_1
    L3_2 = A1_2.subs
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2 in L2_2, L3_2, L4_2 do
      L7_2 = A0_2
      L6_2 = A0_2.enqueue
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
    return A1_2
  end
end
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L22_1
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.enqueue
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = L23_1
  L3_2 = L1_2
  L4_2 = "last"
  return L2_2, L3_2, L4_2
end
L25_1 = nil
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L16_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L18_1
  L3_2 = L1_2
  L4_2 = L25_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return L1_2
  end
end
function L27_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = L26_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    L1_2 = L25_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.updatehierarchy
  L3_2 = ...
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.updateinheritance
  L1_2(L2_2)
  L1_2 = A0_2.proxy
  return L1_2
end
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L26_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    A0_2 = L2_2.class
  end
  L3_2 = L20_1
  L4_2 = A0_2
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
function L29_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.__new
  if L1_2 ~= nil then
    L2_2 = L1_2
    L3_2 = A0_2
    L4_2 = ...
    return L2_2(L3_2, L4_2)
  end
  L2_2 = L28_1
  L3_2 = A0_2
  L4_2 = ...
  return L2_2(L3_2, L4_2)
end
function L30_1(A0_2)
  local L1_2, L2_2
  L1_2 = L16_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.__class
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = L1_2
  ::lbl_10::
  return L2_2
end
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = L26_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 ~= nil
  return L1_2
end
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = L26_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L4_1
    L4_2 = L2_2.supers
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.proxy
      L1_2[L6_2] = L8_2
    end
    A0_2 = L2_2.class
  end
  L3_2 = L21_1
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L1_2[L8_2] = L7_2
  end
  L3_2 = L8_1
  L4_2 = L1_2
  return L3_2(L4_2)
end
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = nil
  L3_2 = A0_2.supers
  A1_2 = A1_2 + 1
  L2_2 = L3_2[A1_2]
  if L2_2 then
    L4_2 = A1_2
    L5_2 = L2_2.proxy
    return L4_2, L5_2
  end
  L4_2 = A0_2.uncached
  L5_2 = #L3_2
  L5_2 = A1_2 - L5_2
  L2_2 = L4_2[L5_2]
  if L2_2 then
    L4_2 = A1_2
    L5_2 = L2_2
    return L4_2, L5_2
  end
end
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L26_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L33_1
    L3_2 = L1_2
    L4_2 = 0
    return L2_2, L3_2, L4_2
  else
    L2_2 = L21_1
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end
function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == A1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = L34_1
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L35_1
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
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L35_1
  L3_2 = L30_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L26_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.members
    L3_2 = L3_2[A1_2]
    return L3_2
  else
    L3_2 = L17_1
    L4_2 = A0_2
    L5_2 = A1_2
    return L3_2(L4_2, L5_2)
  end
end
function L38_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L26_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_1
    L3_2 = L1_2.members
    return L2_2(L3_2)
  else
    L2_2 = L19_1
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end
function L39_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L26_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_1
    L3_2 = L1_2.class
    return L2_2(L3_2)
  else
    L2_2 = L19_1
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end
L40_1 = {}
L40_1.OrderedSet = L22_1
L40_1.subs = L24_1
L40_1.getcached = L26_1
L40_1.class = L27_1
L40_1.rawnew = L28_1
L40_1.new = L29_1
L40_1.getclass = L30_1
L40_1.isclass = L31_1
L40_1.getsuper = L32_1
L40_1.supers = L34_1
L40_1.issubclassof = L35_1
L40_1.isinstanceof = L36_1
L40_1.getmember = L37_1
L40_1.members = L38_1
L40_1.allmembers = L39_1
L41_1 = L15_1
L42_1 = {}
L43_1 = L40_1
L41_1 = L41_1(L42_1, L43_1)
L25_1 = L41_1
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L16_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.updatefield
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  if A1_2 == nil then
    L3_2 = {}
    if L3_2 then
      goto lbl_10
    end
  end
  L3_2 = L10_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  ::lbl_10::
  if A1_2 == nil then
    L4_2 = {}
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = L11_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  ::lbl_18::
  L5_2 = L20_1
  L6_2 = A0_2
  L7_2 = {}
  L8_2 = L29_1
  L7_2.__call = L8_2
  L7_2.__index = L2_2
  L8_2 = L41_1
  L7_2.__newindex = L8_2
  L8_2 = L38_1
  L7_2.__pairs = L8_2
  L8_2 = {}
  L7_2.supers = L8_2
  L8_2 = {}
  L7_2.subs = L8_2
  L7_2.members = L3_2
  L7_2.class = L2_2
  L7_2.proxy = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2 = L5_2
  L5_2 = L5_1
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L2_2.__class = L4_2
  return A0_2
end
L25_1.__new = L42_1
function L42_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = 1
  L4_2 = L6_1
  L5_2 = "#"
  L6_2, L7_2, L8_2, L9_2, L10_2 = ...
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_1
    L8_2 = L6_2
    L9_2, L10_2 = ...
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = L26_1
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = #L1_2
      L9_2 = L9_2 + 1
      L1_2[L9_2] = L8_2
    else
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L2_2[L9_2] = L7_2
    end
  end
  L3_2 = L4_1
  L4_2 = A0_2.supers
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.removesubclass
    L10_2 = A0_2
    L8_2(L9_2, L10_2)
  end
  A0_2.uncached = L2_2
  A0_2.supers = L1_2
  L3_2 = L4_1
  L4_2 = A0_2.supers
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.addsubclass
    L10_2 = A0_2
    L8_2(L9_2, L10_2)
  end
end
L25_1.updatehierarchy = L42_1
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L24_1
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L6_2 = L4_2
    L5_2 = L4_2.updatemembers
    L5_2(L6_2)
    L6_2 = L4_2
    L5_2 = L4_2.updatesuperclasses
    L5_2(L6_2)
  end
end
L25_1.updateinheritance = L42_1
function L42_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.subs
  L2_2[A1_2] = true
end
L25_1.addsubclass = L42_1
function L42_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.subs
  L2_2[A1_2] = nil
end
L25_1.removesubclass = L42_1
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = L4_1
  L3_2 = A0_2.uncached
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2[L6_2]
    if not L7_2 then
      L1_2[L6_2] = true
      L7_2 = #L1_2
      L7_2 = L7_2 + 1
      L1_2[L7_2] = L6_2
    end
  end
  L2_2 = L4_1
  L3_2 = A0_2.supers
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L21_1
    L8_2 = L6_2.class
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L1_2[L11_2]
      if not L12_2 then
        L1_2[L11_2] = true
        L12_2 = #L1_2
        L12_2 = L12_2 + 1
        L1_2[L12_2] = L11_2
      end
    end
  end
  L2_2 = L15_1
  L3_2 = A0_2.class
  L4_2 = L8_1
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L25_1.updatesuperclasses = L42_1
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L11_1
  L2_2 = A0_2.class
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.supers
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.supers
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.class
    L7_2 = L10_1
    L8_2 = L6_2
    L9_2 = L1_2
    L7_2(L8_2, L9_2)
    L7_2 = L2_1
    L8_2 = L1_2
    L9_2 = "__index"
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 == L6_2 then
      L7_2 = L3_1
      L8_2 = L1_2
      L9_2 = "__index"
      L10_2 = nil
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L2_2 = L10_1
  L3_2 = A0_2.members
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L2_1
  L3_2 = L1_2
  L4_2 = "__index"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L2_2 = L3_1
    L3_2 = L1_2
    L4_2 = "__index"
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2.proxy
  L1_2.__class = L2_2
end
L25_1.updatemembers = L42_1
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = A0_2.members
  L3_2[A1_2] = A2_2
  L4_2 = A0_2.class
  L5_2 = L4_2[A1_2]
  L4_2[A1_2] = A2_2
  L6_2 = L22_1
  L6_2 = L6_2()
  L7_2 = A0_2
  L9_2 = L6_2
  L8_2 = L6_2.enqueue
  L10_2 = A0_2
  L8_2(L9_2, L10_2)
  L8_2 = L1_1
  L9_2 = A0_2.subs
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2 in L8_2, L9_2, L10_2 do
    L13_2 = L6_2
    L12_2 = L6_2.enqueue
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  repeat
    L7_2 = L6_2[L7_2]
    if L7_2 == nil then
      break
    end
    L4_2 = L7_2.class
    L3_2 = L7_2.members
    L8_2 = L3_2[A1_2]
    if L8_2 == nil then
      L8_2 = L4_1
      L9_2 = L7_2.supers
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        L13_2 = L12_2.class
        L14_2 = L13_2[A1_2]
        if L14_2 ~= nil then
          L14_2 = L13_2[A1_2]
          L15_2 = L4_2[A1_2]
          if L14_2 ~= L15_2 then
            L14_2 = L13_2[A1_2]
            L4_2[A1_2] = L14_2
            L14_2 = L1_1
            L15_2 = L7_2.subs
            L14_2, L15_2, L16_2 = L14_2(L15_2)
            for L17_2 in L14_2, L15_2, L16_2 do
              L19_2 = L6_2
              L18_2 = L6_2.enqueue
              L20_2 = L17_2
              L18_2(L19_2, L20_2)
            end
          end
          break
        end
      end
    end
    L8_2 = false
  until L8_2
  return L5_2
end
L25_1.updatefield = L42_1
L40_1.CachedClass = L25_1
return L40_1
