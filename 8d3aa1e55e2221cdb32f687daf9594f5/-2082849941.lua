local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PlayerModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.StaminaItemConfigExcelTable
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_TimeManager
L4_1 = 11
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "StaminaModule"
L7_1 = G
L7_1 = L7_1.BaseModule
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2
  A0_2._auto_recover_time = 360
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "ReserveStamina_Auto_Recover_Interval"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._extra_auto_recover_time = L1_2
  A0_2._current_buy_count = 0
  A0_2._stamina_recover_end_time = 0
  A0_2._stamina_recover_left_time = 0
  A0_2._count_down_timer = nil
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AddOnceEventDispatch
  L1_2 = L1_2(L2_2)
  A0_2.timer_dispatch = L1_2
  L1_2 = A0_2.timer_dispatch
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.timer_dispatch
  if nil ~= L1_2 then
    L1_2 = A0_2.timer_dispatch
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2.timer_dispatch = nil
  end
  L1_2 = A0_2._count_down_timer
  if nil ~= L1_2 then
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._count_down_timer = nil
  end
end
L5_1.dtor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.ODKEMFBHCHM
  L4_2 = L5_1._on_get_basic_info_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.EKDPPKBIPHE
  L4_2 = L5_1._on_exchange_stamina_sc_rsp
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
L5_1.Init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "StaminaModule: Start Timer"
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  if nil == L1_2 then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.CountDownTimer
    L1_2 = L1_2(L2_2)
    A0_2._count_down_timer = L1_2
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.add_timer_handle
    L3_2 = A0_2
    L4_2 = A0_2._on_timer_handle
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.init
    L1_2(L2_2)
  end
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.set_total_time
  L3_2 = A0_2._stamina_recover_left_time
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L5_1.start_timer = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "StaminaModule: Stop Timer"
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  if nil ~= L1_2 then
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._count_down_timer = nil
  end
end
L5_1.stop_timer = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2._auto_recover_time
  L3_2 = A0_2._extra_auto_recover_time
  L2_2 = L2_2 / L3_2
  L2_2 = L2_2 * 100
  L2_2 = L2_2 + 0.5
  L1_2 = L1_2(L2_2)
  L2_2 = tostring
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = "%"
  L2_2 = L2_2 .. L3_2
  return L2_2
end
L5_1.get_extra_stamina_recover_rate = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.get_left_run_time_int_value
  L1_2 = L1_2(L2_2)
  A0_2._stamina_recover_left_time = L1_2
  L1_2 = A0_2._stamina_recover_left_time
  if L1_2 <= 0 then
    L2_2 = A0_2
    L1_2 = A0_2.send_get_stamina_exchange_cs_req
    L1_2(L2_2)
  end
  L1_2 = A0_2.timer_dispatch
  L2_2 = L1_2
  L1_2 = L1_2.DispatchEvent
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L5_1._on_timer_handle = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.DateTimeToTimeStampInSeconds
  L2_2 = L3_1.NowDateTime
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  L2_2 = A0_2._stamina_recover_end_time
  L2_2 = L2_2 - L1_2
  A0_2._stamina_recover_left_time = L2_2
  L2_2 = A0_2._stamina_recover_left_time
  if 0 <= L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.start_timer
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.stop_timer
    L2_2(L3_2)
  end
end
L5_1.update_stamina_recover_time = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.TimeSpan
  L1_2 = L1_2.FromSeconds
  L2_2 = A0_2
  return L1_2(L2_2)
end
L5_1.get_time_spawn_from_seconds = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_max_stamina
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_stamina
  L2_2 = L2_2(L3_2)
  if L1_2 <= L2_2 then
    L3_2 = 0
    L4_2 = 0
    return L3_2, L4_2
  end
  L3_2 = A0_2._stamina_recover_left_time
  L4_2 = A0_2._auto_recover_time
  L6_2 = A0_2
  L5_2 = A0_2.get_max_stamina
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2.get_cur_stamina
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 1
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._stamina_recover_left_time
  L5_2 = L3_2
  return L4_2, L5_2
end
L5_1.get_next_and_all_recover_time = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeUtils
  L1_2 = L1_2.DateTimeToTimeStampInSeconds
  L2_2 = L3_1.NowDateTime
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  L2_2 = L0_1.PlayerData
  L2_2 = L2_2.StaminaData
  L2_2 = L2_2.NextReserveTime
  L2_2 = L2_2 - L1_2
  return L2_2
end
L5_1.get_next_reserve_stamina_recover_seconds = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = L0_1.PlayerData
  L1_2 = L1_2.StaminaData
  L1_2 = L1_2.NextReserveTime
  return L1_2
