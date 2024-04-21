local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "LuaToCs"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  if nil ~= A0_2 then
    L3_2 = A0_2
    L2_2 = A0_2.GetEnumerator
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2(L4_2)
    L1_2 = L2_2.Current
  end
  return L1_2
end
L0_1.GetDicFirstItem = L1_1
return L0_1
