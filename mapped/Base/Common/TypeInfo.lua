local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "TypeInfo"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = assert
  L3_2 = nil ~= A1_2 and nil ~= A0_2
  L4_2 = "clsType and instanceObject can not nil"
  L2_2(L3_2, L4_2)
  L2_2 = assert
  L3_2 = A1_2.dataType
  L3_2 = "Class" == L3_2
  L4_2 = "clsType and instanceObject typeinfo is error"
  L2_2(L3_2, L4_2)
  L2_2 = false
  L3_2 = A0_2
  repeat
    L4_2 = getmetatable
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    if L3_2 == A1_2 then
      L2_2 = true
      break
    end
  until nil == L3_2
  L3_2 = nil
  return L2_2
end
L0_1.IsInstance = L1_1
return L0_1
