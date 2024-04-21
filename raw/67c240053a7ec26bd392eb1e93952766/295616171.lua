local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HashSet"
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
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._Data = nil
end
L0_1.dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._Data
  return L1_2
end
L0_1.get_data = L1_1
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
L0_1.count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._Data
  L2_2[A1_2] = true
end
L0_1.add = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._Data
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 ~= nil
  L3_2 = A0_2._Data
  L3_2[A1_2] = nil
  return L2_2
end
L0_1.remove = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._Data = L1_2
end
L0_1.clear = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._Data
  L2_2 = L2_2[A1_2]
  L2_2 = nil ~= L2_2
  return L2_2
end
L0_1.contains = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = nil
  L4_2 = nil
  if nil ~= A1_2 then
    L5_2 = pairs
    L6_2 = A0_2._Data
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = A1_2
      L11_2 = L8_2
      L12_2 = A2_2
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L3_2 = L8_2
        break
      end
    end
  end
  return L3_2
end
L0_1.for_each = L1_1
return L0_1
