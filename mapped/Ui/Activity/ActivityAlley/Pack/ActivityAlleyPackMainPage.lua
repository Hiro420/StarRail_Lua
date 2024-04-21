local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.ActivityAlleyPackMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.ActivityAlleyPackUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.AlleyPackUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Tutorial.TutorialAlleyPackTaskItem"
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
L2_1 = "UIText_ActivityAlley_Shipping_GoFailed"
L3_1 = "UIText_ActivityAlley_Shipping_ExitTips"
L4_1 = "UIText_ActivityAlley_Shipping_ExitTitle"
L5_1 = "UIText_ActivityAlley_Shipping_GoTips"
L6_1 = "UIText_ActivityAlley_Shipping_GoTipsTitle"
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "ActivityAlleyPackMainPage"
L9_1 = G
L9_1 = L9_1.UIController
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityAlleyPackMainPageBinder
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
  A0_2._order_profit_preview = 0
end
L7_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.create_pack_statistics
  L1_2()
  L1_2 = L0_1.CurOrderData
  A0_2._order_data = L1_2
  L1_2 = A0_2._order_data
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AlleyShipData
    L2_2 = A0_2._order_data
    L2_2 = L2_2.OrderShip
    L1_2 = L1_2(L2_2)
    A0_2._cur_ship = L1_2
  else
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "\230\178\161\230\156\137\232\174\162\229\141\149\229\143\175\231\148\168!!!"
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AlleyShipData
    L2_2 = 1
    L1_2 = L1_2(L2_2)
    A0_2._cur_ship = L1_2
  end
  L1_2 = A0_2._cur_ship
  L1_2.IsUnlock = true
  L2_2 = A0_2
  L1_2 = A0_2._init_tutorial_data
  L1_2(L2_2)
end
L7_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialLevelGraphEnd
  L3_2 = G
  L3_2 = L3_2.TutorialManager
  L4_2 = L3_2
  L3_2 = L3_2.get_running_tutorial_id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._dispose_tutorial_data
  L1_2(L2_2)
  A0_2._cur_ship = nil
  A0_2._order_data = nil
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.clear_pack_statistics
  L1_2()
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.stop_alley_pack_bgm
  L1_2()
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RecordPackUnSeenOrderEventID
  L1_2(L2_2)
end
L7_1._on_dispose = L8_1
function L8_1(A0_2)
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
  L1_2 = L1_2.init_order_data
  L3_2 = A0_2._order_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_depot
  L2_2 = L1_2
  L1_2 = L1_2.set_order_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_order
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.init_order_data
  L3_2 = A0_2._order_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.set_depot_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_depot
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
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RecordPackSeenStage
  L1_2(L2_2)
end
L7_1._on_load = L8_1
function L8_1(A0_2)
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
L7_1._on_ui3d_load = L8_1
function L8_1(A0_2)
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
L7_1._try_setup_ship_go = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.rect_depot
    return L1_2
  end
end
L7_1.get_depot_area = L8_1
function L8_1(A0_2)
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
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.refresh_order
  L1_2(L2_2)
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
  L3_2 = A0_2._order_data
  L3_2 = L3_2.OrderTipsPath
  L4_2 = A0_2._order_data
  L4_2 = L4_2.OrderTipsTime
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_1
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_tutorial_order
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_new_order_hint
  L1_2(L2_2)
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
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
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_alley_pack_ship_data
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetUnusedAnchorCount
    L2_2 = L2_2(L3_2)
    if 0 < L2_2 then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Activity.ActivityAlley.Pack.AlleyPackConfirmDialog"
      L4_2 = L5_1
      L5_2 = L6_1
      function L6_2(A0_3)
        local L1_3, L2_3
        if A0_3 then
          A0_2._ship_pack_send = false
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._trigger_ship_performance
          L1_3(L2_3)
        end
      end
      L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  else
    A0_2._ship_pack_send = false
    L3_2 = A0_2
    L2_2 = A0_2._trigger_ship_performance
    L2_2(L3_2)
  end
