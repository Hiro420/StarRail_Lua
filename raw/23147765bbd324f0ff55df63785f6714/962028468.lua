local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatUI3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatUI3DPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooEXPItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooEXPItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooBreedResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.SpaceZooResultPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/SpaceZoo/SpaceZooResultPage.prefab"
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
  L3_2 = L3_2.SpaceZooCatUI3DPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCatUI3DPanelBinder
  L5_2 = A0_2.node_ui3d
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.ui3d_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = A0_2.node_exp_list
  L6_2 = "Ui.SpaceZoo.SpaceZooEXPItemPanel"
  L7_2 = "Ui.SpaceZoo.SpaceZooEXPItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.exp_list = L1_2
end
L0_1._on_bind = L2_1
return L0_1
