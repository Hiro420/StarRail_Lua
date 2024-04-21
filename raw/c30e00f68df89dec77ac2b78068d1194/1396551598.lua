local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerInfoPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Avatar.PlayerInfoAvatarTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Avatar.PlayerInfoAvatarTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Collection.PlayerInfoCollectionTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Collection.PlayerInfoCollectionTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Record.PlayerInfoRecordTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Record.PlayerInfoRecordTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.PlayerUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerInfoPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = "4038"
L3_1 = G
L3_1 = L3_1.PlayerUtils
L4_1 = G
L4_1 = L4_1.FriendUtils
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PlayerInfoPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2.in_psn = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._data = A1_2
  A0_2._auto_edit_assist = A2_2
  L3_2 = A1_2.IsLocalPlayer
  if L3_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.RefreshChallengeRecordData
    L5_2 = A0_2._data
    L5_2 = L5_2.UID
    L3_2(L4_2, L5_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.RefreshRogueRecordData
    L5_2 = A0_2._data
    L5_2 = L5_2.UID
    L3_2(L4_2, L5_2)
  end
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
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
  L3_2 = L3_2.btn_edit_birthday
  L4_2 = A0_2._on_btn_edit_birthday
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_copy_uid
  L4_2 = A0_2._on_btn_copy_uid
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_edit_name
  L4_2 = A0_2._on_btn_edit_name
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDisPlayAvatarChanged
  L4_2 = A0_2._on_player_info_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerAssistAvatarChanged
  L4_2 = A0_2._on_player_info_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendMarkStateChanged
  L4_2 = A0_2._on_friend_mark_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BirthdayDisplayChanged
  L4_2 = A0_2._on_birthday_display_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordDisplayChanged
  L4_2 = A0_2._refresh_tag_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordDisplayTypeChanged
  L4_2 = A0_2._refresh_tag_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordChallengeRefreshed
  L4_2 = A0_2._refresh_tag_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordRogueRefreshed
  L4_2 = A0_2._refresh_tag_info
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.PlayerInfoChanged
    L4_2 = A0_2._on_player_info_changed
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_short_click
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_signature
    L4_2 = A0_2._on_click_signature
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_player_photo
    L2_2 = L1_2
    L1_2 = L1_2.bind_click
    L3_2 = A0_2._on_click_player_photo
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.FriendDataUpdated
    L4_2 = A0_2._on_friend_data_updated
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_interactable
  L3_2 = A0_2._data
  L3_2 = L3_2.IsLocalPlayer
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_action
  L4_2 = A0_2._on_btn_action
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_setting
  L4_2 = A0_2._on_btn_setting
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "PlayerInfoEdit"
    L4_2 = "BirthdaySetHint"
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot_birthday
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
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
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_tip
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L1_2 = 1 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_keymap_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_keymap_right
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_control_tip = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.clear_friend_apply_source
  L1_2()
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_collection_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_record_tab
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerInfoAvatarTabItem
  L4_2 = G
  L4_2 = L4_2.PlayerInfoAvatarTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.update_data
  L4_2 = A0_2._data
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_avatar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_avatar_tab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_collection_locked
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerInfoCollectionTabItem
  L4_2 = G
  L4_2 = L4_2.PlayerInfoCollectionTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.update_data
  L4_2 = A0_2._data
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_avatar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_collection_tab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_record_locked
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerInfoRecordTabItem
  L4_2 = G
  L4_2 = L4_2.PlayerInfoRecordTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.update_data
  L4_2 = A0_2._data
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_avatar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_record_tab = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  L1_2 = A0_2._data
  L1_2 = L1_2.DisplayDiary
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1._is_diary_locked = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  L1_2 = A0_2._data
  L1_2 = L1_2.DisplayCollection
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1._is_collection_locked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.is_friend
  L2_2 = A0_2._data
  L2_2 = L2_2.UID
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.DisplayRecord
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1._is_record_locked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_extra_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_more_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_platform
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_button_group
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_auto_open_edit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._report_tab_select
  L2_2(L3_2)
end
L0_1._on_tab_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 then
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.SDKLuaReportAdapter
      L2_2 = L2_2.ReportUIPanelSwitch
      L3_2 = A0_2.__name
      L4_2 = L1_2.__name
      L5_2 = A0_2.guid
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._report_tab_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  L2_2 = G
  L2_2 = L2_2.FriendUtils
  L2_2 = L2_2.is_friend
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L2_2 = not L1_2 and L2_2
  L3_2 = G
  L3_2 = L3_2.FriendUtils
  L3_2 = L3_2.is_already_send_apply
  L4_2 = A0_2._data
  L4_2 = L4_2.UID
  L3_2 = not L1_2 and L3_2
  L4_2 = G
  L4_2 = L4_2.FriendUtils
  L4_2 = L4_2.is_receive_apply
  L5_2 = A0_2._data
  L5_2 = L5_2.UID
  L4_2 = not L1_2 and L4_2
  L5_2 = G
  L5_2 = L5_2.FriendUtils
  L5_2 = L5_2.is_friend_full
  L5_2 = L5_2()
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_action
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L1_2 and L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_setting
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_action
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetInteractable
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_btn_action
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_Friend_Full"
    L6_2(L7_2, L8_2)
  elseif L4_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_btn_action
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_Friend_Func_Accept_Btn"
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_btn_action
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_Friend_Func_FriendApply_Btn"
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_button_group = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L1_2 = L1_2.UID
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_signature
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.IsBanned
  L4_2 = L4_1.is_in_black_list
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._data
  L4_2 = L4_2.NickName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_signature
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._data
  L4_2 = L4_2.Signature
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_uid
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_player_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.PlayerLevel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_world_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.WorldLevel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player_photo
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_id
  L4_2 = A0_2._data
  L4_2 = L4_2.HeadIconID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player_photo
  L3_2 = L2_2
  L2_2 = L2_2.set_is_in_blacklist
  L4_2 = L4_1.is_in_black_list
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_birthday
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mark_view
  L2_2(L3_2)
end
L0_1._refresh_basic_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.UID
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.IsMarked
  L6_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._refresh_mark_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_edit_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_local_player
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L4_1.is_friend
    L4_2 = A0_2._data
    L4_2 = L4_2.UID
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      goto lbl_19
    end
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  ::lbl_19::
  L1_2(L2_2, L3_2)
end
L0_1._refresh_control_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasBirthday
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_birthday
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_birthday
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_local_player
  L4_2 = L4_2(L5_2)
  L4_2 = not L1_2 and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_edit_birthday
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_local_player
  L4_2 = not L1_2 and L4_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.Birthday
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = L2_2 / 100
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2 % 100
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_birthday
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_PlayerCrad_Birthday_SetAfter"
    L8_2 = L3_2
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._setup_birthday = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.RemarkName
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_remark_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_remark_name
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A0_2._data
    L4_2 = L4_2.RemarkName
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_diary
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_tag_info
  L2_2(L3_2)
end
L0_1._refresh_extra_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.PlayerModule
    L2_2 = L1_2
    L1_2 = L1_2.GetDisplayLocalPlayerBoardInfo
    L1_2 = L1_2(L2_2)
    A0_2._data = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_record_tag
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_board_data
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._refresh_tag_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_more_options
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_more
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._options
  L3_2 = #L3_2
  L3_2 = A0_2.in_psn
  L3_2 = 0 < L3_2 and L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_more_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.PlayerUtils
    L1_2 = L1_2.create_local_info_option_data
    L1_2 = L1_2()
    A0_2._options = L1_2
  else
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.create_friend_info_option_data
    L2_2 = A0_2._data
    L2_2 = L2_2.UID
    L1_2 = L1_2(L2_2)
    A0_2._options = L1_2
  end
end
L0_1._refresh_more_options = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_platform
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L3_2 = L3_2.PlatformInfo
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_platform
  L2_2 = L1_2
  L1_2 = L1_2.set_line
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_psn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.in_psn
  L1_2(L2_2, L3_2)
end
L0_1._setup_platform = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.is_receive_apply
  L2_2 = A0_2._data
  L2_2 = L2_2.UID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.FriendUtils
  L2_2 = L2_2.is_already_send_apply
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L2_2 = L2_2(L3_2)
  if L1_2 then
    L3_2 = G
    L3_2 = L3_2.FriendUtils
    L3_2 = L3_2.do_accept_friend
    L4_2 = A0_2._data
    L4_2 = L4_2.UID
    L5_2 = true
    L3_2(L4_2, L5_2)
  elseif L2_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Friend_WaitingApply"
    L3_2(L4_2, L5_2)
  else
    L3_2 = G
    L3_2 = L3_2.FriendUtils
    L3_2 = L3_2.do_add_friend
    L4_2 = A0_2._data
    L4_2 = L4_2.UID
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.show_full_screen_block_for_packet
    L5_2 = CS
    L5_2 = L5_2.PBIBDHBOIGI
    L5_2 = L5_2.PFHDACIPMKP
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_action = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.PlayerUtils
  L1_2 = L1_2.go_social_setting
  L1_2()
end
L0_1._on_btn_setting = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mark_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_more_options
  L1_2(L2_2)
end
L0_1._on_friend_mark_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_more_list
  L1_2(L2_2)
end
L0_1._on_birthday_display_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._auto_edit_assist
  if not L1_2 then
    return
  end
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2.show_edit_assist
  if L2_2 == nil then
    L3_2 = L1_2
    L2_2 = L1_2.show_edit_assist
    L2_2(L3_2)
  end
end
L0_1._try_auto_open_edit = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.PlayerModule
    L2_2 = L1_2
    L1_2 = L1_2.GetDisplayLocalPlayerBoardInfo
    L1_2 = L1_2(L2_2)
    A0_2._data = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
end
L0_1._on_player_info_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_extra_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_button_group
  L1_2(L2_2)
end
L0_1._on_friend_data_updated = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L3_1.show_head_icon_modify
  L1_2()
end
L0_1._on_click_player_photo = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.PlayerUtils
    L1_2 = L1_2.show_nickname_modify
    L1_2()
  else
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.is_friend
    L2_2 = A0_2._data
    L2_2 = L2_2.UID
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.FriendUtils
      L1_2 = L1_2.set_remark_name
      L2_2 = A0_2._data
      L2_2 = L2_2.UID
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_edit_name = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ClipboardUtils
  L1_2 = L1_2.CopyToClipboard
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_uid
  L2_2 = L2_2.text
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Copy_Succeed"
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_copy_uid = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_more_options
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.OptionListDialog"
  L3_2 = A0_2._options
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_more
  L4_2 = L4_2.gameObject
  L4_2 = L4_2.transform
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIPanelSwitch
  L2_2 = A0_2.__name
  L3_2 = "OptionListDialog"
  L4_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_more = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L3_1.show_signature_modify
  L1_2()
end
L0_1._on_click_signature = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L3_1.show_birthday_modify
  L1_2()
end
L0_1._on_btn_edit_birthday = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  return L1_2
end
L0_1._is_local_player = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L3_2 = true
    L1_2(L2_2, L3_2)
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
end
L0_1._select_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L3_2 = true
    L1_2(L2_2, L3_2)
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
end
L0_1._select_next = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = L1_2
  L2_2 = L1_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_short_cut_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
end
L0_1._on_got_focus = L5_1
return L0_1
