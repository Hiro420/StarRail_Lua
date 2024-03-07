local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Relic.RelicSellPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSellTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSellTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemSellConfirmDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ItemMainType
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ItemRarity
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "Relic_Rank5_ReturnItem_RelicRemains_ItemID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = G
L3_1 = L3_1.UIColorUtils
L3_1 = L3_1.GetColor
L4_1 = "#EB4D3D"
L3_1 = L3_1(L4_1)
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueCommonExcelTable
L4_1 = L4_1.GetData
L5_1 = "Item_Sell_Max_Count"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "RelicSellPage_ItemSortTypeList"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.ArrayValue
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.InventorySortType
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "RelicSellPage"
L9_1 = G
L9_1 = L9_1.UIController
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RelicSellPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_descend = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._super_rare_relic_as_exp = false
end
L7_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_sort_type_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  A0_2._cur_sort_type = L3_2
  A0_2._sort_type_name_table = L2_2
  A0_2._cur_sort_type_list = L1_2
  A0_2._cur_tab_index = 1
end
L7_1.init = L8_1
function L8_1(A0_2, A1_2)
  A0_2._except_item = A1_2
end
L7_1.set_except_item = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._binder
      L4_2 = L4_2.inventory_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L7_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L7_1._on_enter_special_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L7_1._on_leave_special_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.inventory_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 ~= nil
    return L3_2
  end
end
L7_1._is_can_to_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L7_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L7_1._init_ui_navigation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = 0
  L4_2 = L5_1.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = G
    L9_2 = L9_2.Utils
    L9_2 = L9_2.enum_from_int_str
    L10_2 = L6_1
    L11_2 = L5_1[L6_2]
    L11_2 = L11_2.IntValue
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = #L8_2
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.InventoryModule
    L10_2 = L10_2.GetSortTypeName
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L2_2[L9_2] = L10_2
    L9_2 = #L3_2
    L9_2 = L9_2 + 1
    L10_2 = #L8_2
    L3_2[L9_2] = L10_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.InventorySortType
  L4_2 = L4_2.Rarity
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.get_sort_type_from_cache
  L6_2 = A0_2.__name
  L7_2 = L4_2
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.InventorySortType
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L5_2 = L3_2
  L6_2 = L2_2
  L7_2 = L4_2
  return L5_2, L6_2, L7_2
end
L7_1._init_sort_type_list = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._quick_select_type_list_tab
  if L1_2 ~= nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.gen_type_list
  L2_2 = "UIText_ItemSell_Relic_QuickSelectDialog_SubTitle01"
  L3_2 = false
  L4_2 = 1
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.gen_type_list
  L3_2 = "UIText_ItemSell_Relic_QuickSelectDialog_SubTitle02"
  L4_2 = false
  L5_2 = 1
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = {}
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  A0_2._quick_select_type_list_tab = L3_2
  L3_2 = pairs
  L4_2 = QuickSelectType
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = QuickSelectType
    L8_2 = L8_2.Discarded
    if L7_2 == L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2.all_sort_type
      L10_2 = G
      L10_2 = L10_2.InventoryUtils
      L10_2 = L10_2.gen_sort_type
      L11_2 = L7_2
      L12_2 = QuickSelectTypeTextID
      L12_2 = L12_2[L7_2]
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2)
    else
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2.all_sort_type
      L10_2 = G
      L10_2 = L10_2.InventoryUtils
      L10_2 = L10_2.gen_sort_type
      L11_2 = L7_2
      L12_2 = QuickSelectTypeTextID
      L12_2 = L12_2[L7_2]
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2.all_sort_type
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.sort_type
    L3_3 = A1_3.sort_type
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
end
L7_1._init_quick_select_type_list = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L7_1._select_prev = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L7_1._select_next = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._item_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_sell
  L4_2 = A0_2._on_btn_sell
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_select
  L4_2 = A0_2._on_btn_quick_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_filter_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_relic_result_switch_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_drop_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "RelicSellPage"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
