local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendQuantifyTagPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTagDisplayPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIValueChangeAnimation
  L4_2 = "TagPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.value_anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "TagPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendQuantifyTagPanel
  L5_2 = G
  L5_2 = L5_2.DrinkMakerBartendQuantifyTagPanelBinder
  L6_2 = "TagPanel/TagList/TagProgressItem1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendQuantifyTagPanel
  L5_2 = G
  L5_2 = L5_2.DrinkMakerBartendQuantifyTagPanelBinder
  L6_2 = "TagPanel/TagList/TagProgressItem2"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendQuantifyTagPanel
  L5_2 = G
  L5_2 = L5_2.DrinkMakerBartendQuantifyTagPanelBinder
  L6_2 = "TagPanel/TagList/TagProgressItem3"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[3] = L2_2
  A0_2.panel_quantify_tag_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendTagPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTagPanelBinder
  L5_2 = "TagPanel/SPTagList/TargetTag"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_mix_tag = L1_2
end
L0_1._on_bind = L1_1
return L0_1
