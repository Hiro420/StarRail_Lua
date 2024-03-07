local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.dataType = "Class"
  L1_2.clsName = A0_2
  if nil ~= A0_2 and "" ~= A0_2 then
    L2_2 = G
    L3_2 = L1_2.clsName
    L2_2[L3_2] = L1_2
  end
  return L1_2
end
L1_1 = G
L1_1.StaticClass = L0_1
return L0_1
