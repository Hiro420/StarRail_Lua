local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.PlayerReturnInviteActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.RedDotModule"
L0_1(L1_1)
L0_1 = "UIText_ActivityPlayerInvitation_GoTo_Button"
L1_1 = "UIText_ActivityPlayerInvitation_Reward_Button"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PlayerReturnInviteActivityPanel"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._activity_data = A3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.ActivityPlayerReturnModule
  A0_2._player_return_module = L4_2
  L4_2 = A0_2._player_return_module
  L4_2 = L4_2.InviteData
  A0_2._invite_data = L4_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_item_panel
  L1_2(L2_2)
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_custom_bound
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.bind
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2._get_panel_prefab_path_by_activity_data
    L5_2 = A0_2._activity_data
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._is_custom_bound = true
  end
  L1_2 = A0_2._player_return_module
  L2_2 = L1_2
  L1_2 = L1_2.SendGetInviterInfoWWWReq
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_on_load
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L2_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_invitation_info
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._player_return_module
  L2_2 = L1_2
  L1_2 = L1_2.GetInviteFrontendURL
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.OpeUtil
  L2_2 = L2_2.OpenURLInEmbeddedBrowser
  L3_2 = L1_2
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._player_return_module
  L3_2 = L2_2
  L2_2 = L2_2.UpdateLastGotoH5ClickedInviteConfigID
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_sfx_mute
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L2_1._on_btn_go_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ClipboardUtils
  L1_2 = L1_2.CopyToClipboard
  L2_2 = A0_2._invite_data
  L2_2 = L2_2.InvitationCode
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_PlayerReturn_Invitation_CopySucceed_Tip"
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_copy_invitation_code_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L2_1._on_timer_expired = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_invitation_info
  L1_2(L2_2)
end
L2_1._on_player_return_inviter_data_updated = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_invitation_info
  L1_2(L2_2)
end
L2_1._on_player_return_invite_sdk_red_dot_updated = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._player_return_module
  L2_2 = L1_2
  L1_2 = L1_2.SendGetInviterInfoWWWReq
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_sfx_mute
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_mdk_web_page_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  A0_2._is_custom_loaded = true
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_copy_invitation_code
  L4_2 = A0_2._on_btn_copy_invitation_code_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_title
  L2_2 = L1_2
  L1_2 = L1_2.register_expire_callback
  L3_2 = A0_2._on_timer_expired
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnInviterDataUpdated
  L4_2 = A0_2._on_player_return_inviter_data_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnInviteSDKRedDotUpdated
  L4_2 = A0_2._on_player_return_invite_sdk_red_dot_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKWebPageClose
  L4_2 = A0_2._on_mdk_web_page_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PlayerReturnInvite"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._custom_on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_title
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_panel_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.PanelDesc
  L1_2(L2_2, L3_2)
end
L2_1._setup_basic_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_invitation_code
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._invite_data
  L3_2 = L3_2.InvitationCode
  if not L3_2 then
    L3_2 = ""
  end
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_progress_item_arr
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_light
    L8_2 = A0_2._invite_data
    L8_2 = L8_2.InvitedPlayerCount
    L8_2 = L4_2 <= L8_2
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.safe_set_active
    L8_2 = A0_2._invite_data
    L8_2 = L8_2.InvitedPlayerCountMax
    L8_2 = L4_2 <= L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._player_return_module
  L1_2 = L1_2.IsShowInviteSDKRedDot
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_btn_go
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_btn_go
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  end
end
L2_1._refresh_invitation_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L3_2 = L2_2
    L2_2 = L2_2.PostEvent
    L4_2 = "Ev_sfx_ui_menu_activityPanel_playerReturnRecall_mute"
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L3_2 = L2_2
    L2_2 = L2_2.PostEvent
    L4_2 = "Ev_sfx_ui_menu_activityPanel_playerReturnRecall_unmute"
    L2_2(L3_2, L4_2)
  end
end
L2_1._set_sfx_mute = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_tab_btn_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_tab_item_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = false
      return L2_2
    end
  end
end
L2_1._is_can_to_zoom = L3_1
return L2_1