end
L5_1.get_next_reserve_stamina_recover_timestamp = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StaminaExchangeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._current_buy_count
  L2_2 = L2_2 + 1
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.GetDicFirstItem
  L3_2 = L1_2.Price
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L3_2 = L1_2.ToStamina
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L5_1.GetCurrentBuyNeedObjectNumAndGetStaminaCount = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StaminaExchangeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = 1
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.GetDicFirstItem
  L3_2 = L1_2.Price
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Key
  return L2_2
end
L5_1.get_stamina_exchange_currency = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.Level
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PlayerLevelExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.StaminaLimit
  return L2_2
end
L5_1.get_max_stamina = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "ReserveStamina_Maximum_Num"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  return L1_2
end
L5_1.get_max_reserve_stamina = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = L0_1.PlayerData
  L1_2 = L1_2.StaminaData
  L1_2 = L1_2.Stamina
  return L1_2
end
L5_1.get_cur_stamina = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = L0_1.PlayerData
  L1_2 = L1_2.StaminaData
  L1_2 = L1_2.ReserveStamina
  return L1_2
end
L5_1.get_cur_reserve_stamina = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_stamina
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.get_max_stamina
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ConstValueCommonExcelTable
  L4_2 = L4_2.GetData
  L5_2 = "Stamina_Exceed_Limit"
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.Value
  L4_2 = L4_2.IntValue
  L5_2 = L2_2 + A1_2
  L6_2 = L3_2 + L4_2
  L5_2 = L5_2 <= L6_2
  return L5_2
end
L5_1.can_add_stamina = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StaminaExchangeExcelTable
  L1_2 = L1_2.dataDict
  L1_2 = L1_2.Count
  return L1_2
end
L5_1.get_max_buy_count = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._current_buy_count
  return L1_2
end
L5_1.get_current_buy_count = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.KOFDIDCFAPJ
  L1_2(L2_2)
end
L5_1.buy_stamina_with_hcoin = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.PFIGPPDBMMF
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1.exchange_reserve_stamina = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.UseItem
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L5_1.buy_stamina_with_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRow
  L2_2 = L4_1
  return L1_2(L2_2)
end
L5_1.get_stamina_config = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.HJLLLAFEOHH
  L1_2 = L1_2.EILHMDCAIOC
  L1_2 = #L1_2
  return L1_2
end
L5_1.get_stamina_id = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.HJLLLAFEOHH
  L1_2 = L1_2.AOGIEFFDOOH
  L1_2 = #L1_2
  return L1_2
end
L5_1.get_reserve_stamina_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L2_1.dataDict
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetItemCountByConfigID
    L9_2 = L6_2.ItemID
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = nil
    L9_2 = L1_1
    L10_2 = L9_2
    L9_2 = L9_2.GetItemDataByConfigID
    L11_2 = L6_2.ItemID
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 == nil then
      L8_2 = 0
    else
      L8_2 = L9_2.CountAfterDelete
    end
    L10_2 = L6_2.IsAlwaysShown
    if L10_2 or 0 < L8_2 then
      L10_2 = {}
      L11_2 = L6_2.ItemID
      L10_2.ConfigID = L11_2
      L10_2.Count = L8_2
      L11_2 = L6_2.SortWeight
      L10_2.SortWeight = L11_2
      L11_2 = L6_2.Desc
      L10_2.Desc = L11_2
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L1_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  return L1_2
end
L5_1.get_stamina_items = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.AHFIIBCICDK
  L1_2(L2_2)
end
L5_1.send_get_stamina_exchange_cs_req = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.send_get_stamina_exchange_cs_req
  L1_2(L2_2)
end
L5_1._on_init_req = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetBasicInfoScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormatWithTag
    L4_2 = G
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.Stamina
    L5_2 = "GetBasicInfoScRsp, rsp.retcode is %s"
    L6_2 = tostring
    L7_2 = L2_2.Retcode
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = L2_2.ExchangeTimes
  A0_2._current_buy_count = L3_2
  L3_2 = L2_2.NextRecoverTime
  A0_2._stamina_recover_end_time = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.Stamina_GetStaminaExchange
  L3_2(L4_2)
end
L5_1._on_get_basic_info_sc_rsp = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "ExchangeStaminaScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormatWithTag
    L4_2 = G
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.Stamina
    L5_2 = "OnExchangeStaminaScRsp, rsp.retcode is %s"
    L6_2 = tostring
    L7_2 = L2_2.Retcode
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowNetMsgHint
    L4_2 = L2_2.Retcode
    L3_2(L4_2)
    return
  end
  L3_2 = L2_2.ExchangeTimes
  A0_2._current_buy_count = L3_2
  L3_2 = L2_2.LastRecoverTime
  A0_2._stamina_recover_end_time = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.StaminaItemUsed
  L5_2 = L2_2.StaminaAdd
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.Stamina_BuyTimesChanged
  L3_2(L4_2)
end
L5_1._on_exchange_stamina_sc_rsp = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.send_get_stamina_exchange_cs_req
  L1_2(L2_2)
end
L5_1._on_stamina_change = L6_1
return L5_1
