local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaDrawButtonPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaDrawButtonPanel"
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
L2_1 = L2_1.GachaModule
L3_1 = "GachaDrawBtn"
L4_1 = "GachaQuickBuyTitle"
L5_1 = "GachaQuickBuyContent"
L6_1 = "GachaQuickBuy_UnEnough"
L7_1 = "GachaDailyLimitDialogueContent"
L8_1 = "GachaPoolDailyLimitDialogueContent"
L9_1 = 251
L10_1 = 252
L11_1 = "GachaShopID_1"
L12_1 = "GachaShopID"
function L13_1(A0_2)
  local L1_2
end
L0_1.ctor = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._gacha_pool_data = A1_2
  A0_2._draw_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_draw_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_discount
  L3_2(L4_2)
end
L0_1.setup_view = L13_1
function L13_1(A0_2, A1_2, A2_2)
  A0_2._begin_gacha_callback = A1_2
  A0_2._begin_gacha_callback_self = A2_2
end
L0_1.set_begin_gacha_callback = L13_1
function L13_1(A0_2, A1_2, A2_2)
  A0_2._do_gacha_callback = A1_2
  A0_2._do_gacha_callback_self = A2_2
end
L0_1.set_do_gacha_callback = L13_1
function L13_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_draw
  L2_2.interactable = A1_2
