local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTipMixTagPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendTagPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTagPanelBinder
  L5_2 = "SPTag"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_mix_tag = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTagPanel
  L5_2 = G
  L5_2 = L5_2.DrinkMakerBartendTagPanelBinder
  L6_2 = "MixInfo/Tag1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTagPanel
  L5_2 = G
  L5_2 = L5_2.DrinkMakerBartendTagPanelBinder
  L6_2 = "MixInfo/Tag2"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTagPanel
  L5_2 = G
  L5_2 = L5_2.DrinkMakerBartendTagPanelBinder
  L6_2 = "MixInfo/Tag3"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTagPanel
  L5_2 = G
  L5_2 = L5_2.DrinkMakerBartendTagPanelBinder
  L6_2 = "MixInfo/Tag4"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[4] = L2_2
  A0_2.panel_sub_tag_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
