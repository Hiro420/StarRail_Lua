local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Packages.loop.simple"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Packages.loop.hierarchy"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.__reloading
  if L3_2 then
    L3_2 = G
    A2_2 = L3_2.R
  end
  if A1_2 ~= nil then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 == "string" then
      L3_2 = require
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      A1_2 = L3_2
    end
  end
  L3_2 = L0_1.class
  L4_2 = nil
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.__name = A0_2
  L4_2 = L1_1.mutator
  L3_2.__new = L4_2
  L4_2 = L0_1.getsuper
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2.super = L4_2
  if A2_2 ~= nil and A0_2 ~= nil then
    A2_2[A0_2] = L3_2
  end
  return L3_2
end
class = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    L1_2 = error
    L2_2 = "class is nil!"
    L1_2(L2_2)
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "string" then
    L2_2 = require
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
  end
  L2_2 = L0_1.isclass
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = error
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = " ["
    L5_2 = tostring
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L6_2 = "] is not a class!"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
    L2_2(L3_2)
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = ...
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
new = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    return
  end
  L1_2 = L0_1.getclass
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_1.topdown
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = L0_1.getmember
    L7_2 = L5_2
    L8_2 = "dtor"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2
      L8_2 = A0_2
      L7_2(L8_2)
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
      L2_2 = L2_2.remove_ref
      L4_2 = L1_2.__name
      L2_2(L3_2, L4_2)
    end
  end
end
delete = L2_1
L2_1 = G
if not L2_1 then
  L2_1 = {}
end
G = L2_1
L2_1 = G
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.__reloading
  if L3_2 then
    L3_2 = class
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = G
    L6_2 = L6_2.R
    return L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = class
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2 or L6_2
    if not A2_2 then
      L6_2 = G
    end
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L2_1.Class = L3_1
L2_1 = G
L3_1 = new
L2_1.New = L3_1
L2_1 = G
L3_1 = new
L2_1.new = L3_1
L2_1 = G
L3_1 = delete
L2_1.Delete = L3_1
L2_1 = G
L3_1 = delete
L2_1.delete = L3_1
L2_1 = G
L3_1 = L0_1.getclass
L2_1.GetClass = L3_1
L2_1 = G
L3_1 = L0_1.isinstanceof
L2_1.IsInstanceOf = L3_1
L2_1 = G
L3_1 = L0_1.getsuper
L2_1.GetSuper = L3_1
L2_1 = G
L3_1 = L0_1.isclass
L2_1.IsClass = L3_1
L2_1 = G
L3_1 = L0_1.issubclassof
L2_1.IsSubClassOf = L3_1
L2_1 = G
L3_1 = L0_1.isinstance
L2_1.IsInstance = L3_1
