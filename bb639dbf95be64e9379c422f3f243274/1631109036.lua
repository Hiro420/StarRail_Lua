local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BuffArrowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Up"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Down"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_debuff = L1_2
end
L0_1._on_bind = L1_1
return L0_1
