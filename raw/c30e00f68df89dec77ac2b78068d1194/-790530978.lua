local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSellPreviewPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSellPreviewPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSellSuperRareResultSwitchPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSellSuperRareResultSwitchPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicFilterPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSellPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Inventory/RelicSellPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
end
L0_1._on_pc_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/LeftPanel/MiddleButtonArea/BtnSell"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_sell = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/LeftPanel/MiddleButtonArea/OrderPanel/Root/BtnQuickSelect"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quick_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/LeftPanel/PrizePanel/Capacity/CurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cur_select_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/LeftPanel/PrizePanel/Capacity/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/LeftPanel/MiddleButtonArea/OrderPanel/Root/BtnQuickSelect/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_quick_select = L1_2
  L1_2 = A0_2.text_cur_select_num
  L1_2 = L1_2.color
  A0_2.color_cur_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/TopListPanel/ScrollView/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ItemArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/TopListPanel/ScrollView/KeyMapInfo_Left"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.left_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/TopListPanel/ScrollView/KeyMapInfo_Right"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.right_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/TopListPanel/ScrollView/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/TopListPanel/ScrollView/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_select_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnFilterSortSelectPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterSortSelectPanelBinder
  L5_2 = "Root/Contents/LeftPanel/MiddleButtonArea/OrderPanel"
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
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicFilterPanel
  L4_2 = G
  L4_2 = L4_2.BtnFilterPanelBinder
  L5_2 = "Root/Contents/LeftPanel/MiddleButtonArea/OrderPanel/Root/BtnFilter"
  L6_2 = G
  L6_2 = L6_2.RelicFilterPanel
  L6_2 = L6_2.RelicFilterDisplayType
  L6_2 = L6_2.RelicSell
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.filter_panel = L1_2
  L1_2 = A0_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.InventoryPanel
  L4_2 = G
  L4_2 = L4_2.InventoryPanelBinder
  L5_2 = "Root/Contents/RightPanel/InventoryRightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.inventory_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSellSuperRareResultSwitchPanel
  L4_2 = G
  L4_2 = L4_2.RelicSellSuperRareResultSwitchPanelBinder
  L5_2 = "Root/Contents/LeftPanel/ItemArea/ItemList/SwitchPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_relic_result_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSellPreviewPanel
  L4_2 = G
  L4_2 = L4_2.RelicSellPreviewPanelBinder
  L5_2 = "Root/Contents/LeftPanel/PrizePanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.preview_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/EmptyTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ItemArea/ItemList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ItemSell_SubName_Relic"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/MiddleButtonArea/TogAllSelect"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.btn_quick_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L5_2 = "Root/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_top_bar = L1_2
end
L0_1._bind = L1_1
return L0_1
