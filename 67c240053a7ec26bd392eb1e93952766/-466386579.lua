local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EventDispatchFunctionObject"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2._IsClientDispose = false
  A0_2._EventHandle = nil
  A0_2._EventListener = nil
  A0_2._EventId = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._IsClientDispose = false
  A0_2._EventHandle = nil
  A0_2._EventListener = nil
  A0_2._EventId = 0
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = false
  L2_2 = A0_2._EventListener
  if nil ~= L2_2 then
    L2_2 = A0_2._EventHandle
    if nil ~= L2_2 then
      L1_2 = true
  end
  else
    L2_2 = A0_2._EventHandle
    if nil ~= L2_2 then
      L1_2 = true
    else
      L1_2 = false
    end
  end
  return L1_2
end
L0_1.IsValid = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A0_2._EventListener
  L4_2 = A1_2 == L4_2
  return L4_2
end
L0_1.IsEqual = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._EventListener = A1_2
  A0_2._EventHandle = A2_2
  A0_2._EventId = A3_2
end
L0_1.SetFuncObject = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._EventListener
  if nil ~= L2_2 then
    L2_2 = A0_2._EventHandle
    if nil ~= L2_2 then
      L2_2 = A0_2._EventHandle
      L3_2 = A0_2._EventListener
      L4_2 = A1_2
      L5_2 = A0_2._EventId
      L2_2(L3_2, L4_2, L5_2)
  end
  else
    L2_2 = A0_2._EventHandle
    if nil ~= L2_2 then
      L2_2 = A0_2._EventHandle
      L3_2 = A1_2
      L4_2 = A0_2._EventId
      L2_2(L3_2, L4_2)
    else
      L2_2 = G
      L2_2 = L2_2.UtilEngineWrap
      L2_2 = L2_2.error
      L3_2 = "EventDispatchFunctionObject is InValid"
      L2_2(L3_2)
    end
  end
end
L0_1.Call = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._EventListener
  if nil ~= L3_2 then
    L3_2 = A0_2._EventHandle
    if nil ~= L3_2 then
      L3_2 = A0_2._EventHandle
      L4_2 = A0_2._EventListener
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    L3_2 = A0_2._EventHandle
    if nil ~= L3_2 then
      L3_2 = A0_2._EventHandle
      L4_2 = A1_2
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = G
      L3_2 = L3_2.UtilEngineWrap
      L3_2 = L3_2.error
      L4_2 = "EventDispatchFunctionObject is InValid"
      L3_2(L4_2)
    end
  end
end
L0_1.CallWithParam = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._IsClientDispose = true
end
L0_1.SetClientDispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._IsClientDispose
  return L1_2
end
L0_1.GetClientDispose = L1_1
return L0_1
