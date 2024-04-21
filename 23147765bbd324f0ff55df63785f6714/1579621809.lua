local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AlleySpecialOrderSelectPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_again
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_in_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip_go
  L2_2.IsShowTipBySelected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip_again
  L2_2.IsShowTipBySelected = A1_2
end
L1_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._special_order_data = nil
  A0_2._on_click_callback = nil
  A0_2._on_click_callback_owner = nil
  A0_2._config_ids = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._special_order_data = A1_2
  L2_2 = A0_2._special_order_data
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AlleyOrderStatus
  L3_2 = L3_2.OrderFinish
  L2_2 = L2_2 == L3_2
  A0_2._is_finish = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reddot
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_click_callback = A1_2
  A0_2._on_click_callback_owner = A2_2
end
L1_1.register_btn_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._special_order_data
  L3_2 = L3_2.SubTitleID
  L1_2(L2_2, L3_2)
end
L1_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTable
  L2_2 = A0_2._special_order_data
  L2_2 = L2_2.SpecialOrderReward
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_item_list
  L3_2 = L2_2
  L2_2 = L2_2.init_node
  L4_2 = #L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._config_ids = L2_2
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._config_ids
    L9_2 = L6_2.ItemID
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_reward_item_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_view_active_by_scale
    L10_2 = true
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_view_by_reward_item
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_attachment_getted
    L10_2 = A0_2._is_finish
    L8_2(L9_2, L10_2)
  end
end
L1_1._setup_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finish
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_again
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finish
  L1_2(L2_2, L3_2)
end
L1_1._setup_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AlleySpecialOrderNew"
  L4_2 = A0_2._special_order_data
  L4_2 = L4_2.OrderID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._setup_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.Pack.SpecialOrder.AlleySpecialOrderPackMainPage"
  L3_2 = A0_2._special_order_data
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RecordSpecialOrderID
  L3_2 = A0_2._special_order_data
  L3_2 = L3_2.OrderID
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L1_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L1_1._on_left_stick_button_click = L2_1
return L1_1
