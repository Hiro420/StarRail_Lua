local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L3_2.ctor = false
  L3_2.super = A1_2
  L3_2.__index = L3_2
  L3_2.dataType = "Class"
  if nil ~= A1_2 then
    L4_2 = setmetatable
    L5_2 = L3_2
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
  L3_2.clsName = A0_2
  if nil ~= A0_2 and "" ~= A0_2 then
    if nil == A2_2 then
      L4_2 = G
      L5_2 = L3_2.clsName
      L4_2[L5_2] = L3_2
    else
      L4_2 = L3_2.clsName
      A2_2[L4_2] = L3_2
    end
  end
  return L3_2
end
return L0_1