end
L7_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L7_1._custom_setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.sort_items
  L3_2 = A0_2._cur_sort_type
  L4_2 = A0_2._is_descend
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = 6
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RelicSellTabItem
    L8_2 = G
    L8_2 = L8_2.RelicSellTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_tab_root
    L6_2(L7_2, L8_2)
    L5_2.button_prefab_index = 0
    L7_2 = L5_2
    L6_2 = L5_2.set_except_item
    L8_2 = A0_2._except_item
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.enum_from_int_str
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.RelicType
    L10_2 = L4_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L4_1
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_detail_panel
    L8_2 = A0_2._binder
    L8_2 = L8_2.inventory_panel
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_empty_tip
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_material_changed_callback
    L8_2 = A0_2
    L9_2 = A0_2._on_selected_material_changed
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L7_1._init_tabs = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._cur_sort_type_list
  L4_2 = A0_2._sort_type_name_table
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_panel
  L3_2 = A0_2._cur_sort_type
  L3_2 = #L3_2
  L4_2 = A0_2._is_descend
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_sort_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_order
  L5_2 = A0_2._sort_items
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L7_1._setup_order_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_filter_finished
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L7_1._setup_filter_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_materials
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = L7_2.item
    L1_2[L8_2] = L9_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_locked_relics
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L7_1._on_setup_filter = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.set_filter_result
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L7_1._on_filter_finished = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_relic_result_switch
  L2_2 = L1_2
  L1_2 = L1_2.register_switch_callback
  L3_2 = A0_2._on_relic_result_switch
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_relic_result_switch
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L7_1._setup_relic_result_switch_panel = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = not A1_2
  A0_2._super_rare_relic_as_exp = L2_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  if L2_2 ~= nil then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2.get_selected_materials
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2._on_selected_material_changed
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L7_1._on_relic_result_switch = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = false
  L3_2 = 0
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.item
    L10_2 = L9_2.ItemMainType
    L11_2 = L0_1.Relic
    L10_2 = L10_2 == L11_2
    if L10_2 then
      L2_2 = true
      L11_2 = L9_2.Row
      L11_2 = L11_2.ReturnItemIDList
      if L11_2 ~= nil then
        L12_2 = L11_2.Length
        if 0 < L12_2 then
          L12_2 = L11_2[0]
          L3_2 = L12_2.ItemID
        end
      end
      break
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_relic_result_switch
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  if L2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_relic_result_switch
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L2_1
    L7_2 = L3_2
    L8_2 = A0_2._super_rare_relic_as_exp
    L8_2 = not L8_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L7_1._refresh_relic_result_switch_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_quick_select
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_relic_base_type
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2
  L3_2 = L3_2.get_type
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2
  L3_2 = L3_2.get_all_item
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.set_filter_result
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_filter_result
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
end
L7_1._on_tab_select_change = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = #A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_select_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.preview_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L6_2 = A0_2._super_rare_relic_as_exp
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_sell
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_relic_result_switch_panel
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = L4_1
  if L2_2 >= L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_select_num
    L4_2 = L3_1
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_select_num
    L4_2 = A0_2._binder
    L4_2 = L4_2.color_cur_num
    L3_2.color = L4_2
  end
  if L2_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2._reset_quick_select
    L3_2(L4_2)
  end
end
L7_1._on_selected_material_changed = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = not A1_2
  A0_2._is_descend = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L7_1._on_btn_order = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "number" then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.enum_from_int_str
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.InventorySortType
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A1_2 = L2_2
  end
  A0_2._cur_sort_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L7_1._sort_items = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetSortTypeName
  L3_2 = A1_2
  return L2_2(L3_2)
