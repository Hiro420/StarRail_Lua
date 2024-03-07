local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeLevelUpItemListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = {}
L3_1 = "ActionGroup_Select"
L4_1 = "ActionGroup_Return"
L2_1[1] = L3_1
L2_1[2] = L4_1
L3_1 = {}
L4_1 = "ActionGroup_Remove"
L5_1 = "ActionGroup_Select"
L6_1 = "ActionGroup_Return"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L4_1 = {}
L5_1 = "ActionGroup_Scroll"
L6_1 = "ActionGroup_Select"
L7_1 = "ActionGroup_Return"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L5_1 = {}
L6_1 = "ActionGroup_Scroll"
L7_1 = "ActionGroup_Remove"
L8_1 = "ActionGroup_Select"
L9_1 = "ActionGroup_Return"
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L5_1[4] = L9_1
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L2_1 = {}
L3_1 = 271
L2_1[1] = L3_1
L3_1 = 121
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._material_selected = L1_2
  L1_2 = {}
  A0_2._item_table = L1_2
  A0_2._detail_panel = nil
  A0_2._show_item_info_open = false
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._material_selected = A1_2
  A0_2._item_table = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_cur_item
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_item
  L4_2 = L3_2
  L3_2 = L3_2.SafeInitGridView
  L5_2 = 0
  L6_2 = A0_2._on_item_changed
  L7_2 = nil
  L8_2 = nil
  L9_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1.play_fade_in = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._detail_panel = A1_2
  A0_2._node_empty = A2_2
  A0_2._node_detail = A3_2
end
L0_1.set_detail_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_selected_panel
  if L1_2 then
    L1_2 = A0_2._cur_item
    if L1_2 then
      L1_2 = A0_2._cur_selected_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_cur_item
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._cur_item
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_panel_by_item
        L3_2 = A0_2._cur_selected_panel
        L4_2 = A0_2._cur_item
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel
  L1_2(L2_2)
end
L0_1.refresh = L4_1
function L4_1(A0_2, A1_2)
  A0_2._show_item_info_open = A1_2
