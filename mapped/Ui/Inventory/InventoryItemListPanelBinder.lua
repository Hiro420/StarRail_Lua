local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryItemListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "ItemList/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemListEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.ItemList = L1_2
end
L0_1._on_bind = L1_1
return L0_1
