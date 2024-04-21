local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.RelicSecondTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.RelicSecondTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicTabItem"
L2_1 = G
L2_1 = L2_1.InventoryTabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2
  A0_2._cur_index = 1
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L2_2 = L2_2._binder
  L2_2 = L2_2.scroll_item
  L2_2 = L2_2.InAsyncSetItemCount
  L2_2 = not L2_2
  return L2_2
end
L0_1.can_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_tab_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_tab_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_func_btn_in_control_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_tab_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_tab_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_func_btn_in_control_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_tip_sell
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_sell
  L2_2.ActionEnabled = A1_2
end
L0_1._set_func_btn_in_control_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._second_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._second_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = nil
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
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
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._second_tab_control = L1_2
  L1_2 = A0_2._second_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._second_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L1_2 = A0_2._second_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._cur_index
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = 6
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RelicSecondTabItem
    L8_2 = G
    L8_2 = L8_2.RelicSecondTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_tab_control
    L6_2(L7_2, L8_2)
    L5_2.button_prefab_index = 0
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
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = A0_2._second_tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_tabs = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.super
  L2_2 = L2_2._refresh
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_capacity_limit
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_sell
  L5_2 = A0_2._on_btn_sell
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.set_top_bar_area_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.super
  L1_2 = L1_2._on_select
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.set_top_bar_area_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.super
  L1_2 = L1_2._on_unselect
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._is_show_item_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._all_item = L1_2
  A0_2._total_count = 0
  L1_2 = A0_2._second_tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_type
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.get_all_relic_items
  L3_2 = false
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._total_count
    L8_2 = L8_2 + 1
    A0_2._total_count = L8_2
    if L1_2 ~= nil then
      L8_2 = L7_2.RelicRow
      L8_2 = L8_2.Type
      if L1_2 ~= L8_2 then
        goto lbl_31
      end
    end
    L8_2 = A0_2._all_item
    L9_2 = A0_2._all_item
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L8_2[L9_2] = L7_2
    ::lbl_31::
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_source_data
  L5_2 = A0_2._all_item
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_filter_result
  L3_2 = L3_2(L4_2)
  A0_2._item_table = L3_2
end
L0_1._get_item_data = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A1_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = G
    L2_3 = L2_3.RelicUtils
    L2_3 = L2_3.compare
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = A2_2
    L6_3 = A3_2
    return L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1._sort = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_capacity_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Inventory_RelicCapacity"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._total_count
  L2_2 = A0_2._tab_data
  L2_2 = L2_2.DisplayCapacityLimit
  L3_2 = A0_2._total_count
  if L2_2 <= L3_2 then
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "<color=\"#EB4D3D\">%s</color>"
    L4_2 = A0_2._total_count
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L1_2 = A0_2._total_count
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._tab_data
  L4_2 = L4_2.DisplayCapacityLimit
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_capacity_limit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._item_table = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_finish_filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._state
  L3_2 = A0_2.SelectState
  L3_2 = L3_2.Selected
  if L2_2 ~= L3_2 then
    return
  end
  A0_2._cur_index = A1_2
  A0_2._need_fade_in = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_relic_base_type
  L4_2 = A0_2._second_tab_control
  L4_2 = L4_2.current_select_item
  L5_2 = L4_2
  L4_2 = L4_2.get_type
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_select
  L2_2(L3_2)
end
L0_1._on_tab_select_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Relic.RelicSellPage"
  L3_2 = A0_2._tab_data
  L3_2 = L3_2.ItemSortTypeList
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_sell = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_filter_panel
  L1_2(L2_2)
end
L0_1._reset_filter_panel = L2_1
function L2_1(A0_2)
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
  L1_2 = L1_2.btn_sell
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._refresh_order_filter_panel = L2_1
return L0_1
