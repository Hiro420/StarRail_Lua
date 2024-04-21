local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumPropertyBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPropertyBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAreaStatsPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumPropertyBarPanel
  L4_2 = G
  L4_2 = L4_2.MuseumPropertyBarPanelBinder
  L5_2 = "StatusList/ProgressInfoRow1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_a_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumPropertyBarPanel
  L4_2 = G
  L4_2 = L4_2.MuseumPropertyBarPanelBinder
  L5_2 = "StatusList/ProgressInfoRow2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_b_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumPropertyBarPanel
  L4_2 = G
  L4_2 = L4_2.MuseumPropertyBarPanelBinder
  L5_2 = "StatusList/ProgressInfoRow3"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.property_c_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
