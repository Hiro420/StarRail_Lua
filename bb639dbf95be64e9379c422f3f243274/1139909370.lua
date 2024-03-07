local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.InventoryTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.FoodUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.FoodTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FoodTabItem"
L2_1 = G
L2_1 = L2_1.InventoryTabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "4015"
L2_1 = 10006
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.InventoryModule
L4_1 = {}
L4_1.INVENTORY = 1
L4_1.QUICK_CONSUME = 2
L5_1 = "PopUpTips_FadeIn"
L6_1 = "PopUpTips_FadeOut"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemFavoriteChanged
  L4_2 = A0_2._on_item_favorite_change
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
  L3_2 = L3_2.MazeRefreshBuff
  L4_2 = A0_2._on_quick_consumable_item_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FeatureSwitched
  L4_2 = A0_2._on_feature_switched
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.FoodFilter
  L1_2 = L1_2(L2_2)
  A0_2.food_filter = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2.food_filter
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.bottom_btn_confirm
  L4_2 = A0_2._on_bottom_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.bottom_btn_close
  L4_2 = A0_2._on_bottom_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_quick_consumable_btn
  L1_2(L2_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_bottom_btn
  L4_2 = A0_2._on_in_control_bottom_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_attack_btn
  L4_2 = A0_2._on_click_quick_consumable_btn
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Attack
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_defend_btn
  L4_2 = A0_2._on_click_quick_consumable_btn
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Defend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.attack_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_call_back
  L3_2 = A0_2._on_click_quick_consumable_btn
  L4_2 = A0_2
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Attack
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.defend_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_call_back
  L3_2 = A0_2._on_click_quick_consumable_btn
  L4_2 = A0_2
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Defend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.attack_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_long_press_callback
  L3_2 = A0_2._on_hold_quick_consumable_btn
  L4_2 = A0_2
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Attack
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.defend_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_long_press_callback
  L3_2 = A0_2._on_hold_quick_consumable_btn
  L4_2 = A0_2
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Defend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.attack_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_consume_type
  L3_2 = FoodConsumeType
  L3_2 = L3_2.Attack
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.defend_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_consume_type
  L3_2 = FoodConsumeType
  L3_2 = L3_2.Defend
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_attack_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_call_back
  L3_2 = A0_2._on_click_quick_consumable_btn
  L4_2 = A0_2
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Attack
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_defend_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_call_back
  L3_2 = A0_2._on_click_quick_consumable_btn
  L4_2 = A0_2
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Defend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_attack_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_long_press_callback
  L3_2 = A0_2._on_hold_quick_consumable_btn
  L4_2 = A0_2
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Attack
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_defend_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_long_press_callback
  L3_2 = A0_2._on_hold_quick_consumable_btn
  L4_2 = A0_2
  L5_2 = FoodConsumeType
  L5_2 = L5_2.Defend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_attack_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_consume_type
  L3_2 = FoodConsumeType
  L3_2 = L3_2.Attack
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_defend_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_consume_type
  L3_2 = FoodConsumeType
  L3_2 = L3_2.Defend
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_tips
  L1_2(L2_2)
end
L0_1._init_quick_consumable_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_added
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._item_table
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_enable_show_favorite
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.useless_node
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1.set_useless_node_inactive = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.set_useless_node_inactive
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_quick_consume_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L1_2 = L0_1.super
  L1_2 = L1_2._on_select
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.reset_sort_and_filter
  L1_2(L2_2)
  L1_2 = L4_1.INVENTORY
  A0_2.panel_state = L1_2
end
L0_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_unselect
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bottom_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.clear_chosen_mark_item
  L1_2(L2_2)
  L1_2 = L4_1.INVENTORY
  A0_2.panel_state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.enable_resbar_navi
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_show_item_count = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_parent_type
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_order_panel
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._setup_order_panel = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.InventorySortType
  L4_2 = L4_2.Default
  if A2_2 == L4_2 then
    L4_2 = table
    L4_2 = L4_2.sort
    L5_2 = A1_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = G
      L2_3 = L2_3.InventoryUtils
      L2_3 = L2_3.compare_sort_default_with_favorite
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = A3_2
      return L2_3(L3_3, L4_3, L5_3)
    end
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.InventorySortType
  L4_2 = L4_2.Rarity
  if A2_2 == L4_2 then
    L4_2 = table
    L4_2 = L4_2.sort
    L5_2 = A1_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = G
      L2_3 = L2_3.InventoryUtils
      L2_3 = L2_3.compare_sort_material_rarity_with_favorite
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = A3_2
      return L2_3(L3_3, L4_3, L5_3)
    end
    L4_2(L5_2, L6_2)
    return
  end
  L5_2 = A2_2
  L4_2 = A2_2.ToString
  L4_2 = L4_2(L5_2)
  if A3_2 then
    L5_2 = table
    L5_2 = L5_2.sort
    L6_2 = A1_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = L4_2
      L2_3 = A0_3[L2_3]
      L3_3 = L4_2
      L3_3 = A1_3[L3_3]
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L5_2(L6_2, L7_2)
  else
    L5_2 = table
    L5_2 = L5_2.sort
    L6_2 = A1_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = L4_2
      L2_3 = A0_3[L2_3]
      L3_3 = L4_2
      L3_3 = A1_3[L3_3]
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L5_2(L6_2, L7_2)
  end
end
L0_1._sort = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._item_table = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.fill_in_chosen_mark_item
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target_by_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L5_2 = A0_2._owner
  L6_2 = L5_2
  L5_2 = L5_2.get_first_selected_object
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._report_filter_confirm
  L2_2(L3_2)
end
L0_1._on_finish_filter = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_item_panel
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.get_cur_item
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.set_favorite_effect
      L5_2 = L1_2
      L4_2 = L1_2.get_cur_item
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.IsFavorite
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_item_favorite_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_quick_consume_btn_status
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
    L0_3 = L0_3.fill_in_chosen_mark_item
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.refresh_popup_status
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._on_quick_consumable_item_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_quick_consume_view
  L1_2(L2_2)
end
L0_1._on_feature_switched = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._refresh_order_filter_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_filter_panel
  L1_2(L2_2)
end
L0_1._reset_filter_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.panel_state
  L2_2 = L4_1.QUICK_CONSUME
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.GetFoodItemsByConsumeType
    L4_2 = A0_2.consume_type
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._item_table = L1_2
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.InventoryModule
    L3_2 = L2_2
    L2_2 = L2_2.GetInventoryTabItems
    L4_2 = A0_2._tab_data
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._item_table = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.filter_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_source_data
    L3_2 = A0_2._item_table
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.filter_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_filter_result
    L1_2 = L1_2(L2_2)
    A0_2._item_table = L1_2
  end
end
L0_1._get_item_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if L1_2 then
  end
end
L0_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_item_table_valid
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_select
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
end
L0_1.on_item_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FeatureSwitchModule
  L2_2 = L1_2
  L1_2 = L1_2.IsFeatureClosed
  L3_2 = CS
  L3_2 = L3_2.NPLIJJDOLJK
  L3_2 = L3_2.LBNOCKKPJDB
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SystemOpenModule
  L2_2 = L2_2.IsOpen
  L3_2 = L2_1
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_quick_consume
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = not L1_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bottom_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = not L1_2
  end
  L3_2(L4_2, L5_2)
  if not L2_2 or L1_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.refresh_quick_consume_btn_status
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._has_atk_buff
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.TutorialTaskUnlock
    L5_2 = L1_1
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_quick_consume_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.get_modifier_by_maze_buff_pool
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.BuffPoolType
  L2_2 = L2_2.ItemAtk
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  return L2_2
end
L0_1._has_atk_buff = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetQuickConsumableItemByConsumeType
  L3_2 = FoodConsumeType
  L3_2 = L3_2.Attack
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetQuickConsumableItemByConsumeType
  L4_2 = FoodConsumeType
  L4_2 = L4_2.Defend
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2 ~= nil
  L4_2 = L2_2 ~= nil
  if L1_2 == nil then
    L5_2 = G
    L5_2 = L5_2.BuffUtils
    L5_2 = L5_2.get_item_data_by_maze_buff_pool
    L6_2 = G
    L6_2 = L6_2.BuffUtils
    L6_2 = L6_2.BuffPoolType
    L6_2 = L6_2.ItemAtk
    L5_2 = L5_2(L6_2)
    L1_2 = L5_2
  end
  if L2_2 == nil then
    L5_2 = G
    L5_2 = L5_2.BuffUtils
    L5_2 = L5_2.get_item_data_by_maze_buff_pool
    L6_2 = G
    L6_2 = L6_2.BuffUtils
    L6_2 = L6_2.BuffPoolType
    L6_2 = L6_2.ItemDef
    L5_2 = L5_2(L6_2)
    L2_2 = L5_2
  end
  A0_2.attack_item = L1_2
  A0_2.defend_item = L2_2
  L6_2 = A0_2
  L5_2 = A0_2.fill_in_chosen_mark_item
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.attack_btn_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2.attack_item
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.defend_btn_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2.defend_item
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.attack_btn_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_long_press_interactable
  L7_2 = A0_2.attack_item
  L7_2 = L7_2 ~= nil
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.defend_btn_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_long_press_interactable
  L7_2 = A0_2.defend_item
  L7_2 = L7_2 ~= nil
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.bottom_attack_btn_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2.attack_item
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.bottom_defend_btn_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2.defend_item
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.bottom_attack_btn_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_long_press_interactable
  L7_2 = A0_2.attack_item
  L7_2 = L7_2 ~= nil
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.bottom_defend_btn_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_long_press_interactable
  L7_2 = A0_2.defend_item
  L7_2 = L7_2 ~= nil
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.refresh_bottom_hint
  L5_2(L6_2)
end
L0_1.refresh_quick_consume_btn_status = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bottom_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.attack_item
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
end
L0_1.refresh_bottom_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetQuickConsumableItemByConsumeType
  L3_2 = FoodConsumeType
  L3_2 = L3_2.Attack
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetQuickConsumableItemByConsumeType
  L4_2 = FoodConsumeType
  L4_2 = L4_2.Defend
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2 ~= nil
  L4_2 = L2_2 ~= nil
  if L3_2 then
    L5_2 = A0_2.attack_popup_status
    if not L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_bottom_attack_popup
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_bottom_attack_popup
      L6_2 = L5_2
      L5_2 = L5_2.Play
      L7_2 = L5_1
      L5_2(L6_2, L7_2)
  end
  elseif not L3_2 then
    L5_2 = A0_2.attack_popup_status
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_bottom_attack_popup
      L6_2 = L5_2
      L5_2 = L5_2.Play
      L7_2 = L6_1
      L5_2(L6_2, L7_2)
    end
  end
  if L4_2 then
    L5_2 = A0_2.defend_popup_status
    if not L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_bottom_defend_popup
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_bottom_defend_popup
      L6_2 = L5_2
      L5_2 = L5_2.Play
      L7_2 = L5_1
      L5_2(L6_2, L7_2)
  end
  elseif not L4_2 then
    L5_2 = A0_2.defend_popup_status
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_bottom_defend_popup
      L6_2 = L5_2
      L5_2 = L5_2.Play
      L7_2 = L6_1
      L5_2(L6_2, L7_2)
    end
  end
  A0_2.attack_popup_status = L3_2
  A0_2.defend_popup_status = L4_2
end
L0_1.refresh_popup_status = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_in_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2.consume_type
  if L2_2 == A1_2 then
    L2_2 = A0_2.panel_state
    L3_2 = L4_1.QUICK_CONSUME
    if L2_2 == L3_2 then
      return
    end
  end
  A0_2.consume_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_quick_consume_panel_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.to_first_zoom
  L2_2(L3_2)
end
L0_1._on_click_quick_consumable_btn = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = FoodConsumeType
  L3_2 = L3_2.Attack
  if A1_2 == L3_2 then
    L2_2 = A0_2.attack_item
  else
    L2_2 = A0_2.defend_item
  end
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.can_be_quick_consumed_by_item_id
  L4_2 = L2_2.ConfigID
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_QuickConsumable_NotAvailible"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.IsQuickConsumableTurnSwitchOpen
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.SetTurnFoodSwitch
  L6_2 = A1_2
  L7_2 = not L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._on_hold_quick_consumable_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_item
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.use_item
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_bottom_btn_confirm = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_inventory_panel_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in
  L1_2(L2_2)
end
L0_1._on_bottom_btn_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.consume_type
  L2_2 = FoodConsumeType
  L2_2 = L2_2.None
  if L1_2 == L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_hold_quick_consumable_btn
  L3_2 = A0_2.consume_type
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_bottom_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1.INVENTORY
  A0_2.panel_state = L1_2
  L1_2 = FoodConsumeType
  L1_2 = L1_2.None
  A0_2.consume_type = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_bottom_panel
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "FadeAni"
  L4_2 = 2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.reset_sort_and_filter
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L1_2 = L1_2._cur_item_panel
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.item_list
    L3_2 = L3_2._cur_item_panel
    L3_2 = L3_2._binder
    L3_2 = L3_2.button
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.enable_resbar_navi
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.refresh_inventory_panel_state = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_attack_btn
  L2_2.enabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_defend_btn
  L2_2.enabled = A1_2
end
L0_1.refresh_quick_consume_in_control_status = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1.QUICK_CONSUME
  A0_2.panel_state = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_bottom_panel
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "FadeAni"
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_attack_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_checked
  L3_2 = A0_2.consume_type
  L4_2 = FoodConsumeType
  L4_2 = L4_2.Attack
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_defend_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_checked
  L3_2 = A0_2.consume_type
  L4_2 = FoodConsumeType
  L4_2 = L4_2.Defend
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_popup_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_bottom_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.reset_sort_and_filter
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = A0_2.consume_type
  L3_2 = FoodConsumeType
  L3_2 = L3_2.Attack
  if L2_2 == L3_2 then
    L2_2 = A0_2.attack_item
    if L2_2 then
      L2_2 = A0_2.attack_item
      L1_2 = L2_2.ConfigID
  end
  else
    L2_2 = A0_2.consume_type
    L3_2 = FoodConsumeType
    L3_2 = L3_2.Defend
    if L2_2 == L3_2 then
      L2_2 = A0_2.defend_item
      if L2_2 then
        L2_2 = A0_2.defend_item
        L1_2 = L2_2.ConfigID
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_target_item
  L5_2 = A0_2
  L4_2 = A0_2.find_item_in_item_table
  L6_2 = A0_2._item_table
  L7_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.play_fade_in
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L2_2 = L2_2._cur_item_panel
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.item_list
    L4_2 = L4_2._cur_item_panel
    L4_2 = L4_2._binder
    L4_2 = L4_2.button
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.enable_resbar_navi
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.refresh_quick_consume_panel_state = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L2_2 = L2_2._res_bar_panel
  if L2_2 then
    L2_2 = A0_2._owner
    L2_2 = L2_2._res_bar_panel
    L3_2 = L2_2
    L2_2 = L2_2.enable_navi_reaction
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.enable_resbar_navi = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2.chosen_mark_item = L1_2
  L1_2 = A0_2.attack_item
  if L1_2 ~= nil then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2.chosen_mark_item
    L3_2 = A0_2.attack_item
    L3_2 = L3_2.ConfigID
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.defend_item
  if L1_2 ~= nil then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2.chosen_mark_item
    L3_2 = A0_2.defend_item
    L3_2 = L3_2.ConfigID
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.set_chosen_mark_item
  L3_2 = A0_2.chosen_mark_item
  L1_2(L2_2, L3_2)
end
L0_1.fill_in_chosen_mark_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L1_2 = A0_2.food_filter
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2._refresh_btn_filter
  L1_2(L2_2)
end
L0_1.reset_sort_and_filter = L7_1
function L7_1(A0_2)
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
L0_1._on_setup_filter = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L1_2 = L1_2._cur_item_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_list
    L1_2 = L1_2._cur_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_item
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.item_list
      L2_2 = L2_2._cur_item_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_favorite_mark
      L4_2 = L1_2.IsFavorite
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_set_favorite_rsp = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_filters
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2[1]
  if L2_2 then
    L2_2 = L1_2[1]
    L3_2 = L2_2
    L2_2 = L2_2.get_selected_filter_report_name
    L2_2 = L2_2(L3_2)
    L3_2 = #L2_2
    if 0 < L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.SDKLuaReportAdapter
      L3_2 = L3_2.ReportQuickChooseItemStatus
      L5_2 = A0_2
      L4_2 = A0_2._create_cs_list_from_table
      L6_2 = L2_2
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._report_filter_confirm = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.String
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1._create_cs_list_from_table = L7_1
function L7_1(A0_2, A1_2)
end
L0_1._enable_btn_use_checker = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.panel_state
  L2_2 = L4_1.QUICK_CONSUME
  L1_2 = L1_2 ~= L2_2
  return L1_2
end
L0_1.can_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_bottom_btn_close
  L1_2(L2_2)
end
L0_1.in_control_exit_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_tips
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_in_control_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_QuickConsumable_ActiveAutoUseJoystick"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_in_control_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_QuickConsumable_ActiveAutoUsePress"
    L2_2(L3_2, L4_2)
  end
end
L0_1.refresh_tips = L7_1
return L0_1
