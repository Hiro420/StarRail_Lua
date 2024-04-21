local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SubStarInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Active"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UnActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unactive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PreShine"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_preview = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.node_animation = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.node = nil
  A0_2.node_unactive = nil
  A0_2.node_preview = nil
  A0_2.node_animation = nil
end
L0_1._on_dispose = L1_1
return L0_1
