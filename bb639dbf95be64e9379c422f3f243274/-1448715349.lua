local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Result.AlleyPackSpecialOrderShippingResultDialogBinder"
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
L1_1 = "UIText_ActivityAlley_Event_RewardDisplay"
L2_1 = "UIText_ActivityAlley_Shipping_Go_Profit"
L3_1 = "UIText_ActivityAlley_Shipping_Go_TargetMax"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "AlleyPackSpecialOrderShippingResultDialog"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyPackSpecialOrderShippingResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleySpecialOrderData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._special_order_data = L2_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_reward
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._special_order_data = nil
  A0_2._alley_placing_ship_result = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.AlleyPlacingShipResult
  A0_2._alley_placing_ship_result = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L3_2 = "UIText_ActivityAlley_Shipping_Go_Completed"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_fund
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_profit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_order_effect_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_btns_visible
  L3_2 = true
  L4_2 = false
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_node_hint_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
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
L4_1._set_btns_visible = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._set_node_hint_visible = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._setup_title = L5_1
function L5_1(A0_2)
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
L4_1._setup_fund = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2._alley_placing_ship_result
  L2_2 = L2_2.OverallProfit
  if 0 < L2_2 then
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
L4_1._setup_profit = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
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
L4_1._create_profit_info_param = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTable
  L2_2 = A0_2._special_order_data
  L2_2 = L2_2.SpecialOrderReward
  L1_2 = L1_2(L2_2)
  A0_2._reward_table = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_table
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._setup_special_order_effect_reward = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_reward_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L4_1._on_get_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_pack_main_page
  L1_2(L2_2)
end
L4_1._on_btn_exit = L5_1
function L5_1(A0_2)
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
L4_1._exit_pack_main_page = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._in_control_exit_click = L5_1
return L4_1
