local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.MaterialTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DestructibleMaterialTabItem"
L2_1 = G
L2_1 = L2_1.MaterialTabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.super
  L2_2 = L2_2._refresh
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_destroy
  L5_2 = A0_2._on_btn_destroy
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Material.MaterialDestroyPage"
  L3_2 = A0_2._tab_data
  L4_2 = A0_2._sort
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_destroy = L1_1
return L0_1
