local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Filter.DrinkMakerFilterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Filter.DrinkMakerFilterPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerHandbookDrinkPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DrinkList/EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "DrinkList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_drink = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerFilterPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerFilterPanelBinder
  L5_2 = "FilterPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.filter_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DetailPanel/Content/LockPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail_lock = L1_2
end
L0_1._on_bind = L1_1
return L0_1