end
L0_1.set_is_show_item_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
end
L0_1._on_leave_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  return L2_2
end
L0_1.get_first_item_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = A0_2._item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._get_selected_material
    L7_2 = A0_2._item_table
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_item
      L7_2 = L6_2
      L6_2 = L6_2.MovePanelToItemByIndex
      L8_2 = L4_2 - 1
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_item
      L7_2 = L6_2
      L6_2 = L6_2.RefreshAllShownItem
      L6_2(L7_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_item
      L7_2 = L6_2
      L6_2 = L6_2.GetShownItemByItemIndex
      L8_2 = L4_2 - 1
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L8_2 = A0_2
        L7_2 = A0_2.set_navigation_target
        L9_2 = L6_2.UserObjectData
        L10_2 = L9_2
        L9_2 = L9_2.get_first_selected_object
        L9_2, L10_2 = L9_2(L10_2)
        L7_2(L8_2, L9_2, L10_2)
      end
      return
    end
  end
end
L0_1.move_to_first_selected_item = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_item
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.has_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_selected_panel
  L3_2 = nil
  L1_2(L2_2, L3_2)
  A0_2._cur_item = nil
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel
  L1_2(L2_2)
end
L0_1.clear_cur_select = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = 1
  if A1_2 then
    L4_2 = 1
    if L4_2 then
      goto lbl_8
    end
  end
  L4_2 = 0
  ::lbl_8::
  L3_2 = L3_2 + L4_2
  if A2_2 then
    L4_2 = 2
    if L4_2 then
      goto lbl_15
    end
  end
  L4_2 = 0
  ::lbl_15::
  L3_2 = L3_2 + L4_2
  L5_2 = A0_2
  L4_2 = A0_2.setup_short_cut_hint_panel
  L6_2 = L1_1[L3_2]
  L4_2(L5_2, L6_2)
end
L0_1.refresh_short_cut_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_cur_selected_panel
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._item_table
  L3_2 = A0_2._cur_item
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    return
  end
  A0_2._cur_item = nil
end
L0_1._refresh_cur_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item_table
  if L1_2 == nil then
    return
  end
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
  L2_2 = A0_2
  L1_2 = A0_2._setup_right_panel
  L1_2(L2_2)
  L1_2 = A0_2._item_table
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_empty
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_empty
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._node_detail
  if L1_2 ~= nil then
    L1_2 = A0_2._node_detail
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._cur_item
    L3_2 = L3_2 ~= nil
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = A0_2._cur_item
    L3_2 = L3_2 ~= nil
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._node_empty
  if L1_2 ~= nil then
    L1_2 = A0_2._node_empty
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._cur_item
    L3_2 = L3_2 == nil
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._cur_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_item
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_scroll_pos
  L1_2(L2_2)
end
L0_1._setup_right_panel = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
    L7_2 = L6_2.set_item_info_open
    L9_2 = A0_2._show_item_info_open
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_trigger_click_on_navigation
    L9_2 = false
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_button_action_enable_on_navigation
    L9_2 = true
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L8_2 = L6_2
  L7_2 = L6_2.bind_click
  L9_2 = A0_2._click_event_listner
  L10_2 = A0_2._on_item_click_callback
  L11_2 = A0_2._on_item_click_minus_callback
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L6_2
  L7_2 = L6_2.bind_item_select_callback
  L9_2 = A0_2._on_item_selected_callback
  L10_2 = A0_2._on_item_selected_callback_self
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._item_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = A0_2
  L8_2 = A0_2._setup_panel_by_item
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  return L5_2
end
L0_1._on_item_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view_by_item
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cur_item
  if A2_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_cur_selected_panel
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A1_2
    L3_2 = A1_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_selected_material
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A2_2.IsPile
  if L4_2 then
    L5_2 = A1_2
    L4_2 = A1_2.bind_long_press_repeat_callback
    L6_2 = A0_2._long_press_repeat_callback
    L7_2 = A0_2._long_press_repeat_minus_callback
    L8_2 = A0_2._long_press_repeat_callback_self
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  if L3_2 == nil then
    L4_2 = A2_2.IsPile
    if L4_2 then
      L5_2 = A1_2
      L4_2 = A1_2.set_count
      L6_2 = 0
      L7_2 = A2_2.Count
      L4_2(L5_2, L6_2, L7_2)
    end
    L5_2 = A1_2
    L4_2 = A1_2.set_minus_btn
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L4_2 = A2_2.IsPile
    if L4_2 then
      L5_2 = A1_2
      L4_2 = A1_2.set_count
      L6_2 = L3_2.count
      L7_2 = A2_2.Count
      L4_2(L5_2, L6_2, L7_2)
    end
    L5_2 = A1_2
    L4_2 = A1_2.set_minus_btn
    L6_2 = L3_2.count
    L6_2 = 0 < L6_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_panel_by_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_selected_panel = A1_2
  L2_2 = A0_2._cur_selected_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_cur_selected_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_rank_up_item
  L4_2 = A1_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = 0
    L3_2 = 1
    L4_2 = A0_2._material_selected
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._material_selected
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.item
      if L7_2 == A1_2 then
        L7_2 = A0_2._material_selected
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.count
        L2_2 = L2_2 + L7_2
      end
    end
    if L2_2 ~= 0 then
      L3_2 = {}
      L3_2.item = A1_2
      L3_2.count = L2_2
      return L3_2
    end
    L3_2 = nil
    return L3_2
  end
  L2_2 = 1
  L3_2 = A0_2._material_selected
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._material_selected
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.item
    if L6_2 == A1_2 then
      L6_2 = A0_2._material_selected
      L6_2 = L6_2[L5_2]
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_selected_material = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = L2_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L2_1[L5_2]
    if A1_2 == L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2 / 1000
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1
  if L2_2 == L3_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_rank_up_item = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_item_click_callback = A2_2
  A0_2._on_item_click_minus_callback = A3_2
end
L0_1.bind_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._on_item_selected_callback = A1_2
  A0_2._on_item_selected_callback_self = A2_2
end
L0_1.bind_item_selected = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._long_press_repeat_callback = A1_2
  A0_2._long_press_repeat_minus_callback = A2_2
  A0_2._long_press_repeat_callback_self = A3_2
end
L0_1.bind_long_press_repeat_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._set_cur_selected_panel
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  A0_2._cur_item = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_right_panel
  L3_2(L4_2)
end
L0_1.set_cur_select = L4_1
return L0_1
