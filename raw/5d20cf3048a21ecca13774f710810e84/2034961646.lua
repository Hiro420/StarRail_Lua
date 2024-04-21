local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Logic.ShopModule.Currency"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.TimeUtils
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_TimeManager
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ShopGoodsConfigExcelTable
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ItemExcelTable
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.LimitType
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.LimitTypeConfigExcelTable
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.GoodsRefreshType
L7_1 = "UI_ShopPage_SoldOut"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.Client
L8_1 = L8_1.GlobalVars
L8_1 = L8_1.s_ModuleManager
L8_1 = L8_1.AvatarModule
L9_1 = CS
L9_1 = L9_1.RPG
L9_1 = L9_1.Client
L9_1 = L9_1.GlobalVars
L9_1 = L9_1.s_ModuleManager
L9_1 = L9_1.InventoryModule
L10_1 = CS
L10_1 = L10_1.RPG
L10_1 = L10_1.Client
L10_1 = L10_1.GlobalVars
L10_1 = L10_1.s_ModuleManager
L10_1 = L10_1.ScheduleModule
L11_1 = G
L11_1 = L11_1.Class
L12_1 = "ShopGood"
L11_1 = L11_1(L12_1)
L11_1._avatar_max_rank = 6
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2.GoodsID = A1_2
  A0_2.ItemID = A2_2
  A0_2.BuyTimes = A3_2
  A0_2.BeginTime = A4_2
  A0_2.EndTime = A5_2
  A0_2.ShopID = A6_2
  A0_2.ShopRef = A7_2
  L8_2 = L2_1.GetData
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  if nil == L8_2 then
    L9_2 = G
    L9_2 = L9_2.SuperDebug
    L9_2 = L9_2.LogErrorFormat
    L10_2 = "\229\149\134\229\147\129\233\133\141\232\161\168\232\175\187\229\143\150\229\164\177\232\180\165\239\188\140ShopGoodsID\239\188\154"
    L11_2 = A1_2
    L12_2 = " , \232\175\183\230\139\137\230\150\176\230\156\172\229\156\176\233\133\141\232\161\168\229\134\141\230\172\161\229\176\157\232\175\149"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L9_2(L10_2)
    A0_2.IsDataValid = false
    return
  end
  A0_2.row = L8_2
  A0_2.IsDataValid = true
  L9_2 = L8_2.ItemCount
  A0_2.ItemCount = L9_2
  L9_2 = L8_2.GoodsSortID
  A0_2.GoodsSortID = L9_2
  L9_2 = L8_2.LimitTimes
  A0_2.LimitTimes = L9_2
  L9_2 = L8_2.IsLimitedTimePurchase
  A0_2.IsLimitedTimePurchase = L9_2
  L9_2 = L8_2.RefreshType
  A0_2.RefreshType = L9_2
  L9_2 = L8_2.CycleDays
  A0_2.CycleDays = L9_2
  L9_2 = L8_2.RefreshOffset
  A0_2.RefreshOffset = L9_2
  L9_2 = L8_2.ScheduleDataID
  A0_2.ScheduleDataID = L9_2
  L10_2 = A0_2
  L9_2 = A0_2._process_item
  L11_2 = A2_2
  L12_2 = L8_2.ItemCount
  L9_2(L10_2, L11_2, L12_2)
  L10_2 = A0_2
  L9_2 = A0_2._process_currency
  L11_2 = L8_2.CurrencyList
  L12_2 = L8_2.CurrencyCostList
  L9_2(L10_2, L11_2, L12_2)
  L10_2 = A0_2
  L9_2 = A0_2._process_limits
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L10_2 = A0_2
  L9_2 = A0_2._process_fresh_time
  L9_2(L10_2)
  L9_2 = G
  L9_2 = L9_2.ShopModule
  L9_2 = L9_2.Instance
  L10_2 = L9_2
  L9_2 = L9_2.process_shop_good_is_new
  L11_2 = A0_2
  L9_2(L10_2, L11_2)
end
L11_1.ctor = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  A0_2.GoodsID = nil
  A0_2.ItemID = nil
  A0_2.BuyTimes = nil
  A0_2.BeginTime = nil
  A0_2.EndTime = nil
  A0_2.ShopRef = nil
  A0_2.row = nil
  A0_2.IsDataValid = nil
  A0_2.ItemCount = nil
  A0_2.GoodsSortID = nil
  A0_2.LimitTimes = nil
  A0_2.IsLimitedTimePurchase = nil
  A0_2.GoodsNameID = nil
  A0_2.itemCount = nil
  A0_2.Desc = nil
  A0_2.BGDesc = nil
  A0_2.IsAvatarCard = nil
  A0_2.IsAvatarSkin = nil
  A0_2.Rarity = nil
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2.Currencys
  L1_2(L2_2)
  A0_2.Currencys = nil
  A0_2.LimitType1 = nil
  A0_2.LimitValue1List = nil
  A0_2.LimitType2 = nil
  A0_2.LimitValue2List = nil
  A0_2.IsAvailable = nil
  A0_2.UnavailableTipsID = nil
  A0_2.UnavailableDetailTipsID = nil
  A0_2.UnavailableTipsParam = nil
  A0_2.RefreshTime = nil
