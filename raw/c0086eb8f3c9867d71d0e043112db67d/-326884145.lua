local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Logic.ShopModule.Shop"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ShopUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "RechargeShopGotoID"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L0_1.mcoin_id = 3
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.InventoryModule
L2_1 = L2_1.GetHCoinConfigID
L2_1 = L2_1()
L0_1.hcoin_id = L2_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.PayModule
L3_1 = G
L3_1 = L3_1.ShopModule
L3_1 = L3_1.Instance
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.ScheduleModule
L5_1 = {}
L5_1.MonthCard = 1
L5_1.Goods = 2
L0_1.RecommendShopType = L5_1
L5_1 = {}
L5_1.ShopType = 1
L5_1.ShopId = 102
function L6_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.ShopID
  L2_2 = L0_1.get_recharge_shop_id
  L2_2 = L2_2()
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_recharge_shop = L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = L0_1._recharge_shop_id
  if L0_2 == nil then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.GameCore
    L0_2 = L0_2.ConstValueClientExcelTable
    L0_2 = L0_2.GetData
    L1_2 = "RechargeShopID"
    L0_2 = L0_2(L1_2)
    L0_2 = L0_2.Value
    L0_2 = L0_2.IntValue
    L0_1._recharge_shop_id = L0_2
  end
  L0_2 = L0_1._recharge_shop_id
  return L0_2
end
L0_1.get_recharge_shop_id = L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = L0_1._recommend_shop_id
  if L0_2 == nil then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.GameCore
    L0_2 = L0_2.ConstValueClientExcelTable
    L0_2 = L0_2.GetData
    L1_2 = "RecommendShopID"
    L0_2 = L0_2(L1_2)
    L0_2 = L0_2.Value
    L0_2 = L0_2.IntValue
    L0_1._recommend_shop_id = L0_2
  end
  L0_2 = L0_1._recommend_shop_id
  return L0_2
end
L0_1.get_recommend_shop_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.IsPayOpen
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = #A0_2
    L1_2 = L1_2 + 1
    L2_2 = G
    L2_2 = L2_2.New
    L3_2 = G
    L3_2 = L3_2.Shop
    L4_2 = L0_1.get_recharge_shop_id
    L4_2, L5_2, L6_2 = L4_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    A0_2[L1_2] = L2_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RecommendConfigExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  L2_2 = false
  while true do
    L4_2 = L1_2
    L3_2 = L1_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L0_1._is_recommend_valid
    L4_2 = L1_2.Current
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L2_2 = true
      break
    end
  end
  if L2_2 then
    L3_2 = #A0_2
    L3_2 = L3_2 + 1
    L4_2 = G
    L4_2 = L4_2.New
    L5_2 = G
    L5_2 = L5_2.Shop
    L6_2 = L0_1.get_recommend_shop_id
    L6_2 = L6_2()
    L4_2 = L4_2(L5_2, L6_2)
    A0_2[L3_2] = L4_2
  end
end
L0_1.add_custom_shop = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RecommendConfigExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L0_1._is_recommend_valid
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = #L0_2
      L3_2 = L3_2 + 1
      L0_2[L3_2] = L2_2
    end
  end
  return L0_2
end
L0_1.get_recommend_data_list = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.get_shop_by_id
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.get_is_opend
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_13::
  L4_2 = L2_2
  L3_2 = L2_2.get_shop_good_by_id
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.has_buy_time_limit
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      goto lbl_28
    end
    L5_2 = L3_2
    L4_2 = L3_2.get_buy_time_left
    L4_2 = L4_2(L5_2)
    if L4_2 ~= 0 then
      goto lbl_28
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_28::
  return L3_2
end
L0_1.try_get_available_goods = L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.IsRechargeForbidden
  return L0_2(L1_2)
end
L0_1.is_forbid_recharge = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.InventoryModule
    L2_2 = L1_2
    L1_2 = L1_2.GetItemCountByConfigID
    L3_2 = L0_1.mcoin_id
    L1_2 = L1_2(L2_2, L3_2)
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
      local L1_3, L2_3
      if A0_3 then
        L1_3 = G
        L1_3 = L1_3.GotoManager
        L1_3 = L1_3.Goto
        L2_3 = L1_1
        L1_3(L2_3)
      end
    end
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.GetComponentContent
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_Recharge_Dialog_Desc_Goto"
    L6_2 = A0_2 - L1_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = L1_1
  L1_2(L2_2)
