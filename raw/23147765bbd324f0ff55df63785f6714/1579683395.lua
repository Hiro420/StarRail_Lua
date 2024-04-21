local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooCollectCatDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate/SpaceZooPinTipDialogIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/SpaceZoo/SpaceZooPinTipDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2.expand_panel_icon = L1_2
  L1_2 = A0_2.expand_panel_icon
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.SpaceZooFeatureIconPanel
  L5_2 = G
  L5_2 = L5_2.SpaceZooFeatureIconPanelBinder
  L6_2 = "PointerRoot/ExpandPanel/Root/FormulaFull/ItemList/Item2"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L1_2 = A0_2.expand_panel_icon
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.SpaceZooFeatureIconPanel
  L5_2 = G
  L5_2 = L5_2.SpaceZooFeatureIconPanelBinder
  L6_2 = "PointerRoot/ExpandPanel/Root/FormulaFull/ItemList/Item3"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[2] = L2_2
  L1_2 = A0_2.expand_panel_icon
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.SpaceZooFeatureIconPanel
  L5_2 = G
  L5_2 = L5_2.SpaceZooFeatureIconPanelBinder
  L6_2 = "PointerRoot/ExpandPanel/Root/FormulaFull/ItemList/Item1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[3] = L2_2
  L1_2 = A0_2.expand_panel_icon
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.SpaceZooFeatureIconPanel
  L5_2 = G
  L5_2 = L5_2.SpaceZooFeatureIconPanelBinder
  L6_2 = "PointerRoot/ExpandPanel/Root/FormulaFull/ItemList/Item4"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[4] = L2_2
end
L0_1._on_bind = L2_1
return L0_1
