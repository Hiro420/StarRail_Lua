local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.EventHandle.EventDispatch"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PromiseEventDispatch"
L2_1 = G
L2_1 = L2_1.AddOnceEventDispatch
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._EventState = 0
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.EventDispatchFunctionObject
  L1_2 = L1_2(L2_2)
  A0_2._Functor = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._EventState = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.DispatchEvent
  L4_2 = nil
  L2_2(L3_2, L4_2)
end
L0_1.SetEventState = L1_1
function L1_1(A0_2, A1_2)
  A0_2._EventState = 0
end
L0_1.ClearEventState = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._EventState
  L1_2 = 1 == L1_2
  return L1_2
end
L0_1.IsSuccess = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._EventState
  L1_2 = -1 == L1_2
  return L1_2
end
L0_1.IsFailed = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._EventState
  L1_2 = 0 == L1_2
  return L1_2
end
L0_1.IsEmpty = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L0_1.super
  L4_2 = L4_2.AddEventHandle
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.IsEmpty
  L4_2 = L4_2(L5_2)
  if not L4_2 and nil ~= A2_2 then
    L4_2 = A0_2._Functor
    L5_2 = L4_2
    L4_2 = L4_2.SetFuncObject
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2._Functor
    L5_2 = L4_2
    L4_2 = L4_2.Call
    L6_2 = nil
    L4_2(L5_2, L6_2)
  end
end
L0_1.AddEventHandle = L1_1
return L0_1
