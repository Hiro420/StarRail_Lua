local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooTipMaterialPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooTipMaterialPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooCollectCatPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate/SpaceZooTargetPinIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2.shrink_panel_icon = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Root/ShrinkPanel/FormulaMini/ItemList/Item%d"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.SpaceZooFeatureIconPanel
    L9_2 = G
    L9_2 = L9_2.SpaceZooFeatureIconPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.shrink_panel_icon
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.SpaceZooTipMaterialPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooTipMaterialPanelBinder
  L5_2 = "Root/ShrinkPanel/TextPanel/Item/SPItem"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_mutate_tip_material = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.SpaceZooTipMaterialPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooTipMaterialPanelBinder
  L5_2 = "Root/ShrinkPanel/FormulaMini/Item/SPItem"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_normal_tip_material = L1_2
end
L0_1._on_bind = L2_1
return L0_1
