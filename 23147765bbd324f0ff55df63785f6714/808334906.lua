local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryItemListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.LightCone = 1
L1_1.Relic = 2
L1_1.Sort = 3
L1_1.ConsumeItem = 4
function L2_1(A0_2)
  local L1_2
  A0_2.use_async = false
  A0_2.in_async_load = false
  A0_2.block_id = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = false
  L4_2 = false
  L5_2 = A0_2._item_table
  if L5_2 ~= nil and A1_2 ~= nil then
    L5_2 = #A1_2
    L6_2 = A0_2._item_table
    L6_2 = #L6_2
    L3_2 = L5_2 ~= L6_2
  end
  if L3_2 then
    L6_2 = A0_2
    L5_2 = A0_2._check_should_refresh_by_item_num_change
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  A0_2._item_table = A1_2
  A0_2._focus_item_id = A2_2
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.ItemList
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh
  L5_2(L6_2)
  if L3_2 and L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2._on_item_num_changed
    L5_2(L6_2)
  elseif not L3_2 then
    L5_2 = A0_2._cur_item_panel
    if L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2.is_in_special_zoom
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L6_2 = A0_2
        L5_2 = A0_2.get_cur_zoom
        L5_2 = L5_2(L6_2)
        L6_2 = NavigationZoneType
        L6_2 = L6_2.Zone1
        if L5_2 == L6_2 then
          L6_2 = A0_2
          L5_2 = A0_2.set_navigation_target
          L7_2 = A0_2._cur_item_panel
          L7_2 = L7_2._binder
          L7_2 = L7_2.button
          L7_2 = L7_2.gameObject
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.chosen_mark_item = A1_2
  L2_2 = {}
  A0_2._is_chosen_item = L2_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._is_chosen_item
    L7_2[L6_2] = true
  end
end
L0_1.set_chosen_mark_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._is_chosen_item
  L2_2 = L2_2 ~= nil
  return L2_2
end
L0_1.is_in_chosen_mark_item = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2.chosen_mark_item = nil
  A0_2._is_chosen_item = nil
end
L0_1.clear_chosen_mark_item = L2_1
function L2_1(A0_2, A1_2)
  A0_2._show_pile_hint = A1_2
end
L0_1.set_is_show_pile_hint = L2_1
function L2_1(A0_2, A1_2)
  A0_2.temp_target_item = A1_2
end
L0_1.set_target_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_item_panel
  if L1_2 then
    L1_2 = A0_2._cur_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_item
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._cur_item
    if L1_2 == L2_2 then
      L1_2 = A0_2._cur_item_panel
      L1_2 = L1_2._binder
      L1_2 = L1_2.button
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._cur_item_index
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
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
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target_by_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone1
    L5_2 = L1_2.UserObjectData
    L5_2 = L5_2._binder
    L5_2 = L5_2.button
    L5_2 = L5_2.gameObject
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = L1_2.UserObjectData
    A0_2._cur_item_panel = L2_2
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
L0_1.reset_navigation_target_to_first = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L1_2 = L1_2.InAsyncSetItemCount
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.PlayFadeIn
    L1_2(L2_2)
  end
end
L0_1.play_fade_in = L2_1
function L2_1(A0_2, A1_2)
  A0_2._detail_panel = A1_2
end
L0_1.set_detail_panel = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._item_click_callback = A1_2
  A0_2._item_click_callback_self = A2_2
end
L0_1.register_item_click_callback = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_item_panel
  return L1_2
end
L0_1.get_cur_item_panel = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_item
  return L1_2
end
L0_1.get_cur_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_item
  if L1_2 then
    L1_2 = A0_2._cur_item_panel
    if L1_2 then
      L1_2 = A0_2._cur_item
      L2_2 = A0_2._cur_item_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_cur_item
      L2_2 = L2_2(L3_2)
      if L1_2 == L2_2 then
        L1_2 = A0_2._cur_item_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view_by_item
        L3_2 = A0_2._cur_item
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._is_show_count
        if L1_2 then
          L1_2 = A0_2._cur_item_panel
          L2_2 = L1_2
          L1_2 = L1_2.set_count
          L3_2 = A0_2._cur_item
          L3_2 = L3_2.Count
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel
  L1_2(L2_2)
