local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.PhoneNotice.PhoneNoticePanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SystemOpenModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PhoneNoticePanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
L3_1 = "PhoneMessage_NewMessageHint_FadeIn"
L4_1 = "PhoneMessage_NewMessageHint_FadeOut"
L5_1 = 8
L6_1 = {}
L6_1.Tutorial = 1
L6_1.FullScreenToast = 2
function L7_1(A0_2)
  local L1_2
  A0_2._notifying_notice_id = nil
  A0_2._is_in_notice = false
  A0_2._is_in_anime = false
  A0_2._pause_count = 0
  L1_2 = {}
  A0_2._paused_types = L1_2
  A0_2._notifying_notice = nil
end
L2_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_icon
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_notice
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneNoticeNewMessage
  L4_2 = A0_2._on_receive_new_message
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageGroupChecked
  L4_2 = A0_2._clear_cached_message
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageRefreshContact
  L4_2 = A0_2._refresh_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageRefreshGroup
  L4_2 = A0_2._refresh_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageStateRefreshed
  L4_2 = A0_2._refresh_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageRedDotRefreshed
  L4_2 = A0_2._refresh_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialCleanUI
  L4_2 = A0_2._on_tutorial_clean
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastQueueEmpty
  L4_2 = A0_2._on_toast_empty
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPhoneNoticePage
  L4_2 = A0_2._on_show_phone_notice_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = A0_2._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PhoneNotificationsEntrance"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot
  L6_2 = L6_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L5_1
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_2
  L2_2 = L2_2.GetClip
  L4_2 = L4_1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.length
  L1_2 = L1_2 - L2_2
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_notice_finish
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "PhoneMessage_NewMessageHint_ProtectTime"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.FloatValue
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._on_protect_end
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._protect_timer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_icon
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_show_message_notice
  L3_2(L4_2)
end
L2_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HasNotice
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_view_active_by_scale
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._refresh_icon = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._paused_types
  L4_2 = A0_2._paused_types
  L4_2 = L4_2[A2_2]
  if not L4_2 then
    L4_2 = false
  end
  L3_2[A2_2] = L4_2
  L3_2 = A0_2._paused_types
  L3_2 = L3_2[A2_2]
  if L3_2 == A1_2 then
    return
  end
  L3_2 = A0_2._paused_types
  L3_2[A2_2] = A1_2
  if A1_2 then
    L3_2 = A0_2._pause_count
    L3_2 = L3_2 + 1
    A0_2._pause_count = L3_2
  else
    L3_2 = A0_2._pause_count
    L3_2 = L3_2 - 1
    A0_2._pause_count = L3_2
    L4_2 = A0_2
    L3_2 = A0_2._try_show_message_notice
    L3_2(L4_2)
  end
end
L2_1._pause_notice = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_show_message_notice
  L2_2(L3_2)
end
L2_1._on_receive_new_message = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_go
  L2_2(L3_2)
end
L2_1._on_show_phone_notice_page = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.MessageNoticesToShow
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_normal_view
  L1_2(L2_2)
end
L2_1._clear_cached_message = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_normal_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_message_notice
  L1_2(L2_2)
end
L2_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_message_notice
  L1_2(L2_2)
end
L2_1._on_hide_loading_page = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsLoading
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.ToastModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.has_toast_in_queue
  L4_2 = "FullScreenToast"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._pause_notice
    L4_2 = true
    L5_2 = L6_1.FullScreenToast
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayToEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._can_start_message_notice
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._is_in_notice
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.PlayToEnd
      L3_2 = A0_2._binder
      L3_2 = L3_2.animation
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
    end
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._do_show_message_notice
  L2_2(L3_2)
  L2_2 = true
  return L2_2
end
L2_1._try_show_message_notice = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.MessageNoticesToShow
  L1_2 = L1_2.Count
  L1_2 = A0_2._is_in_notice
  L1_2 = A0_2._pause_count
  L2_2 = A0_2
  L1_2 = A0_2._is_message_entrance_visible
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._owner_is_top_page
    L1_2 = 0 < L1_2 and L1_2
  end
  return L1_2
end
L2_1._can_start_message_notice = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLeftTopHudFuncEntranceList
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.Contains
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.HudType
  L4_2 = L4_2.Message
  return L2_2(L3_2, L4_2)
end
L2_1._is_message_entrance_visible = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.MessageNoticesToShow
  L1_2 = L1_2[0]
  A0_2._notifying_notice = L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MessageGroupExcelTable
  L2_2 = L2_2.GetGroupBySection
  L3_2 = L1_2.SectionID
  L2_2 = L2_2(L3_2)
  A0_2._notifying_notice_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_notice_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._protect_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._protect_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L2_1._do_show_message_notice = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._protect_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._protect_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = L0_1.MessageNoticesToShow
  L2_2 = L1_2
  L1_2 = L1_2.Remove
  L3_2 = A0_2._notifying_notice
  L1_2(L2_2, L3_2)
end
L2_1._on_protect_end = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._notifying_notice_id = nil
  A0_2._is_in_notice = false
  L2_2 = A0_2
  L1_2 = A0_2._try_show_message_notice
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_normal_view
    L1_2(L2_2)
  end
end
L2_1._on_notice_finish = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_icon
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MessageContactData
  L2_2 = L2_2.GetShownContactRow
  L3_2 = A1_2.SenderContactID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_contact_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_preview
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A1_2.Preview
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIAnimationUtils
  L3_2 = L3_2.PlayFromBegin
  L4_2 = A0_2._binder
  L4_2 = L4_2.animation
  L5_2 = L3_1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._count_down_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._count_down_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
  A0_2._is_in_notice = true
  A0_2._is_in_anime = true
end
L2_1._setup_notice_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_icon
  L1_2(L2_2)
  A0_2._notifying_notice = nil
  L1_2 = A0_2._is_in_anime
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._is_in_notice = false
  A0_2._is_in_anime = false
end
L2_1._setup_normal_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.CheckGotoType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.PhoneNotice
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._notifying_notice_id
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.PhoneNotice.PhoneNoticePage"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2._notifying_notice_id = nil
end
L2_1._on_btn_go = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._pause_notice
  L4_2 = A1_2
  L5_2 = L6_1.Tutorial
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_tutorial_clean = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "FullScreenToast" then
    L3_2 = A0_2
    L2_2 = A0_2._pause_notice
    L4_2 = false
    L5_2 = L6_1.FullScreenToast
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1._on_toast_empty = L7_1
return L2_1
