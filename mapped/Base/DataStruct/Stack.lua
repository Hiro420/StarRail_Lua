local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Stack"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._datas = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.Count
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._datas
    L7_2 = L5_2 + 1
    L6_2[L7_2] = nil
  end
  A0_2._datas = nil
end
L0_1.dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  L2_2 = A0_2._datas
  if nil ~= L2_2 then
    L2_2 = table
    L2_2 = L2_2.getn
    L3_2 = A0_2._datas
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  return L1_2
end
L0_1.count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._datas
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.push = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._datas
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.peek
  L1_2 = L1_2(L2_2)
  L2_2 = table
  L2_2 = L2_2.remove
  L3_2 = A0_2._datas
  L2_2(L3_2)
  return L1_2
end
L0_1.pop = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._datas
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._datas
  L2_2 = A0_2._datas
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1.peek = L1_1
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
L0_1.contains = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.Count
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._datas
    L7_2 = L5_2 + 1
    L6_2[L7_2] = nil
  end
  L2_2 = {}
  A0_2._datas = L2_2
end
L0_1.clear = L1_1
return L0_1
