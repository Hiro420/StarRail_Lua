local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookGuideChallengeFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  A0_2._native_filter = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._native_filter = nil
  end
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "HandbookGuideChallenge"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeDataUpdated
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshGuide
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopUpdated
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopItemClick
  L4_2 = L0_1._on_shop_item_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopItemClick
  L4_2 = L0_1._on_shop_item_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeDataUpdated
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshGuide
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopUpdated
  L4_2 = L0_1._refresh_challenge_shop_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopItemClick
  L4_2 = L0_1._on_shop_item_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_native_filter
    L1_2(L2_2)
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.ShowLatestUpdateRedDot
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "HandbookGuideChallengeLatestUpdateTabNew"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.RedDotGuideSubTabIDs
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "HandbookGuideChallengeSubTab"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_shop_good_reddot
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "HandbookGuideChallengeLatestUpdateTabShop"
    L2_2(L3_2, L4_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.HandbookGuideChallengeFilter
  L1_2 = L1_2()
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1._init_native_filter = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._has_valid_shop_reddot
  return L1_2
end
L0_1._show_shop_good_reddot = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1._good_id_2_shop_id_map
  return L0_2
end
L0_1.get_shop_good_reddot_map = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.IsInstanceOf
    L3_2 = A1_2
    L4_2 = G
    L4_2 = L4_2.ShopGood
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2._shop_ids
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._init_shop_good_ids
    L2_2(L3_2)
  end
  L2_2 = A1_2.GoodsID
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._good_ids
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil and 0 < L3_2 then
    L4_2 = A0_2._shop_ids
    L4_2 = L4_2[L3_2]
    if L4_2 ~= nil then
      L5_2 = A1_2.ShopID
      if L4_2 == L5_2 then
        L6_2 = A1_2
        L5_2 = A1_2.get_is_sold_out
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L6_2 = A1_2
          L5_2 = A1_2.has_enough_currency
          L5_2 = L5_2(L6_2)
          if not L5_2 then
            goto lbl_64
          end
        end
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.Prefs
        L5_2 = L5_2.User
        L6_2 = L5_2
        L5_2 = L5_2.GetChallengeShopGoodClickTimeStamps
        L5_2 = L5_2(L6_2)
        if L5_2 ~= nil then
          L6_2 = A1_2.RefreshTime
          L8_2 = L5_2
          L7_2 = L5_2.ContainsKey
          L9_2 = L2_2
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 then
            L5_2[L2_2] = L6_2
          else
            L8_2 = L5_2
            L7_2 = L5_2.Add
            L9_2 = L2_2
            L10_2 = L6_2
            L7_2(L8_2, L9_2, L10_2)
          end
        end
      end
    end
    ::lbl_64::
    L6_2 = A0_2
    L5_2 = A0_2._refresh_challenge_shop_reddot
    L5_2(L6_2)
  end
end
L0_1._on_shop_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.ChallengeUtils
  L1_2 = L1_2.get_challenge_reddot_shop_good_config
  L1_2, L2_2 = L1_2()
  A0_2._good_ids = L2_2
  A0_2._shop_ids = L1_2
end
L0_1._init_shop_good_ids = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._has_valid_shop_reddot = false
  L1_2 = A0_2._shop_ids
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_shop_good_ids
    L1_2(L2_2)
  end
  L1_2 = {}
  L0_1._good_id_2_shop_id_map = L1_2
  L1_2 = pairs
  L2_2 = A0_2._shop_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._good_ids
    L6_2 = L6_2[L4_2]
    L7_2 = G
    L7_2 = L7_2.ChallengeUtils
    L7_2 = L7_2.show_shop_good_reddot
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = L0_1._good_id_2_shop_id_map
      L7_2[L6_2] = L5_2
      A0_2._has_valid_shop_reddot = true
    end
  end
end
L0_1._refresh_challenge_shop_reddot = L1_1
return L0_1
