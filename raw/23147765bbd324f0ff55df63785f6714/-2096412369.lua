local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.ActivityAlleyPackMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.ActivityAlleyPackMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Tutorial.TutorialAlleyPackTaskItem"
L0_1(L1_1)
L0_1 = "Tutorial_Alley_Pack_CustomStr_9811"
L1_1 = "Tutorial_Alley_Pack_CustomStr_9812"
L2_1 = "Tutorial_Alley_Pack_CustomStr_9813"
L3_1 = "Tutorial_Alley_Pack_CustomStr_9814"
L4_1 = "Tutorial_Alley_Pack_CustomStr_9815"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.AlleyModule
L6_1 = "UIText_ActivityAlley_Shipping_GoTipsTitle"
L7_1 = "UIText_ActivityAlley_Shipping_GoFailed"
L8_1 = "UIText_ActivityAlley_Shipping_Tutorial_CloseTips"
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "TutorialActivityAlleyPackMainPage"
L11_1 = G
L11_1 = L11_1.ActivityAlleyPackMainPage
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.create_pack_statistics
  L1_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AlleyOrderData
  L2_2 = L5_1.AlleyConstValue
  L2_2 = L2_2.TutorialOrderID
  L1_2 = L1_2(L2_2)
  A0_2._order_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AlleyShipData
  L2_2 = A0_2._order_data
  L2_2 = L2_2.OrderShip
  L1_2 = L1_2(L2_2)
  A0_2._cur_ship = L1_2
  L1_2 = A0_2._cur_ship
  L1_2.IsUnlock = true
  L2_2 = A0_2
  L1_2 = A0_2._init_tutorial_data
  L1_2(L2_2)
end
L9_1.init = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._dispose_tutorial_data
  L1_2(L2_2)
  L1_2 = L9_1.super
  L1_2 = L1_2._on_dispose
  L2_2 = A0_2
  L1_2(L2_2)
end
L9_1._on_dispose = L10_1
function L10_1(A0_2)
  local L1_2
end
L9_1._try_show_new_order_hint = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._trigger_tutorial_ship_finish
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Activity.ActivityAlley.Pack.Result.AlleyPackShippingResultDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_from_tutorial
  L2_2(L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  function L4_2()
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
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L9_1._on_alley_placing_ship_finish = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L9_1.super
  L1_2 = L1_2._on_load
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_ship_control
  L2_2 = L1_2
  L1_2 = L1_2.register_btn_vertical_callback
  L3_2 = A0_2._check_and_trigger_finish_tutorial_task_2
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L9_1._on_load = L10_1
function L10_1(A0_2)
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
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_1
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_3
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_4
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_5
  L1_2(L2_2)
end
L9_1._on_good_settle = L10_1
function L10_1(A0_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_1
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_3
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_4
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_and_trigger_finish_tutorial_task_5
  L1_2(L2_2)
end
L9_1._on_good_cancel_settle = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.is_forbid_op
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
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
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.record_end_time
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._trigger_ship_performance
  L1_2(L2_2)
end
L9_1._on_btn_go = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.Pack.AlleyPackConfirmDialog"
  L3_2 = L8_1
  L4_2 = L6_1
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
L9_1._on_btn_exit = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._tutorial_task_item_table
  if L1_2 ~= nil then
    return
  end
  L1_2 = {}
  A0_2._tutorial_task_item_table = L1_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L0_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L0_1
  L6_2 = false
  L7_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L1_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L1_1
  L6_2 = false
  L7_2 = L0_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L2_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L2_1
  L6_2 = false
  L7_2 = L1_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L3_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L3_1
  L6_2 = false
  L7_2 = L2_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._tutorial_task_item_table
  L2_2 = L4_1
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAlleyPackTaskItem
  L5_2 = L4_1
  L6_2 = false
  L7_2 = L3_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2[L2_2] = L3_2
end
L9_1._init_tutorial_data = L10_1
function L10_1(A0_2)
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
L9_1._dispose_tutorial_data = L10_1
function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._tutorial_task_item_table
  L2_2 = L2_2[A1_2]
  return L2_2
end
L9_1._get_tutorial_task_item = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.pre_task_item_key
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_tutorial_task_item
  L4_2 = A1_2.pre_task_item_key
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L9_1._is_finish_pre_task = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = A0_2._tutorial_task_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.is_finish
    if not L6_2 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L9_1._is_finish_all_tutorial = L10_1
function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == nil or L2_2
  return L2_2
end
L9_1._is_skip_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_skip_check
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._pack_ui3d_page
    L3_2 = L2_2
    L2_2 = L2_2.get_cur_select_good
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.AlleyPackGoodData
    L3_2 = L2_2 ~= nil and L3_2
    L5_2 = L1_2
    L4_2 = L1_2.update_status
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_depot
    L7_2 = L6_2
    L6_2 = L6_2.is_auto_settle_success
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L3_2
    end
    L4_2(L5_2, L6_2)
  end
end
L9_1._check_and_trigger_finish_tutorial_task_1 = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_skip_check
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.update_status
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L9_1._check_and_trigger_finish_tutorial_task_2 = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_skip_check
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_depot
    L3_2 = L2_2
    L2_2 = L2_2.get_goods_profit
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._is_target_anchor_occupied
    L4_2 = 3
    L2_2 = 0 < L2_2 and L2_2
    L4_2 = L1_2
    L3_2 = L1_2.update_status
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L9_1._check_and_trigger_finish_tutorial_task_3 = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.get_alley_pack_ship_data
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.IsTailAnchorOccupied
  L5_2 = A1_2
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L9_1._is_target_anchor_occupied = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_skip_check
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.update_status
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_order
    L5_2 = L4_2
    L4_2 = L4_2.is_all_target_finish
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L9_1._check_and_trigger_finish_tutorial_task_4 = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tutorial_task_item
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_skip_check
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_depot
    L3_2 = L2_2
    L2_2 = L2_2.get_goods_profit
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._is_target_anchor_occupied
    L4_2 = 4
    L2_2 = 0 < L2_2 and L2_2
    L4_2 = L1_2
    L3_2 = L1_2.update_status
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L9_1._check_and_trigger_finish_tutorial_task_5 = L10_1
return L9_1
