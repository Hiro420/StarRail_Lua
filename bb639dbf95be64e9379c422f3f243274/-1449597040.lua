local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.SpecialOrder.AlleySpecialOrderPackMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.AlleyPackUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ActivityAlley
L1_1 = L1_1.AlleyPackController
L1_1 = L1_1.AlleyJoyStickState
L2_1 = "UIText_ActivityAlley_SpecialOrder_GoFailed"
L3_1 = "UIText_ActivityAlley_SpecialOrder_GoFailed2"
L4_1 = "UIText_ActivityAlley_Shipping_ExitTips"
L5_1 = "UIText_ActivityAlley_Shipping_ExitTitle"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "AlleySpecialOrderPackMainPage"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleySpecialOrderPackMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.ActivityAlleyPackUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pack_ui3d_page = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.AlleyPackUtils
  L2_2 = L2_2.create_pack_statistics
  L2_2()
  A0_2._special_order_data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyShipData
  L3_2 = A1_2.SpecialOrderShip
  L2_2 = L2_2(L3_2)
  A0_2._cur_ship = L2_2
  L2_2 = A0_2._cur_ship
  L2_2.IsUnlock = true
  L2_2 = A0_2._special_order_data
  if L2_2 then
    L2_2 = A0_2._special_order_data
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AlleyOrderStatus
    L3_2 = L3_2.OrderDoing
    L2_2 = L2_2 ~= L3_2
  end
  A0_2._repeat_special_finish = L2_2
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._cur_ship = nil
  A0_2._special_order_data = nil
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.clear_pack_statistics
  L1_2()
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.stop_alley_pack_bgm
  L1_2()
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = G
  L3_2 = L3_2.AlleyPackUtils
  L3_2 = L3_2.get_action_op_set_id_by_state
  L4_2 = L1_1.UINavigation
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_depot
  L2_2 = L1_2
  L1_2 = L1_2.init_special_order_data
  L3_2 = A0_2._special_order_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_depot
  L2_2 = L1_2
  L1_2 = L1_2.set_special_order_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_special_order
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_special_order
  L2_2 = L1_2
  L1_2 = L1_2.set_depot_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_depot
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_special_order
  L2_2 = L1_2
  L1_2 = L1_2.set_ship_control_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_ship_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_ship_control_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_ship_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_good_op_callback
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_ship_go
  L1_2(L2_2)
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
  L3_2 = L3_2.AlleyPlacingShipFailed
  L4_2 = A0_2._on_alley_placing_ship_failed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyPackJoyStickStateChange
  L4_2 = A0_2._on_joy_stick_state_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_video
  L2_2 = L1_2
  L1_2 = L1_2.register_video_finish
  L3_2 = A0_2._on_ship_video_finish
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_ship_go
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._pack_ui3d_page
    L2_2 = L1_2
    L1_2 = L1_2.switch_joy_stick_state
    L3_2 = L1_1.UINavigation
    L1_2(L2_2, L3_2)
  end
end
L6_1._on_ui3d_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._pack_ui3d_page
    L2_2 = L1_2
    L1_2 = L1_2.is_loaded
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_ship_control
      L2_2 = L1_2
      L1_2 = L1_2.init_ship_data
      L3_2 = A0_2._cur_ship
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_ship_control
      L2_2 = L1_2
      L1_2 = L1_2.setup_ship_3d_go
      L1_2(L2_2)
      L1_2 = A0_2._pack_ui3d_page
      L2_2 = L1_2
      L1_2 = L1_2.add_ui_area
      L3_2 = A0_2._binder
      L3_2 = L3_2.rect_orders
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._pack_ui3d_page
      L2_2 = L1_2
      L1_2 = L1_2.add_ui_area
      L3_2 = A0_2._binder
      L3_2 = L3_2.rect_depot
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_ship_control
      L2_2 = L1_2
      L1_2 = L1_2.on_pack_ui3d_loaded
      L1_2(L2_2)
    end
  end
end
L6_1._try_setup_ship_go = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.rect_depot
    return L1_2
  end
end
L6_1.get_depot_area = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.start_alley_pack_bgm
  L1_2()
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_depot
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_special_order
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._special_order_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_ship_cost
  L1_2 = L1_2(L2_2)
  L1_2 = -L1_2
  A0_2._profit_preview = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_profit_preview
  L2_2 = L1_2
  L1_2 = L1_2.setup_profit_preview
  L3_2 = A0_2._profit_preview
  L4_2 = 0
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_go_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._special_order_data
  L3_2 = L3_2.OrderTipsPath
  L4_2 = A0_2._special_order_data
  L4_2 = L4_2.OrderTipsTime
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.is_forbid_op
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.clear_last_shipping_result
  L1_2(L2_2)
  L1_2 = A0_2._repeat_special_finish
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_special_order
  L2_2 = L1_2
  L1_2 = L1_2.is_all_target_finish
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
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.record_end_time
  L1_2()
  A0_2._ship_pack_send = false
  L2_2 = A0_2
  L1_2 = A0_2._trigger_ship_performance
  L1_2(L2_2)
