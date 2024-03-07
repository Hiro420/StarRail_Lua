local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumGetFundDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumGetFundDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumGetFundDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_can_close = false
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.FundNum
  A0_2._fund_num = L2_2
  L2_2 = A1_2.RewardTargetID
  A0_2._reward_target_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._set_close
  L5_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._protected_time_timer = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_empty_close_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.MuseumUtils
  L1_2 = L1_2.get_fund_item_data
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_item
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = A0_2._fund_num
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._protected_time_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._protected_time_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.MuseumUtils
  L1_2 = L1_2.get_fund_item_data
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = {}
  L4_2 = L1_2
  L3_2[1] = L4_2
  L2_2.items = L3_2
  L2_2.sync_load = false
  L2_2.is_item = true
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._is_can_close = true
end
L0_1._set_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_can_close
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_btn_empty_close_click = L2_1
return L0_1
