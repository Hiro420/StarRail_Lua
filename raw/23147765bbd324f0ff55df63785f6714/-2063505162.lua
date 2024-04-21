local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.Contact.PhoneMessageContactItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Contact.PhoneMessageContactItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PhoneMessageContactListPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._current_group_id = nil
  L1_2 = {}
  A0_2._contact_datas = L1_2
  A0_2._selected_index = nil
  A0_2._selected_contact_index = 1
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_contact_index
  L1_2 = L1_2 - 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
  L3_2 = L2_2
  L2_2 = L2_2.GetFoldExpandIndex
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 == L2_2
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_contact_clicked
    L4_2 = A0_2._selected_contact_index
    L2_2(L3_2, L4_2)
  end
  L2_2 = not L1_2
  return L2_2
end
L1_1.try_back_by_controller = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshSchedule
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_contact_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_filter
  L2_2 = L1_2
  L1_2 = L1_2.register_filtered_callback
  L3_2 = A0_2._on_contact_filtered
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SetFoldCallback
  function L3_2(A0_3)
    local L1_3
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.EventSystem
    L1_3 = L1_3.current
    L1_3.sendNavigationEvents = true
  end
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L1_2.sendNavigationEvents = true
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_filter
  L2_2 = L1_2
  L1_2 = L1_2.refresh_filter
  L1_2(L2_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_contact_items
  L1_2(L2_2)
end
L1_1.refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.ClearFoldItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 0
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  A0_2._current_group_id = nil
  L1_2 = {}
  A0_2._contact_datas = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_filter
  L2_2 = L1_2
  L1_2 = L1_2.clear_filter_state
  L1_2(L2_2)
end
L1_1.clear_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._filtered_callback = A1_2
  A0_2._filtered_handler = A2_2
end
L1_1.register_filtered_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._contact_datas = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_contact
  L2_2(L3_2)
  A0_2._selected_contact_index = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
  L3_2 = L2_2
  L2_2 = L2_2.ClearFoldItem
  L2_2(L3_2)
  A0_2._current_group_id = nil
  A0_2._is_group_selected = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_contact_items
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._filtered_callback
  L4_2 = A0_2._filtered_handler
  L2_2(L3_2, L4_2)
end
L1_1._on_contact_filtered = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._contact_datas
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_3.HasWaitingGroup
    if L2_3 then
      L2_3 = 1
      if L2_3 then
        goto lbl_8
      end
    end
    L2_3 = 0
    ::lbl_8::
    L3_3 = A1_3.HasWaitingGroup
    if L3_3 then
      L3_3 = 1
      if L3_3 then
        goto lbl_15
      end
    end
    L3_3 = 0
    ::lbl_15::
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 > L3_3
      return L4_3
    end
    L4_3 = A0_2
    L5_3 = L4_3
    L4_3 = L4_3._is_contact_has_battle
    L6_3 = A0_3
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = A0_2
    L6_3 = L5_3
    L5_3 = L5_3._is_contact_has_battle
    L7_3 = A1_3
    L5_3 = L5_3(L6_3, L7_3)
    if L4_3 ~= L5_3 then
      return L4_3
    end
    L6_3 = A0_3.LastGroupTime
    L7_3 = A1_3.LastGroupTime
    if L6_3 ~= L7_3 then
      L6_3 = A0_3.LastGroupTime
      L7_3 = A1_3.LastGroupTime
      L6_3 = L6_3 > L7_3
      return L6_3
    end
    L6_3 = A0_3.ID
    L7_3 = A1_3.ID
    L6_3 = L6_3 < L7_3
    return L6_3
  end
  L1_2(L2_2, L3_2)
end
L1_1._sort_contact = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.CurrentGroupIDs
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetMessageGroup
    L9_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.ShowBattle
      if L8_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L1_1._is_contact_has_battle = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._contact_datas
  L1_2 = #L1_2
  L1_2 = L1_2 ~= 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_contact
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_contact_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._contact_datas
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L1_1._refresh_contact_items = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._group_change_callback = A1_2
  A0_2._group_change_handler = A2_2
end
L1_1.register_group_change_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.FoldNewListViewItem
  L5_2 = 0
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PhoneMessageContactItemPanel
    L8_2 = G
    L8_2 = L8_2.PhoneMessageContactItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_select_title_callback
    L7_2 = A0_2._on_select_title
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_deselect_title_callback
    L7_2 = A0_2._on_deselect_title
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_contact_click_callback
    L7_2 = A0_2._on_contact_clicked
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_group_click_callback
    L7_2 = A0_2._on_group_clicked
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_group_select_callback
    L7_2 = A0_2._on_group_selected
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._contact_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A1_2
  L6_2 = A1_2.GetFoldExpandIndex
  L6_2 = L6_2(L7_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = A2_2 == L6_2
  L11_2 = A0_2._current_group_id
  L12_2 = A2_2 + 1
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  if A2_2 == L6_2 then
    A0_2._selected_index = A2_2
  end
  L8_2 = L3_2
  L7_2 = L3_2.SetFoldList
  L9_2 = L4_2._binder
  L9_2 = L9_2.list_view_item
  L7_2(L8_2, L9_2)
  return L3_2
end
L1_1._on_contact_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._contact_datas
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2.ID
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.SafeInitContactData
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2._selected_contact_index = A1_2
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.EventSystem
  L4_2 = L4_2.current
  L4_2.sendNavigationEvents = false
  L5_2 = A0_2
  L4_2 = A0_2._get_title_fake_object_by_index
  L6_2 = A0_2._selected_contact_index
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.set_navigation_target
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.list_view_item
  L6_2 = L5_2
  L5_2 = L5_2.SetItemFold
  L7_2 = A1_2 - 1
  L8_2 = G
  L8_2 = L8_2.Utils
  L8_2 = L8_2.is_gamepad_input
  L8_2 = L8_2()
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.CoroutineUtils
  L5_2 = L5_2.InvokeAfterFrames
  L6_2 = 5
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._contact_datas
      L0_3 = #L0_3
      if L0_3 ~= 0 then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2._selected_contact_index
    L0_3 = L0_3 - 1
    L1_3 = A0_2._binder
    L1_3 = L1_3.list_view_item
    L2_3 = L1_3
    L1_3 = L1_3.GetFoldExpandIndex
    L1_3 = L1_3(L2_3)
    L0_3 = L0_3 == L1_3
    if L0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._get_first_item_object_by_index
      L3_3 = A0_2._selected_contact_index
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.set_navigation_target
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      A0_2._is_group_selected = true
    else
      L1_3 = A0_2._binder
      L1_3 = L1_3.list_view_item
      L2_3 = L1_3
      L1_3 = L1_3.GetFoldExpandIndex
      L1_3 = L1_3(L2_3)
      if L1_3 == -1 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._get_title_fake_object_by_index
        L3_3 = A0_2._selected_contact_index
        L1_3 = L1_3(L2_3, L3_3)
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3.set_navigation_target
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        A0_2._is_group_selected = false
      end
    end
  end
  L5_2(L6_2, L7_2)
end
L1_1._on_contact_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.setup_to_next_zoom_by_confirm
  L5_2 = A0_2._current_group_id
  L5_2 = L5_2 == A2_2
  L3_2(L4_2, L5_2)
  A0_2._current_group_id = A2_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._group_change_callback
  L5_2 = A0_2._group_change_handler
  L6_2 = A1_2
  L7_2 = A0_2._current_group_id
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._on_group_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._contact_datas
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.list_view_item
    L6_2 = L5_2
    L5_2 = L5_2.IsItemWithinViewport
    L7_2 = L4_2 - 1
    L8_2 = 0.5
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2._get_title_fake_object_by_index
      L7_2 = L4_2
      return L5_2(L6_2, L7_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemNearestItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_31
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_31::
  L3_2 = A0_2
  L2_2 = A0_2._get_title_fake_object_by_index
  L4_2 = 1
  return L2_2(L3_2, L4_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 - 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view_item
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    if L4_2 ~= nil then
      goto lbl_14
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_14::
  L4_2 = L3_2.UserObjectData
  L5_2 = L4_2
  L4_2 = L4_2.get_title_fake_object
  return L4_2(L5_2)
end
L1_1._get_title_fake_object_by_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 - 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view_item
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    if L4_2 ~= nil then
      goto lbl_14
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_14::
  L4_2 = L3_2.UserObjectData
  L5_2 = L4_2
  L4_2 = L4_2.get_first_item_object
  return L4_2(L5_2)
end
L1_1._get_first_item_object_by_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._selected_contact_index = A1_2
  L2_2 = A1_2 - 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view_item
  L4_2 = L3_2
  L3_2 = L3_2.GetFoldExpandIndex
  L3_2 = L3_2(L4_2)
  L3_2 = -1 ~= L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_view_item
  L5_2 = L4_2
  L4_2 = L4_2.GetFoldExpandIndex
  L4_2 = L4_2(L5_2)
  L4_2 = L2_2 == L4_2
  if L3_2 and not L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.list_view_item
    L6_2 = L5_2
    L5_2 = L5_2.SetItemFold
    L7_2 = L2_2
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.is_gamepad_input
    L8_2 = L8_2()
    L8_2 = not L8_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L1_1._on_select_title = L2_1
function L2_1(A0_2, A1_2)
end
L1_1._on_deselect_title = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._selected_contact_index = A1_2
  A0_2._selected_group_id = A2_2
end
L1_1._on_group_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._is_group_selected
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L2_2 = L2_2.sendNavigationEvents
    if L2_2 then
      L2_2 = A0_2._selected_group_id
      if A1_2 == L2_2 then
        goto lbl_16
      end
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_16::
  L2_2 = true
  return L2_2
end
L1_1.can_enter_group_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_filter_enable
  L2_2(L3_2)
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_filter
  L3_2 = L2_2
  L2_2 = L2_2.enable_in_control_tip
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L1_1._refresh_filter_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_filter_enable
  L1_2(L2_2)
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_to_next_zoom_by_confirm
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L1_1._on_in_control_input_switch = L2_1
return L1_1
