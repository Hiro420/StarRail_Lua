local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendSuitItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendSuitItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicRecommendSuitInfoRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicRecommendSuitItemIconPanel
  L4_2 = G
  L4_2 = L4_2.RelicRecommendSuitItemIconPanelBinder
  L5_2 = "SuitItem1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_item_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicRecommendSuitItemIconPanel
  L4_2 = G
  L4_2 = L4_2.RelicRecommendSuitItemIconPanelBinder
  L5_2 = "SuitItem2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_item_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RateNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_percent = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnQuickFilter"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_filter = L1_2
end
L0_1._on_bind = L1_1
return L0_1
