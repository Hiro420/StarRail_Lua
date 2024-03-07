local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Buff.RogueBuffShopPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Buff.Components.RogueBuffShopItemPanel"
L0_1(L1_1)
L0_1 = "UIText_RogueDLC_BuffShop_Button_UnSelect"
L1_1 = "UIText_RogueDLC_MiracleShop_Button_Selected"
L2_1 = "UIText_RogueDLC_MiracleShop_OwenRepeat"
L3_1 = "UIText_RogueDLC_MiracleShop_SoldOut"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "RogueBuffShopPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueBuffShopPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._buff_list = L1_2
  A0_2._selectedIndex = 0
  A0_2._is_multi_select = false
  L1_2 = {}
  A0_2._buff_multi_select_dict = L1_2
  L1_2 = {}
  A0_2._is_show_handbook_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._set_last_page_transition_cut
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2.res_bar_key = A1_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = L4_1._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_multi_select
  L4_2 = L4_1._on_btn_multi_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_view
  L4_2 = L4_1._on_btn_view
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_refresh
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_btn_refresh
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_btn_confirm
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroller_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_buff_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueBuffShopRefresh
  L4_2 = A0_2._on_shop_data_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueBuffShopBuySuccess
  L4_2 = A0_2._on_shop_buy_success
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshRogueCoin
  L4_2 = A0_2._on_shop_data_get
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "RogueBuffShopPage"
  L1_2(L2_2, L3_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_refresh
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._send_get_shop_data_req
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_right_panel
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._shop_info
  if L1_2 then
    L1_2 = A0_2._shop_info
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueAdventureModule
  L1_2 = L1_2.RogueShopInfo
  A0_2._shop_data = L1_2
  L1_2 = A0_2._shop_data
  L1_2 = L1_2.BuffShop
  A0_2._shop_info = L1_2
  L1_2 = A0_2._shop_info
  L2_2 = L1_2
  L1_2 = L1_2.SendGetRogueShopBuffInfoCsReq
  L1_2(L2_2)
end
L4_1._send_get_shop_data_req = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._shop_info
  L2_2 = L2_2.InShopItems
  L1_2 = L1_2(L2_2)
  A0_2._buff_list = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._buff_list
  L3_2 = L4_1._sort_buff_func
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._shop_info
  L3_2 = L3_2.InShopItems
  L3_2 = L3_2 == nil
  L1_2(L2_2, L3_2)
end
L4_1._refresh_all_buff = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.RogueBuffData
  L3_2 = A1_2.RogueBuffData
  L5_2 = L2_2
  L4_2 = L2_2.GetRogueBuffRarity
  L4_2 = L4_2(L5_2)
  L6_2 = L3_2
  L5_2 = L3_2.GetRogueBuffRarity
  L5_2 = L5_2(L6_2)
  if L4_2 ~= L5_2 then
    L6_2 = L4_2 > L5_2
    return L6_2
  end
  L7_2 = L2_2
  L6_2 = L2_2.GetRogueBuffType
  L6_2 = L6_2(L7_2)
  L8_2 = L3_2
  L7_2 = L3_2.GetRogueBuffType
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 < L7_2
  return L6_2
end
L4_1._sort_buff_func = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.RogueAdventureModule
  L2_2 = L2_2.IsShowHandbookHint
  if L2_2 then
    L3_2 = pairs
    L4_2 = A0_2._buff_list
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.GlobalVars
      L8_2 = L8_2.s_ModuleManager
      L8_2 = L8_2.RogueHandbookModule
      L9_2 = L8_2
      L8_2 = L8_2.GetBuffData
      L10_2 = L7_2.RogueBuffData
      L10_2 = L10_2.BuffID
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L8_2.IsUnlocked
      L9_2 = L8_2 ~= nil and L9_2
      L10_2 = A0_2._is_show_handbook_hint
      L10_2[L6_2] = L9_2
      if L9_2 then
        L1_2 = true
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_handbook_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L4_1._refresh_all_handbook_hint = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueBuffShopItemPanel
    L8_2 = G
    L8_2 = L8_2.RogueBuffShopItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._buff_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._is_buff_selected
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_click_callback
  L9_2 = A0_2
  L10_2 = A0_2._on_buff_row_click
  L11_2 = A0_2._on_buff_row_minus_click
  L12_2 = A0_2._on_buff_row_gamepad_select
  L13_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_selected
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_minus_btn
  L9_2 = L6_2 or L9_2
  if L6_2 then
    L9_2 = A0_2._is_multi_select
  end
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_handbook_hint
  L9_2 = A0_2._is_show_handbook_hint
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  if not L9_2 then
    L9_2 = false
  end
  L7_2(L8_2, L9_2)
  return L3_2
end
L4_1._on_buff_changed = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._cur_panel
  A0_2._cur_data = A1_2
  A0_2._cur_panel = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._try_save_navigation_to_cur_panel
  L4_2(L5_2)
  L4_2 = A0_2._is_multi_select
  if not L4_2 then
    if L3_2 then
      L5_2 = L3_2
      L4_2 = L3_2.setup_selected
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._cur_panel
      L5_2 = L4_2
      L4_2 = L4_2.setup_minus_btn
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
    L4_2 = A0_2._cur_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_selected
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = {}
    A0_2._buff_multi_select_dict = L4_2
    L4_2 = A0_2._buff_multi_select_dict
    L5_2 = A1_2.RogueBuffData
    L5_2 = L5_2.BuffID
    L4_2[L5_2] = A1_2
  else
    L4_2 = A0_2._cur_data
    L4_2 = L4_2.AlreadyHave
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIPileToastMessageTextID
      L6_2 = L3_1
      L4_2(L5_2, L6_2)
    else
      L5_2 = A0_2
      L4_2 = A0_2._is_buff_selected
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L4_2 = A0_2._buff_multi_select_dict
        L5_2 = A1_2.RogueBuffData
        L5_2 = L5_2.BuffID
        L4_2[L5_2] = nil
        L4_2 = A0_2._cur_panel
        L5_2 = L4_2
        L4_2 = L4_2.setup_selected
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._cur_panel
        L5_2 = L4_2
        L4_2 = L4_2.setup_minus_btn
        L6_2 = false
        L4_2(L5_2, L6_2)
      else
        L4_2 = A0_2._buff_multi_select_dict
        L5_2 = A1_2.RogueBuffData
        L5_2 = L5_2.BuffID
        L4_2[L5_2] = A1_2
        L4_2 = A0_2._cur_panel
        L5_2 = L4_2
        L4_2 = L4_2.setup_selected
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._cur_panel
        L5_2 = L4_2
        L4_2 = L4_2.setup_minus_btn
        L6_2 = true
        L4_2(L5_2, L6_2)
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_right_panel
  L4_2(L5_2)
end
L4_1._on_buff_row_click = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._on_buff_row_click
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L4_1._on_buff_row_minus_click = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._is_multi_select
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_buff_row_click
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  A0_2._cur_data = A1_2
  A0_2._cur_panel = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._try_save_navigation_to_cur_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_right_panel
  L3_2(L4_2)
end
L4_1._on_buff_row_gamepad_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroller_buff
  L2_2 = L1_2
  L1_2 = L1_2.IsInIgroreRefresh
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroller_buff
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._buff_list
    L3_2 = #L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroller_buff
    L2_2 = L1_2
    L1_2 = L1_2.MarkNextFrameRefresh
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroller_buff
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._buff_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroller_buff
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._refresh_buff_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_data
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_buff
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_data
  L4_2 = A0_2._shop_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_confirm
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cost
  L1_2(L2_2)
end
L4_1._refresh_right_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._shop_info
  L1_2 = L1_2.CanRefresh
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_refresh
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_btn_refresh
    L3_2 = L2_2
    L2_2 = L2_2.setup_cost
    L4_2 = A0_2._shop_info
    L4_2 = L4_2.RefreshCostItem
    L4_2 = L4_2.ConfigID
    L5_2 = A0_2._shop_info
    L5_2 = L5_2.RefreshCostItem
    L5_2 = L5_2.Count
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L4_1._refresh_func = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_target_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroller_buff
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      L3_2 = A0_2._buff_list
      L3_2 = L3_2[L1_2]
      A0_2._cur_data = L3_2
      L3_2 = L2_2.UserObjectData
      A0_2._cur_panel = L3_2
      L4_2 = A0_2
      L3_2 = A0_2._try_save_navigation_to_cur_panel
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2._refresh_right_panel
      L3_2(L4_2)
    end
  end
end
L4_1._select_default_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._last_select_id
  A0_2._last_select_id = nil
  L2_2 = pairs
  L3_2 = A0_2._buff_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.RogueBuffData
    L7_2 = L7_2.BuffID
    if L7_2 == L1_2 then
      return L5_2
    end
  end
  L2_2 = 1
  return L2_2
end
L4_1._get_default_target_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_multi_select
  if not L1_2 then
    L1_2 = A0_2._cur_data
    if L1_2 == nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_hint_lv_max
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_btn_confirm
      L2_2 = L1_2
      L1_2 = L1_2.setup_btn_text
      L3_2 = L0_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_btn_confirm
      L2_2 = L1_2
      L1_2 = L1_2.safe_set_active
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_btn_confirm
      L2_2 = L1_2
      L1_2 = L1_2.setup_btn_interact
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._cur_data
      L1_2 = L1_2.Available
      if not L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_hint_lv_max
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_hint
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = L3_1
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.panel_btn_confirm
        L2_2 = L1_2
        L1_2 = L1_2.safe_set_active
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.panel_btn_confirm
        L2_2 = L1_2
        L1_2 = L1_2.setup_btn_interact
        L3_2 = false
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._cur_data
        L1_2 = L1_2.AlreadyHave
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_hint_lv_max
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = true
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.text_hint
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetTextID
          L3_2 = L2_1
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_btn_confirm
          L2_2 = L1_2
          L1_2 = L1_2.safe_set_active
          L3_2 = false
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_btn_confirm
          L2_2 = L1_2
          L1_2 = L1_2.setup_btn_interact
          L3_2 = false
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_hint_lv_max
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = false
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_btn_confirm
          L2_2 = L1_2
          L1_2 = L1_2.setup_btn_text
          L3_2 = L1_1
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_btn_confirm
          L2_2 = L1_2
          L1_2 = L1_2.safe_set_active
          L3_2 = true
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._binder
          L1_2 = L1_2.panel_btn_confirm
          L2_2 = L1_2
          L1_2 = L1_2.setup_btn_interact
          L3_2 = false
          L1_2(L2_2, L3_2)
        end
      end
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_btn_confirm
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = A0_2._buff_multi_select_dict
    L3_2 = L3_2 ~= nil
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_btn_confirm
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_text
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_btn_confirm
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_interact
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_hint_lv_max
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L4_1._refresh_btn_confirm = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._buff_multi_select_dict
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.get_table_length
    L2_2 = A0_2._buff_multi_select_dict
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      goto lbl_22
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.setup_cost_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.setup_btn_interact
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_22::
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.setup_cost_status
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.setup_cost
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.CurrencyItem
  L3_2 = L3_2.ConfigID
  L5_2 = A0_2
  L4_2 = A0_2._get_cost
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._setup_cost = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._buff_multi_select_dict
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.get_table_length
    L2_2 = A0_2._buff_multi_select_dict
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      goto lbl_13
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_13::
  return
end
L4_1._get_currency_item_id = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = A0_2._buff_multi_select_dict
  if L2_2 ~= nil then
    L2_2 = pairs
    L3_2 = A0_2._buff_multi_select_dict
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.CurrencyItem
      L7_2 = L7_2.Count
      L1_2 = L1_2 + L7_2
    end
  end
  return L1_2
end
L4_1._get_cost = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_multi_select
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_multi_select
  L1_2(L2_2, L3_2)
end
L4_1._refresh_btn_multi_select = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._buff_multi_select_dict
  if L2_2 == nil or A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._buff_multi_select_dict
  L3_2 = A1_2.RogueBuffData
  L3_2 = L3_2.BuffID
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2 ~= nil
  return L2_2
end
L4_1._is_buff_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = A0_2._buff_multi_select_dict
  if L2_2 ~= nil then
    L2_2 = pairs
    L3_2 = A0_2._buff_multi_select_dict
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  return L1_2
end
L4_1._gen_selected_buff_id_cs_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._buff_multi_select_dict = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_handbook_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_func
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_multi_select
  L1_2(L2_2)
  A0_2._cur_data = nil
  L2_2 = A0_2
  L1_2 = A0_2._refresh_right_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._select_default_target
  L1_2(L2_2)
end
L4_1._on_shop_data_get = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_ActivityRogueEndless_All_Buy_Finish_Tips"
  L1_2(L2_2, L3_2)
end
L4_1._on_shop_buy_success = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.NCMPLBAGGDF
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._shop_info
  L2_2 = L1_2
  L1_2 = L1_2.RefreshRogueShopBuffInfo
  L1_2(L2_2)
end
L4_1._on_btn_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._buff_multi_select_dict
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.get_table_length
    L2_2 = A0_2._buff_multi_select_dict
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2._gen_selected_buff_id_cs_list
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Count
  if L2_2 <= 1 then
    L2_2 = A0_2._shop_info
    L3_2 = L2_2
    L2_2 = L2_2.SendBuyRogueShopBuffCsReq
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block_for_packet
    L4_2 = CS
    L4_2 = L4_2.NIJNBICAPPA
    L4_2 = L4_2.CGOBMFCMJMG
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = "UIText_ActivityRogueEndless_All_Buy_Tips"
    L5_2 = A0_2
    L4_2 = A0_2._get_cost
    L4_2, L5_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowCustomOkCancelHint
    L4_2 = L2_2
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 then
        L1_3 = A0_2._shop_info
        L2_3 = L1_3
        L1_3 = L1_3.SendBuyRogueShopBuffCsReq
        L3_3 = L1_2
        L1_3(L2_3, L3_3)
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.show_full_screen_block_for_packet
        L3_3 = CS
        L3_3 = L3_3.NIJNBICAPPA
        L3_3 = L3_3.CGOBMFCMJMG
        L1_3(L2_3, L3_3)
      end
    end
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._cur_data
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_data
    L2_2 = L2_2.RogueBuffData
    L2_2 = L2_2.BuffID
    A0_2._last_select_id = L2_2
  else
    A0_2._last_select_id = nil
  end
end
L4_1._on_btn_confirm = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_multi_select
  L1_2 = not L1_2
  A0_2._is_multi_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_multi_select
  L1_2(L2_2)
  L1_2 = {}
  A0_2._buff_multi_select_dict = L1_2
  L1_2 = A0_2._is_multi_select
  if not L1_2 then
    L1_2 = A0_2._cur_data
    if L1_2 ~= nil then
      L1_2 = A0_2._buff_multi_select_dict
      L2_2 = A0_2._cur_data
      L2_2 = L2_2.RogueBuffData
      L2_2 = L2_2.BuffID
      L3_2 = A0_2._cur_data
      L1_2[L2_2] = L3_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_right_panel
  L1_2(L2_2)
end
L4_1._on_btn_multi_select = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_buff_list_page
  L1_2()
end
L4_1._on_btn_view = L5_1
function L5_1(A0_2, A1_2)
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
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroller_buff
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  return L2_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L4_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_panel
    L1_2 = L1_2._binder
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2.set_navigation_target
      L3_2 = A0_2._cur_panel
      L3_2 = L3_2._binder
      L3_2 = L3_2.root
      L3_2 = L3_2.gameObject
      L1_2(L2_2, L3_2)
    end
  end
end
L4_1._try_save_navigation_to_cur_panel = L5_1
return L4_1
