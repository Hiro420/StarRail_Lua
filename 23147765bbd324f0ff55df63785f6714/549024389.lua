local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.AlleyPackUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = "UIText_ActivityAlley_Shipping_UnloadTips"
L2_1 = "UIText_ActivityAlley_Shipping_UnloadTitle"
L3_1 = "UIText_ActivityAlley_Shipping_RedGoods"
L4_1 = 0.2
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.ActivityAlley
L5_1 = L5_1.AlleyPackController
L5_1 = L5_1.AlleyJoyStickState
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "AlleyPackShipControlPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.ActivityAlleyPackUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pack_ui3d_page = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ship_func_btns_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_ship_func_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_rotate
  L5_2 = A0_2._on_btn_clear
  L6_2 = A0_2._on_btn_vertical
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.register_mouse_wheel_change_fov_callback
  L3_2 = A0_2._on_mouse_wheel_change_fov
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.save_fov_and_perspect
  L1_2(L2_2)
  A0_2._btn_vertical_callback = nil
  A0_2._btn_vertical_callback_self = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
  A0_2._cur_ship = A1_2
end
L6_1.init_ship_data = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.ship_func_btns_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_virtual_cursor
  L3_2 = L2_2
  L2_2 = L2_2.init_cursor
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_enable_joystick
  L2_2(L3_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.remove_ship
  L1_2(L2_2)
end
L6_1.remove_ship_3d_go = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.load_ship
  L3_2 = A0_2._cur_ship
  L3_2 = L3_2.ShipID
  L4_2 = A0_2._cur_ship
  L4_2 = L4_2.ShipPropPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.switch_camera_by_ship_type
  L3_2 = A0_2._cur_ship
  L3_2 = L3_2.ShipType
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.reset_default_plane_pos_by_ship_type
  L3_2 = A0_2._cur_ship
  L3_2 = L3_2.ShipType
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_fov_and_perspect
  L1_2(L2_2)
end
L6_1.setup_ship_3d_go = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  if L1_2 then
    L1_2 = A0_2._owner
    L1_2 = L1_2.get_depot_area
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_fov
      L2_2 = L1_2
      L1_2 = L1_2.register_forbid_mouse_wheel_area
      L3_2 = A0_2._owner
      L4_2 = L3_2
      L3_2 = L3_2.get_depot_area
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_good_select_callback
  L3_2 = A0_2._on_good_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_good_unselect_callback
  L3_2 = A0_2._on_good_unselect
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_good_drag_start_callback
  L3_2 = A0_2._on_good_drag_start
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_good_drag_end_callback
  L3_2 = A0_2._on_good_drag_end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.reset_fov
  L1_2(L2_2)
end
L6_1.on_pack_ui3d_loaded = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.AlleyPlacingShipResult
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.Clear
    L2_2(L3_2)
  end
end
L6_1.clear_last_shipping_result = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_ship
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.get_last_perspect_fov
  L2_2 = A0_2._cur_ship
  L2_2 = L2_2.ShipID
  L1_2, L2_2 = L1_2(L2_2)
  A0_2._enable_vertical_view = L1_2
  A0_2._fov = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._switch_camera_view
  L5_2 = A0_2._enable_vertical_view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_fov
  L4_2 = L3_2
  L3_2 = L3_2.set_fov
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L6_1.init_fov_and_perspect = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_ship
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._owner
  if L1_2 ~= nil then
    L1_2 = A0_2._owner
    L1_2 = L1_2.__name
    if L1_2 == "TutorialActivityAlleyPackMainPage" then
      return
    end
  end
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.save_last_perspect_fov
  L2_2 = A0_2._cur_ship
  L2_2 = L2_2.ShipID
  L3_2 = A0_2._enable_vertical_view
  if not L3_2 then
    L3_2 = false
  end
  L4_2 = A0_2._fov
  if not L4_2 then
    L4_2 = 0
  end
  L1_2(L2_2, L3_2, L4_2)
end
L6_1.save_fov_and_perspect = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = 0
  return L1_2
end
L6_1.get_ship_cost = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._pack_ui3d_page
    L3_2 = L2_2
    L2_2 = L2_2.switch_joy_stick_state
    L4_2 = L5_1.UINavigation
    L2_2(L3_2, L4_2)
  end
end
L6_1.on_good_add_or_remove = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.Log
    L3_2 = "[Alley] on_good_settle"
    L2_2(L3_2)
    L2_2 = A0_2._pack_ui3d_page
    L3_2 = L2_2
    L2_2 = L2_2.get_joy_stick_state
    L2_2 = L2_2(L3_2)
    L3_2 = L5_1.CursorSelection
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._pack_ui3d_page
      L3_2 = L2_2
      L2_2 = L2_2.switch_joy_stick_state
      L4_2 = L5_1.UINavigation
      L2_2(L3_2, L4_2)
    end
  end
end
L6_1.on_good_settle_or_cancel_settle = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_3d_control
  L3_2 = L2_2
  L2_2 = L2_2.show_profit_increase
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1.show_profit_increase = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_3d_control
  L3_2 = L2_2
  L2_2 = L2_2.set_visible
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1.show_control_btns = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._btn_vertical_callback = A1_2
  A0_2._btn_vertical_callback_self = A2_2
end
L6_1.register_btn_vertical_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_3d_control
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_3d_control
  L4_2 = L3_2
  L3_2 = L3_2.reset_panel_pos
  L5_2 = A0_2._pack_ui3d_page
  L6_2 = L5_2
  L5_2 = L5_2.get_last_selected_good
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._on_good_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_3d_control
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_good_unselect = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_3d_control
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._pack_ui3d_page
    L2_2 = L1_2
    L1_2 = L1_2.switch_joy_stick_state
    L3_2 = L5_1.GoodOperation
    L1_2(L2_2, L3_2)
  end
end
L6_1._on_good_drag_start = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
  end
  L2_2 = A0_2
  L1_2 = A0_2._statistic_record_drag
  L1_2(L2_2)
end
L6_1._on_good_drag_end = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_btn_rotate = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_fov
  L2_2 = L1_2
  L1_2 = L1_2.get_fov
  L1_2 = L1_2(L2_2)
  A0_2._fov = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_3d_control
  L2_2 = L1_2
  L1_2 = L1_2.reset_panel_pos
  L1_2(L2_2)
end
L6_1._on_mouse_wheel_change_fov = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.is_forbid_op
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.has_good_on_ship
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.Pack.AlleyPackConfirmDialog"
  L3_2 = L1_1
  L4_2 = L2_1
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.clear_ship
      L1_3(L2_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._statistic_record_auto_delete
      L1_3(L2_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_AudioManager
      L2_3 = L1_3
      L1_3 = L1_3.PostEvent
      L3_3 = "Ev_sfx_ui_feedback_activity_alley_shippingPage_clearAll"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_3d_control
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_clear = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_alley_pack_ship_data
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetGoodsCount
    L2_2 = L2_2(L3_2)
    L2_2 = 0 < L2_2
  end
  return L2_2
end
L6_1.has_good_on_ship = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.clear_ship
  L1_2(L2_2)
end
L6_1.clear_ship = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.is_forbid_op
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._in_special_mode
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.Pack.ActivityAlleyPackSelectShipDialog"
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_3d_control
  L2_2 = L1_2
  L1_2 = L1_2.set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.is_forbid_op
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._switch_camera_view
  L3_2 = A0_2._enable_vertical_view
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._btn_vertical_callback
  L3_2 = A0_2._btn_vertical_callback_self
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_vertical = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._enable_vertical_view = A1_2
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.enable_vertical_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_fov
  L3_2 = L2_2
  L2_2 = L2_2.reset_fov
  L2_2(L3_2)
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L3_2 = L2_2
    L2_2 = L2_2.PostEvent
    L4_2 = "Ev_sfx_ui_feedback_activity_alley_shippingPage_viewUp"
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L3_2 = L2_2
    L2_2 = L2_2.PostEvent
    L4_2 = "Ev_sfx_ui_feedback_activity_alley_shippingPage_viewReset"
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._statistic_record_perspective_change
  L2_2(L3_2)
end
L6_1._switch_camera_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ship_func_btns_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_navigation
  L1_2(L2_2)
end
L6_1.refresh_func_btn_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_enable_joystick
  L1_2(L2_2)
end
L6_1._on_got_focus = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._pack_ui3d_page
    L2_2 = L1_2
    L1_2 = L1_2.enable_joystick
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.is_gamepad_input
    L3_2 = L3_2()
    L1_2(L2_2, L3_2)
  end
end
L6_1._refresh_enable_joystick = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  L3_2 = A0_2._pack_ui3d_page
  L4_2 = L3_2
  L3_2 = L3_2.is_loaded
  L3_2 = L3_2(L4_2)
  if L3_2 then
    if L2_2 then
      L4_2 = A0_2
      L3_2 = A0_2._switch_to_gamepad_input
      L3_2(L4_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._switch_to_mouse_input
      L3_2(L4_2)
    end
  end
end
L6_1._on_in_control_input_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_select_good
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.enable_joystick
  L4_2 = true
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.AlleyPackGoodData
    L2_2 = L2_2.GroupData
    L2_2 = L2_2.IsSettled
    if not L2_2 then
      goto lbl_26
    end
  end
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.try_end_drag
  L2_2(L3_2)
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.unselect_cur_good
  L2_2(L3_2)
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.switch_joy_stick_state
  L4_2 = L5_1.UINavigation
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_26::
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.begin_drag_target
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeEndOfFrame
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.AlleyPackJoyStickStateChange
    L2_3 = L5_1.GoodOperation
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2)
end
L6_1._switch_to_gamepad_input = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.try_end_drag
  L1_2(L2_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.unselect_cur_good
  L1_2(L2_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.enable_joystick
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.switch_joy_stick_state
  L3_2 = L5_1.None
  L1_2(L2_2, L3_2)
end
L6_1._switch_to_mouse_input = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.is_forbid_op
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_share_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._pack_ui3d_page
    L3_2 = L2_2
    L2_2 = L2_2.get_joy_stick_state
    L2_2 = L2_2(L3_2)
    L3_2 = L5_1.UINavigation
    if L2_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.is_in_special_zoom
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = A0_2._pack_ui3d_page
        L4_2 = L3_2
        L3_2 = L3_2.switch_joy_stick_state
        L5_2 = L5_1.CursorSelection
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = A0_2._pack_ui3d_page
      L4_2 = L3_2
      L3_2 = L3_2.try_end_drag
      L3_2(L4_2)
      L3_2 = L5_1.CursorSelection
      if L2_2 == L3_2 then
        L3_2 = A0_2._pack_ui3d_page
        L4_2 = L3_2
        L3_2 = L3_2.switch_joy_stick_state
        L5_2 = L5_1.UINavigation
        L3_2(L4_2, L5_2)
      else
        L4_2 = A0_2
        L3_2 = A0_2.is_in_special_zoom
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = A0_2._pack_ui3d_page
          L4_2 = L3_2
          L3_2 = L3_2.switch_joy_stick_state
          L5_2 = L5_1.CursorSelection
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L6_1._on_in_control_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_joy_stick_state
  L1_2 = L1_2(L2_2)
  L2_2 = L5_1.GoodOperation
  if L1_2 == L2_2 then
    L1_2 = A0_2._pack_ui3d_page
    L2_2 = L1_2
    L1_2 = L1_2.try_end_drag
    L1_2(L2_2)
  end
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.switch_joy_stick_state
  L3_2 = L5_1.UINavigation
  L1_2(L2_2, L3_2)
end
L6_1._on_enter_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_leave_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.get_pack_statistics
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.DragCount
    L2_2 = L2_2 + 1
    L1_2.DragCount = L2_2
  end
end
L6_1._statistic_record_drag = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.get_pack_statistics
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.AutoDeleteCount
    L2_2 = L2_2 + 1
    L1_2.AutoDeleteCount = L2_2
  end
end
L6_1._statistic_record_auto_delete = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.get_pack_statistics
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.PerspectiveChangeCount
    L2_2 = L2_2 + 1
    L1_2.PerspectiveChangeCount = L2_2
  end
end
L6_1._statistic_record_perspective_change = L7_1
return L6_1
