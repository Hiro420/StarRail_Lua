local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Dictionary"
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
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.Clear
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._Data
  L1_2(L2_2)
  A0_2._Data = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._Data
  return L1_2
end
L0_1.GetData = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = A0_2._Data
  if nil ~= L2_2 then
    L2_2 = pairs
    L3_2 = A0_2._Data
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L0_1.Count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._Data
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.Value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = pairs
  L4_2 = A0_2._Data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L2_2 = L6_2
      break
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1.Key = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._Data
  L3_2[A1_2] = A2_2
end
L0_1.Add = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.delete
  L3_2 = A0_2._Data
  L3_2 = L3_2[A1_2]
  L2_2(L3_2)
  L2_2 = A0_2._Data
  L2_2[A1_2] = nil
end
L0_1.Remove = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._Data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.delete
    L7_2 = L4_2
    L6_2(L7_2)
    L6_2 = G
    L6_2 = L6_2.delete
    L7_2 = L5_2
    L6_2(L7_2)
    L7_2 = A0_2
    L6_2 = A0_2.Remove
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._Data
  L1_2(L2_2)
  L1_2 = {}
  A0_2._Data = L1_2
end
L0_1.Clear = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._Data
  L2_2 = L2_2[A1_2]
  L2_2 = nil ~= L2_2
  return L2_2
end
L0_1.ContainsKey = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = false
  L3_2 = pairs
  L4_2 = A0_2._Data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L2_2 = true
      break
    end
  end
  return L2_2
end
L0_1.ContainsValue = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = nil
  L4_2 = nil
  if nil ~= A1_2 then
    L5_2 = pairs
    L6_2 = A0_2._Data
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = A1_2
      L11_2 = L8_2
      L12_2 = L9_2
      L13_2 = A2_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      if not L10_2 then
        L3_2 = L8_2
        L4_2 = L9_2
        break
      end
    end
  end
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L0_1.ForEach = L1_1
return L0_1
