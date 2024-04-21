local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WeakPointIconNodeBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Active"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Active/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "UnActive"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_unactive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UnActive/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_unactive = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.node_active = nil
  A0_2.img_active = nil
  A0_2.node_unactive = nil
  A0_2.img_unactive = nil
end
L0_1._on_dispose = L1_1
return L0_1
