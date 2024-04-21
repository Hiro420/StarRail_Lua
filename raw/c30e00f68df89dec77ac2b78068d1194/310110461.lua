local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusMainEntranceSNSInfoCarouselItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "StatusPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AuthorInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_user_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StatusPanel/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_post_type_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "StatusPanel/TextPanel/TypeIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_post_type_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_post_title = L1_2
end
L0_1._on_bind = L1_1
return L0_1
