local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooTipMaterialPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "IconPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mat_unlock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LockPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mat_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "IconPanel/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_mat = L1_2
end
L0_1._on_bind = L1_1
return L0_1
