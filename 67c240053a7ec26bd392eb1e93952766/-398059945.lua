local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.DataStruct.Dictionary"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.EventHandle.AddOnceEventDispatch"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.FrameWork.EventRegister.EventRegisterItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EventRegister"
L0_1 = L0_1(L1_1)
L0_1.TouchEventRegister = nil
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.Dictionary
  L1_2 = L1_2(L2_2)
  L0_1._InstanceIdToEventDic = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1._InstanceIdToEventDic
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = L0_1._InstanceIdToEventDic
  L1_2(L2_2)
  L0_1._InstanceIdToEventDic = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2._InstanceIdToEventDic
  L7_2 = L6_2
  L6_2 = L6_2.Value
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  if nil == L6_2 then
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.EventDispatchGroup
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    L7_2 = A0_2._InstanceIdToEventDic
    L8_2 = L7_2
    L7_2 = L7_2.Add
    L9_2 = A1_2
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L8_2 = L6_2
  L7_2 = L6_2.AddEventHandle
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  return L7_2
end
L0_1.AddEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = nil
  L7_2 = L0_1._InstanceIdToEventDic
  L8_2 = L7_2
  L7_2 = L7_2.Value
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  if nil ~= L7_2 then
    L9_2 = L7_2
    L8_2 = L7_2.RemoveEventHandle
    L10_2 = A2_2
    L11_2 = A3_2
    L12_2 = A4_2
    L13_2 = A5_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = L8_2
  end
  if nil ~= L6_2 then
    L9_2 = L6_2
    L8_2 = L6_2.HasEventHandle
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.RemoveEventDispatch
      L10_2 = A2_2
      L8_2(L9_2, L10_2)
    end
  end
  return L6_2
end
L0_1.RemoveEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1._InstanceIdToEventDic
  L4_2 = L3_2
  L3_2 = L3_2.Value
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.ClearEventDispatch
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.ClearEventHandles = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1._InstanceIdToEventDic
  L4_2 = L3_2
  L3_2 = L3_2.Value
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if nil ~= L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.RemoveEventDispatch
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
  L5_2 = L3_2
  L4_2 = L3_2.HasEventDispatch
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = L0_1._InstanceIdToEventDic
    L5_2 = L4_2
    L4_2 = L4_2.Remove
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.Dispose
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.delete
    L5_2 = L3_2
    L4_2(L5_2)
    L3_2 = nil
  end
end
L0_1.RemoveEventDispatch = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  L4_2 = L0_1._InstanceIdToEventDic
  L5_2 = L4_2
  L4_2 = L4_2.Value
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if nil ~= L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.GetEventDispatch
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2
  end
  return L3_2
end
L0_1.GetEventDispatch = L1_1
return L0_1
