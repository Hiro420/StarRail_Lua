local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatAddPage"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FriendModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChatModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "FriendChatPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FriendChatPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._already_setup_view = false
  A0_2._has_inited = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._init_uid = A1_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChatNewMessage
  L4_2 = A0_2._on_new_message
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChatMessageSynced
  L4_2 = A0_2._on_message_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChatNewContact
  L4_2 = A0_2._on_contact_list_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChatContactRemoved
  L4_2 = A0_2._on_contact_list_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChatRefreshContact
  L4_2 = A0_2._on_refresh_contact
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PersonalizeChatBubbleCurrentChanged
  L4_2 = A0_2._on_refresh_message
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendListRefreshed
  L4_2 = A0_2._on_friend_list_refreshed
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_contact_list
  L2_2 = L1_2
  L1_2 = L1_2.register_contact_changed_callback
  L3_2 = A0_2._on_contact_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_message_list
  L2_2 = L1_2
  L1_2 = L1_2.register_top_shown_callback
  L3_2 = A0_2._on_message_top_shown
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_send
  L2_2 = L1_2
  L1_2 = L1_2.register_sent_callback
  L3_2 = A0_2._on_message_sent
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_more
  L4_2 = A0_2._on_btn_more
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_add
  L4_2 = A0_2._on_btn_add
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_contact_add
  L4_2 = A0_2._on_btn_add
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshFriendList
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bubble
  L4_2 = A0_2._on_btn_bubble
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bubble2
  L4_2 = A0_2._on_btn_bubble
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_send
  L2_2 = L1_2
  L1_2 = L1_2.on_first_child_dialog_open
  L1_2(L2_2)
end
L2_1._on_first_child_dialog_open = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_send
  L2_2 = L1_2
  L1_2 = L1_2.on_first_child_dialog_close
  L1_2(L2_2)
end
L2_1._on_first_child_dialog_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.IsBriefFriendInfoGot
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._do_setup_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_empty_view
    L1_2(L2_2)
  end
  A0_2._already_setup_view = true
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._has_inited = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_contact_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._init_uid
  L1_2(L2_2, L3_2)
  A0_2._init_uid = nil
  L2_2 = A0_2
  L1_2 = A0_2._refresh_empty_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bubble_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L2_1._do_setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_inited
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._already_setup_view
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._do_setup_view
      L1_2(L2_2)
    end
  end
