local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooEyeDecalIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Get"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatImagePanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatImagePanelBinder
  L5_2 = "Get/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_cat_image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Lock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftItemPanel"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.gameObject
  L2_2 = L2_2.activeSelf
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "LeftItemPanel/ItemIcon"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_img_get = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "LeftItemPanel/Unknown"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_img_lock = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_get_cmpt
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.Image
    L5_2 = "LeftItemPanel/ItemIcon"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.img_material = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "RightItemPanel/ItemIcon"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_img_get = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_find
    L4_2 = "RightItemPanel/Unknown"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.node_img_lock = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._safe_get_cmpt
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.Image
    L5_2 = "RightItemPanel/ItemIcon"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.img_material = L2_2
  end
end
L0_1._on_bind = L1_1
return L0_1
