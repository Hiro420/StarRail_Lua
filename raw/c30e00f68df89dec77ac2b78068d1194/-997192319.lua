local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Shop.ShopItemDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.GiftPackReviewItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.GiftPackReviewItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PlusMinusSliderPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ItemExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = G
L2_1 = L2_1.ShopModule
L2_1 = L2_1.Instance
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FeatureSwitchModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueCommonExcelTable
L4_1 = L4_1.GetData
L5_1 = "Shop_Max_Single_Num"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ShopItemDetailDialog"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
L5_1._text_can_buy = "UI_ShopPage_CanBuy"
L5_1._text_cannot_afford = "UI_ShopPage_CannotBuy"
L5_1._text_item_holding_max = "UIText_ShopPage_Tip_4"
L6_1 = {}
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.CombatPowerAvatarRarityType
L7_1 = L7_1.CombatPowerAvatarRarityType4
L6_1[L7_1] = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity04.png"
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.CombatPowerAvatarRarityType
L7_1 = L7_1.CombatPowerAvatarRarityType5
L6_1[L7_1] = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity05.png"
L7_1 = {}
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.CombatPowerLightconeRarityType
L8_1 = L8_1.CombatPowerLightconeRarity3
L7_1[L8_1] = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity03.png"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.CombatPowerLightconeRarityType
L8_1 = L8_1.CombatPowerLightconeRarity4
L7_1[L8_1] = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity04.png"
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.CombatPowerLightconeRarityType
L8_1 = L8_1.CombatPowerLightconeRarity5
L7_1[L8_1] = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity05.png"
function L8_1(A0_2)
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
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L5_1.ctor = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._shop_good = A1_2
  A0_2._show_finish_callback_self = A2_2
  A0_2._show_finish_callback = A3_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = false
  end
  A0_2.is_from_shop = L5_2
end
L5_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
    L2_3 = 8
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
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
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._on_player_daily_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._shop_good
  if nil == L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "ShopItemDetailDialog:shopGood is nil"
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_res_bar
  L1_2(L2_2)
  L1_2 = A0_2._shop_good
  L2_2 = L1_2
  L1_2 = L1_2.get_limit_check_result
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  A0_2._is_available = L1_2
  L5_2 = A0_2._shop_good
  L6_2 = L5_2
  L5_2 = L5_2.has_reach_holding_limit
  L5_2 = L5_2(L6_2)
  A0_2._is_reaching_limit = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_tips_node2
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_tips_node
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_exchange_panel
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_detail_tip
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.PlusMinusSliderPanel
  L8_2 = G
  L8_2 = L8_2.PlusMinusSliderPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A0_2._slider_panel = L5_2
  L5_2 = A0_2._slider_panel
  L6_2 = L5_2
  L5_2 = L5_2.bind
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_slider_panel
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_currency
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_buytime
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_max_amount
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_progress_bar
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_remain_time
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_discount
  L5_2(L6_2)
  L5_2 = A0_2._slider_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = 1
  L8_2 = A0_2._max_amount
  L9_2 = A0_2._on_slider_value_changed
  L10_2 = A0_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_locate_item_slider
  L5_2(L6_2)
  L5_2 = A0_2._is_available
  if not L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_tips_node
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_limit
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_tips_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_tips_num
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_confirm
    L5_2.interactable = false
  end
  L5_2 = A0_2._is_reaching_limit
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_confirm
    L5_2.interactable = false
  end
end
L5_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2
end
L5_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "_shop_time_out_callback called"
  L1_2(L2_2)
