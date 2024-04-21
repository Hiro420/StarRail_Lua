local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MaterialDestroyItemListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2.use_async = false
  A0_2.in_async_load = false
  A0_2.block_id = nil
  A0_2._cur_selected_item = nil
  L1_2 = {}
  A0_2._item_table = L1_2
  A0_2._navigation_zoom = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.ItemList
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._cur_selected_item
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target_by_zoom
    L3_2 = A0_2._navigation_zoom
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
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
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
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
L0_1.play_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_item
  if L1_2 then
    L1_2 = A0_2._cur_view_GO_panel
    if L1_2 then
      L1_2 = A0_2._cur_view_GO_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view_by_item
      L3_2 = A0_2._cur_selected_item
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._is_show_count
      if L1_2 then
        L1_2 = A0_2._cur_view_GO_panel
        L2_2 = L1_2
        L1_2 = L1_2.set_count
        L3_2 = A0_2._cur_selected_item
        L3_2 = L3_2.Count
        L1_2(L2_2, L3_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.in_async_load
  if L1_2 then
    return
  end
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
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
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
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.in_async_load = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByIndex
  L3_2 = A0_2._cur_item_index
  L1_2(L2_2, L3_2)
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
L0_1.on_show_finish = L1_1
function L1_1(A0_2, A1_2)
  A0_2._navigation_zoom = A1_2
end
L0_1.set_navigation_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
end
L0_1._setup_right_panel = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_show_count = A1_2
end
L0_1.set_is_show_count = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._cur_selected_item = A1_2
  A0_2._item_table = A3_2
end
L0_1.set_item_status = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L6_2 = L4_2.set_checked_mark
  L8_2 = A0_2._cur_selected_item
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_selected_item
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cur_selected_item
  if L5_2 == L6_2 then
    A0_2._cur_view_GO_panel = L4_2
    L7_2 = A0_2
    L6_2 = A0_2.save_navigation_target_by_zoom
    L8_2 = A0_2._navigation_zoom
    L9_2 = L4_2._binder
    L9_2 = L9_2.button
    L9_2 = L9_2.gameObject
    L6_2(L7_2, L8_2, L9_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.set_trigger_click_on_navigation
  L8_2 = false
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._on_item_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_item_select_callback
  L8_2 = A0_2._navi_in_callback
  L9_2 = A0_2._navi_in_callback_self
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._is_show_count
  if L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.set_count_with_color_format
    L8_2 = L5_2.Count
    L9_2 = L5_2.Row
    L9_2 = L9_2.PileLimit
    L6_2(L7_2, L8_2, L9_2)
  end
  return L3_2
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._cur_selected_item = A1_2
  if A1_2 ~= nil then
    L3_2 = A0_2._cur_view_GO_panel
    if L3_2 ~= nil then
      L3_2 = A0_2._cur_view_GO_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_selected
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._cur_view_GO_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_checked_mark
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    A0_2._cur_view_GO_panel = A2_2
    L4_2 = A0_2
    L3_2 = A0_2.is_out_most_zoom
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A2_2
      L3_2 = A2_2.set_selected
      L5_2 = true
      L3_2(L4_2, L5_2)
      L4_2 = A2_2
      L3_2 = A2_2.set_checked_mark
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._custom_click_callback
  if L3_2 ~= nil then
    L3_2 = A0_2._custom_click_callback
    L4_2 = A0_2._custom_click_callback_listener
    L5_2 = A0_2._cur_selected_item
    L6_2 = A0_2._cur_view_GO_panel
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_item_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._custom_click_callback_listener = A1_2
  A0_2._custom_click_callback = A2_2
end
L0_1.bind_custom_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._navi_in_callback_self = A1_2
  A0_2._navi_in_callback = A2_2
end
L0_1.bind_navi_in_callback = L1_1
return L0_1
