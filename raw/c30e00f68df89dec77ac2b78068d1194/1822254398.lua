local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MultiAvatarSortPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnFilterSortSelectPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterSortSelectPanelBinder
  L5_2 = "OrderPanel"
  L6_2 = {}
  L7_2 = FilterSortSelectEnum
  L7_2 = L7_2.Filter
  L8_2 = FilterSortSelectEnum
  L8_2 = L8_2.CommonSort
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.filter_order_select_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnFilterPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterPanelBinder
  L5_2 = "OrderPanel/Root/BtnFilter"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.filter_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnSortMobilePanel
  L4_2 = G
  L4_2 = L4_2.BtnSortMobilePanelBinder
  L5_2 = "OrderPanel/Root/BtnOrderPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_sort_btns = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnSortPCPanel
  L4_2 = G
  L4_2 = L4_2.BtnSortPCPanelBinder
  L5_2 = "OrderPanel/Root/BtnOrderPanelPC"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_sort_btns_pc = L1_2
  L1_2 = A0_2.panel_sort_btns
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.panel_sort_btns_pc
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._common_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
  L1_2 = A0_2.panel_sort_btns
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
  L1_2 = A0_2.panel_sort_btns_pc
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_pc_bind = L1_1
return L0_1
