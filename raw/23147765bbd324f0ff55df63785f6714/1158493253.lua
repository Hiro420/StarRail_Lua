local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.MessageMainPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = "PhoneMessagePage_MessageSwitch"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MessageMainPage"
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
  L3_2 = L3_2.MessageMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
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
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PersonalizeChatBubbleCurrentChanged
  L4_2 = A0_2._on_refresh_message
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bubble
  L4_2 = A0_2._on_btn_bubble
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_contact_list
  L2_2 = L1_2
  L1_2 = L1_2.register_group_change_callback
  L3_2 = A0_2._on_group_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_contact_list
  L2_2 = L1_2
  L1_2 = L1_2.register_filtered_callback
  L3_2 = A0_2._on_contact_filtered
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_chat
  L2_2 = L1_2
  L1_2 = L1_2.register_move_callback
  L3_2 = A0_2._on_history_moved
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_chat
  L2_2 = L1_2
  L1_2 = L1_2.register_special_selected_callback
  L3_2 = A0_2._on_special_selected
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
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
  L3_2 = L3_2.Main
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhoneMessageGroupChecked
  L3_2 = A0_2._current_group_id
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PhoneMessageTryFinishGroup
  L3_2 = A0_2._current_group_id
  L1_2(L2_2, L3_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_message_history_dirty
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_chat
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._current_group_id
    L1_2(L2_2, L3_2)
    A0_2._is_message_history_dirty = false
  end
  L1_2 = A0_2._need_reset_navigation
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L2_2 = L1_2
    L1_2 = L1_2.SetSelectedGameObject
    L3_2 = nil
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    if L1_2 then
      L3_2 = A0_2
      L2_2 = A0_2.save_navigation_target
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.force_set_default_navigation_target
      L1_2(L2_2)
    end
  end
end
L2_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_contact_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_in_chat
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bubble_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._in_chat = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_not_chat
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_in_chat
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._set_in_chat = L3_1
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
end
L2_1._setup_bubble_btn = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._set_in_chat
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._current_group_id
  L3_2 = L3_2 ~= A2_2
  A0_2._current_group_id = A2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_contact_info
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2.ID
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.CoroutineUtils
  L4_2 = L4_2.InvokeNextFrame
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = L3_2
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_switch
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L2_3 = L1_1
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_chat
      L1_3 = L0_3
      L0_3 = L0_3.setup_view
      L2_3 = A0_2._current_group_id
      L0_3(L1_3, L2_3)
    end
  end
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.PhoneMessageGroupChecked
  L6_2 = A0_2._current_group_id
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.PhoneMessageTryFinishGroup
  L6_2 = A0_2._current_group_id
  L4_2(L5_2, L6_2)
end
L2_1._on_group_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_in_chat
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  else
    A0_2._need_reset_navigation = true
  end
end
L2_1._on_contact_filtered = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_message_history_dirty = true
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._is_message_history_dirty
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_chat
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._current_group_id
    L1_2(L2_2, L3_2)
    A0_2._is_message_history_dirty = false
  end
end
L2_1._on_refresh_message = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ChatBubble.ChatBubbleSelectDialog"
  L1_2(L2_2)
end
L2_1._on_btn_bubble = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L2_1._on_history_moved = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L2_1._on_special_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_contact_list
    L2_2 = L1_2
    L1_2 = L1_2.try_back_by_controller
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
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
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_contact_list
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_chat
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      L2_2 = L2_2(L3_2)
      if L2_2 == nil then
        L3_2 = A0_2._binder
        L3_2 = L3_2.panel_chat
        L4_2 = L3_2
        L3_2 = L3_2.get_empty_selected_object
        return L3_2(L4_2)
      else
        return L2_2
      end
    end
  end
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._in_chat
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_contact_list
      L3_2 = L2_2
      L2_2 = L2_2.can_enter_group_zoom
      L4_2 = A0_2._current_group_id
      L2_2 = L2_2(L3_2, L4_2)
    end
    return L2_2
  end
end
L2_1._is_can_to_zoom = L3_1
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
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group_zoom_1
      L2_2.alpha = 0.5
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L2_2(L3_2)
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_short_cuts
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._refresh_short_cut_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L2_2 = {}
    L3_2 = "ActionGroup_Select"
    L4_2 = "ActionGroup_Return"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_chat
      L3_2 = L2_2
      L2_2 = L2_2.get_short_cuts
      L4_2 = false
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.index_of_item
      L4_2 = L2_2
      L5_2 = "ActionGroup_Return"
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 == nil then
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = L2_2
        L5_2 = "ActionGroup_Return"
        L3_2(L4_2, L5_2)
      end
      return L2_2
    end
  end
  L2_2 = {}
  return L2_2
end
L2_1._get_short_cuts = L3_1
return L2_1
