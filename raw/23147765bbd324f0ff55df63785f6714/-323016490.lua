local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.ChatEmojiSelectDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.ChatEmojiSelectItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.ChatEmojiSelectItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.ChatEmojiSelectEmptyItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.ChatEmojiSelectEmptyItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.ChatEmojiSelectGroupPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.ChatEmojiSelectGroupPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChatModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChatEmojiSelectDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChatEmojiSelectDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._contact_id = A1_2
  A0_2._init_group_id = A2_2
end
L1_1.init = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._group_callback = A1_2
  A0_2._group_handler = A2_2
end
L1_1.register_group_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
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
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChatEmojiMarked
  L4_2 = A0_2._on_emoji_marked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_emoji
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshEmojiData
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_group_view
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EmojiUtils
  L2_2 = L2_2.GetChatEmojiGroupIDs
  L2_2, L3_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._group_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_group_tab
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.trigger_scrollrect_move
    L2_2(L3_2)
  end
end
L1_1._refresh_group_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2._mono_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SetScrollRect
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_group_tab_item
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_mark_view
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = A0_2._group_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._create_group_tab_item
    L7_2 = L7_2(L8_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_group_view
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.add_item
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L5_2 = A0_2
  L4_2 = A0_2._get_init_tab_index
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L1_1._init_group_tab = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChatEmojiSelectGroupPanel
  L4_2 = G
  L4_2 = L4_2.ChatEmojiSelectGroupPanelBinder
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_root
  L2_2(L3_2, L4_2)
  return L1_2
end
L1_1._create_group_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._init_group_id
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.index_of_item
    L3_2 = A0_2._group_ids
    L4_2 = A0_2._init_group_id
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  if L1_2 == nil then
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.find_item
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._tab_control
    L4_2 = L3_2
    L3_2 = L3_2.item_count
    L3_2 = L3_2(L4_2)
    if L3_2 ~= 1 then
      L4_2 = L2_2
      L3_2 = L2_2.get_emoji_ids
      L3_2 = L3_2(L4_2)
      L3_2 = #L3_2
      if not (0 < L3_2) then
        goto lbl_31
      end
    end
    L3_2 = 1
    do return L3_2 end
    goto lbl_36
    ::lbl_31::
    L3_2 = 2
    return L3_2
  else
    L2_2 = 1 + L1_2
    return L2_2
  end
  ::lbl_36::
end
L1_1._get_init_tab_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._group_callback
  L4_2 = A0_2._group_handler
  L6_2 = L1_2
  L5_2 = L1_2.get_group_id
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_emoji_view
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.force_set_first_navigation_target
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
L1_1._on_tab_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_group
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L5_2 = L1_2
  L4_2 = L1_2.get_name
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_group
  L3_2 = L3_2.transform
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_list_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_emoji
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByIndex
  L4_2 = 0
  L2_2(L3_2, L4_2)
end
L1_1._refresh_emoji_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2._refresh_emoji_data
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._emoji_ids
  L2_2 = #L2_2
  L4_2 = L1_2
  L3_2 = L1_2.is_mark
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L2_2 = L2_2 + 1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_emoji
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = L2_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_emoji
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L1_1._refresh_list_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = L1_2
  L2_2 = L1_2.get_emoji_ids
  L2_2 = L2_2(L3_2)
  A0_2._emoji_ids = L2_2
end
L1_1._refresh_emoji_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2
  L3_2 = L3_2.is_mark
  L3_2 = L3_2(L4_2)
  L4_2 = A2_2 == 0 and L4_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  if L4_2 then
    L7_2 = 1
    if L7_2 then
      goto lbl_18
    end
  end
  L7_2 = 0
  ::lbl_18::
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L4_2 then
    if L6_2 == nil then
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.ChatEmojiSelectEmptyItemPanel
      L10_2 = G
      L10_2 = L10_2.ChatEmojiSelectEmptyItemPanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
      L8_2 = L6_2
      L7_2 = L6_2.bind
      L9_2 = L5_2.transform
      L7_2(L8_2, L9_2)
      L5_2.UserObjectData = L6_2
      L8_2 = L6_2
      L7_2 = L6_2.register_select_callback
      L9_2 = A0_2._on_item_select
      L10_2 = A0_2
      L7_2(L8_2, L9_2, L10_2)
    end
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L7_2(L8_2)
  else
    if L6_2 == nil then
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.ChatEmojiSelectItemPanel
      L10_2 = G
      L10_2 = L10_2.ChatEmojiSelectItemPanelBinder
      L11_2 = false
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L6_2 = L7_2
      L8_2 = L6_2
      L7_2 = L6_2.bind
      L9_2 = L5_2.transform
      L7_2(L8_2, L9_2)
      L5_2.UserObjectData = L6_2
      L8_2 = L6_2
      L7_2 = L6_2.register_click_callback
      L9_2 = A0_2._on_click_emoji
      L10_2 = A0_2
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.register_long_press_callback
      L9_2 = A0_2._on_long_press_emoji
      L10_2 = A0_2
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.register_select_callback
      L9_2 = A0_2._on_item_select
      L10_2 = A0_2
      L7_2(L8_2, L9_2, L10_2)
    end
    L7_2 = A0_2._emoji_ids
    L8_2 = A2_2 or L8_2
    if not L3_2 or not A2_2 then
      L8_2 = A2_2 + 1
    end
    L7_2 = L7_2[L8_2]
    L9_2 = L6_2
    L8_2 = L6_2.setup_view
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L5_2
end
L1_1._on_item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_list_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_short_cut_hint
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.force_set_default_navigation_target
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_emoji_data
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.index_of_item
    L3_2 = A0_2._emoji_ids
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 == nil then
      L4_2 = A0_2
      L3_2 = A0_2._refresh_list_view
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2._refresh_short_cut_hint
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2.force_set_default_navigation_target
      L3_2(L4_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._refresh_emoji_item
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2._refresh_short_cut_hint
      L3_2(L4_2)
    end
  end
end
L1_1._on_emoji_marked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._emoji_ids
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2
  L3_2 = L3_2.is_mark
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_emoji
  L5_2 = L4_2
  L4_2 = L4_2.GetShownItemByItemIndex
  L6_2 = A1_2 or L6_2
  if not L3_2 or not A1_2 then
    L6_2 = A1_2 - 1
  end
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.UserObjectData
    if L5_2 ~= nil then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L5_2 = L4_2.UserObjectData
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = L0_1
  L7_2 = L6_2
  L6_2 = L6_2.IsEmojiMarked
  L8_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = L5_2
    L6_2 = L5_2.play_mark_effect
    L6_2(L7_2)
  end
end
L1_1._refresh_emoji_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.SendEmojiMessage
  L4_2 = A0_2._contact_id
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L1_1._on_click_emoji = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.IsEmojiMarked
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.MarkEmoji
    L5_2 = A1_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowOkCancelHint
    L4_2 = "UIText_Chat_Emoji_Collection_UnCollection_Tip"
    L5_2 = "UIText_Rogue_Quit_Comfirm_Title"
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if A0_3 then
        L1_3 = L0_1
        L2_3 = L1_3
        L1_3 = L1_3.MarkEmoji
        L3_3 = A1_2
        L4_3 = false
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._on_long_press_emoji = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._selected_emoji_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2.save_navigation_target
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L1_1._on_item_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectedGameObject
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L1_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectedGameObject
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L1_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._selected_emoji_id
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 31
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.IsEmojiMarked
    L5_2 = A0_2._selected_emoji_id
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = 143
      if L3_2 then
        goto lbl_19
      end
    end
    L3_2 = 142
    ::lbl_19::
    L1_2(L2_2, L3_2)
  end
end
L1_1._refresh_short_cut_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_emoji
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._on_enter_zoom = L2_1
return L1_1
