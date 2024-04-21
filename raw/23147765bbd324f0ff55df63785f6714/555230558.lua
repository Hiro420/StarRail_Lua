local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Mail.MailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mail.MailDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mail.MailDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mail.MailInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mail.MailInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.MailModule
L0_1 = L0_1.Instance
L1_1 = "Mail_delete_all_confirm"
L2_1 = "Mail_receive_all_null"
L3_1 = "Mail_delete_all_null"
L4_1 = "Mail_full"
L5_1 = "Mail_Receive_OptionalReward"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "MailPage"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
L6_1._drag_load_height = 20
L6_1._load_mail_count = 100
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.MailPageBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._mail_table = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._mail_detail_Panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_leave_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._mail_detail_Panel
    L3_2 = L2_2
    L2_2 = L2_2.has_gamepad_link_in_sight
    return L2_2(L3_2)
  end
end
L6_1._is_can_to_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.delete_all_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_all_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.delete_all_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_all_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1.setup_in_control_button_enable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L6_1._init_ui_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._request_load_more_mail
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 63
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MailDetailPanel
  L4_2 = G
  L4_2 = L4_2.MailDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mail_detail_Panel = L1_2
  L1_2 = A0_2._mail_detail_Panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_delete
  L4_2 = A0_2._on_btn_delete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get_all
  L4_2 = A0_2._on_btn_get_all
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_new_mail_hint
  L4_2 = A0_2._on_btn_new_mail_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MailUpdated
  L4_2 = L6_1._on_mail_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MailGetItems
  L4_2 = L6_1._on_mail_get_items
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MailNoticeNew
  L4_2 = L6_1._on_mail_notice_new
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_mail_page
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pull_refresh_control
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_item
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._mail_table
    if L0_3 ~= nil then
      L0_3 = A0_2._mail_table
      L0_3 = #L0_3
      L1_3 = L0_1
      L2_3 = L1_3
      L1_3 = L1_3.get_total_num
      L1_3 = L1_3(L2_3)
      if not (L0_3 < L1_3) then
        goto lbl_14
      end
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._request_load_more_mail
    L0_3(L1_3)
    ::lbl_14::
  end
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_animation
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayToEnd
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_animation
      L3_2 = "NewMailHintFadeout"
      L1_2(L2_2, L3_2)
    end
  end
end
L6_1._on_unload = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_item
  L1_2(L2_2)
  A0_2._mail_table = nil
  A0_2._cur_mail_ID = nil
  A0_2._drag_load_state = nil
  A0_2._cur_panel = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_func_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mail_list_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_current_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._init_mail_page = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_is_expired
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L6_1._get_unexpired_mails = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    if L7_2 == A0_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L6_1._is_cur_mail_exist = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.get_mail_data
  L1_2 = L1_2(L2_2)
  A0_2._mail_table = L1_2
  L1_2 = A0_2._mail_table
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._cur_mail_ID
    if nil ~= L1_2 then
      L1_2 = L6_1._is_cur_mail_exist
      L2_2 = A0_2._cur_mail_ID
      L3_2 = A0_2._mail_table
      L1_2 = L1_2(L2_2, L3_2)
    end
    if not L1_2 then
      L1_2 = A0_2._mail_table
      L1_2 = L1_2[1]
      L1_2 = L1_2.ID
      A0_2._cur_mail_ID = L1_2
    end
  else
    A0_2._cur_mail_ID = nil
  end
end
L6_1._refresh_mail_table = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L6_1._play_fade_in = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.get_has_new_mail
  return L1_2(L2_2)
end
L6_1._has_new_mail_not_shown = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._new_mail_notice_showing
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._has_new_mail_not_shown
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._request_load_more_mail
      L2_2(L3_2)
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2._new_mail_notice_fade_out
    L2_2(L3_2)
    A0_2._cur_mail_ID = nil
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mail_table
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._mail_table
  L4_2 = A0_2._get_cur_mailData
  L5_2 = A0_2._cur_mail_ID
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_item
    L4_2 = L3_2
    L3_2 = L3_2.MovePanelToItemIndex
    L5_2 = 0
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_item
    L4_2 = L3_2
    L3_2 = L3_2.MovePanelToItemIndex
    L5_2 = L2_2 - 1
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.force_set_first_navigation_target
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._play_fade_in
  L3_2(L4_2)
end
L6_1._on_mail_updated = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_getting_all_attachment
  if L2_2 then
    A0_2._is_getting_all_attachment = false
    if nil ~= A1_2 then
      L2_2 = #A1_2
      if 0 < L2_2 then
        L2_2 = G
        L2_2 = L2_2.RewardUtils
        L2_2 = L2_2.show_reward_dialog
        L3_2 = A1_2
        L2_2 = L2_2(L3_2)
        if L2_2 ~= nil then
          L4_2 = L2_2
          L3_2 = L2_2.set_exit_callback
          function L5_2()
            local L0_3, L1_3
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3._check_optional_reward_and_show_hint
            L0_3(L1_3)
          end
          L3_2(L4_2, L5_2)
        end
    end
    else
      L3_2 = A0_2
      L2_2 = A0_2._check_optional_reward_and_show_hint
      L2_2(L3_2)
    end
  elseif nil ~= A1_2 then
    L2_2 = #A1_2
    if 0 < L2_2 then
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.show_reward_dialog
      L3_2 = A1_2
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L6_1._on_mail_get_items = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.has_optional_reward_mail
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  end
end
L6_1._check_optional_reward_and_show_hint = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._new_mail_notice_showing
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._new_mail_notice_fade_in
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_total_num
  L2_2(L3_2)
