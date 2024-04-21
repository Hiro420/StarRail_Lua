local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Miracle.RogueMiracleShopPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMiracleShopPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueMiracleShopPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._cur_data = nil
  A0_2._cur_panel = nil
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.show_cur_miracle_btn
  L4_2 = A0_2._on_show_miracle_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_confirm_btn_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueMiracleShopRefresh
  L4_2 = A0_2._on_get_shop_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshRogueCoin
  L4_2 = A0_2._on_get_shop_data
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.res_bar_root
  L3_2 = "RogueMiracleShopPage"
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._res_bar_panel = L1_2
  L1_2 = A0_2._res_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_in_control_hint
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L1_2.interactable = false
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._shop_info
  if L1_2 then
    L1_2 = A0_2._shop_info
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._first_setup_view = true
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_item_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_currency
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._send_get_miracle_data_req
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
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
  L1_2 = L1_2.MiracleShop
  A0_2._shop_info = L1_2
  L1_2 = A0_2._shop_info
  L2_2 = L1_2
  L1_2 = L1_2.SendGetRogueShopMiracleInfoCsReq
  L1_2(L2_2)
end
L0_1._send_get_miracle_data_req = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_picked_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_avatars
  L1_2(L2_2)
end
L0_1._setup_avatar_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_data
  if L1_2 ~= nil then
    L1_2 = A0_2._first_setup_view
    if not L1_2 then
      goto lbl_32
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.setup_btn_text
  L3_2 = "UIText_RogueDLC_MiracleShop_Button_UnSelect"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.setup_btn_interact
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.is_gamepad_input
    L0_3 = L0_3()
    if L0_3 then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.panel_btn_confirm
    L1_3 = L0_3
    L0_3 = L0_3.setup_cost_status
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
  A0_2._first_setup_view = false
  goto lbl_113
  ::lbl_32::
  L1_2 = A0_2._cur_data
  L1_2 = L1_2.Available
  if L1_2 then
    L1_2 = A0_2._cur_data
    L1_2 = L1_2.AlreadyHave
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_btn_confirm
      L2_2 = L1_2
      L1_2 = L1_2.safe_set_active
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_btn_confirm
      L2_2 = L1_2
      L1_2 = L1_2.setup_cost
      L3_2 = A0_2._cur_data
      L3_2 = L3_2.CurrencyItem
      L3_2 = L3_2.ConfigID
      L4_2 = A0_2._cur_data
      L4_2 = L4_2.CurrencyItem
      L4_2 = L4_2.Count
      L5_2 = true
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_btn_confirm
      L2_2 = L1_2
      L1_2 = L1_2.setup_btn_text
      L3_2 = "UIText_RogueDLC_MiracleShop_Button_Selected"
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._cur_data
    L1_2 = L1_2.Available
    if L1_2 == false then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_btn_confirm
      L2_2 = L1_2
      L1_2 = L1_2.setup_btn_text
      L3_2 = "UIText_RogueDLC_MiracleShop_SoldOut"
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_btn_confirm
      L2_2 = L1_2
      L1_2 = L1_2.setup_cost_status
      L3_2 = true
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
      L3_2 = A0_2._cur_data
      L3_2 = L3_2.Available
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._cur_data
      L1_2 = L1_2.AlreadyHave
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.panel_btn_confirm
        L2_2 = L1_2
        L1_2 = L1_2.setup_btn_text
        L3_2 = "UIText_RogueDLC_MiracleShop_OwenRepeat"
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.panel_btn_confirm
        L2_2 = L1_2
        L1_2 = L1_2.setup_cost_status
        L3_2 = true
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
        L3_2 = A0_2._cur_data
        L3_2 = L3_2.Available
        L1_2(L2_2, L3_2)
      end
    end
  end
  ::lbl_113::
