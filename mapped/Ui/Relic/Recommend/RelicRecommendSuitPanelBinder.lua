local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendSuitInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendSuitInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicRecommendSuitPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RelicRecommendSuitInfoRowPanel
  L5_2 = G
  L5_2 = L5_2.RelicRecommendSuitInfoRowPanelBinder
  L6_2 = "Top1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RelicRecommendSuitInfoRowPanel
  L5_2 = G
  L5_2 = L5_2.RelicRecommendSuitInfoRowPanelBinder
  L6_2 = "Top2"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RelicRecommendSuitInfoRowPanel
  L5_2 = G
  L5_2 = L5_2.RelicRecommendSuitInfoRowPanelBinder
  L6_2 = "Top3"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[3] = L2_2
  A0_2.panel_info_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
