local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Shop.ShopItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShopItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L0_1._rarity_max_count = 5
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.button
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.is_gamepad_input
    L0_3 = L0_3()
    if not L0_3 then
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.button
        L1_3 = L0_3
        L0_3 = L0_3.SetChecked
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._click_shop_item
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_withdraw_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max_limit_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._click_event_listener = nil
  A0_2._on_click_item = nil
  A0_2._shop_good = nil
  A0_2._is_available = false
  A0_2._is_holding_max = false
  A0_2._is_owned = false
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_event_listener = A1_2
  A0_2._on_click_item = A2_2
end
L0_1.bind_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._click_shop_item
  L1_2(L2_2)
end
L0_1.trigger_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ShopModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.record_shop_good_seen
  L3_2 = A0_2._shop_good
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ShopItemClick
  L3_2 = A0_2._shop_good
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._on_click_item
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click_item
    L2_2 = A0_2._click_event_listener
    L3_2 = A0_2._shop_good
    L1_2(L2_2, L3_2)
  end
end
L0_1._click_shop_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._shop_good = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.gameObject
  L5_2 = A0_2._shop_good
  L5_2 = L5_2.ItemID
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_limit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ShopGood"
  L5_2 = A0_2._shop_good
  L5_2 = L5_2.GoodsID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_name
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rarity
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_price
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_refresh_time
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_holding_limit_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_owned
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_withdraw_time
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_buy_time
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_discount
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.ItemID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.IsAvatarCard
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.IsAvatarSkin
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.IsAvatarCard
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.IsAvatarSkin
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.ItemFigureIconPath
  L3_2 = L1_2.ItemAvatarIconPath
  if L3_2 then
    L3_2 = L1_2.ItemAvatarIconPath
    if L3_2 ~= "" then
      L2_2 = L1_2.ItemAvatarIconPath
    end
  end
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.IsAvatarCard
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.icon_avatar
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._shop_good
    L3_2 = L3_2.IsAvatarSkin
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.icon_skin
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.icon
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.TextExtensions
  L3_2 = L3_2.SafeSetTextID
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_name
  L5_2 = L1_2.ItemName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.ItemCount
  L4_2 = L3_2 or L4_2
  L4_2 = L3_2 and 1 < L3_2
  L5_2 = G
  L5_2 = L5_2.ComponentExtensions
  L5_2 = L5_2.SafeSetActive
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_num
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText_Num
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_num
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_item_title
  L5_2(L6_2)
end
L0_1._setup_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.IsAvatarSkin
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skin_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.IsAvatarSkin
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRarityConfig
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.Rarity
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.IsAvatarSkin
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.rarity_skin_frame
    L5_2 = L1_2.FrameItemRarityPath
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.rarity_frame
    L5_2 = L1_2.FrameItemRarityPath
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.promotion_stars_panel
  L3_2 = L2_2
  L2_2 = L2_2.rebind_child_node
  L4_2 = L0_1._rarity_max_count
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.promotion_stars_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.Rarity
  L4_2 = #L4_2
  L5_2 = A0_2._shop_good
  L5_2 = L5_2.Rarity
  L5_2 = #L5_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_promotion_stars_panel
  L2_2(L3_2)
end
L0_1._setup_rarity = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.Currencys
  L1_2 = L1_2[1]
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_price1
  L6_2 = L1_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_2.Cost
  if L2_2 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_price1
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = "<color=#c84a32>"
    L6_2 = L1_2.Cost
    L7_2 = "</color>"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_price1
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2.Cost
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.Currencys
  L3_2 = #L3_2
  if L3_2 <= 1 then
    L3_2 = G
    L3_2 = L3_2.ComponentExtensions
    L3_2 = L3_2.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_second_price
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = G
  L3_2 = L3_2.ComponentExtensions
  L3_2 = L3_2.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_second_price
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.Currencys
  L3_2 = L3_2[2]
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_price2
  L7_2 = L3_2.ItemIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.TextExtensions
  L4_2 = L4_2.SafeSetText_Num
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_price2
  L6_2 = L3_2.Cost
  L4_2(L5_2, L6_2)
end
L0_1._setup_price = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._shop_good
  L2_2 = L1_2
  L1_2 = L1_2.get_is_sold_out
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2._is_available = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_text_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_black_mask
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_sold_out
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_black_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_sold_out
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._shop_good
  L2_2 = L1_2
  L1_2 = L1_2.get_limit_check_result
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  A0_2._is_available = L1_2
  L5_2 = A0_2._is_available
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_text_hint
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    return
  end
  if nil ~= L2_2 and L2_2 ~= "" then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_text_hint
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_hint_content
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L2_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_hint_level
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.RefreshTime
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_remain_time
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.RefreshTime
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_refresh_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.IsAvatarSkin
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_max_limit_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._shop_good
  L2_2 = L1_2
  L1_2 = L1_2.has_reach_holding_limit
  L1_2 = L1_2(L2_2)
  A0_2._is_holding_max = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max_limit_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_holding_max
  L1_2(L2_2, L3_2)
end
L0_1._setup_holding_limit_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._shop_good
  L2_2 = L1_2
  L1_2 = L1_2.has_owned
  L1_2 = L1_2(L2_2)
  A0_2._is_owned = L1_2
  L1_2 = A0_2._shop_good
  L2_2 = L1_2
  L1_2 = L1_2.get_is_sold_out
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_owned
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_owned
  if L4_2 then
    L4_2 = not L1_2
  end
  L2_2(L3_2, L4_2)
end
L0_1._setup_owned = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_withdraw_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.IsLimitedTimePurchase
  if L1_2 then
    L1_2 = A0_2._is_available
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_withdraw_time
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.withdraw_timer
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTimeByTimeStamp
      L3_2 = A0_2._shop_good
      L3_2 = L3_2.EndTime
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = 2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._setup_withdraw_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_available
  if L1_2 then
    L1_2 = A0_2._shop_good
    L2_2 = L1_2
    L1_2 = L1_2.has_buy_time_limit
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._is_holding_max
      if not L1_2 then
        L1_2 = A0_2._is_owned
        if not L1_2 then
          goto lbl_23
        end
      end
    end
  end
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_limit
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_23::
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_limit
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText_Num
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_limit_time
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.LimitTimes
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText_Num
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_limit_time_left
  L3_2 = A0_2._shop_good
  L4_2 = L3_2
  L3_2 = L3_2.get_buy_time_left
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_limit
  L1_2(L2_2)
end
L0_1._setup_buy_time = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.row
  L2_2 = L1_2.IsOnSale
  if L2_2 then
    L2_2 = L1_2.TagType
    L2_2 = L2_2 == 1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_discount
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2.IsOnSale
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_origin_price
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_origin_price
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2.TagParam
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_discount = L2_1
return L0_1
