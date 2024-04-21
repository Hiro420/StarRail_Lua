local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Result.AlleyPackShippingResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
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
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ScheduleModule
L2_1 = "UIText_ActivityAlley_Shipping_Go_Profit"
L3_1 = "UIText_ActivityAlley_Shipping_Go_TargetMax"
L4_1 = "UIText_ActivityAlley_Shipping_LeftOrder"
L5_1 = 2
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "AlleyPackShippingResultDialog"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyPackShippingResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._continue_pack_callback = A1_2
  A0_2._continue_pack_callback_self = A2_2
end
L6_1.register_continue_pack_callback = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._is_from_tutorial = true
end
L6_1.set_from_tutorial = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._set_btns_visible
  L3_2 = false
  L4_2 = false
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pack
  L4_2 = A0_2._on_btn_pack
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission
  L4_2 = A0_2._on_btn_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L4_2 = A0_2._on_btn_empty
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._alley_placing_ship_result = nil
  A0_2._event_row = nil
  A0_2._continue_pack_callback = nil
  A0_2._continue_pack_callback_self = nil
  A0_2._setup_event_time_in_ms = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1.AlleyPlacingShipResult
  A0_2._alley_placing_ship_result = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._is_trigger_event
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_trigger_special_order_start
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._is_finish_final_mission
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_fund
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_profit
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_order_left
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_order_info
  L6_2 = L1_2 or L6_2
  if L1_2 then
    L6_2 = A0_2._is_from_tutorial
    L6_2 = not L6_2 and L6_2
  end
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_btns_visible
  L6_2 = L3_2 or L6_2
  if L1_2 or not L3_2 then
    L6_2 = false
  end
  L7_2 = A0_2._is_from_tutorial
  L7_2 = not L7_2 and not L1_2 or L7_2
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_node_hint_visible
  L6_2 = L1_2 or L6_2
  if not L1_2 then
    L6_2 = A0_2._is_from_tutorial
    if not L6_2 then
      L6_2 = false
    end
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2 or L6_2
  if not L1_2 then
    L6_2 = A0_2._is_from_tutorial
    if not L6_2 then
      L6_2 = false
    end
  end
  L4_2(L5_2, L6_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fund_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._alley_placing_ship_result
  L3_2 = L3_2.FundBefore
  L4_2 = A0_2._alley_placing_ship_result
  L4_2 = L4_2.FundAfter
  L1_2(L2_2, L3_2, L4_2)
end
L6_1._setup_fund = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2._alley_placing_ship_result
  L2_2 = L2_2.OverallProfit
  L3_2 = A0_2._alley_placing_ship_result
  L3_2 = L3_2.GoodProfit
  L4_2 = A0_2._alley_placing_ship_result
  L4_2 = L4_2.OrderProfit
  L3_2 = L3_2 + L4_2
  if L2_2 >= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L6_2 = A0_2
    L5_2 = A0_2._create_profit_info_param
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L2_1
    L7_2 = L7_2(L8_2)
    L8_2 = true
    L9_2 = L2_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L6_2 = A0_2
    L5_2 = A0_2._create_profit_info_param
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_1
    L7_2 = L7_2(L8_2)
    L8_2 = false
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_result_info
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L6_1._setup_profit = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L6_2 = {}
  L6_2.TextStr = A1_2
  L6_2.ShowProfit = A2_2
  L6_2.Profit = A3_2
  L7_2 = A4_2 or L7_2
  if not A4_2 then
    L7_2 = false
  end
  L6_2.ShowStamp = L7_2
  L7_2 = A5_2 or L7_2
  if not A5_2 then
    L7_2 = 0
  end
  L6_2.Stamp = L7_2
  return L6_2
end
L6_1._create_profit_info_param = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_order_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_order_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L4_1
  L5_2 = L0_1.UnFinishedNormalOrderNum
  L2_2(L3_2, L4_2, L5_2)
end
L6_1._setup_order_left = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_order_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._setup_order_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_showing_event = true
  L2_2 = A0_2
  L1_2 = A0_2._get_main_mission_event_row
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._show_main_event
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._alley_placing_ship_result
  L2_2 = L2_2.EventID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AlleyEventExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L0_1.AlleyConstValue
    L4_2 = L4_2.AlleySpecialOrderStartEventID
    if L2_2 == L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._show_special_order_event
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      return
    else
      L4_2 = L3_2.EventType
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.EventTypeEnum
      L5_2 = L5_2.Shop
      if L4_2 ~= L5_2 then
        L4_2 = L3_2.EventType
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.EventTypeEnum
        L5_2 = L5_2.MainShop
        if L4_2 ~= L5_2 then
          goto lbl_51
        end
      end
      L5_2 = A0_2
      L4_2 = A0_2._show_shop_event
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      do return end
      goto lbl_63
      ::lbl_51::
      L4_2 = L3_2.EventType
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.EventTypeEnum
      L5_2 = L5_2.Daily
      if L4_2 == L5_2 then
        L5_2 = A0_2
        L4_2 = A0_2._show_daily_event
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        return
      end
    end
  end
  ::lbl_63::
  A0_2._is_showing_event = false
end
L6_1._setup_event = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_main_event_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_main_event_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_main_event_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventShopContent
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetEventMissionData
  L4_2 = A1_2.StartMissionIDList
  L4_2 = L4_2[0]
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MainMissionScheduleExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.ID
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.ActivityModuleID
    if L4_2 ~= 0 then
      L4_2 = L1_1
      L5_2 = L4_2
      L4_2 = L4_2.GetScheduleDataByActivityModuleID
      L6_2 = L3_2.ActivityModuleID
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.TimeManager
      L5_2 = L5_2.Instance
      L5_2 = L5_2.NowTimeStamp
      if L4_2 then
        L6_2 = L4_2.BeginTimeStamp
        if L5_2 < L6_2 then
          L6_2 = A0_2._binder
          L6_2 = L6_2.remain_time_mission
          L7_2 = L6_2
          L6_2 = L6_2.SafeSetActive
          L8_2 = true
          L6_2(L7_2, L8_2)
          L6_2 = A0_2._binder
          L6_2 = L6_2.remain_time_mission
          L7_2 = L6_2
          L6_2 = L6_2.SetTargetTimeByTimeStamp
          L8_2 = L4_2.BeginTimeStamp
          L9_2 = A0_2._on_timer_expire
          L10_2 = A0_2
          L11_2 = 2
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
          L6_2 = A0_2._binder
          L6_2 = L6_2.text_main_event_title
          L7_2 = L6_2
          L6_2 = L6_2.SafeSetTextID
          L8_2 = "UIText_ActivityAlley_MainPage_UnlockTimeAfter"
          L9_2 = L2_2.NameStr
          L6_2(L7_2, L8_2, L9_2)
          L7_2 = A0_2
          L6_2 = A0_2._set_btns_visible
          L8_2 = true
          L9_2 = false
          L10_2 = false
          L6_2(L7_2, L8_2, L9_2, L10_2)
      end
      else
        L6_2 = A0_2._binder
        L6_2 = L6_2.remain_time_mission
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = false
        L6_2(L7_2, L8_2)
        L7_2 = A0_2
        L6_2 = A0_2._set_btns_visible
        L8_2 = false
        L9_2 = false
        L10_2 = true
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_node_hint_visible
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L6_1._show_main_event = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L6_1._on_timer_expire = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.EventID
  A0_2._special_event_id = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_daily_event_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_daily_event_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_daily_event_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventShopContent
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_btns_visible
  L4_2 = false
  L5_2 = false
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_node_hint_visible
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L6_1._show_special_order_event = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.EventID
  A0_2._shop_event_id = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_shop_event_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_shop_event_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_shop_event_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventShopContent
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_shop_event_new_order_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventNewOrderTips
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_shop_icon
  L5_2 = A1_2.EventIcon
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_btns_visible
  L4_2 = false
  L5_2 = false
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_node_hint_visible
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L6_1._show_shop_event = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._event_row = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_daily_event_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_daily_event_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_daily_event_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.EventShopContent
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_btns_visible
  L4_2 = false
  L5_2 = true
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_node_hint_visible
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L6_1._show_daily_event = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_exit
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_pack
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_mission
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L6_1._set_btns_visible = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1._set_node_hint_visible = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_from_tutorial
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_exit
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._is_showing_event
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_trigger_event
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._return_to_pack
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowMsTimeStamp
  A0_2._setup_event_time_in_ms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_event
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_content
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "AlleyShippingResult_Contents_FadeOut"
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_empty = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._setup_event_time_in_ms
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.TimeManager
    L1_2 = L1_2.Instance
    L1_2 = L1_2.NowMsTimeStamp
    L2_2 = A0_2._setup_event_time_in_ms
    L1_2 = L1_2 - L2_2
    L1_2 = L1_2 / 1000
    L2_2 = L5_1
    L2_2 = L1_2 > L2_2
    return L2_2
  end
end
L6_1._is_exceeded_protect_time = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_pack_main_page
  L1_2(L2_2)
end
L6_1._on_btn_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_trigger_event
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_exceeded_protect_time
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._return_to_pack
  L1_2(L2_2)
end
L6_1._on_btn_pack = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._continue_pack_callback
  L3_2 = A0_2._continue_pack_callback_self
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._return_to_pack = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_exceeded_protect_time
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._shop_event_id
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._switch_to_mission_page
    L4_2 = A0_2
    L3_2 = A0_2._get_shop_event_mission_id
    L5_2 = A0_2._shop_event_id
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = A0_2._special_event_id
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._switch_to_mission_page
    L4_2 = A0_2
    L3_2 = A0_2._get_special_event_mission_id
    L5_2 = A0_2._special_event_id
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = A0_2._event_row
  if L1_2 ~= nil then
    L2_2 = L1_2.EventType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.EventTypeEnum
    L3_2 = L3_2.Daily
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._switch_to_map_page
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._exit_entrance_page
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._exit_pack_main_page
  L2_2(L3_2)
end
L6_1._on_btn_mission = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1.SideEvents
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.EventInfo
    L8_2 = L8_2.EventID
    if L8_2 == A1_2 then
      L8_2 = L0_1
      L9_2 = L8_2
      L8_2 = L8_2.GetEventActiveMissionID
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 ~= nil then
        return L8_2
      end
    end
  end
end
L6_1._get_shop_event_mission_id = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyEventExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.StartMissionIDList
    L3_2 = L3_2.Length
    if 0 < L3_2 then
      L3_2 = L2_2.StartMissionIDList
      L3_2 = L3_2[0]
      return L3_2
    end
  end
end
L6_1._get_special_event_mission_id = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.GotoByType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.Mission
    L3_2 = #L3_2
    L4_2 = {}
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionType
    L5_2 = L5_2.None
    L5_2 = #L5_2
    L6_2 = A1_2
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_UIManager
      L4_2 = L3_2
      L3_2 = L3_2.GetPageByName
      L5_2 = "MissionPage"
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 ~= nil then
        L5_2 = L3_2
        L4_2 = L3_2.SetEnterCallback
        function L6_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._exit_pack_main_page
          L0_3(L1_3)
        end
        L4_2(L5_2, L6_2)
      end
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._exit_entrance_page
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._exit_pack_main_page
  L2_2(L3_2)
end
L6_1._switch_to_mission_page = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.MappingInfoID
  if 0 < L2_2 then
    L2_2 = A1_2.MappingInfoID
    if L2_2 then
      goto lbl_8
    end
  end
  L2_2 = nil
  ::lbl_8::
  L3_2 = G
  L3_2 = L3_2.GotoManager
  L3_2 = L3_2.GotoByType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.AreaSwitch
  L4_2 = #L4_2
  L5_2 = {}
  L6_2 = A1_2.MapEntranceID
  L7_2 = L2_2
  L8_2 = nil
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_UIManager
    L5_2 = L4_2
    L4_2 = L4_2.GetPageByName
    L6_2 = "SwitchAreaPage"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L6_2 = L4_2
      L5_2 = L4_2.SetEnterCallback
      function L7_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._exit_entrance_page
        L0_3(L1_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._exit_pack_main_page
        L0_3(L1_3)
      end
      L5_2(L6_2, L7_2)
    end
  end
end
L6_1._switch_to_map_page = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._native
  L1_2 = L1_2.Parent
  if L1_2 ~= nil then
    L2_2 = L1_2.Name
    if L2_2 == "ActivityAlleyPackMainPage" then
      goto lbl_14
    end
  end
  L2_2 = L1_2.Name
  if L2_2 ~= "TutorialActivityAlleyPackMainPage" then
    L2_2 = L1_2.Name
    if L2_2 ~= "AlleySpecialOrderPackMainPage" then
      goto lbl_18
    end
  end
  ::lbl_14::
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.exit
  L2_2(L3_2)
  goto lbl_20
  ::lbl_18::
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  ::lbl_20::
end
L6_1._exit_pack_main_page = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AlleyExitEntrancePage
  L1_2(L2_2)
end
L6_1._exit_entrance_page = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_main_mission_event_row
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2 = true
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_sub_event_row
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end
L6_1._is_trigger_event = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = L0_1.CurMainEventStage
  L3_2 = L0_1.MaxFinishedMainEventStage
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 - 1
  if 0 <= L1_2 then
    L2_2 = L0_1.MainEvents
    L2_2 = L2_2.Count
    if L1_2 < L2_2 then
      L2_2 = L0_1.MainEvents
      L2_2 = L2_2[L1_2]
      L3_2 = L0_1
      L4_2 = L3_2
      L3_2 = L3_2.GetEventActiveMissionID
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.AlleyMissionExcelTable
      L4_2 = L4_2.GetData
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L5_2 = L4_2.IsUrgent
        if L5_2 then
          L5_2 = L2_2.EventInfo
          L6_2 = L5_2.EventType
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.GameCore
          L7_2 = L7_2.EventTypeEnum
          L7_2 = L7_2.Main
          if L6_2 == L7_2 then
            return L5_2
          end
        end
      end
    end
  end
end
L6_1._get_main_mission_event_row = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._alley_placing_ship_result
  L1_2 = L1_2.EventID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyEventExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L0_1.AlleyConstValue
    L3_2 = L3_2.AlleySpecialOrderStartEventID
    if L1_2 ~= L3_2 then
      L3_2 = L2_2.EventType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.EventTypeEnum
      L4_2 = L4_2.Shop
      if L3_2 ~= L4_2 then
        L3_2 = L2_2.EventType
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.EventTypeEnum
        L4_2 = L4_2.MainShop
        if L3_2 ~= L4_2 then
          L3_2 = L2_2.EventType
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.GameCore
          L4_2 = L4_2.EventTypeEnum
          L4_2 = L4_2.Daily
          if L3_2 ~= L4_2 then
            goto lbl_41
          end
        end
      end
    end
    return L2_2
  end
  ::lbl_41::
end
L6_1._get_sub_event_row = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_placing_ship_result
  L1_2 = L1_2.EventID
  L2_2 = L0_1.AlleyConstValue
  L2_2 = L2_2.AlleySpecialOrderStartEventID
  L1_2 = L1_2 == L2_2
  return L1_2
end
L6_1._is_trigger_special_order_start = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.AlleyConstValue
  L1_2 = L1_2.RepeatUnlockMissionID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConditionCheckerUtil
  L2_2 = L2_2.CheckFinishMainMission
  L3_2 = L1_2
  return L2_2(L3_2)
end
L6_1._is_finish_final_mission = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._in_control_exit_click = L7_1
return L6_1