end
L11_1.dtor = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L3_1.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "Item Config Not Exist!!! ItemID: "
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
    A0_2.IsDataValid = false
    return
  end
  L4_2 = L3_2.ItemName
  A0_2.GoodsNameID = L4_2
  A0_2.itemCount = A2_2
  L4_2 = L3_2.ItemDesc
  A0_2.Desc = L4_2
  L4_2 = L3_2.ItemBGDesc
  A0_2.BGDesc = L4_2
  L4_2 = L3_2.ItemMainType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemMainType
  L5_2 = L5_2.AvatarCard
  L4_2 = L4_2 == L5_2
  A0_2.IsAvatarCard = L4_2
  L4_2 = L3_2.ItemSubType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemSubType
  L5_2 = L5_2.AvatarSkin
  L4_2 = L4_2 == L5_2
  A0_2.IsAvatarSkin = L4_2
  L4_2 = L3_2.Rarity
  A0_2.Rarity = L4_2
end
L11_1._process_item = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  A0_2.Currencys = L3_2
  L3_2 = A1_2.Length
  L4_2 = 0
  L5_2 = L3_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = G
    L8_2 = L8_2.new
    L9_2 = G
    L9_2 = L9_2.Currency
    L10_2 = A1_2[L7_2]
    L11_2 = A2_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.Currencys
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L11_1._process_currency = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.LimitType1
  A0_2.LimitType1 = L2_2
  L2_2 = A1_2.LimitValue1List
  A0_2.LimitValue1List = L2_2
  L2_2 = A1_2.LimitType2
  A0_2.LimitType2 = L2_2
  L2_2 = A1_2.LimitValue2List
  A0_2.LimitValue2List = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._is_limit_satisified
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  A0_2.UnavailableTipsParam = L5_2
  A0_2.UnavailableDetailTipsID = L4_2
  A0_2.UnavailableTipsID = L3_2
  A0_2.IsAvailable = L2_2
end
L11_1._process_limits = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.RefreshType
  L2_2 = L6_1.None
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_buy_time_left
    L1_2 = L1_2(L2_2)
    if 0 < L1_2 then
      L1_2 = A0_2.ShopRef
      L2_2 = L1_2
      L1_2 = L1_2.mark_unsold_no_refresh_goods
      L3_2 = A0_2.GoodsID
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2.RefreshType
  L2_2 = L6_1.DAILY
  if L1_2 == L2_2 then
    L1_2 = L1_1.NowDateTime
    L2_2 = L1_2.Date
    L3_2 = L2_2
    L2_2 = L2_2.AddHours
    L4_2 = 4
    L2_2 = L2_2(L3_2, L4_2)
    if L1_2 < L2_2 then
      L3_2 = L0_1.DateTimeToTimeStampInSeconds
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      A0_2.RefreshTime = L3_2
    else
      L3_2 = L0_1.DateTimeToTimeStampInSeconds
      L5_2 = L2_2
      L4_2 = L2_2.AddDays
      L6_2 = 1
      L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      A0_2.RefreshTime = L3_2
    end
    return
  end
  L1_2 = A0_2.RefreshType
  L2_2 = L6_1.WEEK
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.System
    L1_2 = L1_2.DayOfWeek
    L1_2 = L1_2.Monday
    L2_2 = L1_1.NowDateTime
    L3_2 = #L1_2
    L4_2 = L2_2.Date
    L4_2 = L4_2.DayOfWeek
    L4_2 = #L4_2
    L3_2 = L3_2 - L4_2
    L3_2 = L3_2 + 7
    L3_2 = L3_2 % 7
    L4_2 = L2_2.Date
    L5_2 = L4_2
    L4_2 = L4_2.AddDays
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.AddHours
    L6_2 = 4
    L4_2 = L4_2(L5_2, L6_2)
    if L2_2 < L4_2 then
      L5_2 = L0_1.DateTimeToTimeStampInSeconds
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      A0_2.RefreshTime = L5_2
    else
      L5_2 = L0_1.DateTimeToTimeStampInSeconds
      L7_2 = L4_2
      L6_2 = L4_2.AddDays
      L8_2 = 7
      L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      A0_2.RefreshTime = L5_2
    end
    return
  end
  L1_2 = A0_2.RefreshType
  L2_2 = L6_1.MONTH
  if L1_2 == L2_2 then
    L1_2 = L1_1.NowDateTime
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.DateTime
    L2_2 = L2_2.Parse
    L4_2 = L1_2
    L3_2 = L1_2.ToString
    L5_2 = "yyyy-MM-01 04:00:00"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if L1_2 < L2_2 then
      L3_2 = L0_1.DateTimeToTimeStampInSeconds
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      A0_2.RefreshTime = L3_2
    else
      L3_2 = L0_1.DateTimeToTimeStampInSeconds
      L5_2 = L2_2
      L4_2 = L2_2.AddMonths
      L6_2 = 1
      L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      A0_2.RefreshTime = L3_2
    end
    return
  end
  L1_2 = A0_2.RefreshType
  L2_2 = L6_1.CYCLE
  if L1_2 == L2_2 then
    L1_2 = A0_2.ScheduleDataID
    if L1_2 ~= 0 then
      L1_2 = A0_2.CycleDays
      if 0 < L1_2 then
        L1_2 = L10_1
        L2_2 = L1_2
        L1_2 = L1_2.GetScheduleDataByID
        L3_2 = A0_2.ScheduleDataID
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 ~= nil then
          L2_2 = L1_1.NowDateTime
          L3_2 = L1_2.BeginTimeDate
          L4_2 = L3_2
          L3_2 = L3_2.AddDays
          L5_2 = A0_2.RefreshOffset
          L3_2 = L3_2(L4_2, L5_2)
          while L2_2 > L3_2 do
            L5_2 = L3_2
            L4_2 = L3_2.AddDays
            L6_2 = A0_2.CycleDays
            L4_2 = L4_2(L5_2, L6_2)
            L3_2 = L4_2
          end
          L4_2 = L0_1.DateTimeToTimeStampInSeconds
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          A0_2.RefreshTime = L4_2
          return
        end
      end
    end
  end
