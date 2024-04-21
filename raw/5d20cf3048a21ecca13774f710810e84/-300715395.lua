local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Logic.ShopModule.ShopGood"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ShopConfigExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.TimeUtils
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_TimeManager
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FeatureSwitchModule
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "Shop"
L4_1 = L4_1(L5_1)
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2.ShopID = A1_2
  A0_2.BeginTime = A2_2
  A0_2.EndTime = A3_2
  L7_2 = {}
  A0_2.ShopGoods = L7_2
  L7_2 = A4_2 or L7_2
  if not A4_2 then
    L7_2 = 0
  end
  A0_2.CityLevel = L7_2
  L7_2 = A5_2 or L7_2
  if not A5_2 then
    L7_2 = 0
  end
  A0_2.CityExp = L7_2
  L7_2 = A6_2 or L7_2
  if not A6_2 then
    L7_2 = 0
  end
  A0_2.CityTakenLevelReward = L7_2
  L7_2 = L0_1.GetData
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  if nil == L7_2 then
    L8_2 = G
    L8_2 = L8_2.SuperDebug
    L8_2 = L8_2.LogErrorFormat
    L9_2 = "\229\149\134\229\186\151\233\133\141\232\161\168\232\175\187\229\143\150\229\164\177\232\180\165\239\188\140ShopID\239\188\154"
    L10_2 = A1_2
    L11_2 = " , \232\175\183\230\139\137\230\150\176\230\156\172\229\156\176\233\133\141\232\161\168\229\134\141\230\172\161\229\176\157\232\175\149"
    L9_2 = L9_2 .. L10_2 .. L11_2
    L8_2(L9_2)
    A0_2.IsDataValid = false
    return
  end
  A0_2.IsDataValid = true
  L8_2 = L7_2.ShopType
  A0_2.ShopType = L8_2
  L8_2 = L7_2.ShopName
  A0_2.ShopName = L8_2
  L8_2 = L7_2.ShopDesc
  A0_2.ShopDesc = L8_2
  L8_2 = L7_2.ShopSortID
  A0_2.ShopSortID = L8_2
  L8_2 = L7_2.ShopBar
  A0_2.ShopBar = L8_2
  L8_2 = L7_2.ShopIconPath
  A0_2.ShopIconPath = L8_2
  L8_2 = L7_2.ScheduleDataID
  A0_2.ScheduleDataID = L8_2
  L8_2 = L7_2.HideRemainTime
  L8_2 = not L8_2
  A0_2.ShowRemainTime = L8_2
  L8_2 = {}
  A0_2.UnsoldNoRefreshGoods = L8_2
  L9_2 = A0_2
  L8_2 = A0_2._process_limits
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L7_2.IsOpen
  A0_2.IsOpen = L8_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.ShopGoods
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.delete
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2.ShopGoods
  L1_2(L2_2)
  A0_2.ShopGoods = nil
  A0_2.BeginTime = nil
  A0_2.EndTime = nil
  A0_2.ShopType = nil
  A0_2.ShopName = nil
  A0_2.ShopDesc = nil
  A0_2.ShopSortID = nil
  A0_2.ShopBar = nil
  A0_2.ShopIconPath = nil
  A0_2.ScheduleDataID = nil
  A0_2.ShowRemainTime = nil
  A0_2.IsOpen = nil
  A0_2.LimitType1 = nil
  A0_2.LimitValue1List = nil
  A0_2.LimitType2 = nil
  A0_2.LimitValue2List = nil
  A0_2.IsAvailable = nil
  A0_2.UnsoldNoRefreshGoods = nil
end
L4_1.dtor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.LimitType1
  A0_2.LimitType1 = L2_2
  L2_2 = A1_2.LimitValue1List
  A0_2.LimitValue1List = L2_2
  L2_2 = A1_2.LimitType2
  A0_2.LimitType2 = L2_2
  L2_2 = A1_2.LimitValue2List
  A0_2.LimitValue2List = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.is_limit_satisified
  L2_2 = L2_2(L3_2)
  A0_2.IsAvailable = L2_2
end
L4_1._process_limits = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.ShopGood
    L9_2 = L6_2.GoodsId
    L10_2 = L6_2.ItemId
    L11_2 = L6_2.BuyTimes
    L12_2 = L6_2.BeginTime
    L13_2 = L6_2.EndTime
    L14_2 = A0_2.ShopID
    L15_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L8_2 = L7_2.IsDataValid
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2.ShopGoods
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    else
      L8_2 = G
      L8_2 = L8_2.delete
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
end
L4_1.sync_shop_goods = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.ShopGoods
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2.ShopGoods
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_new
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L4_1.contain_new_shop = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2.UnsoldNoRefreshGoods
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      return
    end
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.UnsoldNoRefreshGoods
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1.mark_unsold_no_refresh_goods = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.UnsoldNoRefreshGoods
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.UnsoldNoRefreshGoods
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2.UnsoldNoRefreshGoods
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      return
    end
  end
end
L4_1.mark_sold_out_no_refresh_goods = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2.ShopGoods
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.GoodsID
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L4_1.get_shop_good_by_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.ShopGoods
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_is_opend
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = L3_1.ShieldedShopGoodsIDDic
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.ContainsKey
    L5_2 = A0_2.ShopID
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2.ShopID
      L3_2 = L2_2[L3_2]
      L4_2 = #L1_2
      L5_2 = 1
      L6_2 = -1
      for L7_2 = L4_2, L5_2, L6_2 do
        L9_2 = L3_2
        L8_2 = L3_2.Contains
        L10_2 = L1_2[L7_2]
        L10_2 = L10_2.GoodsID
        L8_2 = L8_2(L9_2, L10_2)
        if L8_2 then
          L8_2 = table
          L8_2 = L8_2.remove
          L9_2 = L1_2
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
  return L1_2
end
L4_1.get_shop_goods = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1.NowTimeStamp
  L2_2 = A0_2.IsOpen
  if L2_2 then
    L2_2 = A0_2.BeginTime
    L2_2 = L1_2 >= L2_2
  end
  return L2_2
end
L4_1.get_is_opend = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1.IsCloseAllShop
  if not L1_2 then
    L1_2 = L3_1.ShieldedShopIDs
    L2_2 = L1_2
    L1_2 = L1_2.Contains
    L3_2 = A0_2.ShopID
    L1_2 = L1_2(L2_2, L3_2)
  end
  return L1_2
end
L4_1.is_shielded = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1.NowDateTime
  L2_2 = A0_2.EndTime
  if L1_2 < L2_2 then
    L2_2 = A0_2.EndTime
    L2_2 = L2_2 - L1_2
    return L2_2
  end
  L2_2 = 0
  return L2_2
end
L4_1.get_remain_time = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.ShopGoods
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.has_buy_time_limit
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.get_buy_time_left
      L6_2 = L6_2(L7_2)
      if 0 < L6_2 then
        L6_2 = false
        return L6_2
      end
    end
  end
  L1_2 = true
  return L1_2
end
L4_1.get_limited_goods_sold_out = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L4_1.is_limit_satisified = L5_1
return L4_1
