local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicArchiveIconInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.RelicArchive.RelicArchiveIconInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSuitContainerPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.relic_panel_map = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.RelicArchiveIconInfoPanel
    L8_2 = G
    L8_2 = L8_2.RelicArchiveIconInfoPanelBinder
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "RelicSuit/Relic0%d/DataBankRelicIconInfo"
    L11_2 = L4_2
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2.relic_panel_map
    L7_2 = A0_2.relic_panel_map
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L6_2[L7_2] = L5_2
  end
  L1_2 = 5
  L2_2 = 6
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.RelicArchiveIconInfoPanel
    L8_2 = G
    L8_2 = L8_2.RelicArchiveIconInfoPanelBinder
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "PlanarSuit/Relic0%d/DataBankRelicIconInfo"
    L11_2 = L4_2
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2.relic_panel_map
    L7_2 = A0_2.relic_panel_map
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L6_2[L7_2] = L5_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RelicSuit"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_suit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PlanarSuit"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_planar_suit = L1_2
end
L0_1._on_bind = L1_1
return L0_1