end
L2_1._on_friend_list_refreshed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PersonalizeModule
  L2_2 = L1_2
  L1_2 = L1_2.FetchPersonalizeData
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChatBubbleSelect"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_bubble_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChatBubbleSelect"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_bubble_reddot2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_bubble_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_contact_list_dirty
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_contact_list
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._current_contact
    if L3_2 ~= nil then
      L3_2 = A0_2._current_contact
      L3_2 = L3_2.ContactID
      if L3_2 then
        goto lbl_15
      end
    end
    L3_2 = nil
    ::lbl_15::
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._reset_contact_navigation_target
    L1_2(L2_2)
    A0_2._is_contact_list_dirty = false
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_contact_list
    L2_2 = L1_2
    L1_2 = L1_2.refresh_view
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._is_message_history_dirty
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_message_view
    L3_2 = true
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    A0_2._is_message_history_dirty = false
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_empty_view
  L1_2(L2_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._init_uid
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
  end
end
L2_1._on_return_to_top = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._current_contact = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_empty_view
  L2_2(L3_2)
  A0_2._is_message_dirty = true
  L2_2 = true
  L3_2 = A0_2._current_contact
  if L3_2 ~= nil then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.SafeInitContactHistory
    L5_2 = A0_2._current_contact
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = not L3_2
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.MarkContactRead
    L5_2 = A0_2._current_contact
    L5_2 = L5_2.ContactID
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh_message_view
    L5_2 = true
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._current_contact
    L3_2 = L3_2 ~= nil
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_in_chat
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2._setup_contact_info
      L6_2 = A0_2._current_contact
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._try_auto_activate_input_field
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.save_navigation_target
  L6_2 = A0_2
  L5_2 = A0_2.get_first_selected_object
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._on_contact_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_send
  L2_2 = L1_2
  L1_2 = L1_2.show_input_field
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_auto_activate_input_field
  L1_2(L2_2)
end
L2_1._on_entrance_anim_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_mode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_send
      L2_2 = L1_2
      L1_2 = L1_2.activate_input_field
      L1_2(L2_2)
    end
  end
end
L2_1._try_auto_activate_input_field = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._current_contact
  L3_2 = L3_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_in_chat
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    A0_2._is_message_dirty = false
    L5_2 = A0_2
    L4_2 = A0_2._setup_contact_info
    L6_2 = A0_2._current_contact
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_send
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A0_2._current_contact
    L6_2 = L6_2.ContactID
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_message_list
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A0_2._current_contact
    L7_2 = A1_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L2_1._refresh_message_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._current_contact
  L1_2 = L1_2 == nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_not_empty
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = not L1_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_InControlActionsManager
  L2_2 = L2_2.IsInputFiledSelected
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_InControlActionsManager
    L2_2.IsInputFiledSelected = false
  end
end
L2_1._refresh_empty_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.FriendModule
  L3_2 = L2_2
  L2_2 = L2_2.GetPlayerBriefDisplayDataPromise
  L4_2 = A1_2.ContactID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaActionOneParam
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.HasRemarkName
    if L1_3 then
      L1_3 = A0_2._binder
      L1_3 = L1_3.txt_name
      L2_3 = L1_3
      L1_3 = L1_3.SafeSetTextID
      L3_3 = "UIText_Friend_Name_Remark"
      L4_3 = A0_3.Name
      L5_3 = A0_3.OriginName
      L1_3(L2_3, L3_3, L4_3, L5_3)
    else
      L1_3 = A0_2._binder
      L1_3 = L1_3.txt_name
      L2_3 = L1_3
      L1_3 = L1_3.SetCustomizedText
      L3_3 = A0_3.Name
      L1_3(L2_3, L3_3)
    end
    L1_3 = A0_2._binder
    L1_3 = L1_3.panel_platform
    L2_3 = L1_3
    L1_3 = L1_3.setup_view
    L3_3 = A0_3.PlatformInfo
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
L2_1._setup_contact_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._current_contact
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.create_friend_chat_option_data
  L2_2 = A0_2._current_contact
  L2_2 = L2_2.ContactID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.PlayerInfo.OptionListDialog"
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_more
  L5_2 = L5_2.gameObject
  L5_2 = L5_2.transform
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_btn_more = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.FriendChatAddPage
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_chat_callback
  function L4_2(A0_3)
    local L1_3
    A0_2._init_uid = A0_3
  end
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L2_1._on_btn_add = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ChatBubble.ChatBubbleSelectDialog"
  L1_2(L2_2)
end
L2_1._on_btn_bubble = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._current_contact
  if L2_2 ~= nil then
    L2_2 = A0_2._current_contact
    L2_2 = L2_2.ContactID
    if L2_2 == A1_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = A0_2._current_contact
  L2_2 = L2_2.LatestMessage
  if L2_2 ~= nil then
    L2_2 = A0_2._current_contact
    L2_2 = L2_2.LatestMessage
    L2_2 = L2_2.IsSenderPlayer
    if L2_2 then
      goto lbl_27
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_message_list
  L3_2 = L2_2
  L2_2 = L2_2.is_latest_shown
  L2_2 = L2_2(L3_2)
  ::lbl_27::
  L4_2 = A0_2
  L3_2 = A0_2._refresh_message_view
  L5_2 = L2_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.MarkContactRead
  L5_2 = A0_2._current_contact
  L5_2 = L5_2.ContactID
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._trigger_message_audio
  L3_2(L4_2)
end
L2_1._on_new_message = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_contact
  if L1_2 ~= nil then
    L1_2 = A0_2._current_contact
    L1_2 = L1_2.LatestMessage
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._current_contact
  L1_2 = L1_2.LatestMessage
  L1_2 = L1_2.IsSenderPlayer
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.PostEvent
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.EventPhoneMessageItemSent
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.PostEvent
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.EventPhoneMessageItemReceived
    L1_2(L2_2, L3_2)
  end
end
L2_1._trigger_message_audio = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._current_contact
  if L2_2 ~= nil then
    L2_2 = A0_2._current_contact
    L2_2 = L2_2.ContactID
    if L2_2 == A1_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_message_list
  L3_2 = L2_2
  L2_2 = L2_2.is_empty
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._is_message_dirty
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_message_view
  L5_2 = L2_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.MarkContactRead
  L5_2 = A0_2._current_contact
  L5_2 = L5_2.ContactID
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._on_message_synced = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    A0_2._is_contact_list_dirty = true
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_contact_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_contact
  if L3_2 ~= nil then
    L3_2 = A0_2._current_contact
    L3_2 = L3_2.ContactID
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = nil
  ::lbl_18::
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_contact_navigation_target
  L1_2(L2_2)
end
L2_1._on_contact_list_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_contact_list
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_contact_navigation_target
  L1_2(L2_2)
end
L2_1._on_refresh_contact = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_message_history_dirty = true
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._is_message_history_dirty
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_message_view
    L3_2 = true
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    A0_2._is_message_history_dirty = false
  end
end
L2_1._on_refresh_message = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_contact
  if L1_2 == nil then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeFetchRemoteHistory
  L3_2 = A0_2._current_contact
  L1_2(L2_2, L3_2)
end
L2_1._on_message_top_shown = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._current_contact
  if L1_2 == nil then
    return
  end
end
L2_1._on_message_sent = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_contact_list
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
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
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_InControlActionsManager
    L1_2 = L1_2.IsInputFiledSelected
    if not L1_2 then
      goto lbl_21
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  goto lbl_28
  ::lbl_21::
  L2_2 = A0_2
  L1_2 = A0_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
  ::lbl_28::
end
L2_1._reset_contact_navigation_target = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
end
L2_1._on_leave_special_zoom = L3_1
return L2_1