end
L11_1._process_fresh_time = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.LimitType1
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._check_limit
    L3_2 = A0_2.LimitType1
    L4_2 = A0_2.LimitValue1List
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      L5_2 = L1_2
      L6_2 = L2_2
      L7_2 = L3_2
      L8_2 = L4_2
      return L5_2, L6_2, L7_2, L8_2
    end
  end
  L1_2 = A0_2.LimitType2
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._check_limit
    L3_2 = A0_2.LimitType2
    L4_2 = A0_2.LimitValue2List
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      L5_2 = L1_2
      L6_2 = L2_2
      L7_2 = L3_2
      L8_2 = L4_2
      return L5_2, L6_2, L7_2, L8_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_is_sold_out
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    L2_2 = L7_1
    L3_2 = L7_1
    return L1_2, L2_2, L3_2
  end
  L1_2 = true
  return L1_2
end
L11_1._is_limit_satisified = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.RefreshType
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2.get_buy_time_left
    L1_2 = L1_2(L2_2)
    if L1_2 <= 0 then
      L1_2 = A0_2.ShopRef
      L2_2 = L1_2
      L1_2 = L1_2.mark_sold_out_no_refresh_goods
      L3_2 = A0_2.GoodsID
      L1_2(L2_2, L3_2)
    end
  end
end
L11_1.try_mark_shop_goods_sold_out = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.has_buy_time_limit
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_buy_time_left
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 <= 0
  end
  return L1_2
end
L11_1.get_is_sold_out = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_limit_status
  L1_2(L2_2)
  L1_2 = A0_2.IsAvailable
  L2_2 = A0_2.UnavailableTipsID
  L3_2 = A0_2.UnavailableDetailTipsID
  L4_2 = A0_2.UnavailableTipsParam
  return L1_2, L2_2, L3_2, L4_2
end
L11_1.get_limit_check_result = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_limit_satisified
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  A0_2.UnavailableTipsParam = L4_2
  A0_2.UnavailableDetailTipsID = L3_2
  A0_2.UnavailableTipsID = L2_2
  A0_2.IsAvailable = L1_2
end
L11_1.refresh_limit_status = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2.CurrencyList
  L1_2 = L1_2.Length
  return L1_2
end
L11_1.get_currency_num = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.IsAvatarCard
  if L1_2 then
    L1_2 = L8_1
    L2_2 = L1_2
    L1_2 = L1_2.GetAvatar
    L3_2 = A0_2.ItemID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.Row
      L2_2 = L2_2.RewardList
      L2_2 = L2_2[0]
      L2_2 = L2_2.ItemID
      L3_2 = L9_1
      L4_2 = L3_2
      L3_2 = L3_2.GetItemCountByConfigID
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L1_2.Rank
      L4_2 = L4_2 + L3_2
      L5_2 = L11_1._avatar_max_rank
      L4_2 = L4_2 >= L5_2
      return L4_2
    end
  else
    L1_2 = A0_2.IsAvatarSkin
    if L1_2 then
      L1_2 = L8_1
      L2_2 = L1_2
      L1_2 = L1_2.IsOwnSkin
      L3_2 = A0_2.ItemID
      return L1_2(L2_2, L3_2)
    end
  end
  L1_2 = false
  return L1_2
