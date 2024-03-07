local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.FriendUtils
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.FriendModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ChatModule
L4_1 = 3
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._show_friend_statu = true
  A0_2._show_assist = false
  L1_2 = L3_1.EnableChat
  A0_2._show_chat = L1_2
  A0_2._is_select = false
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendMarkStateChanged
  L4_2 = A0_2._on_friend_mark_state_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_add
  L4_2 = A0_2._on_btn_add
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_wait_for_accept
  L4_2 = A0_2._on_btn_wait_for_accept
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_accept
  L4_2 = A0_2._on_btn_accept
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_refuse
  L4_2 = A0_2._on_btn_accept
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_chat
  L4_2 = A0_2._on_btn_chat
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    A0_2._is_select = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._callback
    if L0_3 then
      L0_3 = A0_2._callback
      L1_3 = A0_2._callback_self
      L2_3 = A0_2._callback_param
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    A0_2._is_select = false
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_in_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_support_list
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_setup_callback
  L3_2 = A0_2._on_setup_support_panel
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_self = A1_2
  A0_2._callback = A2_2
  A0_2._callback_param = A3_2
end
L0_1.register_select_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._on_chat_callback = A1_2
  A0_2._on_chat_handler = A2_2
end
L0_1.register_on_chat_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  A0_2._data = A1_2
  A0_2._option_data = nil
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_ps_player = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_in_control_button_enable
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_player_photo
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_by_id
    L4_2 = G
    L4_2 = L4_2.FriendUtils
    L4_2 = L4_2.get_ps_player_default_head_icon_id
    L4_2 = L4_2()
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_player_photo
    L3_2 = L2_2
    L2_2 = L2_2.hide_level
    L2_2(L3_2)
  end
  A0_2._data = nil
  A0_2._option_data = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_sign
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal_btn_group
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_apply_btn_group
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player_photo
  L3_2 = L2_2
  L2_2 = L2_2.set_interactable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_support_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_empty_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_platform_info
  L3_2 = L2_2
  L2_2 = L2_2.set_uuid
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_uuid = L5_1
function L5_1(A0_2, A1_2)
  A0_2._show_friend_statu = A1_2
end
L0_1.show_friend_statu = L5_1
function L5_1(A0_2, A1_2)
  A0_2._show_assist = A1_2
end
L0_1.show_assist_hint = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = L3_1.EnableChat
  end
  A0_2._show_chat = L2_2
end
L0_1.show_chat = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.show_friend_assist_avatar_detail
  L2_2 = A0_2._data
  L2_2 = L2_2.UID
  L1_2(L2_2)
