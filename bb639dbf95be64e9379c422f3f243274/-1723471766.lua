local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureBgPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.ShareUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TravelBrochureModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TravelBrochureMainChapterPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochurePasterAdded
  L4_2 = A0_2._on_paster_added
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochurePasterRemoved
  L4_2 = A0_2._on_paster_removed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochurePasterSynced
  L4_2 = A0_2._on_paster_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDataSynced
  L4_2 = A0_2._on_paster_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureChoiceSelected
  L4_2 = A0_2._on_choice_selected
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_share
  L4_2 = A0_2._on_btn_share
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.register_preview_callback
  L3_2 = A0_2._on_preview_shown
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_container
  L2_2 = L1_2
  L1_2 = L1_2.register_count_change_callback
  L3_2 = A0_2._on_paster_count_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TravelBrochureBgPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_bg = L1_2
  L1_2 = A0_2._panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.init_node
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_back
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_front
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._button_mutex = L1_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseMutex
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._button_mutex
  if L1_2 then
    L1_2 = A0_2._button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._button_mutex = nil
  end
end
L1_1._on_unload = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._share_view_callback = A1_2
  A0_2._share_view_handler = A2_2
end
L1_1.register_share_view_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_container
  L3_2 = L2_2
  L2_2 = L2_2.hide_cursor
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_share_hide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_bg
  L3_2 = L2_2
  L2_2 = L2_2.show_progress
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_share_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._obstacle_node = A1_2
end
L1_1.set_obstacle_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._diary_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._diary_data
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_share
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._diary_data
  L4_2 = L4_2.HasChosen
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_choice
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._diary_data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._diary_data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_bg
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._diary_data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_bg
  L3_2 = L2_2
  L2_2 = L2_2.get_obstacle_nodes
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = A0_2._obstacle_node
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_container
  L4_2 = L3_2
  L3_2 = L3_2.set_obstacle_node
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_container
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._diary_data
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_clear_btn
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.play_first_in
  L1_2(L2_2)
end
L1_1.play_first_in = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_container
  L3_2 = L2_2
  L2_2 = L2_2.add_paster
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_clear_btn
  L2_2(L3_2)
end
L1_1._on_paster_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_clear_btn
  L1_2(L2_2)
end
L1_1._on_paster_removed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_container
  L4_2 = L3_2
  L3_2 = L3_2.get_paster_count
  L3_2 = L3_2(L4_2)
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
end
L1_1._refresh_clear_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.ID
  if A1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_container
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._diary_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_clear_btn
  L2_2(L3_2)
end
L1_1._on_paster_synced = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.ID
  if A1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_share
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._diary_data
  L4_2 = L4_2.HasChosen
  L2_2(L3_2, L4_2)
end
L1_1._on_choice_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_TravelBrochure_DeleteAll"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.NIJNBICAPPA
      L3_3 = L3_3.IIODPMAOLCO
      L1_3(L2_3, L3_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.NetworkManager
      L1_3 = L1_3.OOGONDGGKMI
      L2_3 = L1_3
      L1_3 = L1_3.LMLNPMIOADP
      L3_3 = A0_2._diary_data
      L3_3 = L3_3.ID
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_clear = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = 0.5
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureSavePaster
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_share
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_share = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._share_view_callback
  L3_2 = A0_2._share_view_handler
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ShareUtils
  L1_2 = L1_2.ShareCurFrame
  L2_2 = nil
  L3_2 = nil
  L4_2 = A0_2._on_capture_finished
  L5_2 = A0_2
  L6_2 = nil
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.ShareSource
  L7_2 = L7_2.TravelBrochure
  L8_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1._do_share = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._share_view_callback
  L3_2 = A0_2._share_view_handler
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_capture_finished = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.incontrol_tip_back
  L3_2 = not A1_2
  L2_2.IsShowTip = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_share
  L3_2 = not A1_2
  L2_2.IsShowTip = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_tip_clear
  L3_2 = not A1_2
  L2_2.IsShowTip = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_btn_share
  L3_2 = not A1_2
  L2_2.ActionEnabled = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.incontrol_btn_clear
  L3_2 = not A1_2
  L2_2.ActionEnabled = L3_2
end
L1_1._on_preview_shown = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_clear_btn
  L1_2(L2_2)
end
L1_1._on_paster_count_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_choice
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 163
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 166
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_choice
    L5_2 = L4_2
    L4_2 = L4_2.get_scroll_rect
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L1_1.refresh_short_cut_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L1_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2._is_showing_reward
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  return L1_2
end
L1_1._can_control_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2._show_reward
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_control_exit_fail = L2_1
return L1_1
