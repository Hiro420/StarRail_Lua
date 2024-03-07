local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.ShopItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.ShopItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.WorldShop.WorldShopPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.WorldShop.WorldShopScoreBoardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.WorldShop.WorldShopScoreBoardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldShopPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ShopModule
L1_1 = L1_1.Instance
L2_1 = "5024"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.WorldShopPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_save_by_click = false
  A0_2._first_refresh = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._shop_type = A2_2
  A0_2._shop_id = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
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
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.DOABPPPHIPL
  L4_2 = A0_2._on_take_city_shop_reward
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.WorldShopUpdate
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopBuyGoods
  L4_2 = L0_1._on_shop_buy_goods
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopUpdated
  L4_2 = A0_2._on_shop_updated
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ResBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.ResBarAreaPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._res_bar_area_panel = L1_2
  L1_2 = A0_2._res_bar_area_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_res_bar_area
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WorldShopScoreBoardPanel
  L4_2 = G
  L4_2 = L4_2.WorldShopScoreBoardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._scoreboard_panel = L1_2
  L1_2 = A0_2._scoreboard_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2._shop_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._scoreboard_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_scoreboard_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._first_refresh
    if L0_3 then
      L0_3 = A0_2._scoreboard_panel
      L1_3 = L0_3
      L0_3 = L0_3.init_view
      L0_3(L1_3)
      A0_2._first_refresh = false
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2.mOnEndPlayFadeInAction = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  function L3_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.WorldShopClose
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.ShowWorldShopReddot
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A0_2._shop_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L1_2.ShowWorldShopReddot
    L3_2 = A0_2._shop_id
    L2_2[L3_2] = false
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.ForceSave
    L2_2()
  end
  L3_2 = A0_2
  L2_2 = A0_2._request_shop_data
  L2_2(L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._shop
  if L1_2 ~= nil then
    L1_2 = A0_2._max_level_saved
    if not L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  A0_2._max_level_saved = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CityShopConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._shop_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ItemID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetItemCountByConfigID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._shop
  L4_2 = L4_2.CityLevel
  L4_2 = L4_2 + 1
  L5_2 = A0_2._shop
  L5_2 = L5_2.CityExp
  L5_2 = L3_2 + L5_2
  while true do
    L6_2 = L1_2.MaxLevel
    if not (L4_2 <= L6_2) then
      break
    end
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.CityShopRewardListExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L1_2.RewardListGroupID
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.ItemNeed
      L8_2 = L1_2.HintOverNum
      L7_2 = L7_2 + L8_2
      if L5_2 >= L7_2 then
        L4_2 = L4_2 + 1
        L7_2 = L6_2.ItemNeed
        L5_2 = L5_2 - L7_2
      else
        break
      end
    end
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.Prefs
  L6_2 = L6_2.User
  L7_2 = L6_2.WorldShopLastReddotLevel
  L8_2 = L7_2
  L7_2 = L7_2.ContainsKey
  L9_2 = A0_2._shop_id
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L7_2 = L6_2.WorldShopLastReddotLevel
    L8_2 = A0_2._shop_id
    L7_2 = L7_2[L8_2]
    L8_2 = L4_2 - 1
    if not (L7_2 < L8_2) then
      goto lbl_83
    end
  end
  L7_2 = L6_2.WorldShopLastReddotLevel
  L8_2 = A0_2._shop_id
  L9_2 = L4_2 - 1
  L7_2[L8_2] = L9_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.Prefs
  L7_2 = L7_2.ForceSave
  L7_2()
  ::lbl_83::
end
L0_1._try_save_max_level_can_reach = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.GBJHDBOGALP
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.send_get_shop_list_req
  L3_2 = A0_2._shop_type
  L1_2(L2_2, L3_2)
end
L0_1._request_shop_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_shop_item_list
  L1_2(L2_2)
  A0_2._shop = nil
  A0_2._item_table = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  else
    A0_2._wait_fresh_on_return_active = true
  end
end
L0_1._on_shop_updated = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_fresh_on_return_active
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.to_prev_zoom
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
  A0_2._wait_fresh_on_return_active = false
end
L0_1._on_got_focus = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_shop_by_id
  L3_2 = A0_2._shop_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._shop = L1_2
  L1_2 = A0_2._shop
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_res_bar_area
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._get_item_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_panel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._try_save_max_level_can_reach
    L1_2(L2_2)
    L1_2 = A0_2._scoreboard_panel
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._res_bar_area_panel
  if nil ~= L1_2 then
    L1_2 = A0_2._res_bar_area_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._shop
    L3_2 = L3_2.ShopBar
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_res_bar_area = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._shop
  L2_2 = L1_2
  L1_2 = L1_2.get_shop_goods
  L1_2 = L1_2(L2_2)
  A0_2._item_table = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._item_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L3_3 = A0_3
    L2_3 = A0_3.get_sort_code
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.get_sort_code
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 < L3_3
      return L4_3
    end
    L4_3 = A0_3.GoodsSortID
    L5_3 = A1_3.GoodsSortID
    if L4_3 ~= L5_3 then
      L4_3 = A0_3.GoodsSortID
      L5_3 = A1_3.GoodsSortID
      L4_3 = L4_3 < L5_3
      return L4_3
    end
    L4_3 = A0_3.GoodsID
    L5_3 = A1_3.GoodsID
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._get_item_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_refresh_shop
  L2_2(L3_2)
  L2_2 = A1_2.RewardList
  if L2_2 ~= nil then
    L3_2 = #L2_2
    if 0 < L3_2 then
      L3_2 = G
      L3_2 = L3_2.RewardUtils
      L3_2 = L3_2.show_reward_dialog
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end
L0_1._on_shop_buy_goods = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._try_refresh_shop
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "TakeCityShopRewardScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._generate_reward_list
  L5_2 = L2_2.Reward
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = #L3_2
    if 0 < L4_2 then
      L4_2 = G
      L4_2 = L4_2.RewardUtils
      L4_2 = L4_2.show_reward_dialog
      L5_2 = L3_2
      L4_2(L5_2)
    end
  end
end
L0_1._on_take_city_shop_reward = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 ~= nil then
    L7_2 = G
    L7_2 = L7_2.IsInstanceOf
    L8_2 = L6_2
    L9_2 = G
    L9_2 = L9_2.ShopItemPanel
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_26
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2.create_panel
  L9_2 = G
  L9_2 = L9_2.ShopItemPanel
  L10_2 = G
  L10_2 = L10_2.ShopItemPanelBinder
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L7_2
  L8_2 = L6_2
  L7_2 = L6_2.bind
  L9_2 = L5_2.transform
  L7_2(L8_2, L9_2)
  L5_2.UserObjectData = L6_2
  ::lbl_26::
  L7_2 = A0_2._item_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = L6_2
  L8_2 = L6_2.setup_view
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L6_2
  L8_2 = L6_2.bind_click
  L10_2 = A0_2
  L11_2 = A0_2._shop_item_click
  L8_2(L9_2, L10_2, L11_2)
  return L5_2
end
L0_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.ShopUtils
  L2_2 = L2_2.show_shop_good_detail_dialog
  L3_2 = A1_2
  L4_2 = nil
  L5_2 = nil
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._shop_item_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_close
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_res_bar_area
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_first_child_dialog_open = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_close
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_res_bar_area
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_first_child_dialog_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ChildDialogs
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TopPage
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.ChildDialogs
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      A0_2._mark_late_refresh = true
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._request_shop_data
    L1_2(L2_2)
  end
end
L0_1._try_refresh_shop = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ChildDialogs
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TopPage
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.ChildDialogs
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      goto lbl_24
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._request_shop_data
  L1_2(L2_2)
  ::lbl_24::
end
L0_1._late_refresh_shop = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mark_late_refresh
  if L1_2 then
    A0_2._mark_late_refresh = false
    L2_2 = A0_2
    L1_2 = A0_2._late_refresh_shop
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2.ItemList_
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = #L2_2
    L8_2 = L8_2 + 1
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.ItemFactory
    L9_2 = L9_2.CreateDisplayItemData
    L10_2 = L7_2.ItemId
    L11_2 = L7_2.Num
    L12_2 = L7_2.Level
    L13_2 = L7_2.UniqueId
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L2_2[L8_2] = L9_2
  end
  return L2_2
end
L0_1._generate_reward_list = L3_1
return L0_1