end
L0_1.set_btn_root_interactable = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._begin_gacha_callback
  L2_2 = A0_2._begin_gacha_callback_self
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = A0_2._gacha_token_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_is_over_limit_time
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._check_is_over_limit_items
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._toke_cost
  if L1_2 >= L2_2 then
    L2_2 = A0_2._do_gacha_callback
    L3_2 = A0_2._do_gacha_callback_self
    L2_2(L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.GachaModule
    L3_2 = L2_2
    L2_2 = L2_2.DoGacha
    L4_2 = A0_2._gacha_pool_data
    L5_2 = A0_2._draw_data
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._get_buy_tokens_data
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Gacha.GachaConfirmDialog"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.on_draw = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.on_draw
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_draw_btn_click = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_draw
  L4_2 = A0_2._on_draw_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L13_1
function L13_1(A0_2)
  local L1_2
  A0_2._begin_gacha_callback_self = nil
  A0_2._begin_gacha_callback = nil
  A0_2._do_gacha_callback_self = nil
  A0_2._do_gacha_callback = nil
end
L0_1._on_dispose = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.GachaTokenData
  A0_2._gacha_token_data = L1_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2._gacha_pool_data
  L2_2 = L2_2.GoldRow
  L2_2 = L2_2.ItemName
  L1_2 = L1_2(L2_2)
  A0_2._gold_name = L1_2
  L1_2 = A0_2._draw_data
  L2_2 = L1_2
  L1_2 = L1_2.GetTokenCostNum
  L1_2 = L1_2(L2_2)
  A0_2._toke_cost = L1_2
end
L0_1._refresh_data = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_draw
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._draw_data
  L3_2 = L3_2.Active
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_draw_cost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._toke_cost
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_draw_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L4_2 = A0_2._draw_data
  L4_2 = L4_2.DrawTime
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._gacha_token_data
  L1_2 = L1_2.Row
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_draw_cost
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_draw_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._draw_data
  L2_2 = L1_2
  L1_2 = L1_2.HaveDiscount
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_discount
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2._draw_data
    L2_2 = L2_2.TokenCostNumPerDraw
    L2_2 = 1 - L2_2
    L2_2 = L2_2 * 100
    L2_2 = L2_2 + 0.5
    L1_2 = L1_2(L2_2)
    L2_2 = "-"
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetPercentSymbolStr
    L4_2 = L4_2()
    L2_2 = L2_2 .. L3_2 .. L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_discount
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_discount
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_discount = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L2_2.callback_self = A0_2
  L3_2 = A0_2._on_buy_tokens
  L2_2.callback = L3_2
  L3_2 = L4_1
  L2_2.title_id = L3_2
  L3_2 = L5_1
  L2_2.content_Id = L3_2
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = A0_2._gacha_token_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.ItemName
  L3_2 = L3_2(L4_2)
  L2_2.token_name = L3_2
  L3_2 = A0_2._gold_name
  L2_2.gold_name = L3_2
  L3_2 = A0_2._toke_cost
  L3_2 = L3_2 - A1_2
  L2_2.insufficient_token_num = L3_2
  L3_2 = L2_2.insufficient_token_num
  L4_2 = A0_2._gacha_token_data
  L4_2 = L4_2.Price
  L3_2 = L3_2 * L4_2
  L2_2.insufficient_gold_num = L3_2
  return L2_2
end
L0_1._get_buy_tokens_data = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = A0_2._gacha_token_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._buy_insufficient_token
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_buy_tokens = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._gacha_pool_data
  if L2_2 ~= nil then
    L2_2 = A0_2._toke_cost
    if not (A1_2 >= L2_2) then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._toke_cost
  L2_2 = L2_2 - A1_2
  L4_2 = A0_2
  L3_2 = A0_2._get_cost_gold_num
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.ShopUtils
  L4_2 = L4_2.is_hcoin_sufficient
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A0_2._gacha_token_data
    L4_2 = L4_2.GachaTokenShop
    L6_2 = A0_2
    L5_2 = A0_2._update_shop_info
    L7_2 = L4_2.ShopID
    L5_2(L6_2, L7_2)
    L5_2 = G
    L5_2 = L5_2.ShopModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.buy_good
    L7_2 = L4_2.ShopID
    L8_2 = L4_2.ShopGoodID
    L9_2 = A0_2._gacha_token_data
    L9_2 = L9_2.Row
    L9_2 = L9_2.ID
    L10_2 = L2_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L4_2 = G
    L4_2 = L4_2.ShopUtils
    L4_2 = L4_2.show_pay_conversion_dialog
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L0_1._buy_insufficient_token = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ShopConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ShopType
  L4_2 = G
  L4_2 = L4_2.ShopModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.send_get_shop_list_req
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._update_shop_info = L13_1
function L13_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._gacha_token_data
  L2_2 = L2_2.Price
  L2_2 = A1_2 * L2_2
  return L2_2
end
L0_1._get_cost_gold_num = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.GachaType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.Newbie
  if L1_2 == L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L2_1.HaveTotalGachaLimit
  if L1_2 then
    L1_2 = L2_1.TotalGachaTime
    L2_2 = A0_2._draw_data
    L2_2 = L2_2.DrawTime
    L1_2 = L1_2 + L2_2
    L2_2 = L2_1.TotalGachaLimit
    if L1_2 > L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.ConfirmDialogUtil
      L1_2 = L1_2.ShowOkHint
      L2_2 = L7_1
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TextID
      L3_2 = L3_2.empty
      L1_2(L2_2, L3_2)
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = L2_1.HavePoolGachaLimit
  if L1_2 then
    L1_2 = A0_2._gacha_pool_data
    L1_2 = L1_2.CurrentGachaTime
    L2_2 = A0_2._draw_data
    L2_2 = L2_2.DrawTime
    L1_2 = L1_2 + L2_2
    L2_2 = L2_1.PoolGachaLimit
    if L1_2 > L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.ConfirmDialogUtil
      L1_2 = L1_2.ShowOkHint
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.TextID
      L2_2 = L2_2.empty
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TextID
      L3_2 = L3_2.empty
      L1_2 = L1_2(L2_2, L3_2)
      L3_2 = L1_2
      L2_2 = L1_2.SetContent
      L4_2 = L8_1
      L5_2 = G
      L5_2 = L5_2.TextmapStatic
      L5_2 = L5_2.GetText
      L6_2 = A0_2._gacha_pool_data
      L6_2 = L6_2.Row
      L6_2 = L6_2.PoolName
      L5_2, L6_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = true
      return L2_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._check_is_over_limit_time = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.get_all_lightcone_items
  L1_2 = L1_2()
  L1_2 = #L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetLightConeItemsMaxNum
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2._check_limit_item
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = "UIText_Gacha_ItemNumCheck_Dialogue_Desc_Equipment"
  function L8_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.UIManager
    L0_3 = L0_3.load_and_async_show
    L1_3 = "Ui.LightCone.LightConeSellPage"
    L0_3(L1_3)
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L9_1
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = L9_1
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._check_limit_item
  L7_2 = L4_2
  L8_2 = L3_2.PileLimit
  L9_2 = "UIText_Gacha_ItemNumCheck_Dialogue_Desc_Embers"
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.GameCore
    L0_3 = L0_3.ConstValueClientExcelTable
    L0_3 = L0_3.GetData
    L1_3 = L11_1
    L0_3 = L0_3(L1_3)
    L0_3 = L0_3.Value
    L0_3 = L0_3.IntValue
    L1_3 = G
    L1_3 = L1_3.GotoManager
    L1_3 = L1_3.GotoByType
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.GameCore
    L2_3 = L2_3.GotoType
    L2_3 = L2_3.Shop
    L2_3 = #L2_3
    L3_3 = {}
    L4_3 = nil
    L5_3 = L0_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L1_3(L2_3, L3_3)
  end
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if L5_2 then
    L5_2 = true
    return L5_2
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L10_1
  L5_2 = L5_2(L6_2)
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.GetItemCountByConfigID
  L8_2 = L10_1
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._check_limit_item
  L9_2 = L6_2
  L10_2 = L5_2.PileLimit
  L11_2 = "UIText_Gacha_ItemNumCheck_Dialogue_Desc_Starlight"
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.GameCore
    L0_3 = L0_3.ConstValueClientExcelTable
    L0_3 = L0_3.GetData
    L1_3 = L12_1
    L0_3 = L0_3(L1_3)
    L0_3 = L0_3.Value
    L0_3 = L0_3.IntValue
    L1_3 = G
    L1_3 = L1_3.GotoManager
    L1_3 = L1_3.GotoByType
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.GameCore
    L2_3 = L2_3.GotoType
    L2_3 = L2_3.Shop
    L2_3 = #L2_3
    L3_3 = {}
    L4_3 = nil
    L5_3 = L0_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L1_3(L2_3, L3_3)
  end
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  if L7_2 then
    L7_2 = true
    return L7_2
  end
  L7_2 = false
  return L7_2
end
L0_1._check_is_over_limit_items = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A2_2 <= A1_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ConfirmDialogUtil
    L5_2 = L5_2.ShowOkCancelHint
    L6_2 = A3_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TextID
    L7_2 = L7_2.empty
    function L8_2(A0_3)
      local L1_3
      if A0_3 then
        L1_3 = A4_2
        L1_3()
      end
    end
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L5_2.TextIDOK = "UIText_Gacha_ItemNumCheck_Dialogue_Btn_Goto"
    L5_2.TextIDCancel = "UIText_Gacha_ItemNumCheck_Dialogue_Btn_Close"
    L6_2 = true
    return L6_2
  end
  L5_2 = false
  return L5_2
end
L0_1._check_limit_item = L13_1
return L0_1
