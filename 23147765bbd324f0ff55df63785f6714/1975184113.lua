local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideSPPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._max_sp = 2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "UI/Battle/AetherDivide/ADUltraSP"
  L2_2 = A0_2._max_sp
  L3_2 = ".prefab"
  L1_2 = L1_2 .. L2_2 .. L3_2
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2, A1_2)
  A0_2._max_sp = A1_2
end
L0_1.set_max_sp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ProgressPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_points = L1_2
end
L0_1._on_bind = L1_1
return L0_1