end
L5_1._refresh_time_callback = L8_1
function L8_1(A0_2, A1_2)
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
L5_1._on_slider_value_changed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.ItemID
  L1_2 = L1_2(L2_2)
  A0_2._item_row = L1_2
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.itemCount
  if L1_2 then
    L1_2 = A0_2._shop_good
    L1_2 = L1_2.itemCount
    if 1 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_name
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_Shop_ItemSet"
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = A0_2._shop_good
      L5_2 = L5_2.GoodsNameID
      L4_2 = L4_2(L5_2)
      L5_2 = ""
      L6_2 = A0_2._shop_good
      L6_2 = L6_2.itemCount
      L5_2 = L5_2 .. L6_2
      L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._shop_good
    L3_2 = L3_2.GoodsNameID
    L1_2(L2_2, L3_2)
  end
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
    L2_2 = A0_2._item_row
    L2_2 = L2_2.ItemMainType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemMainType
    L3_2 = L3_2.Equipment
    L2_2 = L2_2 == L3_2
    L3_2 = not L1_2 and L3_2
    A0_2._is_normal_item = L3_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_profession_bg
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L1_2 or L6_2
    if not L1_2 then
      L6_2 = L2_2
    end
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_avatar_card
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_ligtcone_card
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_normal_item
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L5_1._setup_item = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.InventoryModule
    L2_2 = L2_2.GetItemRarityConfig
    L3_2 = A0_2._item_row
    L3_2 = L3_2.Rarity
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._shop_good
    L4_2 = L4_2.ItemID
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AvatarBaseTypeExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.AvatarBaseType
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.DamageTypeExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L3_2.DamageType
    L5_2 = L5_2(L6_2)
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_avatar_profession
    L9_2 = L4_2.BaseTypeIconSmall
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_profession_bg
    L9_2 = L4_2.BaseTypeIcon
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_avatar_damage_type
    L9_2 = L5_2.DamageTypeIconPath
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_item_avatar
    L9_2 = A0_2._item_row
    L9_2 = L9_2.ItemAvatarIconPath
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.rarity_bg_avatar
    L9_2 = L2_2.FrameItemRarityPath
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_card_rarity
    L9_2 = L3_2.Rarity
    L9_2 = L6_1[L9_2]
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L5_2.DamageTypeName
    L6_2 = L6_2(L7_2)
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L4_2.BaseTypeText
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_card_tip
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = "UIText_ShopPage_AvatarTip"
    L11_2 = L6_2
    L12_2 = L7_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_desc
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_bg_desc
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_bg_desc
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = A0_2._shop_good
    L10_2 = L10_2.BGDesc
    L8_2(L9_2, L10_2)
  end
