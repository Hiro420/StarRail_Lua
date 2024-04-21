local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = assert
  L4_2 = nil ~= A2_2
  L5_2 = "super class is error"
  L3_2(L4_2, L5_2)
  L3_2 = nil
  L4_2 = nil
  L5_2 = A2_2.UnderlyingSystemType
  if nil ~= L5_2 then
    L5_2 = getmetatable
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = getmetatable
    L6_2 = A2_2.NativeClass
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  A1_2.ctor = false
  A1_2.super = A2_2
  A1_2.__index = A1_2
  A1_2.__newindex = A1_2
  A1_2.dataType = "NativeClass"
  L5_2 = L4_2.NativeClass
  if nil == L5_2 then
    L3_2 = A2_2
    A1_2.NativeClass = A2_2
  else
    L3_2 = L4_2.NativeClass
  end
  A1_2.clsName = A0_2
  if nil ~= A0_2 and "" ~= A0_2 then
    L5_2 = G
    L6_2 = A1_2.clsName
    L5_2[L6_2] = A1_2
  end
  if nil ~= A2_2 then
    L5_2 = setmetatable
    L6_2 = A1_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = setmetatable
    L6_2 = L3_2
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
  return A1_2
end
L1_1 = G
L1_1.NativeClass = L0_1
return L0_1