end
L0_1.goto_recharge_shop = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountAfterDeleteByConfigID
  L3_2 = L0_1.hcoin_id
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = A0_2 - L1_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ConfirmResBarDialog"
  L4_2 = nil
  L5_2 = "RechargePage"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.register_exit_callback
  function L5_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = L0_1._do_conversion
      L2_3 = L1_2
      L1_3(L2_3)
    end
  end
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_content
  L5_2 = "UIText_PayConversion_LowPay"
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.show_pay_conversion_dialog = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1._get_hcoin_cost
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L0_1._get_mcoin_cost
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1.can_interact_when_insufficient = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._get_hcoin_cost
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L0_1.show_pay_conversion_dialog
    L3_2 = L1_2
    L2_2(L3_2)
  end
  L2_2 = L0_1._get_mcoin_cost
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L0_1.goto_recharge_shop
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1.handle_unaffordable_good = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.Currencys
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ConfigID
    L7_2 = L0_1.hcoin_id
    if L6_2 == L7_2 then
      L6_2 = L5_2.Cost
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_hcoin_cost = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.Currencys
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ConfigID
    L7_2 = L0_1.mcoin_id
    if L6_2 == L7_2 then
      L6_2 = L5_2.Cost
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_mcoin_cost = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1.is_mcoin_sufficient
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.ConvCsEnumToNum
    L2_2 = CS
    L2_2 = L2_2.PBIBDHBOIGI
    L2_2 = L2_2.GBHCAHOGFAB
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.NetworkManager
    L2_2 = L2_2.FFOMLPONIFB
    L3_2 = L2_2
    L2_2 = L2_2.LDFODILOEDA
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.BlockWaitNetPacket
    L4_2 = L1_2
    L5_2 = nil
    L6_2 = nil
    L7_2 = 3
    L8_2 = 3
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L1_2 = L0_1.goto_recharge_shop
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L0_1._do_conversion = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.Type
  L2_2 = L0_1.RecommendShopType
  L2_2 = L2_2.MonthCard
  if L1_2 == L2_2 then
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.IsPayOpen
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L2_1.MonthCardProduct
      L1_2 = L1_2 ~= nil
      return L1_2
    end
  end
  L1_2 = A0_2.Type
  L2_2 = L0_1.RecommendShopType
  L2_2 = L2_2.Goods
  if L1_2 == L2_2 then
    L1_2 = L4_1
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L3_2 = A0_2.Schedule
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = L0_1._is_goods_can_buy
      L2_2 = A0_2
      return L1_2(L2_2)
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_recommend_valid = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = L0_1.hcoin_id
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = A0_2 <= L1_2
  return L1_2
end
L0_1.is_hcoin_sufficient = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = L0_1.mcoin_id
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = A0_2 <= L1_2
  return L1_2
end
L0_1.is_mcoin_sufficient = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.ItemID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2.Row
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.UseDataID
  L2_2 = L2_2(L3_2)
  if L1_2 == nil or L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = L1_2.UseMethod
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemUseMethod
  L4_2 = L4_2.FixedRewardGift
  L3_2 = L3_2 == L4_2
  return L3_2
end
L0_1.is_fix_gift_good = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.ItemID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ItemSubType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemSubType
  L3_2 = L3_2.AvatarSkin
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1._is_skin_good = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.ItemID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.UseDataID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.UseParam
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.get_sorted_reward_items
  L5_2 = L3_2
  return L4_2(L5_2)
end
L0_1.get_gift_pack_item_list = L6_1
function L6_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.is_fix_gift_good
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Shop.ShopGiftPackDetailDialog"
    L3_2 = A0_2
    L4_2 = ...
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = L0_1._is_skin_good
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_show
      L2_2 = "Ui.AvatarSkin.AvatarSkinShopPage"
      L3_2 = A0_2
      L4_2 = ...
      L1_2 = L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_show
      L2_2 = "Ui.Shop.ShopItemDetailDialog"
      L3_2 = A0_2
      L4_2 = ...
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1.show_shop_good_detail_dialog = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.try_get_available_goods
  L2_2 = A0_2.ShopID
  L3_2 = A0_2.GoodsID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil
  return L2_2
end
L0_1._is_goods_can_buy = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GotoConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.ParamIntList
  L2_2 = L2_2.Length
  if 2 <= L2_2 then
    L2_2 = L1_2.ParamIntList
    L2_2 = L2_2[0]
    L3_2 = L5_1.ShopType
    if L2_2 == L3_2 then
      L2_2 = L1_2.ParamIntList
      L2_2 = L2_2[1]
      L3_2 = L5_1.ShopId
      if L2_2 == L3_2 then
        L2_2 = true
        return L2_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.check_is_exchange_shop_param = L6_1
return L0_1