end
L0_1._setup_confirm_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.RogueAdventureModule
  L2_2 = L2_2.IsShowHandbookHint
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.miracle_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = nil
    L9_2 = 0
    L10_2 = A0_2._shop_info
    if L10_2 then
      L10_2 = A0_2._shop_info
      L10_2 = L10_2.InShopItems
      L9_2 = L10_2.Count
    end
    if L6_2 <= L9_2 then
      L10_2 = A0_2._shop_info
      L10_2 = L10_2.InShopItems
      L11_2 = L6_2 - 1
      L8_2 = L10_2[L11_2]
    end
    L11_2 = L7_2
    L10_2 = L7_2.setup_view
    L12_2 = L8_2
    L13_2 = L6_2
    L10_2(L11_2, L12_2, L13_2)
    L11_2 = L7_2
    L10_2 = L7_2.register_click_callback
    L12_2 = A0_2
    L13_2 = A0_2._on_miracle_panel_clicked
    L10_2(L11_2, L12_2, L13_2)
    if L2_2 and L8_2 ~= nil then
      L10_2 = L8_2.ID
      if L10_2 ~= 0 then
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.Client
        L10_2 = L10_2.GlobalVars
        L10_2 = L10_2.s_ModuleManager
        L10_2 = L10_2.RogueHandbookModule
        L11_2 = L10_2
        L10_2 = L10_2.GetMiracleDataByMiracleID
        L12_2 = L8_2.ID
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = L10_2.IsUnlocked
        L11_2 = L10_2 ~= nil and L11_2
        L13_2 = L7_2
        L12_2 = L7_2.setup_handbook_hint
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
        if L11_2 then
          L1_2 = true
        end
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
L0_1._setup_miracle_item_panels = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_data
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.setup_cost
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.CurrencyItem
  L3_2 = L3_2.ConfigID
  L4_2 = A0_2._cur_data
  L4_2 = L4_2.CurrencyItem
  L4_2 = L4_2.Count
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_currency = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.miracle_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_active_in_hierarchy
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.trigger_click
      L6_2(L7_2)
      return
    end
  end
end
L0_1._setup_default_select_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._shop_info
  L1_2 = L1_2.InShopItems
  if L1_2 then
    L1_2 = A0_2._shop_info
    L1_2 = L1_2.InShopItems
    L1_2 = L1_2.Count
    if 0 < L1_2 then
      L1_2 = A0_2._shop_info
      L1_2 = L1_2.InShopItems
      L2_2 = A0_2._cur_data_index
      if not L2_2 then
        L2_2 = 1
      end
      L2_2 = L2_2 - 1
      L1_2 = L1_2[L2_2]
      A0_2._cur_data = L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_item_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_currency
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_spe_btn_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._on_get_shop_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_miracle_list_page
  L1_2()
end
L0_1._on_show_miracle_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_data
  if L1_2 then
    L1_2 = A0_2._shop_info
    L2_2 = L1_2
    L1_2 = L1_2.SendBuyRogueShopMiracleCsReq
    L3_2 = A0_2._cur_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.KJKONNOAOHO
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_confirm_btn_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._cur_panel
  if L4_2 then
    L4_2 = A0_2._cur_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_selected
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  A0_2._cur_data = A1_2
  A0_2._cur_panel = A2_2
  L4_2 = A0_2._cur_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_selected
  L6_2 = true
  L4_2(L5_2, L6_2)
  A0_2._cur_data_index = A3_2
  L5_2 = A0_2
  L4_2 = A0_2.save_navigation_target
  L6_2 = A0_2._cur_panel
  L7_2 = L6_2
  L6_2 = L6_2.get_root_btn
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.gameObject
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_confirm_btn
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_currency
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_confirm_btn
  L4_2(L5_2)
end
L0_1._on_miracle_panel_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Scroll"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.update_gamepad_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_root_btn
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_navigation
  L3_2 = L1_2
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L2_2(L3_2, L4_2)
end
L0_1._setup_btn_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.show_cur_miracle_btn
  L2_2(L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._res_bar_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_first_selected_btn
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_navigation
  L3_2 = L1_2
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L2_2(L3_2, L4_2)
end
L0_1._setup_spe_btn_navigation = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.miracle_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_active_in_hierarchy
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L5_2._binder
      L6_2 = L6_2.root
      L6_2 = L6_2.gameObject
      return L6_2
    end
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_enter_spe_zoom
    L2_2(L3_2)
  end
end
L0_1._on_in_control_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.show_cur_miracle_btn
    L1_2 = L1_2.transform
    L1_2 = L1_2.gameObject
    L3_2 = A0_2
    L2_2 = A0_2.set_special_zoom_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_enter_spe_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_can_to_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 == false then
    L2_2 = A0_2._cur_panel
    L3_2 = L2_2
    L2_2 = L2_2.trigger_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_input_switch = L2_1
return L0_1
