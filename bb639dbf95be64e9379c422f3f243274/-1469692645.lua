local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatFeaturesPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatFeaturesPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooBreedPerformanceDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.SpaceZooBreedDialogIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/SpaceZoo/SpaceZooBreedDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatFeaturesPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatFeaturesPanelBinder
  L5_2 = A0_2.node_head_left
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.left_head_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatFeaturesPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatFeaturesPanelBinder
  L5_2 = A0_2.node_body_left
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.left_body_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatFeaturesPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatFeaturesPanelBinder
  L5_2 = A0_2.node_body_decal_left
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.left_body_decal_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatFeaturesPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatFeaturesPanelBinder
  L5_2 = A0_2.node_head_right
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.right_head_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatFeaturesPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatFeaturesPanelBinder
  L5_2 = A0_2.node_body_right
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.right_body_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCatFeaturesPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatFeaturesPanelBinder
  L5_2 = A0_2.node_body_decal_right
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.right_body_decal_panel = L1_2
  L1_2 = {}
  L2_2 = A0_2.left_head_panel
  L3_2 = A0_2.left_body_panel
  L4_2 = A0_2.left_body_decal_panel
  L5_2 = A0_2.right_head_panel
  L6_2 = A0_2.right_body_panel
  L7_2 = A0_2.right_body_decal_panel
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  A0_2.features = L1_2
end
L0_1._on_bind = L2_1
return L0_1
