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
L1_1 = "Ui.Activity.ActivitySilverWolf.SilverWolfShopPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.SilverWolfShopTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.SilverWolfShopTabPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfShopPage"
L2_1 = G
L2_1 = L2_1.BasePage
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ShopModule
L1_1 = L1_1.Instance
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.PayModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SilverWolfShopPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._enable_inner_goto = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityConstValueSilverWolfExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "SilverWolf_ActivityShopID"
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = L1_2.Value
  L2_2 = L2_2(L3_2)
  A0_2._shop_id = L2_2
  A0_2._shop_type = 2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel_without_binder
  L4_2 = G
  L4_2 = L4_2.TabControl
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._tab_control = L2_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_first_shop_item
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_first_shop_item
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 ~= nil
    return L2_2
  end
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByRowColumn
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
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
L0_1.get_first_shop_item = L3_1
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopUpdated
  L4_2 = A0_2._on_shop_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopBuyGoods
  L4_2 = A0_2._on_shop_buy_goods
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopSyncShieldedData
  L4_2 = A0_2._on_server_update_shielded_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._on_player_daily_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.shop_tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_res_bar_area
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_res_bar_area
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ResBarAreaPanel
  L5_2 = G
  L5_2 = L5_2.ResBarAreaPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._res_bar_area_panel = L2_2
  L2_2 = A0_2._res_bar_area_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_shop_item_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitGridView
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L6_2 = nil
  L7_2 = nil
  L8_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2
  L2_2 = A0_2._request_shop_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_tab_control
  L2_2(L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSilverWolfActivityData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_shop_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.TitleName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_remain_time
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_tab_item
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.NJGFHFJPLDC
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.send_get_shop_list_req
  L3_2 = A0_2._shop_type
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.PJJIEFMNDMI
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.RequestProductItems
  L1_2(L2_2)
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
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SilverWolfShopTabPanel
  L4_2 = G
  L4_2 = L4_2.SilverWolfShopTabPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_tab_data
  L4_2 = A0_2._shop
  L2_2(L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_tab_item = L3_1
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
  L1_2 = L1_2.btn_exit
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_exit
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
  L1_2 = L1_2.btn_exit
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_exit
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
L0_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.shop_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = A0_2._shop
  L3_2 = L3_2.EndTime
  L4_2 = A0_2._on_time_callback
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_remain_time = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_time_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.ShopGoods
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._check_is_good_shielded
    L8_2 = A1_2.ShopID
    L9_2 = A1_2.ShopGoods
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2.GoodsID
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A1_2.ShopGoods
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  return A1_2
end
L0_1._handle_shielded_goods = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L1_1.shielded_shop_goods_pair
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = pairs
  L4_2 = L1_1.shielded_shop_goods_pair
  L4_2 = L4_2[A1_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A2_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_good_shielded = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_shop
  L1_2(L2_2)
end
L0_1._on_server_update_shielded_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_shop
  L1_2(L2_2)
end
L0_1._on_player_daily_refresh = L3_1
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
      L2_2 = A0_2
      L1_2 = A0_2.add_tick
      L1_2(L2_2)
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
      goto lbl_26
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._request_shop_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
  ::lbl_26::
end
L0_1._late_refresh_shop = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._late_refresh_shop
  L2_2(L3_2)
end
L0_1._on_tick = L3_1
return L0_1
