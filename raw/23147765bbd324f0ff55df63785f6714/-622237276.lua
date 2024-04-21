local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Shop.ShopPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.ShopTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.ShopTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.ProductTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.ProductTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.RecommendGoodsTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.RecommendGoodsTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShopPage"
L2_1 = G
L2_1 = L2_1.UIController
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
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FeatureSwitchModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.SDKPlatform
L4_1 = L4_1.Instance
L4_1 = L4_1()
L5_1 = nil
L6_1 = 96
L7_1 = 60
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ShopPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._enable_inner_goto = true
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
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L6_2 = A0_2
  L5_2 = A0_2.create_panel_without_binder
  L7_2 = G
  L7_2 = L7_2.TabControl
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._tab_control = L5_2
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = 1
  end
  A0_2._shop_type = L5_2
  A0_2._shop_id = A2_2
  A0_2._disable_bought_hint = A3_2
  A0_2._target_item_id = A4_2
end
L0_1.init = L8_1
function L8_1(A0_2, A1_2)
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
      L4_2 = A0_2._tab_control
      L4_2 = L4_2.current_select_item
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 ~= nil
    return L2_2
  end
end
L0_1._is_can_to_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._try_adjust_buy_tip_position
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_shop_tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
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
  L3_2 = A0_2
  L2_2 = A0_2._clear_tabs
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ShopUpdated
  L5_2 = A0_2._on_shop_updated
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_consume_hint
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2._service_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2._buy_tip_node
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_node_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ShopSyncShieldedData
  L5_2 = A0_2._on_server_update_shielded_data
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PlayerDailyRefresh
  L5_2 = A0_2._on_player_daily_refresh
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ProductUpdated
  L5_2 = A0_2._on_product_updated
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2._buy_tip_node
  L1_2 = L1_2.transform
  L1_2 = L1_2.localPosition
  L5_1 = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_ps_platform
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2._buy_tip_node
    L1_2 = L1_2.transform
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = L5_1.x
    L4_2 = L6_1
    L3_2 = L3_2 + L4_2
    L4_2 = L5_1.y
    L5_2 = L7_1
    L4_2 = L4_2 + L5_2
    L5_2 = L5_1.z
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2.localPosition = L2_2
  end
