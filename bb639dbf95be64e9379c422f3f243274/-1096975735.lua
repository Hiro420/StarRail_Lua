local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PerformanceMonitorPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._prefab_path = A1_2
end
L0_1.set_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._prefab_path
  return L1_2
end
L0_1.get_prefab_path = L1_1
return L0_1