end
L5_1._setup_avatar_card = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_lightcone
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lightcone_profession
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lightcone_phase
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.EquipmentExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._shop_good
    L3_2 = L3_2.ItemID
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarBaseTypeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.AvatarBaseType
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_item_lightcone
    L7_2 = L2_2.ThumbnailPath
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_lightcone_profession
    L7_2 = L3_2.BaseTypeIconSmall
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_card_rarity
    L7_2 = L2_2.Rarity
    L7_2 = L7_1[L7_2]
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2.async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_profession_bg
    L7_2 = L3_2.BaseTypeIcon
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_card_tip
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_Equipment_AvatarBaseTypeRequire"
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_2.BaseTypeText
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ItemFactory
    L4_2 = L4_2.CreateEquipmentItemData
    L5_2 = A0_2._shop_good
    L5_2 = L5_2.ItemID
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.BattleRankSkillRow
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_lightcone_rank
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_Equipment_Rank_01"
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_lightcone_rank_name
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_Equipment_RankLevel"
    L9_2 = 1
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_desc
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_bg_desc
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_desc
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L5_2.SkillDesc
    L9_2 = G
    L9_2 = L9_2.UITextUtils
    L9_2 = L9_2.GetSkillParams
    L10_2 = L5_2.ParamList
    L9_2, L10_2 = L9_2(L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L5_1._setup_ligtcone_card = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_card
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_card_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_common
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.InventoryModule
    L2_2 = L2_2.GetItemRarityConfig
    L3_2 = A0_2._item_row
    L3_2 = L3_2.Rarity
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_item_common
    L6_2 = A0_2._item_row
    L6_2 = L6_2.ItemFigureIconPath
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.rarity_bg_common
    L6_2 = L2_2.FrameItemRarityPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._item_row
    L3_2 = L3_2.ItemMainType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemMainType
    L4_2 = L4_2.Relic
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._setup_relic_item
      L3_2(L4_2)
    else
      L3_2 = A0_2._item_row
      L3_2 = L3_2.ItemSubType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ItemSubType
      L4_2 = L4_2.Book
      if L3_2 == L4_2 then
        L4_2 = A0_2
        L3_2 = A0_2._setup_book_item
        L3_2(L4_2)
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.TextmapStatic
        L3_2 = L3_2.GetText
        L4_2 = A0_2._shop_good
        L4_2 = L4_2.Desc
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.text_desc
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = A0_2._shop_good
        L6_2 = L6_2.Desc
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.Client
        L7_2 = L7_2.TextID
        L7_2 = L7_2.empty
        L6_2 = L6_2 ~= L7_2 and L3_2 ~= nil
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.text_desc
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = A0_2._shop_good
        L6_2 = L6_2.Desc
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.text_bg_desc
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.text_bg_desc
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = A0_2._shop_good
        L6_2 = L6_2.BGDesc
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L5_1._setup_normal_item = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_bg_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RelicConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.ItemID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_set_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_set_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.SetID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_set_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_set_skill_name_with_type
  L4_2 = L1_2.ID
  L2_2(L3_2, L4_2)
end
L5_1._setup_relic_item = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L3_2 = A0_2
  L2_2 = A0_2._get_book_desc
  L4_2 = A0_2._item_row
  L4_2 = L4_2.ID
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.Desc
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L4_2 = L4_2 ~= L5_2 and L1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L5_2 = A0_2
  L4_2 = A0_2._get_book_desc
  L6_2 = A0_2._item_row
  L6_2 = L6_2.ID
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_bg_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L5_1._setup_book_item = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.LocalbookConfigExcelTable
  L3_2 = L2_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    return L4_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BookSeriesConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.BookSeriesID
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextID
    L5_2 = L5_2.empty
    return L5_2
  end
  L5_2 = L4_2.BookSeriesComments
  return L5_2
end
L5_1._get_book_desc = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.Currencys
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = #L2_2
    L8_2 = L8_2 + 1
    L9_2 = L7_2.ConfigID
    L2_2[L8_2] = L9_2
  end
  L3_2 = A0_2._res_bar_area_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_currency_id_list
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L5_1._setup_res_bar = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.Currencys
  L1_2 = L1_2[1]
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_price1
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.Currencys
  L2_2 = #L2_2
  L2_2 = 1 < L2_2
  A0_2._has_second_currency = L2_2
  L2_2 = A0_2._has_second_currency
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_second_price
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_second_price
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.Currencys
  L2_2 = L2_2[2]
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_price2
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
end
L5_1._setup_currency = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._shop_good
  L2_2 = L1_2
  L1_2 = L1_2.has_buy_time_limit
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_limit
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_limit_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.LimitTimes
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._shop_good
  L2_2 = L1_2
  L1_2 = L1_2.get_buy_time_left
  L1_2 = L1_2(L2_2)
  A0_2._limit_time_left = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_limit_time_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._limit_time_left
  L1_2(L2_2, L3_2)
end
L5_1._setup_buytime = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L4_1
  L4_2 = A0_2
  L3_2 = A0_2._get_max_amount_afford
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._max_amount = L1_2
  L1_2 = A0_2._is_available
  if not L1_2 then
    A0_2._max_amount = 1
  end
  L1_2 = A0_2._max_amount
  if L1_2 < 0 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "ShopItemDetailDialog: shopGood's max amount is less than 0"
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._limit_time_left
  if nil ~= L1_2 then
    L1_2 = math
    L1_2 = L1_2.min
    L2_2 = A0_2._max_amount
    L3_2 = A0_2._limit_time_left
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._max_amount = L1_2
  end
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = A0_2._max_amount
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._max_amount = L1_2
  L1_2 = A0_2._max_amount
  if L1_2 <= 1 then
    L1_2 = A0_2._slider_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_slider_btn_and_num_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L5_1._setup_max_amount = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = -1
  L2_2 = pairs
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.Currencys
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Cost
    if 0 < L7_2 then
      L7_2 = math
      L7_2 = L7_2.floor
      L8_2 = L1_1
      L9_2 = L8_2
      L8_2 = L8_2.GetItemCountByConfigID
      L10_2 = L6_2.ConfigID
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L6_2.Cost
      L8_2 = L8_2 / L9_2
      L7_2 = L7_2(L8_2)
      if L1_2 > L7_2 or L1_2 < 0 then
        L1_2 = L7_2
      end
    end
  end
  return L1_2
end
L5_1._get_max_amount_afford = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buy_available
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L5_1._text_can_buy
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_exchange_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L5_1._setup_progress_bar = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.RefreshTime
  L1_2 = nil ~= L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_remain_time
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.remain_timer
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTimeByTimeStamp
    L4_2 = A0_2._shop_good
    L4_2 = L4_2.RefreshTime
    L5_2 = A0_2._refresh_time_callback
    L6_2 = A0_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L5_1._setup_remain_time = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.row
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_discount
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.IsOnSale
  L2_2(L3_2, L4_2)
end
L5_1._setup_discount = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.GotoLocateItemData
  if L1_2 then
    L1_2 = A0_2._is_available
    if L1_2 then
      L1_2 = L1_1.GotoLocateItemData
      L1_2 = L1_2.ConfigID
      L2_2 = A0_2._shop_good
      L2_2 = L2_2.ItemID
      if L1_2 == L2_2 then
        L1_2 = A0_2._slider_panel
        L2_2 = L1_2
        L1_2 = L1_2.set_amount
        L3_2 = math
        L3_2 = L3_2.ceil
        L4_2 = L1_1.GotoLocateItemData
        L4_2 = L4_2.Count
        L5_2 = A0_2._shop_good
        L5_2 = L5_2.ItemCount
        L4_2 = L4_2 / L5_2
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        L1_2(L2_2, L3_2, L4_2, L5_2)
      end
    end
  end
  L1_1.GotoLocateItemData = nil
end
L5_1._setup_locate_item_slider = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_price
  L1_2(L2_2)
end
L5_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_exchange_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_amount
  L1_2(L2_2, L3_2)
end
L5_1._refresh_progress_bar = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.Cost
  L3_2 = L3_2 * A2_2
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = A1_2.ConfigID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L3_2 <= L4_2
  return L5_2
end
L5_1._can_afford = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.Currencys
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._can_afford
    L9_2 = L6_2
    L10_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L5_1._can_afford_all_currency = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._can_afford_all_currency
  L3_2 = A0_2._cur_amount
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._affordable = L1_2
  L1_2 = A0_2._is_available
  if L1_2 then
    L1_2 = A0_2._affordable
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  if not L1_2 then
    L3_2 = G
    L3_2 = L3_2.ShopUtils
    L3_2 = L3_2.can_interact_when_insufficient
    L4_2 = A0_2._shop_good
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      goto lbl_22
    end
  end
  L3_2 = A0_2._is_reaching_limit
  L3_2 = not L3_2
  ::lbl_22::
  L2_2.interactable = L3_2
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.Currencys
  L2_2 = L2_2[1]
  L2_2 = L2_2.Cost
  L3_2 = A0_2._cur_amount
  L2_2 = L2_2 * L3_2
  L4_2 = A0_2
  L3_2 = A0_2._can_afford
  L5_2 = A0_2._shop_good
  L5_2 = L5_2.Currencys
  L5_2 = L5_2[1]
  L6_2 = A0_2._cur_amount
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_price1
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_price1
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = "<color=#c84a32>"
    L7_2 = L2_2
    L8_2 = "</color>"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._has_second_currency
  if L4_2 then
    L4_2 = A0_2._shop_good
    L4_2 = L4_2.Currencys
    L4_2 = L4_2[2]
    L4_2 = L4_2.Cost
    L5_2 = A0_2._cur_amount
    L4_2 = L4_2 * L5_2
    L6_2 = A0_2
    L5_2 = A0_2._can_afford
    L7_2 = A0_2._shop_good
    L7_2 = L7_2.Currencys
    L7_2 = L7_2[2]
    L8_2 = A0_2._cur_amount
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_price2
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetText
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_price2
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetText
      L8_2 = "<color=#c84a32>"
      L9_2 = L4_2
      L10_2 = "</color>"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L6_2(L7_2, L8_2)
    end
  end
  L4_2 = A0_2._is_available
  if not L4_2 then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_tips_node2
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._affordable
  if not L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_tips
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L5_1._text_cannot_afford
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._is_reaching_limit
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_tips_node2
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_tips
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L5_1._text_item_holding_max
    L4_2(L5_2, L6_2)
  end
end
L5_1._refresh_price = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_finish_callback
  if L1_2 then
    L1_2 = A0_2._show_finish_callback
    L2_2 = A0_2._show_finish_callback_self
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L5_1._exit_dialog = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_dialog
  L1_2(L2_2)
end
L5_1._in_control_exit_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L5_1._on_in_control_action_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_normal_item
  if L1_2 then
    L1_2 = {}
    L2_2 = {}
    L3_2 = A0_2._shop_good
    L3_2 = L3_2.ItemID
    L2_2[1] = L3_2
    L1_2.items = L2_2
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.InventoryUtils
    L1_2 = L1_2.show_item_detail
    L2_2 = A0_2._shop_good
    L2_2 = L2_2.ItemID
    L1_2(L2_2)
  end
end
L5_1._on_left_stick_button_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_dialog
  L1_2(L2_2)
end
L5_1._on_btn_bg = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_dialog
  L1_2(L2_2)
end
L5_1._on_btn_cancel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_dialog
  L1_2(L2_2)
end
L5_1._on_btn_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_good_shielded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "UIText_Operation_BlockItem"
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowOkHint
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    L2_2(L3_2, L4_2)
    return
  end
  L1_2 = A0_2._is_available
  if L1_2 then
    L1_2 = A0_2._affordable
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.ShopUtils
      L1_2 = L1_2.handle_unaffordable_good
      L2_2 = A0_2._shop_good
      L1_2(L2_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_feature_partial_closed
  L3_2 = CS
  L3_2 = L3_2.KJMOMPDBPKH
  L3_2 = L3_2.MGCLMKPFKAM
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.ItemID
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._is_available
  if L1_2 then
    L1_2 = A0_2._cur_amount
    if 0 < L1_2 then
      L1_2 = L2_1
      L2_2 = L1_2
      L1_2 = L1_2.buy_good
      L3_2 = A0_2._shop_good
      L3_2 = L3_2.ShopID
      L4_2 = A0_2._shop_good
      L4_2 = L4_2.GoodsID
      L5_2 = A0_2._shop_good
      L5_2 = L5_2.ItemID
      L6_2 = A0_2._cur_amount
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._exit_dialog
  L1_2(L2_2)
end
L5_1._on_btn_confirm = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.show_item_detail
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.ItemID
  L1_2(L2_2)
end
L5_1._on_btn_detail = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1.ShieldedShopGoodsIDDic
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.ContainsKey
    L4_2 = A0_2._shop_good
    L4_2 = L4_2.ShopRef
    L4_2 = L4_2.ShopID
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = A0_2._shop_good
      L2_2 = L2_2.ShopRef
      L2_2 = L2_2.ShopID
      L2_2 = L1_2[L2_2]
      L4_2 = L2_2
      L3_2 = L2_2.Contains
      L5_2 = A0_2._shop_good
      L5_2 = L5_2.GoodsID
      return L3_2(L4_2, L5_2)
    end
  end
  L2_2 = false
  return L2_2
end
L5_1._is_good_shielded = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_max_amount
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_bar
  L1_2(L2_2)
  L1_2 = A0_2._slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 1
  L4_2 = A0_2._max_amount
  L5_2 = A0_2._on_slider_value_changed
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L5_1._on_item_changed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L5_1._on_player_daily_refresh = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.ItemID
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ItemSubType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemSubType
  L5_2 = L5_2.Gift
  if L4_2 ~= L5_2 then
    L4_2 = L3_2.ItemSubType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemSubType
    L5_2 = L5_2.ForceOpitonalGift
    if L4_2 ~= L5_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.FeatureSwitchModule
  L5_2 = L4_2
  L4_2 = L4_2.IsFeaturePartialClosed
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConfirmDialogUtil
    L4_2 = L4_2.ShowOkHint
    L5_2 = "UIText_Toast_System_Off_Tips_1"
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TextID
    L6_2 = L6_2.empty
    L4_2(L5_2, L6_2)
    L4_2 = true
    return L4_2
  else
    L4_2 = false
    return L4_2
  end
end
L5_1._is_feature_partial_closed = L8_1
return L5_1
