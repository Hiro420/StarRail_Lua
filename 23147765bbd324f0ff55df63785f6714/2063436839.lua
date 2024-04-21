local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Shop.ShopTabItemBinder"
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
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ShopTabItem"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2.disable_bought_hint = false
  A0_2._wait_refresh_on_return_top = false
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._shop = A1_2
  A0_2._is_selected = false
end
L1_1.set_tab_data = L2_1
function L2_1(A0_2, A1_2)
  A0_2._res_bar_area_panel = A1_2
end
L1_1.set_res_bar_area_panel = L2_1
function L2_1(A0_2, A1_2)
  A0_2._btn_exit = A1_2
end
L1_1.set_node_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._shop
  L1_2 = L1_2.ShopName
  return L1_2
end
L1_1.get_shop_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShopBuyGoods
  L4_2 = L1_1._on_shop_buy_goods
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L1_1._check_currency_change_and_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._record_all_shop_good_seen
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_shop_item_list
  L1_2(L2_2)
  A0_2._shop = nil
  A0_2._item_table = nil
  A0_2._currency_ids = nil
  A0_2._currency_id_2_amount_dict = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._shop
  if nil ~= L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.shop_avatar_icon_unselected
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.shop_avatar_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.icon_normal
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.icon_selected
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
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
    L2_2 = A0_2
    L1_2 = A0_2._set_shop_name
    L1_2(L2_2)
    A0_2._is_selected = false
    L2_2 = A0_2
    L1_2 = A0_2._setup_remain_time
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ShopTab"
    L4_2 = A0_2._shop
    L4_2 = L4_2.ShopID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    A0_2._need_fade_in = true
  end
end
L1_1._on_added = L2_1
function L2_1(A0_2)
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
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.try_show_ps_store_icon = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.try_hide_ps_store_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  A0_2._is_selected = true
end
L1_1._on_select = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_selected = false
  L3_2 = A0_2
  L2_2 = A0_2._record_all_shop_good_seen
  L2_2(L3_2)
  A0_2._need_fade_in = true
end
L1_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._item_table
  if L1_2 ~= nil then
    L1_2 = ipairs
    L2_2 = A0_2._item_table
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = G
      L6_2 = L6_2.ShopModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.record_shop_good_seen
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L1_1._record_all_shop_good_seen = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
      goto lbl_30
    end
  end
  if L6_2 ~= nil then
    L8_2 = L6_2
    L7_2 = L6_2.dispose
    L7_2(L8_2)
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
  ::lbl_30::
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
L1_1._on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L1_1._play_fade_in = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L2_2 = L2_2.click_mutex
  L3_2 = A0_2._owner
  L3_2 = L3_2._button_mutex
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = G
    L0_3 = L0_3.ShopUtils
    L0_3 = L0_3.show_shop_good_detail_dialog
    L1_3 = A1_2
    L2_3 = nil
    L3_3 = nil
    L4_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L2_2(L3_2, L4_2)
end
L1_1._shop_item_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_currency_amount
  L1_2(L2_2)
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
  L1_2 = A0_2._try_locate_target_item
  L1_2(L2_2)
  L1_2 = A0_2._need_fade_in
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_fade_in
    L1_2(L2_2)
    A0_2._need_fade_in = false
  end
  A0_2._wait_refresh_on_return_top = false
