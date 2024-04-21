local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooHandbookSpecialFeatureIconPanelBinder"
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
  L3_2 = "Get/DecalPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Lock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Get/ItemPanel/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_img_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Get/ItemPanel/Unknown"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_img_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatImagePanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatImagePanelBinder
  L5_2 = "Get/DecalPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_cat_image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Get/ItemPanel/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_material = L1_2
end
L0_1._on_bind = L1_1
return L0_1
