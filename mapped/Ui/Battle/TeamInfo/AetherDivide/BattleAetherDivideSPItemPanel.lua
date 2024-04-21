local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideSPItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_point
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
end
L0_1.set_color = L1_1
return L0_1
