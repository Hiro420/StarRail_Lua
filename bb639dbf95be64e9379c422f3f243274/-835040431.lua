local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportOrderInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyMapZoomSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportVirtualCursorPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransport"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = 20
L3_1 = 2760
L4_1 = 0.15
L5_1 = 200
L6_1 = 101
L7_1 = 102
L8_1 = 60
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyTransportMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._cur_show_layer = 1
  A0_2._is_trigger_alley_transport_video = false
  A0_2._is_playing_alley_transport_video = false
  A0_2._is_set_map_slider_value = false
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetUnlockAlleyMapLayerList
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._unlock_map_layer_list = L1_2
  L1_2 = A0_2._unlock_map_layer_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._unlock_map_layer_list
    L1_2 = L1_2[1]
    A0_2._cur_show_layer = L1_2
  end
  A0_2._ray_cast_hit_transform = nil
  A0_2._dock_rect = nil
  A0_2._delta_x = 0
  A0_2._delta_y = 0
  A0_2._default_map_slider_value = 0
  A0_2._is_can_focus_camera = false
  A0_2._is_lock_camera = false
  A0_2._is_trigger_press_effect = false
  A0_2._is_show_tip_dialog = false
  A0_2._cur_top_panel_state = nil
  A0_2._last_show_buff_pop_up_time = 0
  A0_2._ship_transport_send = false
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AlleyTransportUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._alley_transport_ui3d = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AlleyTransportRouteState
  L1_2 = L1_2.Edit
  A0_2._cur_alley_transport_route_state = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowTimeStamp
  A0_2._start_time_stamp = L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_draw_call_back
  L3_2 = A0_2._on_draw_call_back
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_route_state_change_call_back
  L3_2 = A0_2._on_route_state_change_call_back
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_zoom_callback
  L3_2 = A0_2._on_zoom_callback
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_edit_area_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_edit_area
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_virtual_cursor_root
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.set_virtual_cursor_root
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyTransportShowLayer
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2 = L3_2.is_use_by_tutorial
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.AlleyTransport
    L2_2 = L3_2.appoint_show_layer_by_mission
  end
  if not (0 < L2_2) or not L2_2 then
    L2_2 = 1
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAlleyMapIDByLayer
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGenerateAlleyMapGridData
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L2_2
  L5_2 = G
  L5_2 = L5_2.AlleyTransport
  L5_2 = L5_2.is_use_by_tutorial
  if L5_2 then
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetNewTipShopIDByMapID
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
    if not (0 < L4_2) or not L4_2 then
      L4_2 = L2_2
    end
  end
  L5_2 = G
  L5_2 = L5_2.AlleyTransport
  L5_2 = L5_2.get_camera_setting
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_slider_value_by_pos_z
  L8_2 = L5_2.posZ
  L6_2 = L6_2(L7_2, L8_2)
  A0_2._default_map_slider_value = L6_2
  L6_2 = A0_2._alley_transport_ui3d
  L7_2 = L6_2
  L6_2 = L6_2.setup_map_dock_locked_view
  L6_2(L7_2)
  L6_2 = A0_2._alley_transport_ui3d
  L7_2 = L6_2
  L6_2 = L6_2.set_camera_origin_pos
  L8_2 = L5_2.posX
  L9_2 = L5_2.posY
  L10_2 = L5_2.posZ
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._alley_transport_order_info_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._update_lock_camera_state
  L6_2(L7_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.CoroutineUtils
  L6_2 = L6_2.InvokeAfterFrames
  L7_2 = G
  L7_2 = L7_2.AlleyTransport
  L7_2 = L7_2.invoke_after_frames
  function L8_2()
    local L0_3, L1_3
    L0_3 = A0_2._is_show_tip_dialog
    if L0_3 == false then
      L0_3 = A0_2._is_can_focus_camera
      if L0_3 == false then
        L0_3 = A0_2._alley_transport_ui3d
        L1_3 = L0_3
        L0_3 = L0_3.switch_to_edit_camera
        L0_3(L1_3)
        A0_2._is_can_focus_camera = true
      end
    end
  end
  L6_2(L7_2, L8_2)
end
L0_1._setup_view = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L8_1
  L2_2 = L2_2 - A1_2
  L3_2 = A0_2._alley_transport_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.get_alley_transport_handler
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_pc_or_ps_or_mobile_gamepad_mode
    L4_2 = L4_2()
    if L4_2 then
      L4_2 = L3_2.MaxCameraDistance
      L4_2 = L4_2 - L2_2
      L5_2 = L3_2.MaxCameraDistance
      L6_2 = L3_2.MinCameraDistance
      L5_2 = L5_2 - L6_2
      L4_2 = L4_2 / L5_2
      return L4_2
    else
      L4_2 = L3_2.MobileMaxCameraDistance
      L4_2 = L4_2 - L2_2
      L5_2 = L3_2.MobileMaxCameraDistance
      L6_2 = L3_2.MobileMinCameraDistance
      L5_2 = L5_2 - L6_2
      L4_2 = L4_2 / L5_2
      return L4_2
    end
  end
  L4_2 = 0
  return L4_2
end
L0_1._get_slider_value_by_pos_z = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_show_tip_dialog
  if L1_2 == true then
    L1_2 = A0_2._is_can_focus_camera
    if L1_2 == false then
      L1_2 = A0_2._alley_transport_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.switch_to_edit_camera
      L1_2(L2_2)
      A0_2._is_can_focus_camera = true
    end
  end
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.try_update_buff_event_animator_popup_dot
  L1_2(L2_2)
  L1_2 = A0_2._virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._virtual_cursor_panel
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._update_virtual_cursor_selected_object
        L3_2 = A0_2._virtual_cursor_panel
        L4_2 = L3_2
        L3_2 = L3_2.get_virtual_cursor_root
        L3_2, L4_2 = L3_2(L4_2)
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
end
L0_1._on_return_to_top = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L2_2 = L1_2
    L1_2 = L1_2.SetSelectedGameObject
    L3_2 = nil
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_leave_special_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._virtual_cursor_panel
    L2_2 = L1_2
    L1_2 = L1_2.custom_safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._virtual_cursor_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_in_control_input_switch = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_AlleyMapMove"
  L5_2 = "ActionGroup_AlleyMapDraw"
  L6_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quick_move
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyTransportVirtualCursorPanel
  L4_2 = G
  L4_2 = L4_2.AlleyTransportVirtualCursorPanelBinder
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_edit_panel
  L5_2 = L5_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._virtual_cursor_panel = L1_2
  L1_2 = A0_2._virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_virtual_cursor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_callback
  L3_2 = A0_2
  L4_2 = A0_2._tick_virtual_cursor_select_object
  L5_2 = A0_2._on_in_control_press_call_back
  L6_2 = A0_2._on_in_control_release_call_back
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch
  L4_2 = A0_2._on_btn_switch_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_complete
  L4_2 = A0_2._on_btn_complete_line
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_move
  L4_2 = A0_2._on_btn_quick_move_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyTransportOrderInfoPanel
  L4_2 = G
  L4_2 = L4_2.AlleyTransportOrderInfoPanelBinder
  L5_2 = A0_2._appoint_shop_id
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._alley_transport_order_info_panel = L1_2
  L1_2 = A0_2._alley_transport_order_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_order_info
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._alley_transport_order_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_item_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyMapZoomSliderPanel
  L4_2 = G
  L4_2 = L4_2.AlleyMapZoomSliderPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._alley_map_zoom_slider_panel = L1_2
  L1_2 = A0_2._alley_map_zoom_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._alley_map_zoom_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_slider_value_change_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_slider_value_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyTransportDrawFailure
  L4_2 = A0_2._on_alley_transport_draw_failure
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleySendLogisticsGameSuccess
  L4_2 = A0_2._on_alley_send_logistics_success
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyPlacingShipFinish
  L4_2 = A0_2._on_alley_placing_ship_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyTransportFocusCamera
  L4_2 = A0_2._on_alley_transport_focus_camera
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyTransportEnergyHint
  L4_2 = A0_2._on_alley_transport_energy_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialBlockClick
  L4_2 = A0_2._on_tutorial_block_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyGetSaveLogisticsMapSuccess
  L4_2 = A0_2._on_alley_get_save_logistics_map_success
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchDown
  L4_2 = A0_2._on_touch_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchUp
  L4_2 = A0_2._on_touch_up
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_transport_video
  L2_2 = L1_2
  L1_2 = L1_2.register_video_finish
  L3_2 = A0_2._on_transport_video_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  A0_2._adv_audio_mgr = L2_2
  L2_2 = A0_2._adv_audio_mgr
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L2_2 = L2_2.AudioConfig
    L2_2 = L2_2.MenuBGMStates
    L3_2 = L2_2
    L2_2 = L2_2.get_Item
    L4_2 = "StateAlleyTransport"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._adv_audio_mgr
    L4_2 = L3_2
    L3_2 = L3_2.SwitchUIMenuBGM
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoLuaCallbackTick
  L2_2 = L2_2.Get
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.SetLuaCallback
  L5_2 = A0_2._custom_tick
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.get_first_dock_icon_game_object
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TutorialGuideUtils
    L2_2 = L2_2.GetScreenRectByNode
    L3_2 = L1_2.transform
    L2_2 = L2_2(L3_2)
    A0_2._dock_rect = L2_2
    L2_2 = A0_2._dock_rect
    L2_2 = L2_2.center
    L3_2 = L2_2.x
    if not (L3_2 < 0) then
      L3_2 = L2_2.x
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Screen
      L4_2 = L4_2.width
      if not (L3_2 > L4_2) then
        L3_2 = L2_2.y
        if not (L3_2 < 0) then
          L3_2 = L2_2.y
          L4_2 = CS
          L4_2 = L4_2.UnityEngine
          L4_2 = L4_2.Screen
          L4_2 = L4_2.height
          if not (L3_2 > L4_2) then
            goto lbl_151
          end
        end
      end
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_quick_move
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_quick_move
    L3_2 = L3_2.transform
    L3_2 = L3_2.rect
    L3_2 = L3_2.width
    L3_2 = L3_2 / 2
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_quick_move
    L4_2 = L4_2.transform
    L4_2 = L4_2.rect
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_edit_area
    L5_2 = L5_2.transform
    L5_2 = L5_2.rect
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L5_2 = L5_2 - L3_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_edit_area
    L6_2 = L6_2.transform
    L6_2 = L6_2.rect
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L6_2 = L6_2 - L4_2
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.RectTransformUtility
    L7_2 = L7_2.ScreenPointToLocalPointInRectangle
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_edit_area
    L8_2 = L8_2.transform
    L9_2 = L2_2
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.GlobalVars
    L10_2 = L10_2.s_UICamera
    L11_2 = nil
    L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L9_2 = G
    L9_2 = L9_2.MathUtils
    L9_2 = L9_2.get_clamp
    L10_2 = L8_2.x
    L11_2 = -L5_2
    L12_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = G
    L10_2 = L10_2.MathUtils
    L10_2 = L10_2.get_clamp
    L11_2 = L8_2.y
    L12_2 = -L6_2
    L13_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = A0_2._binder
    L11_2 = L11_2.btn_quick_move
    L11_2 = L11_2.transform
    L12_2 = CS
    L12_2 = L12_2.UnityEngine
    L12_2 = L12_2.Vector3
    L13_2 = L9_2
    L14_2 = L10_2
    L15_2 = 0
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L11_2.localPosition = L12_2
    L11_2 = L2_2.x
    if L11_2 < 0 then
      L11_2 = A0_2._binder
      L11_2 = L11_2.animator_arrow
      L12_2 = L11_2
      L11_2 = L11_2.SetTrigger
      L13_2 = "Left"
      L11_2(L12_2, L13_2)
    else
      L11_2 = L2_2.x
      L12_2 = CS
      L12_2 = L12_2.UnityEngine
      L12_2 = L12_2.Screen
      L12_2 = L12_2.width
      if L11_2 > L12_2 then
        L11_2 = A0_2._binder
        L11_2 = L11_2.animator_arrow
        L12_2 = L11_2
        L11_2 = L11_2.SetTrigger
        L13_2 = "Right"
        L11_2(L12_2, L13_2)
      else
        L11_2 = L2_2.y
        if L11_2 < 0 then
          L11_2 = A0_2._binder
          L11_2 = L11_2.animator_arrow
          L12_2 = L11_2
          L11_2 = L11_2.SetTrigger
          L13_2 = "Down"
          L11_2(L12_2, L13_2)
        else
          L11_2 = L2_2.y
          L12_2 = CS
          L12_2 = L12_2.UnityEngine
          L12_2 = L12_2.Screen
          L12_2 = L12_2.height
          if L11_2 > L12_2 then
            L11_2 = A0_2._binder
            L11_2 = L11_2.animator_arrow
            L12_2 = L11_2
            L11_2 = L11_2.SetTrigger
            L13_2 = "Up"
            L11_2(L12_2, L13_2)
            goto lbl_156
            ::lbl_151::
            L3_2 = A0_2._binder
            L3_2 = L3_2.btn_quick_move
            L4_2 = L3_2
            L3_2 = L3_2.SafeSetActive
            L5_2 = false
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
  ::lbl_156::
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._virtual_cursor_panel
    if L2_2 ~= nil then
      L2_2 = A0_2._virtual_cursor_panel
      L3_2 = L2_2
      L2_2 = L2_2.custom_tick
      L2_2(L3_2)
    end
  end
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.trigger_buff_event_animator_popup_dot
  L2_2(L3_2)
end
L0_1._custom_tick = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_lock_camera
  if L2_2 == false then
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.setup_edit_camera_zoom
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_slider_value_change = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._ship_transport_send
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.NowTimeStamp
  L3_2 = A0_2._start_time_stamp
  L2_2 = L2_2 - L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TrySendLogisticsGameCsReq
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = G
  L7_2 = L7_2.AlleyTransport
  L7_2 = L7_2.is_use_by_tutorial
  L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._ship_transport_send = true
end
L0_1._on_transport_video_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.try_close_finish_toast
  L1_2(L2_2)
  A0_2._is_trigger_alley_transport_video = true
  A0_2._is_playing_alley_transport_video = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_transport_video
  L2_2 = L1_2
  L1_2 = L1_2.play_video
  L4_2 = A0_2
  L3_2 = A0_2._get_transport_video_id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_in_control_button
  L1_2.ActionEnabled = false
end
L0_1.trigger_transport_performance = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  A0_2._is_playing_alley_transport_video = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_transport_video
  L2_2 = L1_2
  L1_2 = L1_2.stop_video
  L1_2(L2_2)
end
L0_1.exit_transport_performance = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = L3_1
  return L1_2
end
L0_1._get_transport_video_id = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.SubmitButtonType
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._virtual_cursor_root
    if L2_2 ~= nil then
      L2_2 = A0_2._alley_transport_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.try_update_buff_event_animator_popup_dot
      L2_2(L3_2)
      L2_2 = A0_2._virtual_cursor_root
      L2_2 = L2_2.localPosition
      L2_2 = L2_2.x
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.UIUtils
      L3_2 = L3_2.UIScaleFactor
      L2_2 = L2_2 * L3_2
      L3_2 = CS
      L3_2 = L3_2.UnityEngine
      L3_2 = L3_2.Screen
      L3_2 = L3_2.width
      L3_2 = L3_2 / 2
      L2_2 = L2_2 + L3_2
      L3_2 = A0_2._virtual_cursor_root
      L3_2 = L3_2.localPosition
      L3_2 = L3_2.y
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIUtils
      L4_2 = L4_2.UIScaleFactor
      L3_2 = L3_2 * L4_2
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Screen
      L4_2 = L4_2.height
      L4_2 = L4_2 / 2
      L3_2 = L3_2 + L4_2
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIUtils
      L4_2 = L4_2.RaycastAllByPointPos
      L5_2 = "UI3D"
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Vector2
      L7_2 = L2_2
      L8_2 = L3_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L5_2 = G
      L5_2 = L5_2.Utils
      L5_2 = L5_2.cs_list_to_table
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L6_2 = #L5_2
      if 0 < L6_2 then
        L6_2 = ipairs
        L7_2 = L5_2
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        for L9_2, L10_2 in L6_2, L7_2, L8_2 do
          L11_2 = G
          L11_2 = L11_2.UtilEngineWrap
          L11_2 = L11_2.IsCsObjectNull
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if not L11_2 then
            L11_2 = G
            L11_2 = L11_2.ComponentExtensions
            L11_2 = L11_2.SafeGetCmpt
            L12_2 = typeof
            L13_2 = CS
            L13_2 = L13_2.UnityEngine
            L13_2 = L13_2.Animator
            L12_2 = L12_2(L13_2)
            L13_2 = L10_2.parent
            L13_2 = L13_2.transform
            L14_2 = ""
            L15_2 = false
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
            if L11_2 then
              L13_2 = L11_2
              L12_2 = L11_2.SetTrigger
              L14_2 = "Press"
              L12_2(L13_2, L14_2)
              L12_2 = CS
              L12_2 = L12_2.RPG
              L12_2 = L12_2.Client
              L12_2 = L12_2.GlobalVars
              L12_2 = L12_2.s_NetworkManager
              L13_2 = L12_2
              L12_2 = L12_2.BCOPLHHHCHM
              L12_2(L13_2)
            end
          end
        end
      end
    end
  end
end
L0_1._on_in_control_click = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.is_loaded
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._alley_transport_ui3d
    L2_2 = L2_2.is_init_finish
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._cur_alley_transport_route_state
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AlleyTransportRouteState
  L3_2 = L3_2.Edit
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.try_update_buff_event_animator_popup_dot
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.RaycastAllByMouseOrTouch
  L3_2 = "UI3D"
  L4_2 = "Ship"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.cs_list_to_table
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = #L3_2
  if 0 < L4_2 then
    L4_2 = A0_2._ray_cast_hit_transform
    if L4_2 == nil then
      L4_2 = L3_2[1]
      A0_2._ray_cast_hit_transform = L4_2
      L4_2 = G
      L4_2 = L4_2.UtilEngineWrap
      L4_2 = L4_2.IsCsObjectNull
      L5_2 = A0_2._ray_cast_hit_transform
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = A0_2._is_trigger_press_effect
        if L4_2 == false then
          L4_2 = G
          L4_2 = L4_2.ComponentExtensions
          L4_2 = L4_2.SafeGetCmpt
          L5_2 = typeof
          L6_2 = CS
          L6_2 = L6_2.UnityEngine
          L6_2 = L6_2.Animator
          L5_2 = L5_2(L6_2)
          L6_2 = A0_2._ray_cast_hit_transform
          L6_2 = L6_2.parent
          L6_2 = L6_2.transform
          L7_2 = ""
          L8_2 = false
          L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
          if L4_2 then
            L6_2 = L4_2
            L5_2 = L4_2.SetTrigger
            L7_2 = "Press"
            L5_2(L6_2, L7_2)
            A0_2._is_trigger_press_effect = true
            L5_2 = CS
            L5_2 = L5_2.RPG
            L5_2 = L5_2.Client
            L5_2 = L5_2.GlobalVars
            L5_2 = L5_2.s_NetworkManager
            L6_2 = L5_2
            L5_2 = L5_2.BCOPLHHHCHM
            L5_2(L6_2)
          end
        end
      end
    end
  else
    L4_2 = A0_2._ray_cast_hit_transform
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.ComponentExtensions
      L4_2 = L4_2.SafeGetCmpt
      L5_2 = typeof
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Animator
      L5_2 = L5_2(L6_2)
      L6_2 = A0_2._ray_cast_hit_transform
      L6_2 = L6_2.parent
      L6_2 = L6_2.transform
      L7_2 = ""
      L8_2 = false
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      if L4_2 then
        L6_2 = L4_2
        L5_2 = L4_2.SetTrigger
        L7_2 = "Normal"
        L5_2(L6_2, L7_2)
      end
      A0_2._ray_cast_hit_transform = nil
    end
  end
end
L0_1._on_touch_down = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.is_loaded
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._alley_transport_ui3d
    L2_2 = L2_2.is_init_finish
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  A0_2._is_trigger_press_effect = false
  L2_2 = A0_2._ray_cast_hit_transform
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.ComponentExtensions
    L2_2 = L2_2.SafeGetCmpt
    L3_2 = typeof
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Animator
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._ray_cast_hit_transform
    L4_2 = L4_2.parent
    L4_2 = L4_2.transform
    L5_2 = ""
    L6_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      L4_2 = L2_2
      L3_2 = L2_2.SetTrigger
      L5_2 = "Normal"
      L3_2(L4_2, L5_2)
    end
    A0_2._ray_cast_hit_transform = nil
  end
end
L0_1._on_touch_up = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.get_camera_pos_z
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._alley_map_zoom_slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_slider_value_without_callback
  L5_2 = A0_2
  L4_2 = A0_2._get_slider_value_by_pos_z
  L6_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_zoom_callback = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.SubmitButtonType
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.setup_confirm_pressed_by_gamepad
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_press = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.SubmitButtonType
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.setup_confirm_pressed_by_gamepad
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_released = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._virtual_cursor_root = A1_2
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.setup_virtual_cursor_position
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_key_map_info_active
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._tick_virtual_cursor_select_object = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._is_lock_camera
  if L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_left_stick_up_press
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_left_stick_down_press
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_left_stick_left_press
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_left_stick_right_press
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_press_call_back = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L2_2 = A1_2 * L2_2
  L3_2 = A0_2._alley_transport_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.update_edit_vc_look_at_position_by_game_pad
  L5_2 = 0
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_left_stick_up_press = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = -A1_2
  L3_2 = L4_1
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._alley_transport_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.update_edit_vc_look_at_position_by_game_pad
  L5_2 = 0
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_left_stick_down_press = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = -A1_2
  L3_2 = L4_1
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._alley_transport_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.update_edit_vc_look_at_position_by_game_pad
  L5_2 = L2_2
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_left_stick_left_press = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L2_2 = A1_2 * L2_2
  L3_2 = A0_2._alley_transport_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.update_edit_vc_look_at_position_by_game_pad
  L5_2 = L2_2
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_left_stick_right_press = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_in_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_virtual_cursor_selected_object
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_release_call_back = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.get_icon_game_object_list
  L4_2 = A0_2._cur_show_layer
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2 = L3_2.get_nearest_alley_map_icon_node_by_cursor
  L4_2 = A1_2
  L5_2 = L2_2
  L6_2 = L2_1
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
  if L5_2 then
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.EventSystem
    L6_2 = L6_2.current
    L7_2 = L6_2
    L6_2 = L6_2.SetSelectedGameObject
    L8_2 = nil
    L6_2(L7_2, L8_2)
  else
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.EventSystem
    L6_2 = L6_2.current
    L7_2 = L6_2
    L6_2 = L6_2.SetSelectedGameObject
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2._virtual_cursor_panel
  L7_2 = L6_2
  L6_2 = L6_2.check_is_preview_cursor_active
  L6_2 = L6_2(L7_2)
  if L6_2 == false then
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.EventSystem
    L6_2 = L6_2.current
    L7_2 = L6_2
    L6_2 = L6_2.SetSelectedGameObject
    L8_2 = nil
    L6_2(L7_2, L8_2)
  end
  if L3_2 then
    L6_2 = A0_2._cur_alley_transport_route_state
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AlleyTransportRouteState
    L7_2 = L7_2.Edit
    if L6_2 ~= L7_2 then
      L6_2 = A0_2._cur_alley_transport_route_state
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.AlleyTransportRouteState
      L7_2 = L7_2.Erase
      if L6_2 ~= L7_2 then
        goto lbl_95
      end
    end
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.RectTransformUtility
    L6_2 = L6_2.ScreenPointToLocalPointInRectangle
    L7_2 = A0_2._binder
    L7_2 = L7_2.root
    L7_2 = L7_2.transform
    L8_2 = L4_2
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.GlobalVars
    L9_2 = L9_2.s_UICamera
    L10_2 = nil
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if L6_2 then
      L8_2 = A0_2._virtual_cursor_panel
      L9_2 = L8_2
      L8_2 = L8_2.check_is_in_safe_zoom
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = A1_2.transform
        L9_2 = CS
        L9_2 = L9_2.UnityEngine
        L9_2 = L9_2.Vector3
        L10_2 = L7_2.x
        L11_2 = L7_2.y
        L12_2 = 0
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L8_2.localPosition = L9_2
        L8_2 = A0_2._virtual_cursor_panel
        L9_2 = L8_2
        L8_2 = L8_2.setup_key_map_info_active
        L10_2 = true
        L8_2(L9_2, L10_2)
      end
    end
  end
  ::lbl_95::
end
L0_1._update_virtual_cursor_selected_object = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._alley_transport_order_info_panel
  if L1_2 then
    L1_2 = A0_2._alley_transport_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_edit_shop_id
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._alley_transport_order_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.on_draw_call_back
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._alley_transport_ui3d
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.update_buff_icon_color
  L1_2(L2_2)
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.update_dock_icon_color
  L1_2(L2_2)
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.update_shop_light_view_by_layer
  L3_2 = A0_2._cur_show_layer
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_alley_transport_route_state
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportRouteState
  L2_2 = L2_2.Draw
  if L1_2 == L2_2 then
    L1_2 = A0_2._alley_transport_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.update_energy_hint_game_object
    L1_2(L2_2)
  end
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.update_activity_alley_road_bell
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_energy_panel_view
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsNeedLocalSave
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.CheckLineCompletedStateByMapID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_complete
    L2_2.IsInFakeDisableState = false
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_complete
    L2_2.IsInFakeDisableState = true
  end
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.update_tutorial_custom_string_state_by_wipe
  L2_2(L3_2)
end
L0_1._on_draw_call_back = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportRouteState
  L2_2 = L2_2.Edit
  if A1_2 == L2_2 then
    L2_2 = A0_2._alley_transport_order_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_show_mode_by_show
    L2_2(L3_2)
    L2_2 = A0_2._cur_alley_transport_route_state
    if L2_2 ~= A1_2 then
      L2_2 = A0_2._alley_transport_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.update_draw_line_end_point_view
      L2_2(L3_2)
      L2_2 = A0_2._alley_transport_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.update_shop_icon_loop_effect
      L2_2(L3_2)
    end
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.set_alley_grid_animator_trigger
    L4_2 = "Preview"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.hide_energy_hint_game_object
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportRouteState
    L2_2 = L2_2.Draw
    if A1_2 == L2_2 then
      L2_2 = A0_2._alley_transport_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.hide_draw_line_end_point_icon_game_object
      L2_2(L3_2)
      L2_2 = A0_2._alley_transport_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.set_alley_grid_animator_trigger
      L4_2 = "Draw"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._alley_transport_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.update_energy_hint_game_object
      L2_2(L3_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.AlleyTransportRouteState
      L2_2 = L2_2.Erase
      if A1_2 == L2_2 then
        L2_2 = A0_2._alley_transport_order_info_panel
        L3_2 = L2_2
        L2_2 = L2_2.setup_show_mode_by_show
        L2_2(L3_2)
        L2_2 = A0_2._alley_transport_ui3d
        L3_2 = L2_2
        L2_2 = L2_2.hide_draw_line_end_point_icon_game_object
        L2_2(L3_2)
        L2_2 = A0_2._alley_transport_ui3d
        L3_2 = L2_2
        L2_2 = L2_2.set_alley_grid_animator_trigger
        L4_2 = "Erase"
        L2_2(L3_2, L4_2)
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.AlleyTransportRouteState
        L2_2 = L2_2.Wipe
        if A1_2 == L2_2 then
          L2_2 = A0_2._alley_transport_ui3d
          L3_2 = L2_2
          L2_2 = L2_2.set_alley_grid_animator_trigger
          L4_2 = "Erase"
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
  L2_2 = A0_2._cur_alley_transport_route_state
  if L2_2 ~= A1_2 then
    A0_2._cur_alley_transport_route_state = A1_2
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.set_cur_alley_transport_route_state
    L4_2 = A0_2._cur_alley_transport_route_state
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._virtual_cursor_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_cur_alley_transport_route_state
    L4_2 = A0_2._cur_alley_transport_route_state
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.update_tutorial_custom_string_state_by_edit
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.AlleyTransportRouteState
      L2_2 = L2_2.Edit
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._update_virtual_cursor_selected_object
        L4_2 = A0_2._virtual_cursor_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_virtual_cursor_root
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportRouteState
  L2_2 = L2_2.Draw
  if A1_2 == L2_2 then
    L2_2 = A0_2._alley_transport_order_info_panel
    if L2_2 then
      L2_2 = A0_2._alley_transport_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.get_cur_edit_shop_id
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._alley_transport_order_info_panel
      L4_2 = L3_2
      L3_2 = L3_2.on_draw_call_back
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_route_state_change_call_back = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.try_show_layer_by_click
  if 0 < L1_2 then
    L2_2 = A0_2._alley_transport_order_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.AlleyTransport
    L2_2.try_show_layer_by_click = 0
  end
end
L0_1._on_alley_get_save_logistics_map_success = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._cur_show_layer = A1_2
  A0_2._cur_top_panel_state = nil
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.setup_cur_map_layer
  L4_2 = A0_2._cur_show_layer
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_cur_edit_mode
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AlleyTransportEditMode
  L4_2 = L4_2.Draw
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.update_buff_icon_color
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.update_dock_icon_color
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_alley_transport_route_state
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AlleyTransportRouteState
  L3_2 = L3_2.Edit
  if L2_2 == L3_2 then
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.update_draw_line_end_point_view
    L2_2(L3_2)
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.update_shop_icon_loop_effect
    L2_2(L3_2)
  end
  L2_2 = A0_2._is_set_map_slider_value
  if L2_2 == false then
    L2_2 = A0_2._alley_map_zoom_slider_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_slider_current_value
    L4_2 = A0_2._default_map_slider_value
    L2_2(L3_2, L4_2)
    A0_2._is_set_map_slider_value = true
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_energy_panel_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_show_new_tip_dialog
  L2_2 = L2_2(L3_2)
  A0_2._is_show_tip_dialog = L2_2
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.update_map_btn_effect_view
  L2_2(L3_2)
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.update_shop_light_view
  L2_2(L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByLayer
  L4_2 = A0_2._cur_show_layer
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_complete
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.CheckLineCompletedStateByMapID
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = not L4_2
  L3_2.IsInFakeDisableState = L4_2
  L3_2 = A0_2._is_can_focus_camera
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.AlleyTransport
    L3_2 = L3_2.get_camera_setting
    L4_2 = A0_2._cur_show_layer
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._alley_transport_ui3d
    L5_2 = L4_2
    L4_2 = L4_2.focus_camera_pos
    L6_2 = L3_2.posX
    L7_2 = L3_2.posY
    L8_2 = L3_2.posZ
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2._alley_map_zoom_slider_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_slider_value_without_callback
    L7_2 = A0_2
    L6_2 = A0_2._get_slider_value_by_pos_z
    L8_2 = L3_2.posZ
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2._cur_show_layer
  L4_2 = G
  L4_2 = L4_2.AlleyTransport
  L4_2 = L4_2.max_layer
  if L3_2 == L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_tab_floor
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_tab_item_clicked = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = false
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2 = L3_2.is_use_by_tutorial
  if L3_2 then
    L3_2 = A0_2._appoint_shop_id
    L4_2 = L6_1
    if L3_2 ~= L4_2 then
      L3_2 = A0_2._appoint_shop_id
      L4_2 = L7_1
      if L3_2 ~= L4_2 then
        L2_2 = true
      end
    end
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryShowNewShopAndBuffTipDialog
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  return L3_2
end
L0_1._try_show_new_tip_dialog = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_playing_alley_transport_video
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._virtual_cursor_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 == false then
      L1_2 = A0_2._virtual_cursor_panel
      L2_2 = L1_2
      L1_2 = L1_2.custom_safe_set_active
      L3_2 = true
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_back_click
      L1_2(L2_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_back_click
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_playing_alley_transport_video
  if L1_2 then
    return
  end
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_edit_mode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportEditMode
  L2_2 = L2_2.Draw
  if L1_2 == L2_2 then
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.setup_cur_edit_mode
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AlleyTransportEditMode
    L4_2 = L4_2.Erase
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_switch
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "BtnSwitch_ToTop"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_AlleyMapMove"
    L6_2 = "ActionGroup_AlleyMapDraw2"
    L7_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportEditMode
    L2_2 = L2_2.Erase
    if L1_2 == L2_2 then
      L2_2 = A0_2._alley_transport_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.setup_cur_edit_mode
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.AlleyTransportEditMode
      L4_2 = L4_2.Draw
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_switch
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "BtnSwitch_ToBottom"
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_AlleyMapMove"
      L6_2 = "ActionGroup_AlleyMapDraw"
      L7_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_btn_switch_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.play_draw_failure_effect
  L1_2(L2_2)
end
L0_1._on_alley_transport_draw_failure = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportResultDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_show_layer
  L4_2 = A0_2._cur_show_layer
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_has_map_event
  L4_2 = A0_2._alley_transport_ui3d
  L5_2 = L4_2
  L4_2 = L4_2.check_has_buff_event_animator_popup_dot
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._on_alley_send_logistics_success = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_alley_placing_ship_finish = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.AlleyTransport
    L2_2 = L2_2.get_camera_setting
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L3_2 = A0_2._alley_transport_ui3d
      L4_2 = L3_2
      L3_2 = L3_2.focus_camera_pos
      L5_2 = L2_2.posX
      L6_2 = L2_2.posY
      L7_2 = L2_2.posZ
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = A0_2._alley_map_zoom_slider_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_slider_value_without_callback
      L6_2 = A0_2
      L5_2 = A0_2._get_slider_value_by_pos_z
      L7_2 = L2_2.posZ
      L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1._on_alley_transport_focus_camera = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.setup_energy_hint_game_object_visible
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._alley_transport_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.setup_energy_hint_game_object_visible
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_alley_transport_energy_hint = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_lock_camera = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._update_lock_camera_state
  L2_2(L3_2)
end
L0_1._on_tutorial_block_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_camera_can_drag
  L3_2 = A0_2._is_lock_camera
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._alley_transport_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.setup_camera_can_zoom
  L3_2 = A0_2._is_lock_camera
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._alley_map_zoom_slider_panel
  if L1_2 then
    L1_2 = A0_2._alley_map_zoom_slider_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = A0_2._is_lock_camera
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._update_lock_camera_state = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_playing_alley_transport_video
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportRewardDialog"
    L3_2 = A0_2._cur_show_layer
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_reward_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.get_camera_setting
  L2_2 = A0_2._cur_show_layer
  L3_2 = L5_1
  L2_2 = L2_2 + L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.focus_camera_pos
  L4_2 = L1_2.posX
  L5_2 = L1_2.posY
  L6_2 = L1_2.posZ
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._alley_map_zoom_slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_slider_value_without_callback
  L5_2 = A0_2
  L4_2 = A0_2._get_slider_value_by_pos_z
  L6_2 = L1_2.posZ
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_quick_move_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_show_confirm_dialog
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportConfirmDialog"
    L3_2 = A0_2
    L4_2 = "UIText_ActivityAlley_Airline_ExitFailed"
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_btn_back_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_playing_alley_transport_video
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsNeedLocalSave
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.CheckLineCompletedStateByMapID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetAllEnergyCount
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetLogisticsScoreByMapID
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetShowAlleyMapRewardRowListByLayer
    L6_2 = A0_2._cur_show_layer
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.cs_list_to_table
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L3_2 then
      L6_2 = L3_2.LastLevel
      L7_2 = L3_2.UnlockLevel
      if L6_2 < L7_2 then
        L6_2 = L3_2.UnlockLevel
        L6_2 = L5_2[L6_2]
        L6_2 = L6_2.MapScore
        if L2_2 < L6_2 then
          L6_2 = G
          L6_2 = L6_2.UIManager
          L6_2 = L6_2.load_and_async_show
          L7_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportScoreConfirmDialog"
          L8_2 = A0_2
          L6_2(L7_2, L8_2)
      end
    end
    else
      L7_2 = A0_2
      L6_2 = A0_2.trigger_transport_performance
      L6_2(L7_2)
    end
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_ActivityAlley_Airline_SaveFailed"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_complete_line = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_transport_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.setup_cur_edit_mode
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportEditMode
  L2_2 = L2_2.Draw
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_switch
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "BtnSwitch_ToBottom"
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportEditMode
    L2_2 = L2_2.Erase
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_switch
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "BtnSwitch_ToTop"
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._custom_setup_cur_edit_mode = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = true
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAlleyGridItemDataListByType
  L5_2 = L1_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.GridTypeEnum
  L6_2 = L6_2.Shop
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.cs_list_to_table
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.CheckLineCompletedState
    L12_2 = L1_2
    L13_2 = L9_2.GridID
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    if L10_2 then
      L2_2 = false
      break
    end
  end
  if L2_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_empty_energy_panel
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_energy_panel
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_empty_energy_panel
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_energy_panel
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetAllEnergyCount
    L7_2 = L1_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetLogisticsScoreByMapID
    L8_2 = L1_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.UnlockLevel
      if L7_2 then
        L7_2 = L1_1
        L8_2 = L7_2
        L7_2 = L7_2.GetShowAlleyMapRewardRowListByLayer
        L9_2 = A0_2._cur_show_layer
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = G
        L8_2 = L8_2.Utils
        L8_2 = L8_2.cs_list_to_table
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L9_2 = L6_2.UnlockLevel
        L9_2 = L8_2[L9_2]
        if L9_2 then
          L9_2 = L6_2.UnlockLevel
          L9_2 = L8_2[L9_2]
          L9_2 = L9_2.MapScore
          if L9_2 then
            goto lbl_90
          end
        end
        L9_2 = 0
        ::lbl_90::
        L10_2 = L5_2 >= L9_2
        L11_2 = A0_2._binder
        L11_2 = L11_2.node_reward_finish
        L12_2 = L11_2
        L11_2 = L11_2.SafeSetActive
        L13_2 = L6_2.LastLevel
        L14_2 = #L8_2
        L13_2 = L13_2 == L14_2
        L11_2(L12_2, L13_2)
        if L10_2 then
          L11_2 = A0_2._binder
          L11_2 = L11_2.node_completed
          L12_2 = L11_2
          L11_2 = L11_2.SafeSetActive
          L13_2 = true
          L11_2(L12_2, L13_2)
          L11_2 = A0_2._binder
          L11_2 = L11_2.text_energy
          L12_2 = L11_2
          L11_2 = L11_2.SafeSetActive
          L13_2 = false
          L11_2(L12_2, L13_2)
          L11_2 = A0_2._binder
          L11_2 = L11_2.text_energy_completed
          L12_2 = L11_2
          L11_2 = L11_2.SafeSetText
          L13_2 = L5_2
          L11_2(L12_2, L13_2)
          L11_2 = A0_2._cur_alley_transport_route_state
          L12_2 = CS
          L12_2 = L12_2.RPG
          L12_2 = L12_2.Client
          L12_2 = L12_2.AlleyTransportRouteState
          L12_2 = L12_2.Draw
          if L11_2 == L12_2 then
            L11_2 = A0_2._cur_top_panel_state
            if L11_2 ~= nil then
              L11_2 = A0_2._cur_top_panel_state
            end
            if L11_2 ~= "Up" then
              L11_2 = A0_2._binder
              L11_2 = L11_2.animator_top_panel
              L12_2 = L11_2
              L11_2 = L11_2.SetTrigger
              L13_2 = "Up"
              L11_2(L12_2, L13_2)
              A0_2._cur_top_panel_state = "Up"
            end
          else
            L11_2 = A0_2._cur_top_panel_state
            if L11_2 ~= nil then
              L11_2 = A0_2._cur_top_panel_state
            end
            if L11_2 ~= "CompleteOrder" then
              L11_2 = A0_2._binder
              L11_2 = L11_2.animator_top_panel
              L12_2 = L11_2
              L11_2 = L11_2.SetTrigger
              L13_2 = "CompleteOrder"
              L11_2(L12_2, L13_2)
              A0_2._cur_top_panel_state = "CompleteOrder"
            end
          end
        else
          L11_2 = A0_2._cur_top_panel_state
          if L11_2 ~= nil then
            L11_2 = A0_2._cur_top_panel_state
            if L11_2 == "Defult" then
              goto lbl_177
            end
          end
          L11_2 = A0_2._binder
          L11_2 = L11_2.animator_top_panel
          L12_2 = L11_2
          L11_2 = L11_2.SetTrigger
          L13_2 = "Defult"
          L11_2(L12_2, L13_2)
          A0_2._cur_top_panel_state = "Defult"
          L11_2 = A0_2._binder
          L11_2 = L11_2.text_energy
          L12_2 = L11_2
          L11_2 = L11_2.SafeSetActive
          L13_2 = true
          L11_2(L12_2, L13_2)
          L11_2 = A0_2._binder
          L11_2 = L11_2.node_completed
          L12_2 = L11_2
          L11_2 = L11_2.SafeSetActive
          L13_2 = false
          L11_2(L12_2, L13_2)
          ::lbl_177::
          L11_2 = A0_2._binder
          L11_2 = L11_2.text_energy
          L12_2 = L11_2
          L11_2 = L11_2.SafeSetText
          L13_2 = L5_2
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
end
L0_1._update_energy_panel_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsLineDataChangedByMapLayer
  L3_2 = A0_2._cur_show_layer
  return L1_2(L2_2, L3_2)
end
L0_1._check_is_show_confirm_dialog = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StopUIMenuBGM
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit_transport_performance
  L3_2(L4_2)
  L3_2 = A0_2._cur_show_layer
  L4_2 = G
  L4_2 = L4_2.AlleyTransport
  L4_2 = L4_2.max_show_layer
  if L3_2 <= L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L4_2 = A0_2._cur_show_layer
    L3_2.AlleyTransportShowLayer = L4_2
  end
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2.cur_show_layer = 1
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2.try_show_layer_by_click = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MouseInputController
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.SetCursorSprite
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.TutorialLevelGraphEnd
  L5_2 = G
  L5_2 = L5_2.TutorialManager
  L6_2 = L5_2
  L5_2 = L5_2.get_running_tutorial_id
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_dispose = L9_1
return L0_1
