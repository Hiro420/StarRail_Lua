local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonAvatarHpPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Fill"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_alive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Dead"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_dead = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Fill/Fill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Fill/RedFill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_danger = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Fill/Dying"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_dying = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Fill/Dying/Hint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_dying = L1_2
end
L0_1._on_bind = L1_1
return L0_1
