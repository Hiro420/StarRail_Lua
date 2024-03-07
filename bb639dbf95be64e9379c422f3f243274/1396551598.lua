local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerInfoPageBinder"
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
L2_1 = G
L2_1 = L2_1.PlayerUtils
L3_1 = G
L3_1 = L3_1.FriendUtils
function L4_1(A0_2)
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
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._data = A1_2
  A0_2._auto_edit_assist = A2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
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
  L3_2 = L3_2.btn_action
  L4_2 = A0_2._on_btn_action
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
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_assist_reward
  L4_2 = A0_2._on_btn_assist_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDisPlayAvatarChanged
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._data
    L0_3 = L0_3.IsLocalPlayer
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_ModuleManager
      L0_3 = L0_3.PlayerModule
      L1_3 = L0_3
      L0_3 = L0_3.GetDisplayLocalPlayerBoardInfo
      L0_3 = L0_3(L1_3)
      A0_2._data = L0_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_display_avatar
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerAssistAvatarChanged
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._data
    L0_3 = L0_3.IsLocalPlayer
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_ModuleManager
      L0_3 = L0_3.PlayerModule
      L1_3 = L0_3
      L0_3 = L0_3.GetDisplayLocalPlayerBoardInfo
      L0_3 = L0_3(L1_3)
      A0_2._data = L0_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_assist_avatar
      L0_3(L1_3)
    end
  end
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
  L3_2 = L3_2.GetAssistReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BirthdayDisplayChanged
  L4_2 = A0_2._on_birthday_display_changed
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_diplay_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.register_avatar_click_callback
  L3_2 = A0_2._on_click_display_avatar
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_diplay_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.register_add_click_callback
  L3_2 = A0_2._on_add_display_avatar
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_assist_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_assist
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AssistEdit"
    L4_2 = 0
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot_assist
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AssistReward"
    L4_2 = 0
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot_reward
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
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
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_extra_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_button_group
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_display_avatar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_assist_avatar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_more_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_platform
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_auto_open_edit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L1_2 = L1_2.UID
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_signature
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.IsBanned
  L4_2 = L3_1.is_in_black_list
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
  L4_2 = L3_1.is_in_black_list
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
L0_1._refresh_basic_info = L4_1
function L4_1(A0_2)
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
L0_1._refresh_mark_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_edit_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_local_player
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L3_1.is_friend
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
L0_1._refresh_control_view = L4_1
function L4_1(A0_2)
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
L0_1._setup_birthday = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.RemarkName
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_remark_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_remark_name
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_avatar_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.AvatarCount
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_lightcone_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.LightConeCount
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_achievement_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.AchievementCount
  L2_2(L3_2, L4_2)
end
L0_1._refresh_extra_info = L4_1
function L4_1(A0_2)
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
L0_1._setup_more_list = L4_1
function L4_1(A0_2)
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
L0_1._refresh_more_options = L4_1
function L4_1(A0_2)
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
L0_1._setup_platform = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_diplay_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_display_avatar_datas
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_display_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayAvatarDatas
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_2 + 1
    L8_2 = L2_2[L6_2]
    L1_2[L7_2] = L8_2
  end
  return L1_2
end
L0_1._get_display_avatar_datas = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_local_player
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._edit_display_avatars
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._show_avatar_detail_info
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_click_display_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._edit_display_avatars
  L1_2(L2_2)
end
L0_1._on_add_display_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_assist_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_assist_avatar_datas
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._data
  L4_2 = L4_2.IsLocalPlayer
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = L1_1.AssistRewardCount
    L1_2 = 0 < L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_assist_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_assist_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.GetAssistAvatarDatas
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_2 + 1
    L8_2 = L1_2[L6_2]
    L2_2[L7_2] = L8_2
  end
  return L2_2
end
L0_1._get_assist_avatar_datas = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mark_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_more_options
  L1_2(L2_2)
end
L0_1._on_friend_mark_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_assist_avatar
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.show_reward_dialog
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._on_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_more_list
  L1_2(L2_2)
end
L0_1._on_birthday_display_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_local_player
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._edit_assist_avatar
    L2_2(L3_2)
  elseif A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._show_avatar_detail_info
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_click_assist = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  L2_2 = L3_1.is_friend
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L2_2 = not L1_2 and L2_2
  L3_2 = L3_1.is_already_send_apply
  L4_2 = A0_2._data
  L4_2 = L4_2.UID
  L3_2 = not L1_2 and L3_2
  L4_2 = L3_1.is_receive_apply
  L5_2 = A0_2._data
  L5_2 = L5_2.UID
  L4_2 = not L1_2 and L4_2
  L5_2 = L3_1.is_friend_full
  L5_2 = L5_2()
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_action
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L1_2 and L8_2
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
L0_1._refresh_button_group = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._auto_edit_assist
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._edit_assist_avatar
  L1_2(L2_2)
end
L0_1._try_auto_open_edit = L4_1
function L4_1(A0_2)
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
L0_1._on_player_info_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_extra_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_button_group
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
end
L0_1._on_friend_data_updated = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L2_1.show_head_icon_modify
  L1_2()
end
L0_1._on_click_player_photo = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L4_1
function L4_1(A0_2)
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
L0_1._on_btn_edit_name = L4_1
function L4_1(A0_2)
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
L0_1._on_btn_copy_uid = L4_1
function L4_1(A0_2)
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
end
L0_1._on_btn_more = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
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
    L3_2 = L3_1.do_accept_friend
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
    L3_2 = L3_1.do_add_friend
    L4_2 = A0_2._data
    L4_2 = L4_2.UID
    L5_2 = G
    L5_2 = L5_2.UtilEngineWrap
    L5_2 = L5_2.ConvCsEnumToNum
    L6_2 = CS
    L6_2 = L6_2.CPCMKKACFNO
    L6_2 = L6_2.JJKMEHFNBBD
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.show_full_screen_block_for_packet
    L5_2 = CS
    L5_2 = L5_2.NIJNBICAPPA
    L5_2 = L5_2.OBEEMNCJJAI
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L2_1.show_signature_modify
  L1_2()
end
L0_1._on_click_signature = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_local_player
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L2_1.show_birthday_modify
  L1_2()
end
L0_1._on_btn_edit_birthday = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  return L1_2
end
L0_1._is_local_player = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Avatar.AvatarMainPage"
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2
  L3_2 = L2_2.hide_avatar_list
  L3_2(L4_2)
end
L0_1._show_avatar_detail_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_display_avatar_datas
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.PlayerInfo.DisplayAvatarSelectDialog"
  L4_2 = L1_2
  L5_2 = A0_2._data
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._edit_display_avatars = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.AssistAvatarSelectDialog"
  L4_2 = A0_2
  L3_2 = A0_2._get_assist_avatar_datas
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._edit_assist_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.CDLJIDDCBFG
  L1_2(L2_2)
end
L0_1._on_btn_assist_reward_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_assist_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_btns
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_diplay_avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_btns
  L2_2 = L2_2(L3_2)
  if L1_2 ~= nil then
    L3_2 = #L1_2
    if L3_2 ~= 0 and L2_2 ~= nil then
      L3_2 = #L2_2
      if L3_2 ~= nil then
        goto lbl_20
      end
    end
  end
  do return end
  ::lbl_20::
  L3_2 = {}
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L3_2
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_multi_line_navigation
  L5_2 = L3_2
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._on_enter_zoom
  L6_2 = NavigationZoneType
  L6_2 = L6_2.Zone1
  L4_2(L5_2, L6_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_assist_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_diplay_avatar_list
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
end
L0_1._on_got_focus = L4_1
return L0_1
