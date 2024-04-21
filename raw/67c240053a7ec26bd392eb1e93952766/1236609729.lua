local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.DataStruct.Dictionary"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EventDispatchGroup"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.Dictionary
  L1_2 = L1_2(L2_2)
  A0_2._GroupId2DispatchDic = L1_2
  A0_2._UserData = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._UserData = nil
  L1_2 = A0_2._GroupId2DispatchDic
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._GroupId2DispatchDic
  L1_2(L2_2)
  A0_2._GroupId2DispatchDic = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2, A1_2)
  A0_2._UserData = A1_2
end
L0_1.SetUserData = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._UserData
  return L1_2
end
L0_1.GetUserData = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2._GroupId2DispatchDic
  L6_2 = L5_2
  L5_2 = L5_2.Value
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if nil ~= L5_2 then
    L7_2 = L5_2
    L6_2 = L5_2.IsExistEventHandle
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    return L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1.IsExistEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._GroupId2DispatchDic
  L4_2 = L3_2
  L3_2 = L3_2.ContainsKey
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = A0_2._GroupId2DispatchDic
    L4_2 = L3_2
    L3_2 = L3_2.Add
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.AddEventDispatch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._GroupId2DispatchDic
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._GroupId2DispatchDic
    L3_2 = L2_2
    L2_2 = L2_2.Remove
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.RemoveEventDispatch = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2._GroupId2DispatchDic
  L6_2 = L5_2
  L5_2 = L5_2.Value
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if nil == L5_2 then
    L6_2 = G
    L6_2 = L6_2.new
    L7_2 = G
    L7_2 = L7_2.AddOnceEventDispatch
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
    L7_2 = A0_2
    L6_2 = A0_2.AddEventDispatch
    L8_2 = A1_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L7_2 = L5_2
  L6_2 = L5_2.AddEventHandle
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L5_2
end
L0_1.AddEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2._GroupId2DispatchDic
  L6_2 = L5_2
  L5_2 = L5_2.Value
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if nil ~= L5_2 then
    L7_2 = L5_2
    L6_2 = L5_2.RemoveEventHandle
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
  end
  return L5_2
end
L0_1.RemoveEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._GroupId2DispatchDic
  L4_2 = L3_2
  L3_2 = L3_2.ContainsKey
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2._GroupId2DispatchDic
    L4_2 = L3_2
    L3_2 = L3_2.Value
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2
    L3_2 = L3_2.DispatchEvent
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
  end
end
L0_1.DispatchEvent = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._GroupId2DispatchDic
  L5_2 = L4_2
  L4_2 = L4_2.ContainsKey
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A0_2._GroupId2DispatchDic
    L5_2 = L4_2
    L4_2 = L4_2.Value
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.DispatchEventWithParam
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  else
  end
end
L0_1.DispatchEventWithParam = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._GroupId2DispatchDic
  L3_2 = L2_2
  L2_2 = L2_2.GetData
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.ClearEventHandle
    L6_2(L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.Dispose
    L6_2(L7_2)
    L6_2 = G
    L6_2 = L6_2.delete
    L7_2 = L5_2
    L6_2(L7_2)
    L5_2 = nil
  end
  L1_2 = A0_2._GroupId2DispatchDic
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1.ClearAllEventHandle = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._GroupId2DispatchDic
  L3_2 = L2_2
  L2_2 = L2_2.Value
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2._GroupId2DispatchDic
    L4_2 = L3_2
    L3_2 = L3_2.Remove
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.ClearEventHandle
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.Dispose
    L3_2(L4_2)
    L3_2 = G
    L3_2 = L3_2.delete
    L4_2 = L2_2
    L3_2(L4_2)
    L2_2 = nil
  else
  end
end
L0_1.ClearEventDispatch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._GroupId2DispatchDic
  L3_2 = L2_2
  L2_2 = L2_2.Value
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.GetEventDispatch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._GroupId2DispatchDic
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.HasEventDispatch = L1_1
return L0_1
