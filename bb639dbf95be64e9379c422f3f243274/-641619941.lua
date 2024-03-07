local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplaceTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicReplaceTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._cur_item = nil
  A0_2._cur_item_panel = nil
  A0_2._need_fade_in = true
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._avatar_data = A1_2
  A0_2._type = A2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._type
  return L1_2
end
L0_1.get_display_relic_type = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_self = A1_2
  A0_2._callback = A2_2
end
L0_1.set_item_selected_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.sort
    L4_2 = A0_2._filtered_result
    function L5_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      L2_3 = A0_3.BelongAvatarID
      L3_3 = A0_2._avatar_data
      L3_3 = L3_3.ID
      if L2_3 == L3_3 then
        L2_3 = true
        return L2_3
      end
      L2_3 = A1_3.BelongAvatarID
      L3_3 = A0_2._avatar_data
      L3_3 = L3_3.ID
      if L2_3 == L3_3 then
        L2_3 = false
        return L2_3
      end
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._get_recommended_relic_order
      L4_3 = A0_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._get_recommended_relic_order
      L5_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3)
      if L2_3 ~= L3_3 then
        L4_3 = L2_3 > L3_3
        return L4_3
      end
      L4_3 = A0_3.IsDiscard
      L5_3 = A1_3.IsDiscard
      if L4_3 ~= L5_3 then
        L4_3 = A1_3.IsDiscard
        return L4_3
      end
      L4_3 = nil
      L5_3 = nil
      L6_3 = ipairs
      L7_3 = A1_2
      L6_3, L7_3, L8_3 = L6_3(L7_3)
      for L9_3, L10_3 in L6_3, L7_3, L8_3 do
        L11_3 = G
        L11_3 = L11_3.RelicUtils
        L11_3 = L11_3.compare
        L12_3 = A0_3
        L13_3 = A1_3
        L14_3 = L10_3
        L15_3 = A2_2
        L16_3 = A0_2._default_compare
        L11_3, L12_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
        L5_3 = L12_3
        L4_3 = L11_3
        if L5_3 then
          return L4_3
        end
      end
      return L4_3
    end
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.sort_items = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.MarkNextFrameRefresh
  L1_2(L2_2)
end
L0_1.mark_next_frame_refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._recommended_relic_set_dict = L2_2
  if A1_2 ~= nil then
    L2_2 = #A1_2
    L3_2 = pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = A0_2._recommended_relic_set_dict
      L9_2 = L2_2 + 1
      L9_2 = L9_2 - L6_2
      L8_2[L7_2] = L9_2
    end
  end
end
L0_1.set_recommend_relic_sets = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._recommended_relic_set_dict
  if L2_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = A0_2._recommended_relic_set_dict
  L3_2 = A1_2.RelicRow
  L3_2 = L3_2.SetID
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L2_2 = 0
  end
  return L2_2
end
L0_1._get_recommended_relic_order = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 == A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.ReplaceDefaultCompare
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1._default_compare = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.get_all_relic_items
  L2_2 = false
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = L7_2.RelicRow
    L8_2 = L8_2.Type
    L9_2 = A0_2._type
    if L8_2 == L9_2 then
      L8_2 = #L2_2
      L8_2 = L8_2 + 1
      L2_2[L8_2] = L7_2
    end
  end
  return L2_2
end
L0_1.get_all_item = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._filtered_result
  return L1_2
end
L0_1.get_cur_display_item = L1_1
function L1_1(A0_2, A1_2)
  A0_2._filtered_result = A1_2
end
L0_1.set_filtered_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._filtered_result
  if L1_2 ~= nil then
    L1_2 = A0_2._filtered_result
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._cur_item_panel = nil
  A0_2._cur_item = nil
end
L0_1.clear_cur_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_item
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_item_selected
  L3_2 = A0_2._cur_item
  L4_2 = A0_2._cur_item_panel
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.click_cur_item_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
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
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.item_list
    L1_3 = L0_3
    L0_3 = L0_3.GetShownItemByItemIndex
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 ~= nil then
      L1_3 = L0_3.UserObjectData
      L1_3 = L1_3._binder
      L1_3 = L1_3.button
      L1_3 = L1_3.gameObject
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.is_in_special_zoom
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3.save_navigation_target_by_zoom
        L4_3 = NavigationZoneType
        L4_3 = L4_3.Zone1
        L5_3 = L1_3
        L2_3(L3_3, L4_3, L5_3)
      else
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3.set_navigation_target
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      end
    end
  end
  L2_2(L3_2)
end
L0_1._refresh_navigation_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.is_relic_type_unlock
  L2_2 = A0_2._type
  return L1_2(L2_2)
end
L0_1._is_enable = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.show_relic_type_lock_hint
  L1_2()
end
L0_1._on_select_when_disable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2._is_enable
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RelicBaseTypeExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._type
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2.BaseTypeIconPath
  else
    L2_2 = G
    L2_2 = L2_2.RelicUtils
    L1_2 = L2_2.RELIC_TYPE_LOCK_IMG_PATH
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_selected
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_unselected
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._need_fade_in = true
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._filtered_result
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._filtered_result
  L1_2 = #L1_2
  L1_2 = L1_2 ~= 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_item_list
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_empty
    L2_2(L3_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_item
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._filtered_result
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByIndex
  L3_2 = A0_2._cur_item_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navigation_target
  L3_2 = A0_2._cur_item_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._setup_item_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_item
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_item
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      goto lbl_11
    end
  end
  L1_2 = A0_2._filtered_result
  L1_2 = L1_2[1]
  A0_2._cur_item = L1_2
  ::lbl_11::
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._filtered_result
  L3_2 = A0_2._cur_item
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_item_index = L1_2
  L1_2 = A0_2._cur_item_index
  if L1_2 == nil then
    L1_2 = A0_2._filtered_result
    L1_2 = L1_2[1]
    A0_2._cur_item = L1_2
    A0_2._cur_item_index = 0
  else
    L1_2 = A0_2._cur_item_index
    L1_2 = L1_2 - 1
    A0_2._cur_item_index = L1_2
  end
end
L0_1._refresh_cur_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._cur_item_panel = nil
  A0_2._cur_item = nil
  L2_2 = A0_2
  L1_2 = A0_2._on_item_selected
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L0_1._setup_empty = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
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
  L5_2 = A0_2._filtered_result
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_item
  L8_2 = L8_2 == L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cur_item
  if L6_2 == L5_2 then
    A0_2._cur_item_panel = L4_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._on_item_selected
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    A0_2._cur_item = A1_2
    L3_2 = A0_2._cur_item_panel
    if L3_2 ~= nil then
      L3_2 = A0_2._cur_item_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_selected
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    A0_2._cur_item_panel = A2_2
    L3_2 = A0_2._cur_item_panel
    if L3_2 ~= nil then
      L3_2 = A0_2._cur_item_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_selected
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._callback
  if L3_2 ~= nil then
    L3_2 = A0_2._callback
    L4_2 = A0_2._callback_self
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_item_selected = L1_1
return L0_1
