local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.PhoneNotice.PhoneNoticePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneNotice.PhoneNoticeItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneNotice.PhoneNoticeItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = "Root/Contents/Content/DialogFrame/Bottom/KeyMapHintRoot"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PhoneNoticePage"
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
  L3_2 = L3_2.PhoneNoticePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._notice_datas = L1_2
  A0_2._is_displaying_main = true
  A0_2._init_group_id = nil
  A0_2._can_exit = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.RefreshSchedule
  L2_2(L3_2)
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = L0_1.RingingMessageGroupID
  end
  A0_2._init_group_id = L2_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = nil
  L4_2 = nil
  L5_2 = L1_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageRefreshContact
  L4_2 = A0_2._on_refresh_contact
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneNoticeNewMessage
  L4_2 = A0_2._on_new_message
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageRefreshSection
  L4_2 = A0_2._refresh_reply_view
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
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reply_bg
  L4_2 = A0_2._on_close_reply
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.set_close_callback
  L3_2 = A0_2._on_close_reply
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.set_can_exit_callback
  L3_2 = A0_2._on_can_exit_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.set_interruptible
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.pasue_toast
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MessageSituationChanged
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MessageSituationType
  L3_2 = L3_2.Notice
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.pasue_toast
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_main_view
  L2_2(L3_2)
  L2_2 = A0_2._is_displaying_main
  if L2_2 then
    L2_2 = A0_2._notice_datas
    L2_2 = #L2_2
    if L2_2 == 0 then
      L3_2 = A0_2
      L2_2 = A0_2.exit
      L2_2(L3_2)
    end
  end
end
L2_1._on_refresh_contact = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_main_view
  L1_2(L2_2)
end
L2_1._on_new_message = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._should_init_to_reply
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_message_clicked
    L3_2 = A0_2._init_group_id
    L1_2(L2_2, L3_2)
    A0_2._init_group_id = nil
  else
    L2_2 = A0_2
    L1_2 = A0_2._do_setup_view
    L1_2(L2_2)
  end
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._init_group_id
  L1_2 = L1_2 ~= nil
  return L1_2
end
L2_1._should_init_to_reply = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_cur_selected_object
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_main
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_displaying_main
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_displaying_main
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_displaying_main
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_main_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_reply_view
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_shortcut_hint
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L2_1._do_setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_message_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list_view
  L1_2(L2_2)
end
L2_1._setup_main_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._group_id
  L1_2(L2_2, L3_2)
end
L2_1._setup_reply_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_displaying_main
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_message_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list_view
  L1_2(L2_2)
end
L2_1._refresh_main_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_displaying_main
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reply
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L1_2(L2_2)
end
L2_1._refresh_reply_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_displaying_main
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 32
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_reply
    L2_2 = L1_2
    L1_2 = L1_2.refresh_short_cut_hint
    L1_2(L2_2)
  end
end
L2_1._setup_shortcut_hint = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_displaying_main = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._do_setup_view
  L2_2(L3_2)
end
L2_1._switch_mode = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._notice_datas = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPhoneNotices
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._notice_datas
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._sort_message
  L2_2(L3_2)
end
L2_1._refresh_message_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._notice_datas
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.HasBattle
    L3_3 = A1_3.HasBattle
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.HasBattle
      return L2_3
    end
    L2_3 = A0_3.HasLinkMission
    L3_3 = A1_3.HasLinkMission
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.HasLinkMission
      return L2_3
    end
    L2_3 = A0_3.HasLinkMission
    if L2_3 then
      L3_3 = A0_3
      L2_3 = A0_3.GetMissionPriority
      L2_3 = L2_3(L3_3)
      L4_3 = A1_3
      L3_3 = A1_3.GetMissionPriority
      L3_3 = L3_3(L4_3)
      if L2_3 ~= L3_3 then
        L4_3 = L2_3 < L3_3
        return L4_3
      end
    end
    L2_3 = A0_3.LastTime
    L3_3 = A1_3.LastTime
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.LastTime
      L3_3 = A1_3.LastTime
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L2_3 = A0_3.ID
    L3_3 = A1_3.ID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L2_1._sort_message = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L1_2.ForbidRepeatUpdateCheck = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._notice_datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._refresh_list_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._group_change_callback = A1_2
  A0_2._group_change_handler = A2_2
end
L2_1.register_group_change_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PhoneNoticeItemPanel
    L8_2 = G
    L8_2 = L8_2.PhoneNoticeItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._notice_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_click_callback
  L8_2 = A0_2._on_message_clicked
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._group_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._switch_mode
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L2_1._on_message_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._init_group_id
  if L1_2 ~= 0 then
    L1_2 = A0_2._init_group_id
    if L1_2 ~= nil then
      goto lbl_12
    end
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HasNotice
  L1_2 = L1_2(L2_2)
  ::lbl_12::
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._switch_mode
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L2_1._on_close_reply = L3_1
function L3_1(A0_2, A1_2)
  A0_2._can_exit = A1_2
end
L2_1._on_can_exit_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._can_exit
  if L1_2 then
    L1_2 = A0_2._is_displaying_main
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._on_close_reply
      L1_2(L2_2)
    end
  end
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_shortcut_hint
  L2_2(L3_2)
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._is_displaying_main
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_view_item
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      if L2_2 ~= nil then
        goto lbl_21
      end
    end
    L2_2 = nil
    do return L2_2 end
    ::lbl_21::
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_reply
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L2_1.get_first_selected_object = L3_1
return L2_1
