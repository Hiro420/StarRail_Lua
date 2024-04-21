local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "coroutine"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.wrap
L2_1 = L0_1.yield
L3_1 = require
L4_1 = "Packages.loop.loop"
L3_1 = L3_1(L4_1)
L4_1 = L3_1.getmember
L5_1 = L3_1.rawnew
L6_1 = L3_1.supers
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L6_1
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L7_1
    L8_2 = A0_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2[A1_2]
  if L2_2 == nil then
    A0_2[A1_2] = true
    L2_2 = L2_1
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L7_1
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = A0_2
  return L1_2, L2_2, L3_2
end
L9_1 = {}
L9_1.topdown = L8_1
function L10_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ctor
  if L2_2 ~= nil then
    L3_2 = L2_2
    L4_2 = L1_2
    L5_2 = ...
    L3_2(L4_2, L5_2)
  end
  return L1_2
end
L9_1.creator = L10_1
function L10_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L8_1
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = L4_1
    L7_2 = L5_2
    L8_2 = "ctor"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2
      L8_2 = L1_2
      L9_2 = ...
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.ModuleManager
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.ModuleManager
    L2_2 = L2_2.LuaHotfixModule
    if L2_2 ~= nil then
      L2_2 = G
      L2_2 = L2_2.ModuleManager
      L2_2 = L2_2.LuaHotfixModule
      L3_2 = L2_2
      L2_2 = L2_2.add_ref
      L4_2 = A0_2.__name
      L2_2(L3_2, L4_2)
    end
  end
  return L1_2
end
L9_1.mutator = L10_1
return L9_1
