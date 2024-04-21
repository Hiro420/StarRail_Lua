local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendSuitPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendSuitPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendPropertyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Recommend.RelicRecommendPropertyPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicRecommendPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicRecommendSuitPanel
  L4_2 = G
  L4_2 = L4_2.RelicRecommendSuitPanelBinder
  L5_2 = "Contents/SuitRecommendPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_suit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicRecommendPropertyPanel
  L4_2 = G
  L4_2 = L4_2.RelicRecommendPropertyPanelBinder
  L5_2 = "Contents/StatRecommendPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_property = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/TitlePanel/IconPanel/KeyMapInfo/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.gamepad_btn_navi_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NetStatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_wait_packet = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/TipPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tips = L1_2
end
L0_1._on_bind = L1_1
return L0_1
