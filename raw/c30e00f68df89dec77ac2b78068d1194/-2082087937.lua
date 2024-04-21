local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffSelectPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnFilterSortSelectPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterSortSelectPanelBinder
  L5_2 = "BtnPanel/OrderPanel"
  L6_2 = {}
  L7_2 = FilterSortSelectEnum
  L7_2 = L7_2.CommonSort
  L6_2[1] = L7_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.filter_order_select_panel = L1_2
  L1_2 = A0_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_enum
  L3_2 = FilterSortSelectEnum
  L3_2 = L3_2.CommonSort
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.order_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "MemberList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_staff_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
