local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Inventory.QuickConsumable.InventoryItemQuickConsumablePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.QuickConsumable.QuickConsumableFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryItemQuickConsumablePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = "QuickConsumable_ItemChangeHint"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.InventoryItemQuickConsumablePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel_use
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exchange
  L4_2 = A0_2._on_btn_replace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_consumable_item
  L4_2 = A0_2._on_btn_quick_consumable_item
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuickConsumableItemCancel
  L4_2 = A0_2._on_quick_consumable_item_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuickConsumableItemChange
  L4_2 = A0_2._on_quick_consumable_item_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_item_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.QuickConsumableFilter
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetQuickConsumableItems
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._quick_use_items = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._quick_use_items
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2._tab_data = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_drop_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._init_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._sort
  L3_2 = A0_2._quick_use_items
  L4_2 = A0_2._cur_sort_type
  L5_2 = A0_2._is_descend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quick_use_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_first_item_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_using_item_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_exchange_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cancel_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_empty_state
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_list
  L2_2 = L2_2.transform
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_item_panel
  if L1_2 then
    L1_2 = A0_2._cur_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_selected
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    A0_2._cur_item_panel = L2_2
    L2_2 = A0_2._cur_item_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_cur_item
    L2_2 = L2_2(L3_2)
    A0_2._cur_item = L2_2
  else
    return
  end
  L2_2 = A0_2._cur_item_panel
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 == false then
      L2_2 = A0_2._cur_item_panel
      L3_2 = L2_2
      L2_2 = L2_2.trigger_click_item
      L2_2(L3_2)
    end
  end
end
L0_1._setup_first_item_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_state
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quick_use_items
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._quick_use_items
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_item
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._cur_item
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_right_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.QuickConsumableItem
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_cur_use_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cur_use_item_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.InventoryModule
    L2_2 = L2_2.GetItemRow
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_cur_use_item
    L6_2 = L2_2.ItemIconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = G
    L3_2 = L3_2.QuickConsumableUtils
    L3_2 = L3_2.set_quick_consumable_view
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_cur_use_item_count
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_cur_use_item
    L6_2 = false
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_quick_consumable_item
  L3_2 = L1_2 ~= nil
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_incontrol_tip_quick_consumable_item
  L3_2 = L1_2 ~= nil
  L2_2.IsShowTip = L3_2
end
L0_1._refresh_using_item_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.QuickConsumableItem
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_exchange
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Activity_Consume_Exchange"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_exchange
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_QuickConsumable_SetConsumable"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_exchange
  L3_2 = A0_2._quick_use_items
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L2_2.interactable = L3_2
end
L0_1._refresh_exchange_btn_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_exchange_img
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._quick_use_items
  L3_2 = #L3_2
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
end
L0_1._refresh_empty_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cancel_use
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.QuickConsumableItem
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
end
L0_1._refresh_cancel_btn_view = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.InventoryItemIconPanel
    L10_2 = G
    L10_2 = L10_2.InventoryItemIconPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_enable_show_quick_consumable_mark
    L9_2 = true
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A0_2._quick_use_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = L6_2
  L8_2 = L6_2.setup_view_by_item
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L6_2
  L8_2 = L6_2.setup_inventory_item_reddot
  L8_2(L9_2)
  L8_2 = A0_2._cur_item
  if L7_2 == L8_2 then
    L9_2 = A0_2
    L8_2 = A0_2._on_item_click
    L10_2 = L7_2
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
  else
    L9_2 = L6_2
    L8_2 = L6_2.set_selected
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
  L9_2 = L6_2
  L8_2 = L6_2.bind_click
  L10_2 = A0_2
  L11_2 = A0_2._on_item_click
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L6_2
  L8_2 = L6_2.set_count_with_color_format
  L10_2 = L7_2.Count
  L11_2 = L7_2.Row
  L11_2 = L11_2.PileLimit
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L7_2.ConfigID
  L9_2 = L1_1.QuickConsumableItem
  if L8_2 == L9_2 then
    A0_2._quick_consumable_item_panel = L6_2
  end
  return L5_2
