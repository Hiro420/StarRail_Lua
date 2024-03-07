local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpItemListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelUpItemListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelUpItemListDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/ItemListAreaDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeLevelUpItemListPanel
  L4_2 = G
  L4_2 = L4_2.LightConeLevelUpItemListPanelBinder
  L5_2 = "Root/LeftPanel/ItemListArea/ItemArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.item_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/CloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelCloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/LeftPanel/BtnSell"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_sell = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftPanel/OrderPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_order_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RightBlurPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnFilterSortSelectPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterSortSelectPanelBinder
  L5_2 = "Root/LeftPanel/OrderPanel"
  L6_2 = {}
  L7_2 = FilterSortSelectEnum
  L7_2 = L7_2.CommonSort
  L6_2[1] = L7_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.filter_order_select_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnSortMobilePanel
  L4_2 = G
  L4_2 = L4_2.BtnSortMobilePanelBinder
  L5_2 = "Root/LeftPanel/OrderPanel/Root/BtnOrderPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.order_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnSortPCPanel
  L4_2 = G
  L4_2 = L4_2.BtnSortPCPanelBinder
  L5_2 = "Root/LeftPanel/OrderPanel/Root/BtnOrderPanelPC"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.order_panel_pc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.InventoryPanel
  L4_2 = G
  L4_2 = L4_2.InventoryPanelBinder
  L5_2 = "Root/RightBlurPanel/RightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.inventory_panel = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