end
L7_1._set_sort_type_text_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Inventory.InventorySortDialog"
  L3_2 = A0_2._cur_sort_type
  L4_2 = A0_2._cur_sort_type_list
  L5_2 = A0_2
  L6_2 = A0_2._sort_items
  L7_2 = "UIText_TeamMemberOrderDialog_Title"
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L7_1._on_btn_sort_type = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_btn_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_quick_select_type_list
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.New
  L2_2 = "Ui.Common.FilterSort.MultiOrderOptionSortDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = A0_2._quick_select_type_list
  L5_2 = A0_2._quick_select_type_list_tab
  L6_2 = "UIText_ItemSell_Relic_QuickSelectDialog_Title"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_confirm_callback
  L4_2 = A0_2._on_quick_select_confirm
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.show
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L7_1._on_btn_quick_select = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._quick_select_type_list
  if L2_2 == nil and A1_2 == nil then
    return
  end
  A0_2._quick_select_type_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_text_quick_select
  L2_2(L3_2)
  L2_2 = A0_2._quick_select_type_list
  if L2_2 == nil then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2.clear_all
    L2_2(L3_2)
  else
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2.quick_select
    L4_2 = A0_2._quick_select_type_list
    L2_2(L3_2, L4_2)
  end
end
L7_1._on_quick_select_confirm = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._quick_select_type_list
  if L1_2 ~= nil then
    L1_2 = A0_2._quick_select_type_list
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_14
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_quick_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ItemSell_QuickChoose_Btn"
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_14::
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = A0_2._quick_select_type_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = QuickSelectTypeTextID
    L8_2 = L8_2[L6_2]
    L7_2 = L7_2(L8_2)
    if L1_2 == nil then
      L8_2 = "<color=\"#F29E38\">"
      L9_2 = L7_2
      L1_2 = L8_2 .. L9_2
    else
      L8_2 = L1_2
      L9_2 = ","
      L10_2 = L7_2
      L1_2 = L8_2 .. L9_2 .. L10_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_quick_select
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L5_2 = "</color>"
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L7_1._refresh_text_quick_select = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  A0_2._quick_select_type_list = nil
  L2_2 = A0_2
  L1_2 = A0_2._refresh_text_quick_select
  L1_2(L2_2)
end
L7_1._reset_quick_select = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_materials
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_26
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastPile
  L2_2 = L2_2()
  L2_2.DescTextID = "UIText_ItemSell_Hint_Choose"
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageStruct
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_26::
  L2_2 = L1_2[1]
  L2_2 = L2_2.item
  L2_2 = L2_2.Rarity
  L2_2 = 4 <= L2_2
  A0_2._has_high_rarity = L2_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_2._has_high_rarity
    if not L2_3 then
      L2_3 = A0_3.item
      L2_3 = L2_3.Rarity
      L2_3 = 4 <= L2_3
    end
    A0_2._has_high_rarity = L2_3
    L2_3 = A0_3.item
    L2_3 = L2_3.Rarity
    L3_3 = A1_3.item
    L3_3 = L3_3.Rarity
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._has_high_rarity
  if L2_2 then
    L2_2 = "UIText_ItemSell_Dailog_Rare_Relic"
    if L2_2 then
      goto lbl_46
    end
  end
  L2_2 = "UIText_ItemSell_Dailog_Relic"
  ::lbl_46::
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.ItemSellConfirmDialog
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = L1_2
  L7_2 = true
  L8_2 = A0_2._super_rare_relic_as_exp
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_hint
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_sell_title
  L6_2 = "UIText_ItemSell_ConfirmList_Relic"
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_sell_succ_callback
  L6_2 = A0_2._on_item_sell_success
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.show
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
end
L7_1._on_btn_sell = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Common.CommonIntroduceDialog"
  L3_2 = 45
  L1_2(L2_2, L3_2)
end
L7_1._on_btn_intro = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L7_1._item_changed = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = A1_2
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._reset_quick_select
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.select
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_source_data
  L4_2 = A0_2._tab_control
  L4_2 = L4_2.current_select_item
  L5_2 = L4_2
  L4_2 = L4_2.get_all_item
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.set_filter_result
  L4_2 = A0_2._binder
  L4_2 = L4_2.filter_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_filter_result
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L7_1._on_item_sell_success = L8_1
return L7_1
