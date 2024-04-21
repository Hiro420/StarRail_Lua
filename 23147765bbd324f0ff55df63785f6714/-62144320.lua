local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolWorldShopPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapSymbolWorldShopPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._world_shop_id = A1_2
  L2_2 = G
  L2_2 = L2_2.ShopModule
  L2_2 = L2_2.Instance
  L4_2 = L2_2
  L3_2 = L2_2.get_shop_by_id
  L5_2 = A0_2._world_shop_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._shop = L3_2
  L3_2 = A0_2._shop
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_progress
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_currency
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.ShopModule
  L1_2 = L1_2.Instance
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.CityShopConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._world_shop_id
  L2_2 = L2_2(L3_2)
  L4_2 = L1_2
  L3_2 = L1_2.get_min_display_reward_level
  L5_2 = A0_2._world_shop_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L2_2.MaxLevel
  L4_2 = L3_2 > L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_level_finish
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_level_unfinish
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_level_normal
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._shop
  L7_2 = L7_2.CityLevel
  L7_2 = L3_2 > L7_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_level_get
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._shop
  L7_2 = L7_2.CityLevel
  L7_2 = L3_2 <= L7_2 and L7_2
  L5_2(L6_2, L7_2)
  if not L4_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.CityShopRewardListExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L2_2.RewardListGroupID
    L7_2 = L3_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_level_up_exp
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = L5_2.TotalItem
    L6_2(L7_2, L8_2)
    L6_2 = 0
    L7_2 = A0_2._shop
    L7_2 = L7_2.CityLevel
    if 1 < L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.CityShopRewardListExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L2_2.RewardListGroupID
      L9_2 = A0_2._shop
      L9_2 = L9_2.CityLevel
      L9_2 = L9_2 - 1
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L7_2.TotalItem
    end
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_current_exp
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetText
    L9_2 = A0_2._shop
    L9_2 = L9_2.CityExp
    L9_2 = L6_2 + L9_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_progress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ResourceOverallExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._shop
  L2_2 = L2_2.ShopBar
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_limited_goods_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._shop
  L5_2 = L4_2
  L4_2 = L4_2.get_limited_goods_sold_out
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_limited_goods_not_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._shop
  L5_2 = L4_2
  L4_2 = L4_2.get_limited_goods_sold_out
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._shop
  L3_2 = L2_2
  L2_2 = L2_2.get_limited_goods_sold_out
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_2.CurrencyIDList
    L2_2 = L2_2[0]
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_currency_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.InventoryModule
    L6_2 = L5_2
    L5_2 = L5_2.GetItemCountByConfigID
    L7_2 = L2_2
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.InventoryModule
    L3_2 = L3_2.GetItemRow
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_currency_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.ItemName
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_currency
    L7_2 = L3_2.ItemCurrencyIconPath
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._setup_currency = L1_1
return L0_1