end
L1_1._refresh = L2_1
function L2_1(A0_2)
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
L1_1._refresh_res_bar_area = L2_1
function L2_1(A0_2)
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
L1_1._get_item_data = L2_1
function L2_1(A0_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_shop_item_list
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_in_end
    L0_3(L1_3)
  end
  L1_2.mOnFadeInEndAction = L2_2
end
L1_1._refresh_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._target_item_id
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.BlockFixedTime
    L3_2 = 3
    L4_2 = 3
    L5_2 = nil
    L6_2 = false
    L7_2 = "ShopPage"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    A0_2._block_id = L1_2
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L1_2(L2_2)
    L1_2 = 1
    L2_2 = A0_2._item_table
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._item_table
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.ItemID
      L6_2 = A0_2._owner
      L6_2 = L6_2._target_item_id
      if L5_2 == L6_2 then
        L5_2 = A0_2._binder
        if L5_2 then
          L5_2 = A0_2._binder
          L5_2 = L5_2.scroll_shop_item_list
          L6_2 = L5_2
          L5_2 = L5_2.MovePanelToItemByIndex
          L7_2 = L4_2 - 1
          L5_2(L6_2, L7_2)
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.CoroutineUtils
          L5_2 = L5_2.InvokeAfterFrames
          L6_2 = 1
          function L7_2()
            local L0_3, L1_3, L2_3
            L0_3 = A0_2._binder
            if L0_3 then
              L0_3 = A0_2._binder
              L0_3 = L0_3.scroll_shop_item_list
              L1_3 = L0_3
              L0_3 = L0_3.GetShownItemByItemIndex
              L2_3 = L4_2
              L2_3 = L2_3 - 1
              L0_3 = L0_3(L1_3, L2_3)
              A0_2._target_item = L0_3
              L0_3 = A0_2
              L1_3 = L0_3
              L0_3 = L0_3._play_fade_in
              L0_3(L1_3)
            end
          end
          L5_2(L6_2, L7_2)
        end
        break
      end
    end
  end
  L1_2 = A0_2._owner
  L1_2._target_item_id = nil
end
L1_1._try_locate_target_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._target_item
  if L1_2 then
    L1_2 = A0_2._target_item
    L1_2 = L1_2.UserObjectData
    if L1_2 then
      L1_2 = A0_2._target_item
      L1_2 = L1_2.UserObjectData
      L2_2 = L1_2
      L1_2 = L1_2.trigger_click
      L1_2(L2_2)
    end
  end
  A0_2._target_item = nil
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
  end
  A0_2._block_id = nil
end
L1_1._on_fade_in_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.get_state
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 then
    L2_2 = A0_2.disable_bought_hint
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.Utils
      L2_2 = L2_2.invoke_callback
      L3_2 = A0_2._no_hint_callback
      L4_2 = A0_2._no_hint_handler
      L2_2(L3_2, L4_2)
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
    L2_2 = A1_2.RewardList
    if L2_2 ~= nil then
      L3_2 = #L2_2
      if 0 < L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._owner_is_top_page
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = G
          L3_2 = L3_2.RewardUtils
          L3_2 = L3_2.show_reward_dialog
          L4_2 = L2_2
          L3_2(L4_2)
        end
      end
    end
  end
end
L1_1._on_shop_buy_goods = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._currency_ids
  if L1_2 == nil then
    L1_2 = {}
    A0_2._currency_ids = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ResourceOverallExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._shop
    L2_2 = L2_2.ShopBar
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = 0
      L3_2 = L1_2.CurrencyIDList
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = L1_2.CurrencyIDList
        L6_2 = L6_2[L5_2]
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._currency_ids
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L1_2 = {}
  A0_2._currency_id_2_amount_dict = L1_2
  L1_2 = pairs
  L2_2 = A0_2._currency_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._currency_id_2_amount_dict
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.GetItemCountByConfigID
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2[L5_2] = L7_2
  end
end
L1_1._refresh_currency_amount = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._currency_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._currency_id_2_amount_dict
    if L1_2 ~= nil then
      L1_2 = pairs
      L2_2 = A0_2._currency_ids
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = A0_2._currency_id_2_amount_dict
        L6_2 = L6_2[L5_2]
        L7_2 = L0_1
        L8_2 = L7_2
        L7_2 = L7_2.GetItemCountByConfigID
        L9_2 = L5_2
        L7_2 = L7_2(L8_2, L9_2)
        if L6_2 ~= L7_2 then
          L6_2 = true
          return L6_2
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end
L1_1._is_currency_amount_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_state
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._owner_is_top_page
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2._wait_refresh_on_return_top
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_currency_amount_changed
    L1_2 = L1_2(L2_2)
  end
  A0_2._wait_refresh_on_return_top = L1_2
end
L1_1._check_currency_change_and_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_state
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._owner_is_top_page
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2._wait_refresh_on_return_top
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
  A0_2._wait_refresh_on_return_top = false
end
L1_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._no_hint_callback = A1_2
  A0_2._no_hint_handler = A2_2
end
L1_1.set_no_hint_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._shop
  L3_2 = L3_2.ShowRemainTime
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._shop
  L1_2 = L1_2.ShowRemainTime
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.shop_remain_time
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTime
    L3_2 = A0_2._shop
    L3_2 = L3_2.EndTime
    L4_2 = A0_2._callback
    L5_2 = A0_2._item_owner
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L1_1._setup_remain_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
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
end
L1_1._set_shop_name = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._item_owner = A1_2
  A0_2._callback = A2_2
end
L1_1.register_time_callback = L2_1
return L1_1
