local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.ShopModule.ShopGood"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ShopModule.Shop"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ShopModule.ShopLockData"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.ItemFactory
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ShopModule"
L3_1 = "Logic.BaseModule"
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_shops_all
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_shop_lock_data
  L1_2(L2_2)
  A0_2._waiting_rsp_shop_type = nil
end
L1_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_shop_table
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_new_shop_good_ids
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ModuleManager
  L1_2 = L1_2.RegistModuleInitRequest
  L2_2 = CS
  L2_2 = L2_2.NIJNBICAPPA
  L2_2 = L2_2.LCGOEKEOGMG
  L3_2 = A0_2
  L4_2 = L1_1._on_init_req
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.GBJHDBOGALP
  L4_2 = L1_1._on_cmd_get_shop_list_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.HLNOBFMEGJL
  L4_2 = L1_1._on_cmd_buy_goods_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LHHNEGKKHAM
  L4_2 = L1_1._on_update_city_shop_info
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishedMainMission
  L4_2 = A0_2._on_finished_main_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LevelUp
  L4_2 = A0_2._on_player_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.WorldLevelUp
  L4_2 = A0_2._on_world_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishEventMission
  L4_2 = A0_2._on_finish_event_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ServerPrefRefresh
  L4_2 = A0_2._init_new_shop_good_ids
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.Init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_init_req
  L1_2(L2_2)
end
L1_1.OnReconnect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_shops
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_is_opend
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L1_1.get_shops = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2._get_shops_by_type
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.get_is_opend
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L3_2
end
L1_1.get_shops_by_type = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = CS
  L5_2 = L5_2.System
  L5_2 = L5_2.Collections
  L5_2 = L5_2.Generic
  L5_2 = L5_2.List
  L6_2 = CS
  L6_2 = L6_2.System
  L6_2 = L6_2.UInt32
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L6_2 = L6_2()
  L8_2 = L6_2
  L7_2 = L6_2.Add
  L9_2 = A1_2
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.Add
  L9_2 = A2_2
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.Add
  L9_2 = A4_2
  L7_2(L8_2, L9_2)
  L7_2 = G
  L7_2 = L7_2.NotifyManager
  L7_2 = L7_2.notify
  L8_2 = G
  L8_2 = L8_2.CS
  L8_2 = L8_2.NotifyType
  L8_2 = L8_2.UIOnPlayerConsume
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_NetworkManager
  L8_2 = L7_2
  L7_2 = L7_2.LPNOPMNAKII
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L1_1.buy_good = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_all_shops
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ShopID
    if L8_2 == A1_2 then
      return L7_2
    end
  end
  L3_2 = nil
  return L3_2
end
L1_1.get_shop_by_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.row
  L2_2 = L2_2.IsNew
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_new_shop_good_seen
    L4_2 = A1_2.GoodsID
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = not L2_2
  end
  if L2_2 then
    L3_2 = A0_2._new_good_id_to_shop_good_map
    if L3_2 == nil then
      L3_2 = {}
      A0_2._new_good_id_to_shop_good_map = L3_2
    end
    L3_2 = A0_2._new_good_id_to_shop_good_map
    L4_2 = A1_2.GoodsID
    L3_2[L4_2] = A1_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.set_is_new
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1.process_shop_good_is_new = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.get_shop_by_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.contain_new_shop
    return L3_2(L4_2)
  end
  L3_2 = false
  return L3_2
end
L1_1.is_shop_contain_new_good = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._new_good_id_to_shop_good_map
  return L1_2
end
L1_1.get_new_shop_good_map = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A1_2.row
    if L2_2 ~= nil then
      L3_2 = A1_2
      L2_2 = A1_2.is_new
      L2_2 = L2_2(L3_2)
      if L2_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L3_2 = A1_2
  L2_2 = A1_2.set_is_new
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._new_good_id_to_shop_good_map
  L3_2 = A1_2.GoodsID
  L2_2[L3_2] = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SeenNewShopGoodsIDs
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A1_2.GoodsID
  L2_2(L3_2, L4_2)
