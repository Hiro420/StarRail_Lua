local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Shop.Components.ActivityMonopolyShopItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Shop.ActivityMonopolyShopPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyShopPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L2_1 = "5175"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyShopPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._shop_data_item = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGiveUpCurEventSuccess
  L4_2 = A0_2._on_give_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyBuyGoodsFinish
  L4_2 = A0_2._on_buy_item_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_item_start_fade_in
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.currency_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.currency_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.currency_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.resbar_cmpt
  L3_2 = "ActivityMonopolyMainPage"
  L4_2 = A0_2
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._res_bar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._shop_data_item
  L3_2 = L3_2.GoodsList
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
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
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.ActivityMonopolyShopItem
  L8_2 = G
  L8_2 = L8_2.ActivityMonopolyShopItemBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._shop_data_item
  L7_2 = L7_2.GoodsList
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_root_btn_clicked
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._cur_panel
  if L3_2 then
    L3_2 = A0_2._cur_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_panel = A1_2
  L3_2 = A0_2._cur_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._shop_good_item = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.currency_icon
  L6_2 = A0_2._shop_good_item
  L6_2 = L6_2.CurrencyIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.currency_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._shop_good_item
  L5_2 = L5_2.CurrencyDisplayData
  L5_2 = L5_2.Count
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._shop_good_item
  L4_2 = L4_2.CurrencyDisplayData
  L4_2 = L4_2.Count
  L5_2 = L1_1.SystemInfo
  L5_2 = L5_2.CurrencyNum
  L4_2 = L4_2 <= L5_2
  L3_2.interactable = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.currency_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.currency_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._shop_good_item
  L3_2 = L3_2.CurrencyDisplayData
  L3_2 = L3_2.Count
  L4_2 = L1_1.SystemInfo
  L4_2 = L4_2.CurrencyNum
  if L3_2 > L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.currency_num
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#EB4D3D"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.currency_num
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = "#403D39"
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.currency_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._shop_good_item
  L5_2 = L5_2.CurrencyDisplayData
  if L5_2 then
    L5_2 = A0_2._shop_good_item
    L5_2 = L5_2.CurrencyDisplayData
    L5_2 = L5_2.Count
    L5_2 = 0 < L5_2
  end
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.save_navigation_target
  L5_2 = A0_2._cur_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_root_object
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_root_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "UIText_ActivityMonopoly_ShopPage_LeaveTips"
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.PBIBDHBOIGI
      L3_3 = L3_3.PAFHAIEMHBD
      L1_3(L2_3, L3_3)
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.SendMonopolyGiveUpCurContentCsReq
      L3_3 = A0_2._shop_data_item
      L3_3 = L3_3.ID
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_exit_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.OMINLEIFLBM
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyBuyGoodsCsReq
  L3_2 = A0_2._shop_data_item
  L3_2 = L3_2.ID
  L4_2 = A0_2._shop_good_item
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_confirm_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_give_up = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_buy_item_finish = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= "MonopolyShopItemFadeIn" then
    return
  end
  L2_2 = 0
  L3_2 = A0_2._shop_data_item
  L3_2 = L3_2.GoodsList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_view
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.UserObjectData
      if L7_2 then
        L7_2 = L6_2.UserObjectData
        L8_2 = L7_2
        L7_2 = L7_2.set_root_canvas
        L9_2 = 1
        L7_2(L8_2, L9_2)
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
end
L0_1._on_item_start_fade_in = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
return L0_1
