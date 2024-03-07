local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Shop.ShopItemDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GiftPackDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L0_1._text_use_num = "UIText_Inventory_ItemUse_UseCount"
L0_1._text_remain_num = "UIText_Inventory_ItemUse_LeftCount"
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
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ShopItemDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2
  A0_2._gift_item = A1_2
  A0_2._item_use_data_row = A2_2
  if A3_2 ~= nil then
    A0_2._is_show_reward = A3_2
  else
    A0_2._is_show_reward = true
  end
  L6_2 = A4_2 or L6_2
  if not A4_2 then
    L6_2 = false
  end
  A0_2.is_from_shop = L6_2
  A0_2._extra_max_use_count = A5_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.create_short_cut_hint_panel
    L2_3 = 34
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_first_price
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_second_price
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_profession_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_card
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._exit_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._exit_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._exit_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GiftItemUsed
  L4_2 = A0_2._on_gift_item_used
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_count
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_max_amount
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PlusMinusSliderPanel
  L4_2 = G
  L4_2 = L4_2.PlusMinusSliderPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._slider_panel = L1_2
  L1_2 = A0_2._slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_slider_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 1
  L4_2 = A0_2._max_amount
  L5_2 = A0_2._on_slider_value_changed
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.ShopUtils
  L1_2 = L1_2.is_fix_gift_good
  L2_2 = A0_2._gift_item
  return L1_2(L2_2)
end
L0_1.is_gift = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._item_row = nil
  A0_2._gift_item = nil
  A0_2._extra_max_use_count = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = {}
    L3_2 = {}
    L4_2 = A0_2._gift_item
    L4_2 = L4_2.ConfigID
    L3_2[1] = L4_2
    L2_2.items = L3_2
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._cur_amount = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_slider_value_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gift_item
  L1_2 = L1_2.Row
  A0_2._item_row = L1_2
  L1_2 = A0_2._item_row
  if L1_2 then
    L1_2 = A0_2._item_row
    L1_2 = L1_2.ItemMainType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemMainType
    L2_2 = L2_2.AvatarCard
    L1_2 = L1_2 == L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_item_avatar
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_item_common
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not L1_2
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.InventoryModule
    L2_2 = L2_2.GetItemRarityConfig
    L3_2 = A0_2._item_row
    L3_2 = L3_2.Rarity
    L2_2 = L2_2(L3_2)
    if L1_2 then
      L4_2 = A0_2
      L3_2 = A0_2.async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_item_avatar
      L6_2 = A0_2._item_row
      L6_2 = L6_2.ItemAvatarIconPath
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2.async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.rarity_bg_avatar
      L6_2 = L2_2.FrameItemRarityPath
      L3_2(L4_2, L5_2, L6_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2.async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_item_common
      L6_2 = A0_2._item_row
      L6_2 = L6_2.ItemIconPath
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2.async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.rarity_bg_common
      L6_2 = L2_2.FrameItemRarityPath
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._gift_item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._gift_item
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._gift_item
  L3_2 = L3_2.BGDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_limit_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1._text_remain_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_limit_time_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_limit_splash
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_limit_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._gift_item
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
end
L0_1._setup_remain_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buy_available
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1._text_use_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_exchange_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress_bar = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress_bar
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_exchange_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_amount
  L1_2(L2_2, L3_2)
end
L0_1._refresh_progress_bar = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._gift_item
  L2_2 = L2_2.Count
  L3_2 = A0_2._item_use_data_row
  L3_2 = L3_2.UseMultipleMax
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._max_amount = L1_2
  L1_2 = A0_2._extra_max_use_count
  if L1_2 ~= nil then
    L1_2 = math
    L1_2 = L1_2.min
    L2_2 = A0_2._max_amount
    L3_2 = A0_2._extra_max_use_count
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._max_amount = L1_2
  end
  L1_2 = A0_2._max_amount
  if L1_2 <= 1 then
    L2_2 = A0_2
    L1_2 = A0_2._close_slider_btn_and_num
    L1_2(L2_2)
  end
end
L0_1._setup_max_amount = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_plus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_minus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_max_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._close_slider_btn_and_num = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.check_item_deleted
  L2_2 = {}
  L3_2 = A0_2._gift_item
  L3_2 = L3_2.ConfigID
  L2_2[1] = L3_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.UseGiftPackItem
  L3_2 = A0_2._gift_item
  L3_2 = L3_2.ConfigID
  L4_2 = A0_2._cur_amount
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_confirm = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 ~= nil then
    L2_2 = A0_2._is_show_reward
    if L2_2 then
      L2_2 = {}
      L3_2 = 0
      L4_2 = A1_2.Count
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = #L2_2
        L7_2 = L7_2 + 1
        L8_2 = A1_2[L6_2]
        L2_2[L7_2] = L8_2
      end
      L3_2 = G
      L3_2 = L3_2.RewardUtils
      L3_2 = L3_2.show_reward_dialog
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._exit_dialog
  L2_2(L3_2)
end
L0_1._on_gift_item_used = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit_dialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.show_item_detail
  L2_2 = A0_2._gift_item
  L2_2 = L2_2.ConfigID
  L1_2(L2_2)
end
L0_1._on_btn_detail = L2_1
return L0_1