end
L1_1.record_shop_good_seen = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_enumerable
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SeenNewShopGoodsIDs
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ShopGoodsConfigExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.IsNew
      if L8_2 then
        goto lbl_36
      end
    end
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.Prefs
    L8_2 = L8_2.User
    L8_2 = L8_2.SeenNewShopGoodsIDs
    L9_2 = L8_2
    L8_2 = L8_2.Remove
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    ::lbl_36::
  end
end
L1_1._clear_outdated_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_outdated_data
  L1_2(L2_2)
end
L1_1._init_new_shop_good_ids = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SeenNewShopGoodsIDs
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L1_1._is_new_shop_good_seen = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._type_shop_dict = L1_2
end
L1_1._create_shop_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._shop_lock_dict = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ShopConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.ShopLockData
    L9_2 = L6_2.ShopID
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.IsDataValid
    if L8_2 then
      L8_2 = A0_2._shop_lock_dict
      L9_2 = L7_2.ShopID
      L8_2[L9_2] = L7_2
    end
  end
end
L1_1._create_shop_lock_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = A0_2._type_shop_dict
  if L2_2 ~= nil then
    L2_2 = pairs
    L3_2 = A0_2._type_shop_dict
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if L6_2 then
        L7_2 = #L6_2
        if 0 < L7_2 then
          L7_2 = pairs
          L8_2 = L6_2
          L7_2, L8_2, L9_2 = L7_2(L8_2)
          for L10_2, L11_2 in L7_2, L8_2, L9_2 do
            L12_2 = table
            L12_2 = L12_2.insert
            L13_2 = L1_2
            L14_2 = L11_2
            L12_2(L13_2, L14_2)
          end
        end
      end
    end
  end
  return L1_2
end
L1_1._get_all_shops = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._type_shop_dict
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = {}
  end
  return L2_2
end
L1_1._get_shops_by_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._type_shop_dict
  L3_2 = A1_2.ShopType
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = A0_2._type_shop_dict
    L3_2 = A1_2.ShopType
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._type_shop_dict
  L4_2 = A1_2.ShopType
  L3_2 = L3_2[L4_2]
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._add_shop = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._type_shop_dict
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._type_shop_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._clear_shops_by_type
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._type_shop_dict
  L1_2(L2_2)
  L1_2 = {}
  A0_2._type_shop_dict = L1_2
end
L1_1._clear_shops_all = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._shop_lock_dict
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._shop_lock_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.delete
    L7_2 = A0_2._shop_lock_dict
    L7_2 = L7_2[L4_2]
    L6_2(L7_2)
    L6_2 = A0_2._shop_lock_dict
    L6_2[L4_2] = nil
  end
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._shop_lock_dict
  L1_2(L2_2)
  L1_2 = {}
  A0_2._shop_lock_dict = L1_2
end
L1_1._clear_shop_lock_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._type_shop_dict
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = pairs
    L3_2 = A0_2._type_shop_dict
    L3_2 = L3_2[A1_2]
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = G
      L7_2 = L7_2.delete
      L8_2 = L6_2
      L7_2(L8_2)
      L7_2 = A0_2._type_shop_dict
      L7_2 = L7_2[A1_2]
      L7_2[L5_2] = nil
    end
    L2_2 = G
    L2_2 = L2_2.delete
    L3_2 = A0_2._type_shop_dict
    L3_2 = L3_2[A1_2]
    L2_2(L3_2)
    L2_2 = A0_2._type_shop_dict
    L2_2[A1_2] = nil
  end
  L2_2 = pairs
  L3_2 = A0_2._shop_lock_dict
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ShopType
    if L7_2 == A1_2 then
      L6_2.IsUnlock = false
    end
  end