end
L11_1.has_reach_holding_limit = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.IsAvatarSkin
  if L1_2 then
    L1_2 = L8_1
    L2_2 = L1_2
    L1_2 = L1_2.IsOwnSkin
    L3_2 = A0_2.ItemID
    return L1_2(L2_2, L3_2)
  end
  L1_2 = false
  return L1_2
end
L11_1.has_owned = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2.LimitTimes
  L1_2 = nil ~= L1_2
  return L1_2
end
L11_1.has_buy_time_limit = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.BuyTimes
  L2_2 = A0_2.LimitTimes
  if L1_2 < L2_2 then
    L1_2 = A0_2.LimitTimes
    L2_2 = A0_2.BuyTimes
    L1_2 = L1_2 - L2_2
    return L1_2
  end
  L1_2 = 0
  return L1_2
end
L11_1.get_buy_time_left = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2.Currencys
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L9_1
    L7_2 = L6_2
    L6_2 = L6_2.GetItemCountByConfigID
    L8_2 = L5_2.ConfigID
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L5_2.Cost
    if L6_2 < L7_2 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L11_1.has_enough_currency = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_new
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2.IsAvailable
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.has_reach_holding_limit
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = 1
      return L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.has_reach_holding_limit
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = 5
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_is_sold_out
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 10
    return L1_2
  end
  L1_2 = 100
  return L1_2
end
L11_1.get_sort_code = L12_1
function L12_1(A0_2, A1_2)
  A0_2._is_new = A1_2
end
L11_1.set_is_new = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_new
  return L1_2
end
L11_1.is_new = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = L5_1.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L4_1.Level
  if A1_2 == L4_2 then
    L4_2 = A2_2[0]
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ConditionCheckerUtil
    L5_2 = L5_2.CheckPlayerLevel
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = true
      return L6_2
    end
    L6_2 = false
    L7_2 = L3_2.LimitTypeDesc
    L8_2 = L3_2.LimitTypeDetailDesc
    L9_2 = L4_2
    return L6_2, L7_2, L8_2, L9_2
  end
  L4_2 = L4_1.WorldLevel
  if A1_2 == L4_2 then
    L4_2 = A2_2[0]
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ConditionCheckerUtil
    L5_2 = L5_2.CheckWorldLevel
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = true
      return L6_2
    end
    L6_2 = false
    L7_2 = L3_2.LimitTypeDesc
    L8_2 = L3_2.LimitTypeDetailDesc
    L9_2 = L4_2
    return L6_2, L7_2, L8_2, L9_2
  end
  L4_2 = L4_1.PreGoods
  if A1_2 == L4_2 then
    L4_2 = 0
    L5_2 = A0_2.LimitValue1List
    L5_2 = L5_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2.LimitValue1List
      L8_2 = L8_2[L7_2]
      L9_2 = A0_2.ShopRef
      L10_2 = L9_2
      L9_2 = L9_2.get_shop_good_by_id
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L11_2 = L9_2
      L10_2 = L9_2.get_is_sold_out
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        L10_2 = false
        L11_2 = L3_2.LimitTypeDesc
        L12_2 = L3_2.LimitTypeDetailDesc
        L13_2 = G
        L13_2 = L13_2.TextmapStatic
        L13_2 = L13_2.GetText
        L14_2 = L9_2.GoodsNameID
        L13_2, L14_2 = L13_2(L14_2)
        return L10_2, L11_2, L12_2, L13_2, L14_2
      end
    end
  end
  L4_2 = L4_1.HasNoRefreshGoods
  if A1_2 == L4_2 then
    L4_2 = A0_2.ShopRef
    L4_2 = L4_2.UnsoldNoRefreshGoods
    L4_2 = #L4_2
    if 0 < L4_2 then
      L4_2 = false
      L5_2 = L3_2.LimitTypeDesc
      L6_2 = L3_2.LimitTypeDetailDesc
      L7_2 = nil
      return L4_2, L5_2, L6_2, L7_2
    end
  end
  L4_2 = true
  return L4_2
end
L11_1._check_limit = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.NowTimeStamp
  L2_2 = A0_2.BeginTime
  L2_2 = L1_2 >= L2_2
  return L2_2
end
L11_1.get_is_opend = L12_1
return L11_1
