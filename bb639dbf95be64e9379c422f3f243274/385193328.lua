local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Common.PayConversionDialogBinder"
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
L0_1 = L0_1.Client
L0_1 = L0_1.InventoryModule
L0_1 = L0_1.GetHCoinConfigID
L0_1 = L0_1()
L1_1 = 3
L2_1 = G
L2_1 = L2_1.UIColorUtils
L2_1 = L2_1.GetColor
L3_1 = "#C84A32"
L2_1 = L2_1(L3_1)
L3_1 = G
L3_1 = L3_1.UIColorUtils
L3_1 = L3_1.GetColor
L4_1 = "#FFFFFF"
L3_1 = L3_1(L4_1)
L4_1 = {}
L5_1 = G
L5_1 = L5_1.ShopUtils
L5_1 = L5_1.mcoin_id
L6_1 = G
L6_1 = L6_1.ShopUtils
L6_1 = L6_1.hcoin_id
L4_1[1] = L5_1
L4_1[2] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.InventoryModule
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "PayConversionDialog"
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
  L3_2 = L3_2.PayConversionDialogBinder
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
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L5_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._has_num = L2_2
  A0_2._init_num = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_need_num
  L2_2 = L2_2(L3_2)
  A0_2._need_num = L2_2
  L2_2 = A1_2 ~= nil
  A0_2._check_sufficient = L2_2
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._init_num
  if L1_2 == nil then
    L1_2 = 1
    return L1_2
  end
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = A0_2._init_num
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L6_1._init_need_num = L7_1
function L7_1(A0_2)
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
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.PDDCCKIMKAE
  L4_2 = A0_2._on_conversion_end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.loadmeta_resbar
  L3_2 = "RechargePage"
  L4_2 = A0_2
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
    A0_2._cur_num = L2_3
    L2_3 = A0_2._from_slider
    if not L2_3 then
      L2_3 = A0_2._binder
      L2_3 = L2_3.panel_slider
      L3_3 = L2_3
      L2_3 = L2_3.set_amount
      L4_3 = A0_2._cur_num
      L2_3(L3_3, L4_3)
    end
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._refresh
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
      L3_3 = A0_2._cur_num
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
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_items
  L1_2(L2_2)
  A0_2._cur_num = 1
  A0_2._min_value = 1
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 1
  L3_2 = A0_2._has_num
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._max_value = L1_2
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
  L4_2 = A0_2._need_num
  L5_2 = A0_2._max_value
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item1
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.ShopUtils
  L3_2 = L3_2.mcoin_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item2
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.ShopUtils
  L3_2 = L3_2.hcoin_id
  L1_2(L2_2, L3_2)
end
L6_1._setup_items = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._cur_num = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num
  L3_2 = tostring
  L4_2 = A0_2._cur_num
  L3_2 = L3_2(L4_2)
  L2_2.text = L3_2
end
L6_1._set_amount = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.ShopUtils
      L1_3 = L1_3.goto_recharge_shop
      L1_3()
    end
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetComponentContent
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L6_2 = A0_2._need_num
  L7_2 = A0_2._has_num
  L6_2 = L6_2 - L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L6_1._show_goto_recharge_shop_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item1
  L2_2 = L1_2
  L1_2 = L1_2.set_count
  L3_2 = A0_2._cur_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item2
  L2_2 = L1_2
  L1_2 = L1_2.set_count
  L3_2 = A0_2._cur_num
  L1_2(L2_2, L3_2)
end
L6_1._refresh = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._from_slider = true
  L3_2 = A0_2
  L2_2 = A0_2._set_amount
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._from_slider = false
end
L6_1._on_slider_value_changed = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "ExchangeHcoinScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.CreateDisplayItemData
  L4_2 = L0_1
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
L6_1._on_conversion_end = L7_1
function L7_1(A0_2)
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
L6_1._on_btn_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._cur_num
  L2_2 = A0_2._has_num
  if L1_2 > L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_goto_recharge_shop_hint
    L3_2 = "UIText_Recharge_Dialog_Desc_Goto2"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.PADAPJKFIPO
  L3_2 = A0_2._cur_num
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.PDDCCKIMKAE
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_confirm = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L6_1._on_in_control_action_click = L7_1
function L7_1(A0_2)
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
L6_1._on_left_stick_button_click = L7_1
return L6_1
