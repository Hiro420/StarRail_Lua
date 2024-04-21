local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EventDispatchGroupList"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._Count = 0
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._List = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.new
    L6_2 = G
    L6_2 = L6_2.EventDispatchGroup
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2._List
    L7_2 = L6_2
    L6_2 = L6_2.Add
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.Init
    L6_2(L7_2)
  end
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._List
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._List
  L1_2(L2_2)
  A0_2._List = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2._Count
  if A1_2 < L5_2 then
    L5_2 = A0_2._List
    L6_2 = L5_2
    L5_2 = L5_2.Get
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2
    L5_2 = L5_2.AddEventHandle
    L7_2 = A2_2
    L8_2 = A3_2
    L9_2 = A4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1.AddEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2._Count
  if A1_2 < L5_2 then
    L5_2 = A0_2._List
    L6_2 = L5_2
    L5_2 = L5_2.Get
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2
    L5_2 = L5_2.RemoveEventHandle
    L7_2 = A2_2
    L8_2 = A3_2
    L9_2 = A4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1.RemoveEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = false
  L7_2 = A0_2._Count
  if A1_2 < L7_2 then
    L7_2 = A0_2._List
    L8_2 = L7_2
    L7_2 = L7_2.Get
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.IsExistEventHandle
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L12_2 = A5_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = L7_2
  end
  return L6_2
end
L0_1.IsExistEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = false
  L4_2 = A0_2._Count
  if A1_2 < L4_2 then
    L4_2 = A0_2._List
    L5_2 = L4_2
    L4_2 = L4_2.Get
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.Value
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = nil ~= L4_2
  end
  return L3_2
end
L0_1.IsExistEventDispatch = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = nil
  L4_2 = A0_2._Count
  if A1_2 < L4_2 then
    L4_2 = A0_2._List
    L5_2 = L4_2
    L4_2 = L4_2.Get
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.GetEventDispatch
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  return L3_2
end
L0_1.GetEventDispatch = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = nil
  L4_2 = A0_2._Count
  if A1_2 < L4_2 then
    L4_2 = A0_2._List
    L5_2 = L4_2
    L4_2 = L4_2.Get
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.RemoveEventDispatch
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  return L3_2
end
L0_1.RemoveEventDispatch = L1_1
return L0_1