end
L7_1._on_btn_go = L8_1
function L8_1(A0_2)
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
L7_1._trigger_ship_performance = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._trigger_tutorial_ship_finish
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.save_fov_and_perspect
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.clear_ship
  L1_2(L2_2)
  A0_2._continue_pack = false
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Activity.ActivityAlley.Pack.Result.AlleyPackShippingResultDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_continue_pack_callback
  function L4_2()
    local L0_3, L1_3
    A0_2._continue_pack = true
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._exit_ship_performance
    L0_3(L1_3)
    L0_3 = A0_2._continue_pack
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.init
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_ship_control
      L1_3 = L0_3
      L0_3 = L0_3.init_ship_data
      L2_3 = A0_2._cur_ship
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_ship_control
      L1_3 = L0_3
      L0_3 = L0_3.remove_ship_3d_go
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_ship_control
      L1_3 = L0_3
      L0_3 = L0_3.setup_ship_3d_go
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_depot
      L1_3 = L0_3
      L0_3 = L0_3.init_order_data
      L2_3 = A0_2._order_data
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_depot
      L1_3 = L0_3
      L0_3 = L0_3.setup_view
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_order
      L1_3 = L0_3
      L0_3 = L0_3.init_order_data
      L2_3 = A0_2._order_data
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_order
      L1_3 = L0_3
      L0_3 = L0_3.setup_view
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_order
      L1_3 = L0_3
      L0_3 = L0_3.refresh_order
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._get_ship_cost
      L0_3 = L0_3(L1_3)
      L0_3 = -L0_3
      A0_2._profit_preview = L0_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_profit_preview
      L1_3 = L0_3
      L0_3 = L0_3.setup_profit_preview
      L2_3 = A0_2._profit_preview
      L3_3 = 0
      L4_3 = 0
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_btn_go_state
      L0_3(L1_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.tips_panel
      L1_3 = L0_3
      L0_3 = L0_3.setup_view
      L2_3 = A0_2._order_data
      L2_3 = L2_3.OrderTipsPath
      L3_3 = A0_2._order_data
      L3_3 = L3_3.OrderTipsTime
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.panel_ship_control
      L1_3 = L0_3
      L0_3 = L0_3.show_control_btns
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_trigger_tutorial_order
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = G
      L2_3 = L2_3.AlleyPackUtils
      L2_3 = L2_3.get_action_op_set_id_by_state
      L3_3 = A0_2._pack_ui3d_page
      L4_3 = L3_3
      L3_3 = L3_3.get_joy_stick_state
      L3_3, L4_3 = L3_3(L4_3)
      L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L7_1._on_alley_placing_ship_finish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_ship_performance
  L1_2(L2_2)
end
L7_1._on_alley_placing_ship_failed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_video
  L2_2 = L1_2
  L1_2 = L1_2.stop_video
  L1_2(L2_2)
end
L7_1._exit_ship_performance = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._ship_pack_send
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.HHAHBBIHDID
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.DCIJNICJBBJ
  L3_2 = A0_2._pack_ui3d_page
  L4_2 = L3_2
  L3_2 = L3_2.get_alley_placing_ship
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.AlleyPackUtils
  L4_2 = L4_2.get_pack_statistics
  L4_2 = L4_2()
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.set_is_forbid_op
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._ship_pack_send = true
end
L7_1._on_ship_video_finish = L8_1
function L8_1(A0_2)
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
  L3_2 = L3_1
  L4_2 = L4_1
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
L7_1._on_btn_exit = L8_1
function L8_1(A0_2)
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
L7_1._bind_good_op_callback = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_good_add_or_remove
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L7_1._on_good_add = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_good_add_or_remove
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L7_1._on_good_remove = L8_1
function L8_1(A0_2, A1_2)
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
L7_1._on_good_add_or_remove = L8_1
function L8_1(A0_2)
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
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.refresh_order
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_profit_preview
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_go_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_3
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_4
  L1_2(L2_2)
end
L7_1._on_good_settle = L8_1
function L8_1(A0_2)
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
  L1_2 = L1_2.panel_order
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
L7_1._on_good_cancel_settle = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.get_order_profit
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_ship_cost
  L2_2 = L2_2(L3_2)
  L2_2 = -L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_depot
  L4_2 = L3_2
  L3_2 = L3_2.get_goods_profit
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 + L3_2
  L2_2 = L2_2 + L1_2
  L3_2 = A0_2._profit_preview
  L3_2 = L2_2 - L3_2
  L4_2 = A0_2._order_profit_preview
  L4_2 = L1_2 - L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_profit_preview
  L6_2 = L5_2
  L5_2 = L5_2.setup_profit_preview
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  A0_2._profit_preview = L2_2
  A0_2._order_profit_preview = L1_2
  L5_2 = L3_2 - L4_2
  if 0 < L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_ship_control
    L6_2 = L5_2
    L5_2 = L5_2.show_profit_increase
    L7_2 = L3_2 - L4_2
    L5_2(L6_2, L7_2)
  end
end
L7_1._refresh_profit_preview = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.get_ship_cost
  return L1_2(L2_2)
end
L7_1._get_ship_cost = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_order
  L3_2 = L2_2
  L2_2 = L2_2.is_all_target_finish
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L1_2.IsInFakeDisableState = L2_2
end
L7_1._refresh_btn_go_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPackUnSeenOrderEventID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= 0 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Activity.ActivityAlley.Pack.Toast.AlleyPackNewOrderHintDialog"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L7_1._try_show_new_order_hint = L8_1
L8_1 = "Tutorial_Alley_Pack_Order_"
L9_1 = "9815"
L10_1 = "Tutorial_Alley_Pack_CustomStr_9816"
L11_1 = "Tutorial_Alley_Pack_CustomStr_9821"
L12_1 = "Tutorial_Alley_Pack_CustomStr_9822"
L13_1 = "Tutorial_Alley_Pack_Ship_Finish"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._tutorial_task_item_table
  if L1_2 ~= nil then
    return
  end
  L1_2 = {}
  A0_2._tutorial_task_item_table = L1_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L9_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L9_1
  L6_2 = true
  L7_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L10_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L10_1
  L6_2 = false
  L7_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L11_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L11_1
  L6_2 = false
  L7_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L12_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L12_1
  L6_2 = false
  L7_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
end
L7_1._init_tutorial_data = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._tutorial_task_item_table
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._tutorial_task_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._tutorial_task_item_table
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._tutorial_task_item_table
    L7_2[L4_2] = nil
    L7_2 = G
    L7_2 = L7_2.delete
    L8_2 = L6_2
    L7_2(L8_2)
  end
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._tutorial_task_item_table
  L1_2(L2_2)
end
L7_1._dispose_tutorial_data = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._order_data
  if L1_2 ~= nil then
    L1_2 = L8_1
    L2_2 = A0_2._order_data
    L2_2 = L2_2.OrderID
    L1_2 = L1_2 .. L2_2
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.Log
    L3_2 = "\233\135\145\228\186\186\229\183\183\230\145\134\232\180\167\229\188\149\229\175\188\232\174\162\229\141\149\239\188\140Task Unlock, key: "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L7_1._try_trigger_tutorial_order = L14_1
function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._tutorial_task_item_table
  L2_2 = L2_2[A1_2]
  return L2_2
end
L7_1._get_tutorial_task_item = L14_1
function L14_1(A0_2, A1_2)
  A0_2._is_from_transport_result = A1_2
end
L7_1.set_from_transport_result = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L9_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.update_status
  L4_2 = A0_2._is_from_transport_result
  L2_2(L3_2, L4_2)
end
L7_1._check_and_trigger_finish_tutorial_task_1 = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L10_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.update_status
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_order
  L5_2 = L4_2
  L4_2 = L4_2.get_order_profit
  L4_2 = L4_2(L5_2)
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
end
L7_1._check_and_trigger_finish_tutorial_task_2 = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L11_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.is_finish
    if not L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.update_status
      L5_2 = A0_2
      L4_2 = A0_2._has_target_type_good_item
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.AlleyPackGoodsTypeEnum
      L6_2 = L6_2.Medium
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L7_1._check_and_trigger_finish_tutorial_task_3 = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L12_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.is_finish
    if not L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.update_status
      L5_2 = A0_2
      L4_2 = A0_2._has_target_type_good_item
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.AlleyPackGoodsTypeEnum
      L6_2 = L6_2.Small
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L7_1._check_and_trigger_finish_tutorial_task_4 = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_depot
  L3_2 = L2_2
  L2_2 = L2_2.get_settled_goods_num_map
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_depot
  L4_2 = L3_2
  L3_2 = L3_2.get_settled_goods_data_map
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if 0 < L8_2 then
      L9_2 = L3_2[L7_2]
      if L9_2 ~= nil then
        L10_2 = L9_2.GoodsType
        if L10_2 == A1_2 then
          L10_2 = true
          return L10_2
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
L7_1._has_target_type_good_item = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "\233\135\145\228\186\186\229\183\183\230\145\134\232\180\167\229\188\149\229\175\188\229\143\145\232\136\185\229\174\140\230\136\144\239\188\140Custom Str, key: "
  L3_2 = L13_1
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = L13_1
  L1_2(L2_2)
end
L7_1._trigger_tutorial_ship_finish = L14_1
function L14_1(A0_2)
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
L7_1.get_first_selected_object = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L7_1._init_ui_navigation = L14_1
function L14_1(A0_2, A1_2)
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
L7_1._on_enter_zoom = L14_1
function L14_1(A0_2)
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
L7_1._is_can_to_special_zoom = L14_1
function L14_1(A0_2)
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
L7_1._in_control_exit_click = L14_1
function L14_1(A0_2, A1_2)
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
L7_1._on_joy_stick_state_change = L14_1
return L7_1
