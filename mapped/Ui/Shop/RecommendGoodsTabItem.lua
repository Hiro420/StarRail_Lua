local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Shop.Recommend.MonthCardTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.Recommend.MonthCardTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.Recommend.SingleGiftTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.Recommend.SingleGiftTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RecommendGoodsTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._second_tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ProductUpdated
  L4_2 = A0_2._on_product_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRechargeItem
  L4_2 = A0_2._on_recharge_succ
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._shop = A1_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  A0_2._res_bar_area_panel = A1_2
end
L0_1.set_res_bar_area_panel = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._shop
  L1_2 = L1_2.ShopName
  return L1_2
end
L0_1.get_shop_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._second_tab_control
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._second_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  A0_2._second_tab_control = nil
end
L0_1.clear = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._second_tab_control = L1_2
  L1_2 = A0_2._second_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ShopUtils
  L1_2 = L1_2.get_recommend_data_list
  L1_2 = L1_2()
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Order
    L3_3 = A1_3.Order
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._create_tab_item
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._second_tab_control
    L9_2 = L8_2
    L8_2 = L8_2.add_item
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2._second_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._second_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._second_tab_control
  L5_2 = L4_2
  L4_2 = L4_2.item_count
  L4_2 = L4_2(L5_2)
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._second_tab_control
  L5_2 = L4_2
  L4_2 = L4_2.item_count
  L4_2 = L4_2(L5_2)
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
end
L0_1._init_tabs = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = A1_2.Type
  L4_2 = G
  L4_2 = L4_2.ShopUtils
  L4_2 = L4_2.RecommendShopType
  L4_2 = L4_2.MonthCard
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.MonthCardTabItem
    L6_2 = G
    L6_2 = L6_2.MonthCardTabItemBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  else
    L3_2 = A1_2.Type
    L4_2 = G
    L4_2 = L4_2.ShopUtils
    L4_2 = L4_2.RecommendShopType
    L4_2 = L4_2.Goods
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.SingleGiftTabItem
      L6_2 = G
      L6_2 = L6_2.SingleGiftTabItemBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2 = L3_2
    end
  end
  L4_2 = L2_2
  L3_2 = L2_2.set_async_bind_parent
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_root
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._create_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left_gamepad
  L4_2 = A0_2._on_btn_left_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right_gamepad
  L4_2 = A0_2._on_btn_right_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
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
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._second_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._on_btn_left_gamepad_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._second_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._on_btn_right_gamepad_click = L1_1
function L1_1(A0_2)
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
L0_1.try_show_ps_store_icon = L1_1
function L1_1(A0_2)
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
L0_1.try_hide_ps_store_icon = L1_1
function L1_1(A0_2)
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
  L1_2 = A0_2.try_show_ps_store_icon
  L1_2(L2_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.try_hide_ps_store_icon
  L1_2(L2_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._second_tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L2_2 = L1_2.refresh
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.refresh
      L2_2(L3_2)
    end
  end
end
L0_1._on_product_updated = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._second_tab_control
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_tabs
    L1_2(L2_2)
  else
    L1_2 = A0_2._second_tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L1_2(L2_2)
  end
  L1_2 = A0_2._second_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._second_tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._on_recharge_succ = L1_1
return L0_1