end
L6_1._on_mail_notice_new = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._new_mail_notice_showing = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "NewMailHintFadein"
  L1_2(L2_2, L3_2)
end
L6_1._new_mail_notice_fade_in = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._new_mail_notice_showing = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "NewMailHintFadeout"
  L1_2(L2_2, L3_2)
end
L6_1._new_mail_notice_fade_out = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.KPNAPADMIBG
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.request_load_more_mail
  L3_2 = L6_1._load_mail_count
  L1_2(L2_2, L3_2)
end
L6_1._request_load_more_mail = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_total_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_mail
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mail_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_status
  L1_2(L2_2)
end
L6_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.get_total_num
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_func_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._mail_table
  L4_2 = #L4_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mail_list_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == 0
  L2_2(L3_2, L4_2)
end
L6_1._refresh_total_num = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_mailData
  L3_2 = A0_2._cur_mail_ID
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_detail_panel
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if nil ~= L1_2 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.read_mail
    L4_2 = L1_2.ID
    L2_2(L3_2, L4_2)
  end
end
L6_1._refresh_cur_mail = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "[Mail] _refresh_mail_list"
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._mail_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L6_1._refresh_mail_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_get_all
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.has_reward_mail
  L2_2 = L2_2(L3_2)
  L1_2.interactable = L2_2
end
L6_1._refresh_btn_status = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if nil == A1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = pairs
  L3_2 = A0_2._mail_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ID
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L6_1._get_cur_mailData = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.MailInfoRowPanel
    L10_2 = G
    L10_2 = L10_2.MailInfoRowPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A0_2._mail_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = L6_2
  L8_2 = L6_2.bind_mail_expire_callback
  L10_2 = A0_2
  L11_2 = A0_2._expire_callback
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L6_2
  L8_2 = L6_2.setup_view
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L6_2
  L8_2 = L6_2.bind_click
  L10_2 = A0_2
  L11_2 = A0_2._on_mail_info_row_click
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L6_2
  L8_2 = L6_2.set_selected
  L10_2 = A0_2._cur_mail_ID
  L11_2 = L7_2.ID
  L10_2 = L10_2 == L11_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._cur_mail_ID
  L9_2 = L7_2.ID
  if L8_2 == L9_2 then
    A0_2._cur_panel = L6_2
  end
  return L5_2
end
L6_1._on_item_changed = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A1_2 then
    L2_2 = A0_2._mail_detail_Panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_detail
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L6_1._refresh_detail_panel = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._cur_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_mail_ID
    L4_2 = A0_2._cur_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_mail_id
    L4_2 = L4_2(L5_2)
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._refresh_panel_with_mail_id
      L5_2 = A0_2._cur_panel
      L6_2 = A0_2._cur_mail_ID
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = A0_2._cur_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.read_mail
  L5_2 = A1_2.ID
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_panel_with_mail_id
  L5_2 = A2_2
  L6_2 = A1_2.ID
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.ID
  A0_2._cur_mail_ID = L3_2
  A0_2._cur_panel = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_total_num
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_cur_mail
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_btn_status
  L3_2(L4_2)
end
L6_1._on_mail_info_row_click = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.get_mail_data_by_id
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = A1_2
    L4_2 = A1_2.setup_view
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L6_1._refresh_panel_with_mail_id = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_btn_tips = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._has_new_mail_not_shown
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._request_load_more_mail
    L1_2(L2_2)
  end
end
L6_1._on_btn_new_mail_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._on_btn_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.has_reward_mail
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._has_only_optional_reward_mail
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
    return
  end
  A0_2._is_getting_all_attachment = true
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.get_all_attachment
  L1_2(L2_2)
end
L6_1._on_btn_get_all = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = L1_1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = L0_1
      L2_3 = L1_3
      L1_3 = L1_3.delete_mail_read
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_btn_delete = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.get_mail_data
  L1_2 = L1_2(L2_2)
  A0_2._mail_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L6_1._expire_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = A0_2._mail_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.has_reward
    L7_2 = L7_2(L8_2)
    L9_2 = L6_2
    L8_2 = L6_2.has_optional_reward
    L8_2 = L8_2(L9_2)
    if L7_2 and not L8_2 then
      L9_2 = false
      return L9_2
    end
    if not L1_2 then
      L1_2 = L8_2
    end
  end
  return L1_2
end
L6_1._has_only_optional_reward_mail = L7_1
return L6_1
