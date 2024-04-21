local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooMultiSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooMultiSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatUI3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatUI3DPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooBagPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.SpaceZooBagPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/SpaceZoo/SpaceZooBagPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooMultiSelectPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooMultiSelectPanelBinder
  L5_2 = A0_2.node_select_panel
  L6_2 = A0_2._owner
  L6_2 = L6_2.__name
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.select_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatUI3DPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatUI3DPanelBinder
  L5_2 = A0_2.node_ui3d
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.ui3d_panel = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatImagePanel
  L5_2 = G
  L5_2 = L5_2.SpaceZooCatImagePanelBinder
  L6_2 = A0_2.img_hat_color
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.SpaceZooCatImagePanel
  L6_2 = G
  L6_2 = L6_2.SpaceZooCatImagePanelBinder
  L7_2 = A0_2.img_body_color
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_panel_with_root_trans
  L6_2 = G
  L6_2 = L6_2.SpaceZooCatImagePanel
  L7_2 = G
  L7_2 = L7_2.SpaceZooCatImagePanelBinder
  L8_2 = A0_2.img_body_decal
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  A0_2.feature_img_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatImagePanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatImagePanelBinder
  L5_2 = A0_2.img_special_decal
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.special_feature_img = L1_2
  L1_2 = {}
  L2_2 = A0_2.node_hat_color
  L3_2 = A0_2.node_body_color
  L4_2 = A0_2.node_body_decal
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2.feature_node_list = L1_2
end
L0_1._on_bind = L2_1
return L0_1
