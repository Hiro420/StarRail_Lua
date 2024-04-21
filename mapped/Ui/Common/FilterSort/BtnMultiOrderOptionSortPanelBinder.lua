local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnSortMobilePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnMultiOrderOptionSortPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnOrderPanel"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnOrderPanelPC"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnSortMobilePanel
  L4_2 = G
  L4_2 = L4_2.BtnSortMobilePanelBinder
  L5_2 = "Root/BtnOrderPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_sort = L1_2
end
L0_1._on_bind = L1_1
return L0_1
