local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "List"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._Data = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.Count
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._Data
    L7_2 = L5_2 + 1
    L6_2[L7_2] = nil
  end
  A0_2._Data = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  L2_2 = A0_2._Data
  if nil ~= L2_2 then
    L2_2 = table
    L2_2 = L2_2.getn
    L3_2 = A0_2._Data
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  return L1_2
end
L0_1.Count = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._Data
  return L1_2
end
L0_1.GetData = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._Data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.Add = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.Count
  L3_2 = L3_2(L4_2)
  if A1_2 < L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._Data
    L5_2 = A1_2 + 1
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.add
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.Insert = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = false
  L5_2 = A0_2
  L4_2 = A0_2.Count
  L4_2 = L4_2(L5_2)
  while true do
    L5_2 = L4_2 + 1
    if not (L2_2 < L5_2) then
      break
    end
    L5_2 = A0_2._Data
    L5_2 = L5_2[L2_2]
    if L5_2 == A1_2 then
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = A0_2._Data
      L7_2 = L2_2
      L5_2(L6_2, L7_2)
      L3_2 = true
      break
    end
    L2_2 = L2_2 + 1
  end
  return L3_2
end
L0_1.Remove = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L4_2 = A0_2
  L3_2 = A0_2.Count
  L3_2 = L3_2(L4_2)
  if A1_2 < L3_2 then
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = A0_2._Data
    L5_2 = A1_2 + 1
    L3_2(L4_2, L5_2)
  end
  return L2_2
end
L0_1.RemoveAt = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = nil
  L4_2 = A0_2
  L3_2 = A0_2.Count
  L3_2 = L3_2(L4_2)
  if A1_2 < L3_2 then
    L3_2 = A0_2._Data
    L4_2 = A1_2 + 1
    L2_2 = L3_2[L4_2]
  end
  return L2_2
end
L0_1.Get = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A0_2
  L3_2 = A0_2.Count
  L3_2 = L3_2(L4_2)
  if A1_2 < L3_2 then
    L3_2 = A0_2._Data
    L4_2 = A1_2 + 1
    L3_2[L4_2] = A2_2
  end
end
L0_1.Set = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = -1
  L3_2 = 1
  L4_2 = false
  while true do
    L6_2 = A0_2
    L5_2 = A0_2.Count
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2 + 1
    if not (L3_2 < L5_2) then
      break
    end
    L5_2 = A0_2._Data
    L5_2 = L5_2[L3_2]
    if L5_2 == A1_2 then
      L4_2 = true
      break
    end
    L3_2 = L3_2 + 1
  end
  if L4_2 then
    L2_2 = L3_2 - 1
  else
    L2_2 = -1
  end
  return L2_2
end
L0_1.IndexOf = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = -1
  L4_2 = A0_2
  L3_2 = A0_2.Count
  L3_2 = L3_2(L4_2)
  if L3_2 == 0 then
    return L2_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.Count
  L3_2 = L3_2(L4_2)
  L4_2 = false
  while 0 < L3_2 do
    L5_2 = A0_2._Data
    L5_2 = L5_2[L3_2]
    if L5_2 == A1_2 then
      L4_2 = true
      break
    end
    L3_2 = L3_2 - 1
  end
  if L4_2 then
    L2_2 = L3_2 - 1
  else
    L2_2 = -1
  end
  return L2_2
end
L0_1.LastIndexOf = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = 1
  while true do
    L4_2 = A0_2
    L3_2 = A0_2.Count
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 + 1
    if not (L2_2 < L3_2) then
      break
    end
    L3_2 = A1_2
    L4_2 = A0_2._Data
    L4_2 = L4_2[L2_2]
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2._Data
      L3_2 = L3_2[L2_2]
      return L3_2
    end
    L2_2 = L2_2 + 1
  end
  L3_2 = nil
  return L3_2
end
L0_1.Find = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L4_2 = A0_2
  L3_2 = A0_2.IndexOf
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = -1 ~= L3_2
  return L2_2
end
L0_1.Contains = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.Count
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._Data
    L7_2 = L5_2 + 1
    L6_2[L7_2] = nil
  end
  L2_2 = {}
  A0_2._Data = L2_2
end
L0_1.Clear = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = nil
  L4_2 = nil
  if nil ~= A1_2 then
    L6_2 = A0_2
    L5_2 = A0_2.Count
    L5_2 = L5_2(L6_2)
    L6_2 = 0
    L7_2 = L5_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = A0_2._Data
      L11_2 = L9_2 + 1
      L4_2 = L10_2[L11_2]
      L10_2 = A1_2
      L11_2 = L4_2
      L12_2 = A2_2
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L3_2 = L4_2
        break
      end
    end
  end
  return L3_2
end
L0_1.ForEach = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    A1_3 = A1_3 + 1
    L2_3 = A0_3[A1_3]
    if L2_3 then
      L3_3 = A1_3
      L4_3 = L2_3
      return L3_3, L4_3
    end
  end
  L2_2 = L1_2
  L3_2 = A0_2._Data
  L4_2 = 0
  return L2_2, L3_2, L4_2
end
L0_1.Pairs = L1_1
return L0_1
