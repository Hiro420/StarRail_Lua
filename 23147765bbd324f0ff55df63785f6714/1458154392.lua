local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatContactItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatContactItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChatModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FriendChatContactListPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._contact_datas = L1_2
  A0_2._current_contact_data = nil
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_contact_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._changed_callback = A1_2
  A0_2._changed_handler = A2_2
end
L1_1.register_contact_changed_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_contact_datas
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._sort_contact_datas
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_selection
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_contact_view
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2._current_contact_data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._current_contact_data
  L2_2 = L2_2.ContactID
  L4_2 = A0_2
  L3_2 = A0_2._get_contact_index
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._sort_contact_datas
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_contact_index
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L3_2 ~= L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2._refresh_contact_view
    L5_2(L6_2)
  end
end
L1_1.refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllContacts
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._contact_datas = L1_2
end
L1_1._get_contact_datas = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._contact_datas
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_3.TimeStamp
    L3_3 = A1_3.TimeStamp
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 > L3_3
      return L4_3
    end
    L4_3 = A0_3.ContactID
    L5_3 = A1_3.ContactID
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
end
L1_1._sort_contact_datas = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_contact_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._contact_datas
  if L2_2 == nil then
    L4_2 = 1
    if L4_2 then
      goto lbl_11
    end
  end
  L4_2 = L2_2
  ::lbl_11::
  L3_2 = L3_2[L4_2]
  A0_2._current_contact_data = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._changed_callback
  L5_2 = A0_2._changed_handler
  L6_2 = A0_2._current_contact_data
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._setup_selection = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._contact_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ContactID
    if L7_2 == A1_2 then
      return L5_2
    end
  end
end
L1_1._get_contact_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.ClearRedDotRoots
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.SetupScrollRedDot
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_reddot
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bottom_reddot
  L5_2 = 10.0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._contact_datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_to_current
  L1_2(L2_2)
end
L1_1._refresh_contact_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FriendChatContactItemPanel
    L8_2 = G
    L8_2 = L8_2.FriendChatContactItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_contact_clicked
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._contact_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._current_contact_data
  L6_2 = A0_2._current_contact_data
  L7_2 = L6_2
  L6_2 = L6_2.IsSameContact
  L8_2 = L5_2
  L6_2 = L6_2 ~= nil and L6_2
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.mono_scroll_reddot
  L8_2 = L7_2
  L7_2 = L7_2.AddRedDotRoot
  L10_2 = L4_2
  L9_2 = L4_2.get_reddot_transform
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
  return L3_2
end
L1_1._on_contact_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._current_contact_data
  L2_2 = L2_2 ~= A1_2
  A0_2._current_contact_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._changed_callback
    L5_2 = A0_2._changed_handler
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._on_contact_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._contact_datas
  L3_2 = A0_2._current_contact_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_view
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToByItemIndexAndOffsetPercent
    L4_2 = L1_2 - 1
    L5_2 = 1.0
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._move_to_current = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._contact_datas
  L3_2 = A0_2._current_contact_data
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2 - 1
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = 0
  ::lbl_13::
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    if L4_2 ~= nil then
      goto lbl_25
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_25::
  L4_2 = L3_2.UserObjectData
  L5_2 = L4_2
  L4_2 = L4_2.get_first_selected_object
  return L4_2(L5_2)
end
L1_1.get_first_selected_object = L2_1
return L1_1
