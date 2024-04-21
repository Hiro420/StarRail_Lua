local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Functor.FunctorCallBase"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FunctorPCallFixParam"
L2_1 = G
L2_1 = L2_1.FunctorCallBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._EventListener = A1_2
  A0_2._EventHandle = A2_2
  A0_2._Param = A3_2
end
L0_1.SetPThisAndHandle = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = A0_2._EventListener
  if nil ~= L4_2 then
    L4_2 = A0_2._EventHandle
    if nil ~= L4_2 then
      function L4_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._EventHandle
        L1_3 = A0_2._EventListener
        L2_3 = A0_2._Param
        return L0_3(L1_3, L2_3)
      end
      L1_2 = L4_2
      L4_2 = xpcall
      L5_2 = L1_2
      L6_2 = traceback
      L4_2, L5_2 = L4_2(L5_2, L6_2)
      L3_2 = L5_2
      L2_2 = L4_2
      if not L2_2 then
        L4_2 = G
        L4_2 = L4_2.MDebug
        L4_2 = L4_2.traceback
        L5_2 = nil
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      end
      return L3_2
  end
  else
    L4_2 = A0_2._EventHandle
    if nil ~= L4_2 then
      function L4_2()
        local L0_3, L1_3
        L0_3 = A0_2.func
        L1_3 = A0_2._Param
        L0_3(L1_3)
      end
      L1_2 = L4_2
      L4_2 = xpcall
      L5_2 = L1_2
      L6_2 = traceback
      L4_2, L5_2 = L4_2(L5_2, L6_2)
      L3_2 = L5_2
      L2_2 = L4_2
      if not L2_2 then
        L4_2 = G
        L4_2 = L4_2.MDebug
        L4_2 = L4_2.traceback
        L5_2 = nil
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      end
      return L3_2
    else
      L4_2 = 0
      return L4_2
    end
  end
end
L0_1.Call = L1_1
return L0_1
