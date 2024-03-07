local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubMonsterIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/AvatarMask/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Target"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Done"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_done = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Empty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarMask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_monster = L1_2
end
L0_1._on_bind = L1_1
return L0_1
