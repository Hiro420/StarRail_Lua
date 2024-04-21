local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Common.PhysicalExchange.ReserveStaminaExchangeDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaFactory"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueClientExcelTable
L0_1 = L0_1.GetData
L1_1 = "ReserveStamina_ProgressMax"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L0_1 = L0_1.IntValue
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "ReserveStamina_RecommendPoint"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = G
L2_1 = L2_1.StaminaModule
L2_1 = L2_1.Instance
L3_1 = L2_1
L2_1 = L2_1.get_stamina_id
L2_1 = L2_1(L3_1)
L3_1 = G
L3_1 = L3_1.StaminaModule
L3_1 = L3_1.Instance
L4_1 = L3_1
L3_1 = L3_1.get_reserve_stamina_id
L3_1 = L3_1(L4_1)
L4_1 = {}
L5_1 = L3_1
L6_1 = L2_1
L4_1[1] = L5_1
L4_1[2] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.InventoryModule
L6_1 = G
L6_1 = L6_1.StaminaModule
L6_1 = L6_1.Instance
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.ConstValueCommonExcelTable
L7_1 = L7_1.GetData
L8_1 = "Stamina_Maximum_Num"
L7_1 = L7_1(L8_1)
L7_1 = L7_1.Value
L7_1 = L7_1.IntValue
L8_1 = "RetCodeError_2102"
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "ReserveStaminaExchangeDialog"
L11_1 = G
L11_1 = L11_1.UIController
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ReserveStaminaExchangeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_repeatable_open_dialog = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_need_num
  L1_2 = L1_2(L2_2)
  A0_2._init_num = L1_2
end
L9_1.ctor = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L1_1
  L3_2 = L5_1
  L4_2 = L3_2
  L3_2 = L3_2.GetItemCountByConfigID
  L5_2 = L3_1
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
L9_1._init_need_num = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReserveStaminaChanged
  L4_2 = A0_2._on_reserve_stamina_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.NKDKHCBICII
  L4_2 = A0_2._on_conversion_end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_num
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = A0_2._lock
    if L1_3 then
      return
    end
    L1_3 = nil
    L2_3 = CS
    L2_3 = L2_3.System
    L2_3 = L2_3.String
    L2_3 = L2_3.IsNullOrEmpty
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L1_3 = 1
    else
      L2_3 = math
      L2_3 = L2_3.floor
      L3_3 = tonumber
      L4_3 = A0_3
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L1_3 = L2_3
    end
    L2_3 = math
    L2_3 = L2_3.max
    L3_3 = A0_2._min_value
    L4_3 = math
    L4_3 = L4_3.min
    L5_3 = A0_2._max_value
    L6_3 = L1_3
    L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    A0_2._to_exchange_num = L2_3
    L2_3 = A0_2._from_slider
    if not L2_3 then
      L2_3 = A0_2._binder
      L2_3 = L2_3.panel_slider
      L3_3 = L2_3
      L2_3 = L2_3.set_amount
      L4_3 = A0_2._to_exchange_num
      L2_3(L3_3, L4_3)
    end
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._refresh_num
    L2_3(L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_num
  L1_2 = L1_2.onEndEdit
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2._binder
    if L1_3 then
      A0_2._lock = true
      L1_3 = A0_2._binder
      L1_3 = L1_3.input_num
      L2_3 = tostring
      L3_3 = A0_2._to_exchange_num
      L2_3 = L2_3(L3_3)
      L1_3.text = L2_3
      A0_2._lock = false
    end
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 4
  L1_2(L2_2, L3_2)
end
L9_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reserve_stamina_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_stamina_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "RewardConfirmDialog"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._init_num
  A0_2._to_exchange_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L9_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._reserve_stamina_num = L1_2
  A0_2._min_value = 1
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L0_1
  L3_2 = A0_2._reserve_stamina_num
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._max_value = L1_2
  L1_2 = A0_2._to_exchange_num
  A0_2._last_slider_num = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_slider
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._min_value
  L4_2 = A0_2._max_value
  L5_2 = A0_2._on_slider_value_changed
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_slider
  L2_2 = L1_2
  L1_2 = L1_2.set_amount
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = A0_2._last_slider_num
  L5_2 = A0_2._max_value
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L9_1._refresh = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemDataByConfigID
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_stamina
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.InventoryItemIconPanel
  L5_2 = G
  L5_2 = L5_2.InventoryItemIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_stamina
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view_by_item
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L9_1._setup_stamina_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemDataByConfigID
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_reserve_stamina
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.InventoryItemIconPanel
  L5_2 = G
  L5_2 = L5_2.InventoryItemIconPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_reserve_stamina
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view_by_item
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L9_1._setup_reserve_stamina_view = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._to_exchange_num = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num
  L3_2 = tostring
  L4_2 = A0_2._to_exchange_num
  L3_2 = L3_2(L4_2)
  L2_2.text = L3_2
end
L9_1._set_amount = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_num1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._to_exchange_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_num2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._to_exchange_num
  L1_2(L2_2, L3_2)
end
L9_1._refresh_num = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._from_slider = true
  L3_2 = A0_2
  L2_2 = A0_2._set_amount
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._from_slider = false
end
L9_1._on_slider_value_changed = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "ReserveStaminaExchangeScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.CreateDisplayItemData
  L4_2 = L2_1
  L5_2 = L2_2.Num
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.show_reward_dialog
  L5_2 = {}
  L6_2 = L3_2
  L5_2[1] = L6_2
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.exit
  L4_2(L5_2)
end
L9_1._on_conversion_end = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_exchanging
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L9_1._on_reserve_stamina_changed = L10_1
function L10_1(A0_2)
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
L9_1._on_btn_exit = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._to_exchange_num
    L2_2 = A0_2._reserve_stamina_num
    if not (L1_2 > L2_2) then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = L6_1
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_stamina
  L1_2 = L1_2(L2_2)
  L2_2 = L7_1
  if L1_2 >= L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L8_1
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.NKDKHCBICII
  L2_2(L3_2, L4_2)
  A0_2._is_exchanging = true
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.exchange_reserve_stamina
  L4_2 = A0_2._to_exchange_num
  L2_2(L3_2, L4_2)
end
L9_1._on_btn_confirm = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L9_1._on_in_control_action_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L4_1
  L1_2.items = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L9_1._on_left_stick_button_click = L10_1
return L9_1
