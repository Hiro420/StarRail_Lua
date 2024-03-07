local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Rogue.Reward.RogueKeyExchangeDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueKeyExchangeDialog"
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
L2_1 = L2_1.ConstValueRogueExcelTable
L2_1 = L2_1.GetData
L3_1 = "Rogue_Reward_Key_Exchange_Stamina"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.ConstValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueRogueExcelTable
L3_1 = L3_1.GetData
L4_1 = "Rogue_Reward_Key_Soft_Max"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.ConstValue
L4_1 = G
L4_1 = L4_1.UIColorUtils
L4_1 = L4_1.GetColor
L5_1 = "#ffffff"
L4_1 = L4_1(L5_1)
L5_1 = G
L5_1 = L5_1.UIColorUtils
L5_1 = L5_1.GetColor
L6_1 = "#B65B52"
L5_1 = L5_1(L6_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueKeyExchangeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._exchange_count = 1
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.BNGBGCPINPM
  L4_2 = A0_2._on_exchange_end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = A0_2._on_stamina_change
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "ExchangeRogueRewardKeyScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.CreateDisplayItemData
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = CS
  L5_2 = L5_2.HJLLLAFEOHH
  L5_2 = L5_2.AALHPNJNDPF
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2.Count
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.show_reward_dialog
  L5_2 = {}
  L6_2 = L3_2
  L5_2[1] = L6_2
  L4_2(L5_2)
end
L0_1._on_exchange_end = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_view
  L1_2(L2_2)
end
L0_1._on_stamina_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar_area
  L3_2 = "RogueKeyExchangeDialog"
  L4_2 = A0_2
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._res_bar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_view
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetResBarCountByConfigID
  L4_2 = A0_2
  L3_2 = A0_2._get_rogue_reward_key_config_id
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = 1
  L3_2 = L3_1
  L3_2 = L3_2 - L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_slider
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = A0_2._on_slider_value_changed
  L9_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item1
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_stamina_config_id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item2
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_rogue_reward_key_config_id
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_items = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.ConvCsEnumToNum
  L2_2 = CS
  L2_2 = L2_2.HJLLLAFEOHH
  L2_2 = L2_2.EILHMDCAIOC
  return L1_2(L2_2)
end
L0_1._get_stamina_config_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.ConvCsEnumToNum
  L2_2 = CS
  L2_2 = L2_2.HJLLLAFEOHH
  L2_2 = L2_2.AALHPNJNDPF
  return L1_2(L2_2)
end
L0_1._get_rogue_reward_key_config_id = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._exchange_count = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._update_view
  L2_2(L3_2)
end
L0_1._on_slider_value_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = tonumber
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._exchange_count
  L1_2 = L1_2 * L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.Stamina
  L3_2 = L1_2 > L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_item1
  L5_2 = L4_2
  L4_2 = L4_2.set_count
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L7_2 = L1_2 + 1
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_item2
  L5_2 = L4_2
  L4_2 = L4_2.set_count
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = A0_2._exchange_count
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_warning_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._update_view = L6_1
function L6_1(A0_2)
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
L0_1._on_btn_cancel_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._exchange_count
  L1_2 = L1_2 * L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.Stamina
  if L1_2 <= L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.show_full_screen_block_for_packet
    L5_2 = CS
    L5_2 = L5_2.NIJNBICAPPA
    L5_2 = L5_2.BNGBGCPINPM
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.NetworkManager
    L3_2 = L3_2.OOGONDGGKMI
    L4_2 = L3_2
    L3_2 = L3_2.BDDGFIBNILH
    L5_2 = A0_2._exchange_count
    L3_2(L4_2, L5_2)
  else
    L3_2 = G
    L3_2 = L3_2.GotoManager
    L3_2 = L3_2.GotoByType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.GotoType
    L4_2 = L4_2.Stamina
    L4_2 = #L4_2
    L3_2(L4_2)
  end
end
L0_1._on_btn_confirm_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L5_2 = A0_2
  L4_2 = A0_2._get_stamina_config_id
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L5_2 = A0_2
  L4_2 = A0_2._get_rogue_reward_key_config_id
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = {}
  L2_2.items = L1_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._on_left_stick_button_click = L6_1
return L0_1
