local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTabDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTabDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTabBoxTypeListItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTabBoxTypeListItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicTabPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ItemComposeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = 21
L4_1 = 22
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_item_in_list
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    return L1_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_item = L5_1
function L5_1(A0_2, A1_2)
end
L0_1.setup_in_control_button_enable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._relic_box_detail_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._relic_box_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.rename_item_icon_panel
    L1_2(L2_2)
  end
end
L0_1.rename_item_icon_panel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_relic_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_display_empty_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeRelicTabDetailPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeRelicTabDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._relic_box_detail_panel = L1_2
  L1_2 = A0_2._relic_box_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_relic_detail_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_relic_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_relic_box_list_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._last_list_item_panel = nil
  A0_2._last_list_item_index = 0
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._relic_box_detail_panel
  return L1_2
end
L0_1.get_detail_panel = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_zoom_1
  return L1_2
end
L0_1.get_list_canvas = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_filter_enable = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeSelf
    if L2_2 then
    end
  end
end
L0_1._on_owner_active_change = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._get_relic_box_data_list
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  A0_2._locate_compose_id = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._get_relic_box_type_list
  L3_2(L4_2)
  L3_2 = nil
  L4_2 = A0_2._locate_compose_id
  if L4_2 == nil then
    L3_2 = 1
    A0_2._current_type_index = 1
    A0_2._current_box_item_index_in_type_list = 1
  else
    L5_2 = A0_2
    L4_2 = A0_2._get_target_item_index_by_id
    L6_2 = A0_2._locate_compose_id
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    A0_2._current_type_index = L5_2
    L3_2 = L4_2
    L5_2 = A0_2
    L4_2 = A0_2._get_target_item_index_in_type_list_by_id
    L6_2 = A0_2._locate_compose_id
    L4_2 = L4_2(L5_2, L6_2)
    A0_2._current_box_item_index_in_type_list = L4_2
  end
  L4_2 = A0_2._relic_box_item_list
  L4_2 = L4_2[L3_2]
  A0_2._current_box_item = L4_2
  L4_2 = A0_2._relic_box_detail_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._current_box_item
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._init_list_view_step
  L4_2(L5_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._relic_box_item_list = L1_2
  L1_2 = {}
  A0_2._relic_box_item_list_backup = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
end
L0_1.force_init_filter = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = 1
  L4_2 = 1
  L5_2 = A0_2._relic_box_item_list
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._relic_box_item_list
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.ConfigID
    if L8_2 == A1_2 then
      L2_2 = L7_2
      break
    end
  end
  L4_2 = A0_2._relic_box_item_list
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.Row
  L4_2 = L4_2.Type
  L5_2 = L3_1
  if L4_2 == L5_2 then
    L3_2 = 1
  else
    L4_2 = A0_2._relic_box_item_list
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.Row
    L4_2 = L4_2.Type
    L5_2 = L4_1
    if L4_2 == L5_2 then
      L3_2 = 2
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._get_target_item_index_by_id = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._relic_box_type_list
  L4_2 = A0_2._current_type_index
  L3_2 = L3_2[L4_2]
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.ConfigID
    if A1_2 == L8_2 then
      L2_2 = L7_2
      break
    end
  end
  return L2_2
end
L0_1._get_target_item_index_in_type_list_by_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_relic_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = A0_2._current_type_index
  L3_2 = L3_2 - 1
  L1_2(L2_2, L3_2)
end
L0_1._move_panel_to_locate_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_relic_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_panel_to_locate_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_first_selected
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
end
L0_1._init_list_view_step = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._last_item_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._last_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_selected
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_current_item_in_list
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.UserObjectData
  A0_2._last_item_panel = L2_2
  L2_2 = A0_2._last_item_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._set_first_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_relic_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._current_type_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.UserObjectData
  L2_2 = L1_2._binder
  L2_2 = L2_2.static_list_view_relic_box
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A0_2._current_box_item_index_in_type_list
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1._get_current_item_in_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  A0_2._relic_box_item_list = L2_2
  L2_2 = {}
  A0_2._relic_box_item_list_backup = L2_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemComposeTypeExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = L4_2.MainTypeID
    if L5_2 == A1_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L2_2
      L7_2 = L4_2.TypeID
      L5_2(L6_2, L7_2)
    end
  end
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.GetComposeKeysByType
    L10_2 = L2_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = A0_2._relic_box_item_list
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = A0_2._relic_box_item_list_backup
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._sort
  L4_2(L5_2)
end
L0_1._get_relic_box_data_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._relic_box_type_list = L1_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = 1
  L4_2 = A0_2._relic_box_item_list
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._relic_box_item_list
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.Row
    L8_2 = L8_2.Type
    L9_2 = L3_1
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    else
      L8_2 = L7_2.Row
      L8_2 = L8_2.Type
      L9_2 = L4_1
      if L8_2 == L9_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L3_2 = #L1_2
  if L3_2 ~= 0 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._relic_box_type_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = #L2_2
  if L3_2 ~= 0 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._relic_box_type_list
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._get_relic_box_type_list = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2.IsNew
  if L3_2 then
    A1_2.IsNew = false
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.RefreshItemComposeIsNew
    L3_2(L4_2)
  end
  L3_2 = A0_2._current_box_item
  if L3_2 ~= A1_2 then
    L3_2 = A0_2._last_item_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
    L4_2 = A2_2
    L3_2 = A2_2.set_selected
    L5_2 = true
    L3_2(L4_2, L5_2)
    A0_2._last_item_panel = A2_2
    A0_2._current_box_item = A1_2
    L3_2 = A0_2._relic_box_detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_relic_box_icon_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_list_panel
  L2_2(L3_2)
  L2_2 = A0_2._relic_box_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._refersh_list_and_detail_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_relic_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._relic_box_type_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_relic_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_list_panel = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.ItemComposeRelicTabBoxTypeListItem
    L10_2 = G
    L10_2 = L10_2.ItemComposeRelicTabBoxTypeListItemBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.register_get_tab_current_box_item
    L9_2 = A0_2._get_tab_current_box_item
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A0_2._relic_box_type_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = L6_2
  L8_2 = L6_2.register_click_callback
  function L10_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_relic_box_icon_click
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L8_2(L9_2, L10_2)
  L9_2 = L5_2
  L8_2 = L5_2.SetSubList
  L11_2 = L6_2
  L10_2 = L6_2.get_static_list
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  L8_2(L9_2, L10_2, L11_2, L12_2)
  A0_2._last_list_item_panel = L6_2
  A0_2._last_list_item_index = A2_2
  L9_2 = L6_2
  L8_2 = L6_2.setup_view
  L10_2 = L7_2
  L11_2 = A0_2._current_box_item
  L12_2 = A0_2._binder
  L12_2 = L12_2.scroll_rect_relic_list
  L8_2(L9_2, L10_2, L11_2, L12_2)
  return L5_2
end
L0_1._on_relic_box_list_item_changed = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._current_box_item
  return L1_2
end
L0_1._get_tab_current_box_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ItemComposeFilter
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._item_filter = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._item_filter
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_filter = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._relic_box_item_list_backup
  L1_2(L2_2, L3_2)
end
L0_1._on_setup_filter = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._relic_box_item_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort
  L2_2(L3_2)
  L2_2 = A0_2._relic_box_item_list
  L2_2 = #L2_2
  if 0 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_relic_box_type_list
    L2_2(L3_2)
    A0_2._current_type_index = 1
    A0_2._current_box_item_index_in_type_list = 1
    L2_2 = A0_2._relic_box_item_list
    L2_2 = L2_2[1]
    A0_2._current_box_item = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._refersh_list_and_detail_panel
    L4_2 = A0_2._current_box_item
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._move_panel_to_locate_item
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_first_selected
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_item
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.UserObjectData
    L4_2 = L4_2._binder
    L4_2 = L4_2.btn_item
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
  else
    A0_2._current_box_item = nil
  end
end
L0_1._on_finish_filter = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._relic_box_item_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L3_3 = A0_3
    L2_3 = A0_3.CanCompose
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.CanCompose
    L3_3 = L3_3(L4_3)
    if L2_3 == L3_3 then
      L4_3 = A0_3.IsFormulaUnlocked
      L5_3 = A1_3.IsFormulaUnlocked
      if L4_3 ~= L5_3 then
        L4_3 = A0_3.IsFormulaUnlocked
        L4_3 = L4_3 == true
        return L4_3
      end
      L4_3 = A0_3.ConfigID
      L5_3 = A1_3.ConfigID
      L4_3 = L4_3 < L5_3
      return L4_3
    else
      L4_3 = #L2_3
      L5_3 = #L3_3
      L4_3 = L4_3 < L5_3
      return L4_3
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort = L5_1
return L0_1
