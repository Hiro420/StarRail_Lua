local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Functor.FunctorCallBase"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FunctorCallFixParam"
L2_1 = G
L2_1 = L2_1.FunctorCallBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._EventListener = nil
  A0_2._EventHandle = nil
  A0_2._Param = nil
end
L0_1.Clear = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._EventListener = A1_2
  A0_2._EventHandle = A2_2
  A0_2._Param = A3_2
end
L0_1.SetPThisAndHandle = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._EventListener
  if nil ~= L1_2 then
    L1_2 = A0_2._EventHandle
    if nil ~= L1_2 then
      L1_2 = A0_2._Param
      if nil ~= L1_2 then
        L1_2 = A0_2._EventHandle
        L2_2 = A0_2._EventListener
        L3_2 = A0_2._Param
        return L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._EventHandle
        L2_2 = A0_2._EventListener
        return L1_2(L2_2)
      end
  end
  else
    L1_2 = A0_2._EventHandle
    if nil ~= L1_2 then
      L1_2 = A0_2._Param
      if nil ~= L1_2 then
        L1_2 = A0_2._EventHandle
        L2_2 = A0_2._Param
        return L1_2(L2_2)
      else
        L1_2 = A0_2._EventHandle
        return L1_2()
      end
    else
      L1_2 = 0
      return L1_2
    end
  end
end
L0_1.Call = L1_1
return L0_1