end
L0_1.refresh_cur_item_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.temp_target_item
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.index_of_item
    L2_2 = A0_2._item_table
    L3_2 = A0_2.temp_target_item
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = A0_2.temp_target_item
      A0_2._cur_item = L2_2
    end
  end
  L1_2 = A0_2._cur_item
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_item
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      goto lbl_24
    end
  end
  L1_2 = A0_2._item_table
  L1_2 = L1_2[1]
  A0_2._cur_item = L1_2
  ::lbl_24::
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._item_table
  L3_2 = A0_2._cur_item
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_item_index = L1_2
  L1_2 = A0_2._memory_cur_item_pos
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._item_table
  L4_2 = A0_2._cur_item
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._memory_cur_item_pos = L2_2
  L2_2 = A0_2._cur_item_index
  if L2_2 == nil then
    L2_2 = A0_2._item_table
    L2_2 = L2_2[1]
    A0_2._cur_item = L2_2
    A0_2._cur_item_index = 0
  else
    L2_2 = A0_2._cur_item_index
    L2_2 = L2_2 - 1
    A0_2._cur_item_index = L2_2
  end
  L2_2 = A0_2._memory_cur_item_pos
  if L2_2 ~= nil and L1_2 ~= nil then
    L2_2 = A0_2._memory_cur_item_pos
    L2_2 = L2_2 ~= L1_2
    A0_2._is_item_pos_changed = L2_2
  end
end
L0_1._refresh_cur_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_item_panel
  if L1_2 then
    L1_2 = A0_2._cur_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_item
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._cur_item
    if L1_2 == L2_2 then
      L1_2 = A0_2._cur_item
      if L1_2 then
        L1_2 = A0_2._cur_item
        L1_2 = L1_2.Count
        if L1_2 ~= 0 then
          L1_2 = false
          return L1_2
        end
      end
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._check_should_refresh_by_item_num_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_item_panel
  if L1_2 then
    L1_2 = A0_2._cur_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_selected
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  A0_2._cur_item_panel = nil
  L2_2 = A0_2
  L1_2 = A0_2.reset_navigation_target_to_first
  L1_2(L2_2)
end
L0_1._on_item_num_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.in_async_load
  if L1_2 then
    return
  end
  A0_2._is_item_pos_changed = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_item
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2.use_async
  if L1_2 then
    A0_2.in_async_load = true
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.show_full_screen_block
    L3_2 = 3
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.block_id = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.AsyncSetListItemCount
    L3_2 = A0_2._item_table
    L3_2 = #L3_2
    L4_2 = true
    L5_2 = A0_2.on_show_finish
    L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.use_async = false
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._item_table
    L3_2 = #L3_2
    L4_2 = false
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.MovePanelToItemByIndex
    L3_2 = A0_2._cur_item_index
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.in_async_load = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByIndex
  L3_2 = A0_2._cur_item_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TryUnblockFixedTime
  L3_2 = A0_2.block_id
  L1_2(L2_2, L3_2)
end
L0_1.on_show_finish = L2_1
function L2_1(A0_2, A1_2)
  A0_2._navigation_param = A1_2
end
L0_1.set_cur_navigation_param = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_item
  if L1_2 ~= nil then
    L1_2 = A0_2._detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._cur_item
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_right_panel = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_show_count = A1_2
end
L0_1.set_is_show_count = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogFormatWithTag
    L6_2 = G
    L6_2 = L6_2.LogTag
    L6_2 = L6_2.UI
    L7_2 = "Panel Created "
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.InventoryItemIconPanel
    L8_2 = G
    L8_2 = L8_2.InventoryItemIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_enable_show_quick_consumable_mark
    L7_2 = true
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_favorite_mark
  L8_2 = L5_2.IsFavorite
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_inventory_item_reddot
  L6_2(L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_quick_consumable_mark
  L9_2 = A0_2
  L8_2 = A0_2.is_in_chosen_mark_item
  L10_2 = L5_2.ConfigID
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._cur_item
  if L5_2 == L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._on_item_click
    L8_2 = L5_2
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.set_selected
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._on_item_click
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._is_show_count
  if L6_2 then
    L6_2 = A0_2._show_pile_hint
    if L6_2 then
      L7_2 = L4_2
      L6_2 = L4_2.set_count_with_color_format
      L8_2 = L5_2.Count
      L9_2 = L5_2.Row
      L9_2 = L9_2.PileLimit
      L6_2(L7_2, L8_2, L9_2)
  end
  else
    L6_2 = A0_2._is_show_count
    if L6_2 then
      L7_2 = L4_2
      L6_2 = L4_2.set_count
      L8_2 = L5_2.Count
      L6_2(L7_2, L8_2)
    end
  end
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._cur_item = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._item_table
  L5_2 = A0_2._cur_item
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._memory_cur_item_pos = L3_2
  if A1_2 ~= nil then
    L3_2 = A0_2._detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._detail_panel
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
    L3_2 = A0_2._item_click_callback
    if L3_2 then
      L3_2 = A0_2._item_click_callback
      L4_2 = A0_2._item_click_callback_self
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_item_click = L2_1
return L0_1
