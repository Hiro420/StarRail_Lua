local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Functor.FunctorCallBase"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FunctorCallVarParam"
L2_1 = G
L2_1 = L2_1.FunctorCallBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._EventListener = nil
  A0_2._EventHandle = nil
  A0_2._Param = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2
  A0_2._EventListener = A1_2
  A0_2._EventHandle = A2_2
  L3_2 = {}
  L4_2 = ...
  L3_2[1] = L4_2
  A0_2._Param = L3_2
end
L0_1.SetPThisAndHandle = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._EventListener
  if nil ~= L2_2 then
    L2_2 = A0_2._EventHandle
    if nil ~= L2_2 then
      L2_2 = A0_2._EventHandle
      L3_2 = A0_2._EventListener
      L4_2 = unpack
      L5_2 = A0_2._Param
      L4_2, L5_2 = L4_2(L5_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L1_2 = L2_2
  end
  else
    L2_2 = A0_2._EventHandle
    if nil ~= L2_2 then
      L2_2 = A0_2._EventHandle
      L3_2 = unpack
      L4_2 = A0_2._Param
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L1_2 = L2_2
    else
      L1_2 = 0
    end
  end
  return L1_2
end
L0_1.Call = L1_1
return L0_1