end
L0_1._try_adjust_buy_tip_position = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._request_shop_data
  L1_2(L2_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loading_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.shop_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._shop_data_update = L8_1
function L8_1(A0_2)
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
  L1_2 = A0_2._should_show_recharge_shop
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.RequestProductItems
    L1_2(L2_2)
  end
end
L0_1._request_shop_data = L8_1
function L8_1(A0_2)
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
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._shop_type
  L1_2 = L1_2 == 1
  return L1_2
end
L0_1._should_show_recharge_shop = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_shops_by_type
  L3_2 = A0_2._shop_type
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._should_show_recharge_shop
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.ShopUtils
    L2_2 = L2_2.add_custom_shop
    L3_2 = L1_2
    L2_2(L3_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.ShopSortID
    L3_3 = A1_3.ShopSortID
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.ShopSortID
      L3_3 = A1_3.ShopSortID
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L2_3 = A0_3.ShopID
    L3_3 = A1_3.ShopID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._get_sorted_tabs = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._real_active_shops
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ShopID
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_tab_index_by_shop_id = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_node_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_shop_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_default_tab
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_shop_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._shop_tab_table
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_pre_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_pre_selelct
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.clear
      if L7_2 ~= nil then
        L8_2 = L6_2
        L7_2 = L6_2.clear
        L7_2(L8_2)
      end
    end
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.clear
  L2_2(L3_2)
end
L0_1._clear_tabs = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._get_sorted_tabs
  L1_2 = L1_2(L2_2)
  A0_2._shop_tab_table = L1_2
  L1_2 = L3_1.IsCloseAllShop
  if L1_2 then
    return
  end
  L1_2 = 0
  L2_2 = 0
  L3_2 = {}
  A0_2._real_active_shops = L3_2
  L3_2 = pairs
  L4_2 = A0_2._shop_tab_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.is_shielded
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2._init_tab_item
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L2_2 = L2_2 + 1
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._real_active_shops
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L1_2 = L1_2 + 1
  end
  if L1_2 ~= 0 and L2_2 == 0 then
    L3_2 = "UIText_Operation_BlockShopPage"
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConfirmDialogUtil
    L4_2 = L4_2.ShowOkHint
    L5_2 = L3_2
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TextID
    L6_2 = L6_2.empty
    L4_2(L5_2, L6_2)
    return
  end
end
L0_1._init_shop_tabs = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_select_shop
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_tab_index_by_shop_id
    L3_2 = A0_2._cur_select_shop
    L3_2 = L3_2.ShopID
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = 1
    end
    A0_2._default_tab_index = L1_2
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_tab_index_by_shop_id
  L3_2 = A0_2._shop_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 1
  end
  A0_2._default_tab_index = L1_2
end
L0_1._init_default_tab = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._create_tab_item_by_shop
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_tab_item = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = A1_2.ShopID
  L4_2 = G
  L4_2 = L4_2.ShopUtils
  L4_2 = L4_2.get_recharge_shop_id
  L4_2 = L4_2()
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.ProductTabItem
    L6_2 = G
    L6_2 = L6_2.ProductTabItemBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A1_2.ShopID
    L4_2 = G
    L4_2 = L4_2.ShopUtils
    L4_2 = L4_2.get_recommend_shop_id
    L4_2 = L4_2()
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.RecommendGoodsTabItem
      L6_2 = G
      L6_2 = L6_2.RecommendGoodsTabItemBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2 = L3_2
      L4_2 = L2_2
      L3_2 = L2_2.setup_view
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
      L2_2.button_prefab_index = 0
      L4_2 = L2_2
      L3_2 = L2_2.bind
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_recommend_tab_root
      L3_2(L4_2, L5_2)
      L4_2 = L2_2
      L3_2 = L2_2.set_res_bar_area_panel
      L5_2 = A0_2._res_bar_area_panel
      L3_2(L4_2, L5_2)
      return L2_2
    else
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.ShopTabItem
      L6_2 = G
      L6_2 = L6_2.ShopTabItemBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2 = L3_2
      L4_2 = L2_2
      L3_2 = L2_2.register_time_callback
      L5_2 = A0_2
      L6_2 = A0_2._on_time_callback
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = L2_2
      L3_2 = L2_2.set_tab_data
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
      L4_2 = L2_2
      L3_2 = L2_2.set_node_btn_exit
      L5_2 = A0_2._binder
      L5_2 = L5_2.btn_exit
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._disable_bought_hint
      L2_2.disable_bought_hint = L3_2
      L4_2 = L2_2
      L3_2 = L2_2.set_no_hint_callback
      L5_2 = A0_2.exit
      L6_2 = A0_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_item_tab_root
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_res_bar_area_panel
  L5_2 = A0_2._res_bar_area_panel
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._create_tab_item_by_shop = L8_1
function L8_1(A0_2)
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
L0_1._on_first_child_dialog_open = L8_1
function L8_1(A0_2)
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
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.try_show_ps_store_icon
  L1_2(L2_2)
end
L0_1._on_first_child_dialog_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._get_tab_index_by_shop_id
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._tab_control
  L5_2 = L4_2
  L4_2 = L4_2.click_item_by_uid
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.exit_all_child_dialogs
  L4_2(L5_2)
end
L0_1._do_inner_goto = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._shop_tab_table
  L2_2 = L2_2[A1_2]
  A0_2._cur_select_shop = L2_2
  L2_2 = G
  L2_2 = L2_2.ShopUtils
  L2_2 = L2_2.is_recharge_shop
  L3_2 = A0_2._cur_select_shop
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._service_btn
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._buy_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_shop_name
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._report_tab_select
  L3_2(L4_2)
end
L0_1._on_tab_select = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._shop_tab_table
  L2_2 = L2_2[A1_2]
  L4_2 = A0_2
  L3_2 = A0_2._update_loading
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_tab_pre_selelct = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_shop_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2
  L3_2 = L3_2.get_shop_name
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._set_shop_name = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_tabs
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.send_get_shop_list_req
  L3_2 = A0_2._shop_type
  L1_2(L2_2, L3_2)
end
L0_1._on_time_callback = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.guid
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_select_shop
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIPanelSwitch
  L2_2 = A0_2.__name
  L3_2 = A0_2._cur_select_shop
  L3_2 = L3_2.ShopID
  L4_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._cur_select_shop
  L1_2 = L1_2.ShopID
  L2_2 = G
  L2_2 = L2_2.ShopUtils
  L2_2 = L2_2.get_recharge_shop_id
  L2_2 = L2_2()
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_mobile_platform
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIOnOpen998Shop
      L1_2(L2_2)
    end
  end
end
L0_1._report_tab_select = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = "UIText_ShopPage_Tip_1"
  L2_2 = A0_2._binder
  L2_2 = L2_2._gacha_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_consume_hint = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_tab_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_shop_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_node_active = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_shop_updated = L8_1
function L8_1(A0_2)
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
L0_1._on_got_focus = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_shop
  L1_2(L2_2)
end
L0_1._on_server_update_shielded_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_shop
  L1_2(L2_2)
end
L0_1._on_player_daily_refresh = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L4_2 = A0_2
  L3_2 = A0_2._should_show_recharge_shop
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L2_1.IsProductDataReady
    L4_2 = G
    L4_2 = L4_2.ShopUtils
    L4_2 = L4_2.is_recharge_shop
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AppUtils
    L5_2 = L5_2.IsPSPlatform
    L2_2 = L4_2 or L2_2
    L2_2 = L5_2 and not L3_2 or L4_2 and L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.loading_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.shop_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
end
L0_1._update_loading = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1.IsProductDataReady
  L4_2 = A0_2
  L3_2 = A0_2._update_loading
  L5_2 = A0_2._cur_select_shop
  L3_2(L4_2, L5_2)
  if not L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AppUtils
    L3_2 = L3_2.IsPSPlatform
    if L3_2 then
      L3_2 = A0_2._shop_type
      if L3_2 == 1 then
        L3_2 = L4_1
        L4_2 = L3_2
        L3_2 = L3_2.ShowPSEmptyStoreDialog
        function L5_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.exit
          L0_3(L1_3)
        end
        L3_2(L4_2, L5_2)
        return
      end
    end
  end
end
L0_1._on_product_updated = L8_1
function L8_1(A0_2)
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
L0_1._try_refresh_shop = L8_1
function L8_1(A0_2)
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
L0_1._late_refresh_shop = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mark_late_refresh
  if L1_2 then
    A0_2._mark_late_refresh = false
    L2_2 = A0_2
    L1_2 = A0_2._late_refresh_shop
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L8_1
return L0_1