end
L0_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._cur_item = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._quick_use_items
  L5_2 = A0_2._cur_item
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._memory_cur_item_pos = L3_2
  if A1_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.reset_scroll_pos
    L3_2(L4_2)
    L3_2 = A0_2._cur_item_panel
    if L3_2 ~= nil then
      L3_2 = A0_2._cur_item_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_selected
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    A0_2._cur_item_panel = A2_2
    L4_2 = A0_2
    L3_2 = A0_2.is_out_most_zoom
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A2_2
      L3_2 = A2_2.set_selected
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect_desc
    L4_2 = L3_2
    L3_2 = L3_2.CanScroll
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.setup_short_cut_hint_panel
      L5_2 = 33
      L3_2(L4_2, L5_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2.setup_short_cut_hint_panel
      L5_2 = 1
      L3_2(L4_2, L5_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_exchange_btn_view
  L3_2(L4_2)
end
L0_1._on_item_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L2_2 = A0_2._cur_sort_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.InventorySortType
  L3_2 = L3_2.Default
  if L2_2 == L3_2 then
    L2_2 = A0_2._is_descend
    L1_2 = L2_2 ~= false
    A0_2._is_descend = false
  end
  return L1_2
end
L0_1._set_default_ascend_by_cur_sort_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_sort_type_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  A0_2._cur_sort_type = L3_2
  A0_2._sort_type_name_table = L2_2
  A0_2._cur_sort_type_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_default_ascend_by_cur_sort_type
  L1_2(L2_2)
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
L0_1._setup_order_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._tab_data
  L1_2 = L1_2.ItemSortTypeList
  L2_2 = {}
  L3_2 = {}
  L4_2 = L1_2.Length
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L1_2[L8_2]
    L10_2 = #L2_2
    L10_2 = L10_2 + 1
    L11_2 = #L9_2
    L2_2[L10_2] = L11_2
    L10_2 = #L9_2
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.InventoryModule
    L11_2 = L11_2.GetSortTypeName
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L3_2[L10_2] = L11_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._get_sort_enum_type
  L7_2 = L2_2[1]
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.get_sort_type_from_cache
  L7_2 = A0_2.__name
  L8_2 = A0_2._tab_data
  L8_2 = L8_2.ID
  L7_2 = L7_2 .. L8_2
  L8_2 = L5_2
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.InventorySortType
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L6_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L5_2
  return L6_2, L7_2, L8_2
end
L0_1._init_sort_type_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.enum_from_int_str
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.InventorySortType
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1._get_sort_enum_type = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._quick_use_items = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_finish_filter = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = not A1_2
  A0_2._is_descend = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._invoke_callback
  L4_2 = A0_2._on_btn_order_callback
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_order = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 ~= nil then
    L3_2 = not A2_2
    A0_2._is_descend = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_sort_enum_type
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._cur_sort_type = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_default_ascend_by_cur_sort_type
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.order_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_sort_panel
    L5_2 = A0_2._cur_sort_type
    L5_2 = #L5_2
    L6_2 = A0_2._is_descend
    L6_2 = not L6_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.save_sort_type_to_cache
  L4_2 = A0_2.__name
  L5_2 = A0_2._tab_data
  L5_2 = L5_2.ID
  L4_2 = L4_2 .. L5_2
  L5_2 = A1_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.InventorySortType
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1._sort_items = L3_1
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._callback_self
  if L2_2 ~= nil then
    L2_2 = A1_2
    L3_2 = A0_2._callback_self
    L4_2 = ...
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2
    L3_2, L4_2 = ...
    L2_2(L3_2, L4_2)
  end
end
L0_1._invoke_callback = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L1_1.QuickConsumableItem
  L5_2 = L1_1.DisableQuickConsumableItem
  if L5_2 ~= nil then
    L4_2 = nil
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.InventorySortType
  L5_2 = L5_2.Default
  if A2_2 == L5_2 then
    L5_2 = table
    L5_2 = L5_2.sort
    L6_2 = A1_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = A0_3.ConfigID
      L3_3 = L4_2
      if L2_3 == L3_3 then
        L2_3 = true
        return L2_3
      else
        L2_3 = A1_3.ConfigID
        L3_3 = L4_2
        if L2_3 == L3_3 then
          L2_3 = false
          return L2_3
        else
          L2_3 = G
          L2_3 = L2_3.InventoryUtils
          L2_3 = L2_3.compare_sort_default
          L3_3 = A0_3
          L4_3 = A1_3
          L5_3 = A3_2
          return L2_3(L3_3, L4_3, L5_3)
        end
      end
    end
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.InventorySortType
  L5_2 = L5_2.Rarity
  if A2_2 == L5_2 then
    L5_2 = table
    L5_2 = L5_2.sort
    L6_2 = A1_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = A0_3.ConfigID
      L3_3 = L4_2
      if L2_3 == L3_3 then
        L2_3 = true
        return L2_3
      else
        L2_3 = A1_3.ConfigID
        L3_3 = L4_2
        if L2_3 == L3_3 then
          L2_3 = false
          return L2_3
        else
          L2_3 = G
          L2_3 = L2_3.InventoryUtils
          L2_3 = L2_3.compare_sort_material_rarity
          L3_3 = A0_3
          L4_3 = A1_3
          L5_3 = A3_2
          return L2_3(L3_3, L4_3, L5_3)
        end
      end
    end
    L5_2(L6_2, L7_2)
    return
  end
  L6_2 = A2_2
  L5_2 = A2_2.ToString
  L5_2 = L5_2(L6_2)
  if A3_2 then
    L6_2 = table
    L6_2 = L6_2.sort
    L7_2 = A1_2
    function L8_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = L5_2
      L2_3 = A0_3[L2_3]
      L3_3 = L5_2
      L3_3 = A1_3[L3_3]
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L6_2(L7_2, L8_2)
  else
    L6_2 = table
    L6_2 = L6_2.sort
    L7_2 = A1_2
    function L8_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = L5_2
      L2_3 = A0_3[L2_3]
      L3_3 = L5_2
      L3_3 = A1_3[L3_3]
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L6_2(L7_2, L8_2)
  end
end
L0_1._sort = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Inventory.QuickConsumable.QuickConsumableConfirmDialog"
  L3_2 = A0_2._cur_item
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._confirm_dialog = L1_2
  L1_2 = A0_2._confirm_dialog
  L2_2 = L1_2
  L1_2 = L1_2.register_confirm_callback
  L3_2 = A0_2._on_btn_confirm
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_replace = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CmdSetTurnFoodScRsp
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.QuickConsumableItem
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.NetworkManager
    L1_2 = L1_2.FFOMLPONIFB
    L2_2 = L1_2
    L1_2 = L1_2.SendCancelTurnFoodCsReq
    L1_2(L2_2)
  end
end
L0_1._on_btn_cancel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.QuickConsumableItem
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.ItemDetailDialog"
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_quick_consumable_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_QuickConsumable_ConsumableUnloaded"
  L1_2(L2_2, L3_2)
end
L0_1._on_quick_consumable_item_cancel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._confirm_dialog
  L2_2 = L1_2
  L1_2 = L1_2.try_exit
  L1_2(L2_2)
  L1_2 = L1_1.QuickConsumableItem
  if L1_2 ~= nil then
    L2_2 = A0_2._pre_using_item
    if L2_2 ~= L1_2 then
      A0_2._need_play_burst = true
    end
  end
  A0_2._pre_using_item = L1_2
  A0_2._quick_consumable_item_change = true
end
L0_1._on_quick_consumable_item_change = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._item_change = true
end
L0_1._on_item_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_filters
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2[1]
  if L2_2 then
    L2_2 = L1_2[1]
    L3_2 = L2_2
    L2_2 = L2_2._force_rebuild_filter_data
    L2_2(L3_2)
  end
end
L0_1._on_setup_filter = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._need_play_burst
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_burst_root
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    A0_2._need_play_burst = false
  end
  L1_2 = A0_2._item_change
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeNextFrame
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = G
      L0_3 = L0_3.Utils
      L0_3 = L0_3.create_lua_table_from_cs_list
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.GetQuickConsumableItems
      L1_3, L2_3 = L1_3(L2_3)
      L0_3 = L0_3(L1_3, L2_3)
      A0_2._quick_use_items = L0_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.filter_panel
      L1_3 = L0_3
      L0_3 = L0_3.set_source_data
      L2_3 = A0_2._quick_use_items
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.filter_panel
      L1_3 = L0_3
      L0_3 = L0_3.refresh_filters
      L0_3(L1_3)
      A0_2._item_change = false
      A0_2._quick_consumable_item_change = false
    end
    L1_2(L2_2)
  else
    L1_2 = A0_2._quick_consumable_item_change
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.CoroutineUtils
      L1_2 = L1_2.InvokeNextFrame
      function L2_2()
        local L0_3, L1_3
        L0_3 = A0_2._binder
        if L0_3 == nil then
          return
        end
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._refresh
        L0_3(L1_3)
        A0_2._quick_consumable_item_change = false
      end
      L1_2(L2_2)
    end
  end
end
L0_1._on_first_child_dialog_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_navigation_target
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_item_panel
  if L1_2 then
    L1_2 = A0_2._cur_item_panel
    L1_2 = L1_2._binder
    L1_2 = L1_2.button
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L3_1
return L0_1
