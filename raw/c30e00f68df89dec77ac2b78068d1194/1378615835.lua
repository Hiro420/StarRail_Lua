local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideDotPanel"
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
  L2_2 = L2_2.node_light
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
