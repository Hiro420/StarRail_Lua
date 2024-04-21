local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.DataStruct.List"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.EventHandle.EventDispatchFunctionObject"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EventDispatch"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._EventId = A1_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.List
  L2_2 = L2_2(L3_2)
  A0_2._HandleList = L2_2
  A0_2._UniqueId = 0
  A0_2._UserData = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._UserData = nil
  L1_2 = nil
  L2_2 = 0
  L3_2 = A0_2._HandleList
  L4_2 = L3_2
  L3_2 = L3_2.Count
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._HandleList
    L7_2 = L6_2
    L6_2 = L6_2.Get
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L1_2 = L6_2
    L7_2 = L1_2
    L6_2 = L1_2.Dispose
    L6_2(L7_2)
    L6_2 = G
    L6_2 = L6_2.delete
    L7_2 = L1_2
    L6_2(L7_2)
    L1_2 = nil
  end
  L2_2 = A0_2._HandleList
  L3_2 = L2_2
  L2_2 = L2_2.Dispose
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.delete
  L3_2 = A0_2._HandleList
  L2_2(L3_2)
  A0_2._HandleList = nil
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
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._HandleList
  return L1_2
end
L0_1.GetHandleList = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._HandleList
  L2_2 = L1_2
  L1_2 = L1_2.Count
  return L1_2(L2_2)
end
L0_1.GetEventHandleCount = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._HandleList
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.HasEventHandle = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._UniqueId
  return L1_2
end
L0_1.GetUniqueId = L1_1
function L1_1(A0_2, A1_2)
  A0_2._UniqueId = A1_2
end
L0_1.SetUniqueId = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if nil ~= A2_2 then
    L4_2 = G
    L4_2 = L4_2.new
    L5_2 = G
    L5_2 = L5_2.EventDispatchFunctionObject
    L4_2 = L4_2(L5_2)
    L6_2 = L4_2
    L5_2 = L4_2.SetFuncObject
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = A0_2
    L5_2 = A0_2.AddObject
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
  end
end
L0_1.AddEventHandle = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._HandleList
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.AddObject = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = 0
  L5_2 = A0_2._HandleList
  L6_2 = L5_2
  L5_2 = L5_2.Count
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  L7_2 = L5_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._HandleList
    L11_2 = L10_2
    L10_2 = L10_2.Get
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L10_2
    L10_2 = L10_2.IsEqual
    L12_2 = A1_2
    L13_2 = A2_2
    L14_2 = A3_2
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    if L10_2 then
      break
    end
    L4_2 = L4_2 + 1
  end
  if L5_2 > L4_2 then
    L7_2 = A0_2
    L6_2 = A0_2.RemoveObject
    L8_2 = A0_2._HandleList
    L9_2 = L8_2
    L8_2 = L8_2.Get
    L10_2 = L4_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  else
  end
end
L0_1.RemoveEventHandle = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._HandleList
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A1_2
    L2_2 = A1_2.Dispose
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.delete
    L3_2 = A1_2
    L2_2(L3_2)
    A1_2 = nil
  else
  end
end
L0_1.RemoveObject = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._HandleList
  L3_2 = L2_2
  L2_2 = L2_2.Count
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = 0
  L5_2 = L2_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._HandleList
    L9_2 = L8_2
    L8_2 = L8_2.Get
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L3_2 = L8_2
    L8_2 = L3_2._IsClientDispose
    if L8_2 == false then
      L9_2 = L3_2
      L8_2 = L3_2.Call
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1.DispatchEvent = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2._HandleList
  L4_2 = L3_2
  L3_2 = L3_2.Count
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = 0
  L6_2 = L3_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._HandleList
    if nil ~= L9_2 then
      L9_2 = A0_2._HandleList
      L10_2 = L9_2
      L9_2 = L9_2.Get
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L4_2 = L9_2
      L9_2 = L4_2._IsClientDispose
      if L9_2 == false then
        L10_2 = L4_2
        L9_2 = L4_2.CallWithParam
        L11_2 = A1_2
        L12_2 = A2_2
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
end
L0_1.DispatchEventWithParam = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._HandleList
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = 0
  L4_2 = L1_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._HandleList
    L8_2 = L7_2
    L7_2 = L7_2.Get
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L2_2 = L7_2
    L8_2 = A0_2
    L7_2 = A0_2.RemoveObject
    L9_2 = L2_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.ClearEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = false
  L5_2 = A0_2._HandleList
  L6_2 = L5_2
  L5_2 = L5_2.Count
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  L7_2 = 0
  L8_2 = L5_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2._HandleList
    L12_2 = L11_2
    L11_2 = L11_2.Get
    L13_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    L6_2 = L11_2
    L12_2 = L6_2
    L11_2 = L6_2.IsEqual
    L13_2 = A1_2
    L14_2 = A2_2
    L15_2 = A3_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    if L11_2 then
      L4_2 = true
      break
    end
  end
  return L4_2
end
L0_1.IsExistEventHandle = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._HandleList
  L3_2 = L2_2
  L2_2 = L2_2.Count
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = 0
  L5_2 = L2_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._HandleList
    L9_2 = L8_2
    L8_2 = L8_2.Get
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L3_2 = L8_2
    L8_2 = A0_2._HandleList
    L9_2 = L8_2
    L8_2 = L8_2.Add
    L10_2 = L3_2
    L8_2(L9_2, L10_2)
  end
end
L0_1.CopyFrom = L1_1
return L0_1
