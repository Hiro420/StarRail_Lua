local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2
  A0_2._is_descend = true
  A0_2._target_item = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._tab_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_sort_type_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  A0_2._cur_sort_type = L4_2
  A0_2._sort_type_name_table = L3_2
  A0_2._cur_sort_type_list = L2_2
end
L0_1.set_tab_data = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._on_btn_order_callback = A1_2
  A0_2._on_btn_sort_callback = A2_2
  A0_2._on_btn_filter_callback = A3_2
  A0_2._callback_self = A4_2
end
L0_1.register_callback = L2_1
function L2_1(A0_2, A1_2)
  A0_2._inventory_panel = A1_2
end
L0_1.set_inventory_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.refresh_all_shown_item = L2_1
function L2_1(A0_2)
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
  L5_2 = G
  L5_2 = L5_2.InventoryUtils
  L5_2 = L5_2.redefine_ergodic_lua_dict_table
  L6_2 = L3_2
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_tab_default_sort_type
  L7_2 = L2_2
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
L0_1._init_sort_type_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_sort_enum_type
  L4_2 = A1_2[1]
  return L2_2(L3_2, L4_2)
end
L0_1._get_tab_default_sort_type = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._get_sort_enum_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetInventoryTabItems
  L4_2 = A0_2._tab_data
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._item_table = L1_2
end
L0_1._get_item_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
L0_1._setup_order_panel = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._reset_filter_panel = L2_1
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
L0_1._set_default_ascend_by_cur_sort_type = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L4_2 = A0_2
  L3_2 = A0_2.reset_navigation_target_to_first
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._invoke_callback
  L5_2 = A0_2._on_btn_sort_callback
  L3_2(L4_2, L5_2)
end
L0_1._sort_items = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = not A1_2
  A0_2._is_descend = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.reset_navigation_target_to_first
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._invoke_callback
  L4_2 = A0_2._on_btn_order_callback
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_order = L2_1
function L2_1(A0_2, A1_2)
  A0_2._target_item = A1_2
end
L0_1.set_target_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_focus_item_id
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.find_item_in_item_table
  L4_2 = A0_2._item_table
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._target_item = L2_2
  L2_2 = A0_2._target_item
  if L2_2 ~= nil then
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.clear_focus_id
    L2_2(L3_2)
  end
end
L0_1._update_focus_item = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ConfigID
    if L8_2 == A2_2 then
      return L7_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1.find_item_in_item_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._sort
  L3_2 = A0_2._item_table
  L4_2 = A0_2._cur_sort_type
  L5_2 = A0_2._is_descend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_pile_hint
  L3_2 = A0_2._tab_data
  L3_2 = L3_2.NotDisplayPileLimit
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.set_detail_panel
  L3_2 = A0_2._inventory_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_count
  L4_2 = A0_2
  L3_2 = A0_2._is_show_item_count
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_focus_item
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.set_target_item
  L3_2 = A0_2._target_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._item_table
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2.get_focus_item_id
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._need_fade_in
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_list
    L2_2 = L1_2
    L1_2 = L1_2.play_fade_in
    L1_2(L2_2)
    A0_2._need_fade_in = false
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_order_filter_panel
  L1_2(L2_2)
  A0_2._target_item = nil
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._item_table
  if L3_2 then
    L3_2 = A0_2._item_table
    L3_2 = #L3_2
    L3_2 = 0 < L3_2
  end
  L1_2(L2_2, L3_2)
end
L0_1._refresh_order_filter_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._tab_data
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.tab_btn_normal_img
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.IconImagePath
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.tab_btn_select_img
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.IconImagePath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "InventoryTab"
    L4_2 = A0_2._tab_data
    L4_2 = L4_2.ID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot
    L6_2 = L6_2.transform
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  A0_2._need_fade_in = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_ui_show
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_filter_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_item_table_valid
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_select
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.refresh_cur_item_view
  L1_2(L2_2)
end
L0_1.on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._is_show_item_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._need_fade_in = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L2_1
function L2_1(A0_2, A1_2, ...)
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
L0_1._invoke_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._item_table
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Count
    if L6_2 == 0 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._is_item_table_valid = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.reset_navigation_target_to_first
  L1_2(L2_2)
end
L0_1.reset_navigation_target_to_first = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L2_2 = L2_2.Rarity
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    return
  end
  A0_2._is_descend = true
end
L0_1._try_force_set_order_type = L2_1
return L0_1