end
L1_1._clear_shops_by_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._clear_shops_all
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._sync_shops
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._update_shops_all = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._clear_shops_by_type
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._sync_shops
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L1_1._update_shops_by_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.Shop
    L9_2 = L6_2.ShopId
    L10_2 = L6_2.BeginTime
    L11_2 = L6_2.EndTime
    L12_2 = L6_2.CityLevel
    L13_2 = L6_2.CityExp
    L14_2 = L6_2.CityTakenLevelReward
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = L7_2.IsDataValid
    if L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.sync_shop_goods
      L10_2 = L6_2.GoodsList
      L8_2(L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2._add_shop
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._shop_lock_dict
      L9_2 = L7_2.ShopID
      L8_2 = L8_2[L9_2]
      L8_2.IsUnlock = true
      L8_2 = A0_2._shop_lock_dict
      L9_2 = L7_2.ShopID
      L8_2 = L8_2[L9_2]
      L8_2.IsWaitingRsp = false
      L9_2 = A0_2
      L8_2 = A0_2._remove_waiting_rsp_shop_type
      L10_2 = L7_2.ShopType
      L8_2(L9_2, L10_2)
    else
      L8_2 = G
      L8_2 = L8_2.delete
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
end
L1_1._sync_shops = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_shops
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_shop_goods
    L7_2 = L7_2(L8_2)
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L14_2 = L12_2
      L13_2 = L12_2.get_limit_check_result
      L13_2(L14_2)
    end
  end
end
L1_1._refresh_shop_good_limit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_shop_unlock
  L1_2(L2_2)
end
L1_1._on_world_level_up = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_shop_unlock
  L1_2(L2_2)
end
L1_1._on_finish_event_mission = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shop_good_limit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_shop_unlock
  L1_2(L2_2)
end
L1_1._on_player_level_up = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_shop_unlock
  L1_2(L2_2)
end
L1_1._on_finished_main_mission = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._shop_lock_dict
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._shop_lock_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.IsUnlock
    if not L6_2 then
      L6_2 = L5_2.IsWaitingRsp
      if not L6_2 then
        L7_2 = L5_2
        L6_2 = L5_2.is_unlock
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = G
          L6_2 = L6_2.SuperDebug
          L6_2 = L6_2.Log
          L7_2 = "ShopModule: _check_shop_unlock shopID: "
          L8_2 = L5_2.ShopID
          L7_2 = L7_2 .. L8_2
          L6_2(L7_2)
          L5_2.IsWaitingRsp = true
          L7_2 = A0_2
          L6_2 = A0_2._is_shop_type_waiting_rsp
          L8_2 = L5_2.ShopType
          L6_2 = L6_2(L7_2, L8_2)
          if not L6_2 then
            L7_2 = A0_2
            L6_2 = A0_2._add_waiting_rsp_shop_type
            L8_2 = L5_2.ShopType
            L6_2(L7_2, L8_2)
            L6_2 = G
            L6_2 = L6_2.SuperDebug
            L6_2 = L6_2.Log
            L7_2 = "ShopModule: SendGetShopListCsReq shopType: "
            L8_2 = L5_2.ShopType
            L7_2 = L7_2 .. L8_2
            L6_2(L7_2)
            L6_2 = CS
            L6_2 = L6_2.RPG
            L6_2 = L6_2.Client
            L6_2 = L6_2.GlobalVars
            L6_2 = L6_2.s_NetworkManager
            L7_2 = L6_2
            L6_2 = L6_2.OIMMCNEABAA
            L8_2 = L5_2.ShopType
            L6_2(L7_2, L8_2)
          end
        end
      end
    end
  end
end
L1_1._check_shop_unlock = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._waiting_rsp_shop_type
  if L2_2 == nil then
    L2_2 = {}
    A0_2._waiting_rsp_shop_type = L2_2
  end
  L2_2 = A0_2._waiting_rsp_shop_type
  L2_2[A1_2] = true
end
L1_1._add_waiting_rsp_shop_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._waiting_rsp_shop_type
  if L2_2 ~= nil then
    L2_2 = A0_2._waiting_rsp_shop_type
    L2_2[A1_2] = nil
  end
end
L1_1._remove_waiting_rsp_shop_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._waiting_rsp_shop_type
  L2_2 = A0_2._waiting_rsp_shop_type
  L2_2 = L2_2 ~= nil and L2_2
  return L2_2
end
L1_1._is_shop_type_waiting_rsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "CityShopInfoScNotify"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = A0_2._type_shop_dict
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = #L7_2
      if 0 < L8_2 then
        L8_2 = 1
        L9_2 = #L7_2
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = L7_2[L11_2]
          L12_2 = L12_2.ShopID
          L13_2 = L2_2.ShopId
          if L12_2 == L13_2 then
            L12_2 = L7_2[L11_2]
            L13_2 = L2_2.Level
            L12_2.CityLevel = L13_2
            L12_2 = L7_2[L11_2]
            L13_2 = L2_2.Exp
            L12_2.CityExp = L13_2
            L12_2 = L7_2[L11_2]
            L13_2 = L2_2.TakenLevelReward
            L12_2.CityTakenLevelReward = L13_2
            L12_2 = G
            L12_2 = L12_2.NotifyManager
            L12_2 = L12_2.notify
            L13_2 = G
            L13_2 = L13_2.CS
            L13_2 = L13_2.NotifyType
            L13_2 = L13_2.WorldShopUpdate
            L12_2(L13_2)
            return
          end
        end
      end
    end
  end
end
L1_1._on_update_city_shop_info = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L2_2 = A0_2.get_shop_by_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.CityShopConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L5_2 = L2_2.CityLevel
  L6_2 = L3_2.MaxLevel
  if L5_2 ~= L6_2 then
    L5_2 = L4_2.WorldShopLastReddotLevel
    L6_2 = L5_2
    L5_2 = L5_2.ContainsKey
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      goto lbl_37
    end
    L5_2 = L4_2.WorldShopLastReddotLevel
    L5_2 = L5_2[A1_2]
    L6_2 = L3_2.MaxLevel
    if L5_2 ~= L6_2 then
      goto lbl_37
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_37::
  L5_2 = L4_2.ShowWorldShopReddot
  L6_2 = L5_2
  L5_2 = L5_2.ContainsKey
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = L4_2.ShowWorldShopReddot
    L5_2 = L5_2[A1_2]
    if L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L5_2 = L2_2.CityLevel
  L5_2 = L5_2 + 1
  L6_2 = L4_2.WorldShopLastReddotLevel
  L7_2 = L6_2
  L6_2 = L6_2.ContainsKey
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = math
    L6_2 = L6_2.max
    L7_2 = L5_2
    L8_2 = L4_2.WorldShopLastReddotLevel
    L8_2 = L8_2[A1_2]
    L8_2 = L8_2 + 1
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  L6_2 = L3_2.ItemID
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.InventoryModule
  L8_2 = L7_2
  L7_2 = L7_2.GetItemCountByConfigID
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = 0
  L9_2 = L2_2.CityLevel
  if 1 < L9_2 then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.CityShopRewardListExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L3_2.RewardListGroupID
    L11_2 = L2_2.CityLevel
    L11_2 = L11_2 - 1
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2.TotalItem
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.CityShopRewardListExcelTable
  L9_2 = L9_2.GetData
  L10_2 = L3_2.RewardListGroupID
  L11_2 = L5_2 - 1
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L9_2.TotalItem
  L11_2 = L2_2.CityExp
  L11_2 = L11_2 + L7_2
  L12_2 = L10_2 - L8_2
  L13_2 = L3_2.HintOverNum
  L12_2 = L12_2 + L13_2
  if L11_2 >= L12_2 then
    L11_2 = L4_2.ShowWorldShopReddot
    L11_2[A1_2] = true
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.Prefs
    L11_2 = L11_2.ForceSave
    L11_2()
    L11_2 = true
    return L11_2
  end
  L11_2 = false
  return L11_2
end
L1_1.is_world_shop_reward_avaiable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.get_shop_by_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = 0
    return L3_2
  end
  L3_2 = L2_2.CityTakenLevelReward
  L4_2 = 0
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.CityShopRewardListExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A1_2
  L7_2 = 1
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.RewardID
  if L6_2 == 0 then
    L6_2 = 2
    if L6_2 then
      goto lbl_25
    end
  end
  L6_2 = 1
  ::lbl_25::
  while true do
    L7_2 = L2_2.CityLevel
    if not (L4_2 <= L7_2) then
      break
    end
    L7_2 = L3_2 % 2
    if L7_2 == 0 and L4_2 >= L6_2 then
      return L4_2
    end
    L4_2 = L4_2 + 1
    L3_2 = L3_2 // 2
  end
  return L4_2
end
L1_1.get_min_display_reward_level = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._shop_lock_dict
  L1_2 = L1_2 ~= nil
  if L1_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.OIMMCNEABAA
  L2_2(L3_2)
end
L1_1._on_init_req = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.OIMMCNEABAA
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.send_get_shop_list_req = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetShopListScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "ShopModule: GetShopListScRsp ShopType: "
  L5_2 = L2_2.ShopType
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowNetMsgHint
    L4_2 = L2_2.Retcode
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2._shop_lock_dict
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._create_shop_lock_table
    L3_2(L4_2)
  end
  L3_2 = L2_2.ShopType
  if L3_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2._update_shops_all
    L5_2 = L2_2.ShopList
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._update_shops_by_type
    L5_2 = L2_2.ShopList
    L6_2 = L2_2.ShopType
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ShopUpdated
  L5_2 = L2_2.ShopType
  L3_2(L4_2, L5_2)
end
L1_1._on_cmd_get_shop_list_sc_rsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "BuyGoodsScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 == 9 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowNetMsgHint
    L4_2 = "UIText_Operation_BlockItem"
    L3_2(L4_2)
    return
  end
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowNetMsgHint
    L4_2 = L2_2.Retcode
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_shop_by_id
  L5_2 = L2_2.ShopId
  L3_2 = L3_2(L4_2, L5_2)
  if nil == L3_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "ShopModule: Shop not exist"
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._buy_goods_ex_handler
    L6_2 = L2_2.ShopId
    L4_2(L5_2, L6_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.get_shop_good_by_id
  L6_2 = L2_2.GoodsId
  L4_2 = L4_2(L5_2, L6_2)
  if nil == L4_2 then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogErrorFormat
    L6_2 = "Refresh shopGood buyTime failed"
    L5_2(L6_2)
    L6_2 = A0_2
    L5_2 = A0_2._buy_goods_ex_handler
    L7_2 = L2_2.ShopId
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = L2_2.GoodsBuyTimes
  L4_2.BuyTimes = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.get_limit_check_result
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.try_mark_shop_goods_sold_out
  L5_2(L6_2)
  L5_2 = {}
  L7_2 = A0_2
  L6_2 = A0_2._generate_reward_list
  L8_2 = L2_2.ReturnItemList
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.RewardList = L6_2
  L6_2 = L2_2.ShopId
  L5_2.ShopID = L6_2
  L6_2 = G
  L6_2 = L6_2.NotifyManager
  L6_2 = L6_2.notify
  L7_2 = G
  L7_2 = L7_2.CS
  L7_2 = L7_2.NotifyType
  L7_2 = L7_2.ShopBuyGoods
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L1_1._on_cmd_buy_goods_sc_rsp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.get_shop_by_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._show_block_for_get_shop
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.send_get_shop_list_req
    L5_2 = L2_2.ShopType
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ShopConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "\229\149\134\229\186\151\233\133\141\231\189\174\228\184\141\229\173\152\229\156\168\239\188\140\233\133\141\231\189\174ShopID\239\188\154"
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._show_block_for_get_shop
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.send_get_shop_list_req
  L6_2 = L3_2.ShopType
  L4_2(L5_2, L6_2)
end
L1_1._buy_goods_ex_handler = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 5
  L2_2 = 2
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.NIJNBICAPPA
  L4_2 = L4_2.GBJHDBOGALP
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_UIManager
  L5_2 = L4_2
  L4_2 = L4_2.BlockWaitNetPacket
  L6_2 = L3_2
  L7_2 = nil
  L8_2 = nil
  L9_2 = L1_2
  L10_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L1_1._show_block_for_get_shop = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2.ItemList_
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = #L2_2
    L8_2 = L8_2 + 1
    L9_2 = L0_1.CreateDisplayItemData
    L10_2 = L7_2.ItemId
    L11_2 = L7_2.Num
    L12_2 = L7_2.Level
    L13_2 = L7_2.UniqueId
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L2_2[L8_2] = L9_2
  end
  return L2_2
end
L1_1._generate_reward_list = L2_1
return L1_1
