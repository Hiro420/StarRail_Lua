local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Shop.ProductItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.ProductItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ProductTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L0_1.CustomServiceGotoID = 2600
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PayModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.Prefs
L2_1 = L2_1.User
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_service
  L4_2 = A0_2._on_btn_service
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRechargeItem
  L4_2 = A0_2._on_recharge_succ
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ProductUpdated
  L4_2 = A0_2._on_product_updated
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2._shop = A1_2
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  A0_2._res_bar_area_panel = A1_2
end
L0_1.set_res_bar_area_panel = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._shop
  L1_2 = L1_2.ShopName
  return L1_2
end
L0_1.get_shop_name = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.shop_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._shop
  L3_2 = L3_2.ShopName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.shop_name_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._shop
  L3_2 = L3_2.ShopName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon_normal
  L4_2 = A0_2._shop
  L4_2 = L4_2.ShopIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon_selected
  L4_2 = A0_2._shop
  L4_2 = L4_2.ShopIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "CoinGiftReset"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._need_fade_in = true
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_PSManager
  L2_2 = L1_2
  L1_2 = L1_2.TryShowPSStoreIcon
  L1_2(L2_2)
end
L0_1.try_show_ps_store_icon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_PSManager
  L2_2 = L1_2
  L1_2 = L1_2.TryHidePSStoreIcon
  L1_2(L2_2)
end
L0_1.try_hide_ps_store_icon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._res_bar_area_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "RechargePage"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_seen_coin_pref
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.try_show_ps_store_icon
  L1_2(L2_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.try_hide_ps_store_icon
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_double_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._need_fade_in = true
end
L0_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = L1_1.AllHcoinProducts
  L1_2 = L1_2(L2_2)
  A0_2._products = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._products
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Row
    L2_3 = L2_3.ListOrder
    L3_3 = A1_3.Row
    L3_3 = L3_3.ListOrder
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = false
  L2_2 = 1
  L3_2 = A0_2._products
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._products
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.IsFirstRecharge
    if L6_2 == true then
      L1_2 = true
      break
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_double_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_data = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.IsInstanceOf
    L6_2 = L4_2
    L7_2 = G
    L7_2 = L7_2.ProductItemPanel
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_30
    end
  end
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.dispose
    L5_2(L6_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.ProductItemPanel
  L8_2 = G
  L8_2 = L8_2.ProductItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_30::
  L5_2 = A0_2._products
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_buy_succ_callback
  L8_2 = A0_2._on_buy_succ
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_product_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._state
  L3_2 = A0_2.SelectState
  L3_2 = L3_2.Selected
  if L2_2 ~= L3_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_product_updated = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_service
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_product_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._products
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._need_fade_in
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_shop_item_list
    L2_2 = L1_2
    L1_2 = L1_2.PlayFadeIn
    L1_2(L2_2)
    A0_2._need_fade_in = false
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.SystemOpenModule
  L2_2 = L1_2
  L1_2 = L1_2.IsGotoIDValid
  L3_2 = L0_1.CustomServiceGotoID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = false
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_ios_platform
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_NetworkManager
    L3_2 = L3_2.GIHDCLKLGPI
    L2_2 = L3_2.IOSExam
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_service
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActiveByScale
  L5_2 = not L2_2 and L5_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_btn_service = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.GiftCoinCurVersion
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetGiftCoinSeenVersion
  L2_2 = L2_2(L3_2)
  if L1_2 ~= L2_2 then
    L3_2 = L2_1
    L4_2 = L3_2
    L3_2 = L3_2.SetGiftCoinSeenVersion
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._update_seen_coin_pref = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_buy_succ = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = L0_1.CustomServiceGotoID
  L1_2(L2_2)
end
L0_1._on_btn_service = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RequestProductItems
  L1_2(L2_2)
end
L0_1._on_recharge_succ = L3_1
return L0_1
