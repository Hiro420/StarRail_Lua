local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.pairs
L2_1 = L0_1.getmetatable
L3_1 = nil
L4_1 = nil
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 ~= nil and A1_2 == nil then
    L2_2 = 1
    L3_2 = A0_2
    return L2_2, L3_2
  end
end
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
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
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == A1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = L4_1
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L7_1
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
L8_1 = {}
L8_1.new = false
L8_1.rawnew = false
L8_1.getmember = false
L8_1.members = false
function L9_1()
  local L0_2, L1_2
end
L8_1.getsuper = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L5_1
  L2_2 = L3_1
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2, L2_2, L3_2
end
L8_1.supers = L9_1
L9_1 = {}
L9_1.getclass = L6_1
L9_1.issubclassof = L7_1
L10_1 = L1_1
L11_1 = L8_1
L10_1, L11_1, L12_1 = L10_1(L11_1)
for L13_1, L14_1 in L10_1, L11_1, L12_1 do
  function L15_1(A0_2, ...)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = L2_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L2_2 = L13_1
      L2_2 = L1_2[L2_2]
    end
    if L2_2 == nil then
      L3_2 = L14_1
      if L3_2 then
        L2_2 = L14_1
      end
    end
    L3_2 = L2_2
    L4_2 = A0_2
    L5_2 = ...
    return L3_2(L4_2, L5_2)
  end
  L9_1[L13_1] = L15_1
end
L3_1 = L9_1.getsuper
L4_1 = L9_1.supers
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_1
  L3_2 = L8_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2[L5_2]
    if L7_2 == nil and not L6_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L9_1.isclass = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L7_1
  L3_2 = L6_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L9_1.isinstanceof = L10_1
return L9_1
