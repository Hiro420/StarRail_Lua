local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooMaterialExchangeDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaFactory"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooMaterialExchangeDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.SpaceZooMutationMaterialExcelTable
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooMaterialExchangeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_repeatable_open_dialog = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L2_1.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.ExchangeCost
  A0_2._exchange_multiplier = L2_2
  A0_2._exchange_item_id = 2
  A0_2._goal_item_id = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar_area
  L3_2 = "SpaceZooMaterialExchangeDialog"
  L4_2 = A0_2
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._res_bar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_exchange_item_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_goal_item_view
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooExchangeItemFinish
  L4_2 = A0_2._on_exchange_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_exchange_item
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._exchange_item_id
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = A0_2._exchange_item_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._exchange_multiplier
  L3_2 = L2_2 < L3_2
  L5_2 = L1_2
  L4_2 = L1_2.set_count
  L6_2 = A0_2._exchange_multiplier
  L7_2 = A0_2._exchange_multiplier
  L7_2 = L7_2 + 1
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_exchange_item_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_goal_item
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._goal_item_id
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_count
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L0_1._setup_goal_item_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exchange_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.FLCCPNEFMEJ
  L3_2 = A0_2._goal_item_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2._goal_item_id
  L2_2[1] = L3_2
  L1_2.items = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_left_stick_button_click = L3_1
return L0_1
