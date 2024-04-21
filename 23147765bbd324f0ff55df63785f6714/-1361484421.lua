local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeTabItemBinder"
L2_1 = G
L2_1 = L2_1.InventoryTabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnFilterSortSelectPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterSortSelectPanelBinder
  L5_2 = "LeftPanel/MiddleButtonArea/OrderPanel"
  L6_2 = {}
  L7_2 = FilterSortSelectEnum
  L7_2 = L7_2.Filter
  L8_2 = FilterSortSelectEnum
  L8_2 = L8_2.CommonSort
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.filter_order_select_panel = L1_2
  L1_2 = A0_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_enum
  L3_2 = FilterSortSelectEnum
  L3_2 = L3_2.CommonSort
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.order_panel = L1_2
  L1_2 = A0_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_enum
  L3_2 = FilterSortSelectEnum
  L3_2 = L3_2.Filter
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.filter_panel = L1_2
end
L0_1._on_create_filter_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LeftPanel/MiddleButtonArea/SellPanel/BtnSell"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_sell = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LeftPanel/MiddleButtonArea/SellPanel/BtnLockSetting"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_lock_setting = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "LeftPanel/MiddleButtonArea/SellPanel/BtnSell"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_sell = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/MiddleButtonArea/SellPanel/BtnSell/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.in_control_tip_sell = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/ItemArea/ItemList/TopListPanel/ScrollView/KeyMapInfo_Left"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.left_tab_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/ItemArea/ItemList/TopListPanel/ScrollView/KeyMapInfo_Right"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.right_tab_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_visible_control_node
  L3_2 = "Capacity"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_visible_control_node
  L3_2 = "LeftPanel/MiddleButtonArea/SellPanel"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_visible_control_node
  L3_2 = "LeftPanel/MiddleButtonArea/SellPanel/BtnLockSetting"
  L1_2(L2_2, L3_2)
end
L0_1._on_inventory_tab_item_custom_bind = L1_1
return L0_1