end
L6_1._on_btn_go = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.try_end_drag
  L1_2(L2_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.switch_joy_stick_state
  L3_2 = L1_1.UINavigation
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.set_is_forbid_op
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_video
  L2_2 = L1_2
  L1_2 = L1_2.play_video
  L3_2 = G
  L3_2 = L3_2.AlleyPackUtils
  L3_2 = L3_2.get_ship_video_id
  L4_2 = A0_2._cur_ship
  L4_2 = L4_2.ShipType
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L1_2(L2_2, L3_2)
end
L6_1._trigger_ship_performance = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.AlleyPlacingShipResult
  L1_2 = L1_2.FinishedSpecialOrder
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Activity.ActivityAlley.Pack.Result.AlleyPackSpecialOrderShippingResultDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_exit_callback
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._exit_ship_performance
    L0_3(L1_3)
  end
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
end
L6_1._on_alley_placing_ship_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_ship_performance
  L1_2(L2_2)
end
L6_1._on_alley_placing_ship_failed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_video
  L2_2 = L1_2
  L1_2 = L1_2.stop_video
  L1_2(L2_2)
end
L6_1._exit_ship_performance = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._repeat_special_finish
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.AlleySpecialOrderRepeatShipFinish
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._ship_pack_send
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.ECMEDFHBEHP
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.KILDAINCNOP
  L3_2 = A0_2._pack_ui3d_page
  L4_2 = L3_2
  L3_2 = L3_2.get_alley_placing_ship
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.AlleyPackUtils
  L4_2 = L4_2.get_pack_statistics
  L4_2 = L4_2()
  L5_2 = A0_2._special_order_data
  L5_2 = L5_2.OrderID
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.set_is_forbid_op
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._ship_pack_send = true
end
L6_1._on_ship_video_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.has_good_on_ship
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.Pack.AlleyPackConfirmDialog"
  L3_2 = L4_1
  L4_2 = L5_1
  function L5_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.exit
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L6_1._on_btn_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_good_add_callback
  L3_2 = A0_2._on_good_add
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_good_remove_callback
  L3_2 = A0_2._on_good_remove
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_good_settle_callback
  L3_2 = A0_2._on_good_settle
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_good_cancel_settle_callback
  L3_2 = A0_2._on_good_cancel_settle
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._bind_good_op_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_good_add_or_remove
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L6_1._on_good_add = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_good_add_or_remove
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_good_remove = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_depot
  L3_2 = L2_2
  L2_2 = L2_2.on_good_add_or_remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_ship_control
  L3_2 = L2_2
  L2_2 = L2_2.on_good_add_or_remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_good_add_or_remove = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_depot
  L2_2 = L1_2
  L1_2 = L1_2.on_good_settle_or_cancel_settle
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.on_good_settle_or_cancel_settle
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_special_order
  L2_2 = L1_2
  L1_2 = L1_2.refresh_order
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_profit_preview
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_go_state
  L1_2(L2_2)
end
L6_1._on_good_settle = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_depot
  L2_2 = L1_2
  L1_2 = L1_2.on_good_settle_or_cancel_settle
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.on_good_settle_or_cancel_settle
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_special_order
  L2_2 = L1_2
  L1_2 = L1_2.refresh_order
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_profit_preview
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_go_state
  L1_2(L2_2)
end
L6_1._on_good_cancel_settle = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_ship_cost
  L1_2 = L1_2(L2_2)
  L1_2 = -L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_depot
  L3_2 = L2_2
  L2_2 = L2_2.get_goods_profit
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._profit_preview
  L2_2 = L1_2 - L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_profit_preview
  L4_2 = L3_2
  L3_2 = L3_2.setup_profit_preview
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._profit_preview = L1_2
  if 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_ship_control
    L4_2 = L3_2
    L3_2 = L3_2.show_profit_increase
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L6_1._refresh_profit_preview = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.get_ship_cost
  return L1_2(L2_2)
end
L6_1._get_ship_cost = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._repeat_special_finish
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_special_order
    L2_2 = L1_2
    L1_2 = L1_2.is_all_target_finish
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_go
  L2_2.IsInFakeDisableState = L1_2
end
L6_1._refresh_btn_go_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_depot
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_depot
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L6_1._init_ui_navigation = L7_1
function L7_1(A0_2, A1_2)
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
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pack_ui3d_page
  if L1_2 then
    L1_2 = A0_2._pack_ui3d_page
    L2_2 = L1_2
    L1_2 = L1_2.is_forbid_op
    L1_2 = L1_2(L2_2)
  end
  L2_2 = not L1_2
  return L2_2
end
L6_1._is_can_to_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.is_forbid_op
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_joy_stick_state
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.UINavigation
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_btn_exit
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.try_end_drag
  L2_2(L3_2)
  L2_2 = L1_1.CursorSelection
  if L1_2 == L2_2 then
    L2_2 = A0_2._pack_ui3d_page
    L3_2 = L2_2
    L2_2 = L2_2.switch_joy_stick_state
    L4_2 = L1_1.UINavigation
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._pack_ui3d_page
    L3_2 = L2_2
    L2_2 = L2_2.switch_joy_stick_state
    L4_2 = L1_1.CursorSelection
    L2_2(L3_2, L4_2)
  end
end
L6_1._in_control_exit_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1.None
  if A1_2 == L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = G
  L4_2 = L4_2.AlleyPackUtils
  L4_2 = L4_2.get_action_op_set_id_by_state
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L6_1._on_joy_stick_state_change = L7_1
return L6_1