end
L0_1.show_assist_avatars_detail = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_online_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_button_group
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_support_avatar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_platform_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mark_info
  L1_2(L2_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_id
  L3_2 = A0_2._data
  L3_2 = L3_2.HeadIconID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_level
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2._on_player_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_is_in_blacklist
  L3_2 = L1_1.is_in_black_list
  L4_2 = A0_2._data
  L4_2 = L4_2.UID
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_signature
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.Signature
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_assist
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._show_assist
  if L3_2 then
    L3_2 = L2_1
    L4_2 = L3_2
    L3_2 = L3_2.IsAssistRecommend
    L5_2 = A0_2._data
    L5_2 = L5_2.UID
    L3_2 = L3_2(L4_2, L5_2)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.HasRemarkName
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Friend_Name_Remark"
    L4_2 = A0_2._data
    L4_2 = L4_2.Name
    L5_2 = A0_2._data
    L5_2 = L5_2.OriginName
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._data
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_basic_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._data
  L2_2 = L2_2.IsOnline
  if not L2_2 then
    L2_2 = A0_2._data
    L1_2 = L2_2.LogoutTimeSpan
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_online_status
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L4_2 = L4_2.IsOnline
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_online_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.is_friend
  L2_2 = A0_2._data
  L2_2 = L2_2.UID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.is_already_send_apply
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1.is_receive_apply
  L4_2 = A0_2._data
  L4_2 = L4_2.UID
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = A0_2._show_friend_statu
    L4_2 = A0_2._show_chat
    L4_2 = not L4_2 and L4_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_apply_btn_group
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_normal_btn_group
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L3_2 and L7_2
  L5_2(L6_2, L7_2)
  if not L3_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_add
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = not L2_2 and not L1_2 and L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_wait_for_accept
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = L2_2 or L7_2
    if L2_2 then
      L7_2 = not L1_2
    end
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_already_accept
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = L1_2 or L7_2
    if L1_2 then
      L7_2 = A0_2._show_friend_statu
    end
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_chat
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = L1_2 or L7_2
    if L1_2 then
      L7_2 = A0_2._show_chat
    end
    L5_2(L6_2, L7_2)
  end
end
L0_1._refresh_button_group = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_support_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_count
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._refresh_support_avatar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_platform_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L3_2 = L3_2.PlatformInfo
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_platform_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsMarked
  L1_2(L2_2, L3_2)
end
L0_1._refresh_mark_info = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A1_2
  L3_2 = A1_2.register_click_callback
  L5_2 = A0_2._on_click_assist_avatar
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.GetAssistInfoByPos
  L5_2 = A2_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._on_setup_support_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._option_data
  if L1_2 == nil then
    L1_2 = L1_1.create_friend_option_data
    L2_2 = A0_2._data
    L2_2 = L2_2.UID
    L3_2 = A0_2._is_ps_player
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._option_data = L1_2
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.OptionListDialog"
  L3_2 = A0_2._option_data
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_player_photo
  L4_2 = L4_2._binder
  L4_2 = L4_2.root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_player_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.UID
  if A1_2 ~= L2_2 then
    return
  end
  A0_2._option_data = nil
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mark_info
  L2_2(L3_2)
end
L0_1._on_friend_mark_state_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._show_assist
  if L1_2 then
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.IsAssistRecommend
    L3_2 = A0_2._data
    L3_2 = L3_2.UID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = L1_1.do_add_friend
      L2_2 = A0_2._data
      L2_2 = L2_2.UID
      L3_2 = G
      L3_2 = L3_2.UtilEngineWrap
      L3_2 = L3_2.ConvCsEnumToNum
      L4_2 = CS
      L4_2 = L4_2.CPCMKKACFNO
      L4_2 = L4_2.NKFIAALOMIA
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
  end
  else
    L1_2 = A0_2._is_ps_player
    if L1_2 then
      L1_2 = L1_1.do_add_friend
      L2_2 = A0_2._data
      L2_2 = L2_2.UID
      L3_2 = G
      L3_2 = L3_2.UtilEngineWrap
      L3_2 = L3_2.ConvCsEnumToNum
      L4_2 = CS
      L4_2 = L4_2.CPCMKKACFNO
      L4_2 = L4_2.BJBJIOHCPAO
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = L1_1.do_add_friend
      L2_2 = A0_2._data
      L2_2 = L2_2.UID
      L3_2 = G
      L3_2 = L3_2.UtilEngineWrap
      L3_2 = L3_2.ConvCsEnumToNum
      L4_2 = CS
      L4_2 = L4_2.CPCMKKACFNO
      L4_2 = L4_2.JMCBIOJBGPI
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.OBEEMNCJJAI
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_add = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.do_accept_friend
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.NIJNBICAPPA
  L4_2 = L4_2.EIFDGPJLKPB
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_accept = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Friend_WaitingApply"
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_wait_for_accept = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.FriendUtils
  L2_2 = L2_2.show_friend_assist_avatar_detail
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L4_2 = A1_2.AvatarId
  L2_2(L3_2, L4_2)
end
L0_1._on_click_assist_avatar = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_chat_callback
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._on_chat_callback
    L3_2 = A0_2._on_chat_handler
    L4_2 = A0_2._data
    L4_2 = L4_2.UID
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.go_private_chat
  L2_2 = A0_2._data
  L2_2 = L2_2.UID
  L1_2(L2_2)
end
L0_1._on_btn_chat = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_player_click
    L1_2(L2_2)
  end
end
L0_1._on_btn_root_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_in_control_tip_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_tip_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_in_control_button_enable = L5_1
return L0_1
