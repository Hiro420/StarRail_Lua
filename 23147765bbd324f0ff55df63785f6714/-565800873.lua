local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MuseumModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AlleyModule
L4_1 = G
L4_1 = L4_1.StaminaModule
L4_1 = L4_1.Instance
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueRogueExcelTable
L5_1 = L5_1.GetData
L6_1 = "Rogue_Reward_Key_Soft_Max"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.ConstValue
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_detail_btn_click
  L1_2(L2_2, L3_2, L4_2)
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
    L0_3 = L0_3._on_btn_root_select_trigger
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_deselect_trigger
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReserveStaminaChanged
  L4_2 = L0_1._on_reserve_stamina_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = L0_1._on_stamina_changed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_states
  L4_2 = L4_2.gameObject
  L5_2 = A1_2.currency_id
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2.currency_id
  A0_2._currency_ID = L2_2
  L3_2 = A1_2.is_show_detail
  A0_2._is_show_detail = L3_2
  L3_2 = A1_2.disable_goto
  A0_2._disable_goto = L3_2
  L3_2 = A1_2.ban_click
  A0_2._ban_click = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.CurrencyDisplayExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2._res_row = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InventoryModule
  L3_2 = L3_2.GetItemRow
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetResBarCountByConfigID
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_splash
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_total_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_plus
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L8_2 = A0_2
  L7_2 = A0_2._can_goto
  L7_2, L8_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = tostring
  L8_2 = L4_2
  L7_2, L8_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.icon
  L8_2 = L3_2.ItemCurrencyIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L0_1._is_stamina
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._setup_stamina_bar
    L5_2(L6_2)
  end
  L5_2 = L0_1._is_reserve_stamina
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._refresh_reserve_stamina_bar
    L5_2(L6_2)
  end
  L5_2 = L0_1._is_punklord_support
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._setup_punklord_support_bar
    L5_2(L6_2)
  end
  L5_2 = L0_1._is_rogue_key
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._setup_rogue_key_bar
    L5_2(L6_2)
  end
  L5_2 = L0_1._is_museum_currency
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._setup_museum_bar
    L5_2(L6_2)
  end
  L5_2 = L0_1._is_alley_currency
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._setup_alley_bar
    L5_2(L6_2)
  end
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._currency_ID
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetResBarCountByConfigID
    L3_2 = A0_2._currency_ID
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = tostring
    L5_2 = L1_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_num = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.ConvCsEnumToNum
  L2_2 = CS
  L2_2 = L2_2.HGGDPEHMDBH
  L2_2 = L2_2.JKCCBOKHLAC
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1._is_stamina = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.ConvCsEnumToNum
  L2_2 = CS
  L2_2 = L2_2.HGGDPEHMDBH
  L2_2 = L2_2.BILFLFNMICN
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1._is_reserve_stamina = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._currency_ID = nil
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._ban_click
  if L1_2 then
    return
  end
  L1_2 = L0_1._is_punklord_support
  L2_2 = A0_2._res_row
  L2_2 = L2_2.CurrencyID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.PunkLordModule
    L1_2.ShowSupportRedDot = false
    L2_2 = A0_2
    L1_2 = A0_2._show_punklord_detail
    L1_2(L2_2)
    return
  end
  L1_2 = L0_1._is_rogue_key
  L2_2 = A0_2._res_row
  L2_2 = L2_2.CurrencyID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetResBarCountByConfigID
    L3_2 = A0_2._res_row
    L3_2 = L3_2.CurrencyID
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = tonumber
    L3_2 = L5_1
    L2_2 = L2_2(L3_2)
    if L1_2 >= L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "UIText_Rogue_Key_MaxLimit"
      L2_2(L3_2, L4_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._can_goto
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = A0_2._res_row
    L2_2 = L2_2.GotoID
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._currency_ID
  L2_2(L3_2, L4_2)
end
L0_1._on_detail_btn_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = L0_1._is_punklord_support
  L2_2 = A0_2._currency_ID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_punklord_detail
    L1_2(L2_2)
  end
end
L0_1._on_btn_root_select_trigger = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_tips_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root_deselect_trigger = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_tips_panel
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_in_control_input_switch = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._res_row
  L1_2 = A0_2._res_row
  L1_2 = L1_2.GotoID
  L1_2 = A0_2._disable_goto
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1._can_goto = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_splash
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.get_max_stamina
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_stamina_bar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_reserve_stamina
  L1_2 = L1_2(L2_2)
  L2_2 = L4_1
  L3_2 = L2_2
  L2_2 = L2_2.get_max_reserve_stamina
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 >= L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_max_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_max_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_reserve_stamina_bar = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PunkLordModule
  L1_2 = L1_2.PunkLordSupportItemConfigID
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1._is_punklord_support = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PunkLordModule
  L1_2 = L1_2.SupportLeftTimes
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_punklord_support_reddot
  L2_2(L3_2)
end
L0_1._setup_punklord_support_bar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityPunkLordSupport"
  L4_2 = 0
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_punklord_support_reddot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.ConvCsEnumToNum
  L2_2 = CS
  L2_2 = L2_2.HGGDPEHMDBH
  L2_2 = L2_2.GFBJIDIGEEA
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1._is_rogue_key = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_splash
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_rogue_key_bar = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = L2_1.MuseumCurrencyConfigID
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1._is_museum_currency = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.MuseumData
  L1_2 = L1_2.CurFunds
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_museum_bar = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = L3_1.AlleyCurrencyConfigID
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1._is_alley_currency = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1.Funds
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_alley_bar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SimpleTap
  L4_2 = A0_2._simple_tap_callback
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "PunkLord_Support_Daily"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  L3_2 = A0_2
  L2_2 = A0_2._show_tips_panel
  L4_2 = true
  L5_2 = "UIText_PunkLord_Token_Recover_Daily_Rule"
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._show_punklord_detail = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_tips_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._simple_tap_callback = L6_1
function L6_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tips
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L6_2 = ...
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._show_tips_panel = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_first_selected_btn = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1._is_stamina
  L2_2 = A0_2._currency_ID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_num
    L1_2(L2_2)
  end
end
L0_1._on_stamina_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1._is_reserve_stamina
  L2_2 = A0_2._currency_ID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_num
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_reserve_stamina_bar
    L1_2(L2_2)
  end
end
L0_1._on_reserve_stamina_changed = L6_1
return L0_1
