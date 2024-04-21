local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarPromotion.PromotionMaterialPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarPromotion.PromotionMaterialPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemCost.ItemCostListGenerator"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConePromotionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarPropertyType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.PlayerModule
L3_1 = {}
L3_1.Red = "#EE291547"
L3_1.TextRed = "#EB4D3DFF"
L3_1.Blue = "#1581EE47"
L3_1.TextBlue = "#4CE7FEFF"
DisableHintColor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.promotion_material_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_navigation_target
    return L2_2(L3_2)
  end
end
L0_1.get_target_by_zoom = L3_1
function L3_1(A0_2, A1_2)
end
L0_1.setup_in_control_button_enable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_promotion
  L4_2 = A0_2._btn_promotion_onclick
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "EquipmentPromotionPanel"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "DisplayMaxEquipmentPromotion"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Value
  L2_2 = L2_2.IntValue
  A0_2._const_max_pro_num = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.ItemCostListGenerator
  L2_2 = L2_2(L3_2)
  A0_2._item_cost_list_gener = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._item_cost_list_gener
  L1_2(L2_2)
  A0_2._item_cost_list_gener = nil
end
L0_1._on_unload = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._equip_data = A1_2
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.Promotion
  L2_2 = L2_2 + 1
  A0_2._promotion_after = L2_2
  L2_2 = A0_2._promotion_after
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.EquipmentRow
  L3_2 = L3_2.MaxPromotion
  if L2_2 > L3_2 then
    L2_2 = A0_2._equip_data
    L2_2 = L2_2.EquipmentRow
    L2_2 = L2_2.MaxPromotion
    A0_2._promotion_after = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_promotion
    L2_2.interactable = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_promotion
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Equipment_Upgrade_MaxPromotion"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_promotion
    L2_2.interactable = true
    L3_2 = A0_2
    L2_2 = A0_2._refresh_cost
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_promotion
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_materials
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_level
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_coin
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_status
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._material_datas
  return L1_2
end
L0_1.get_promotion_material_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EquipmentPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.ConfigID
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.Promotion
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2.PromotionCostList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.PromotionCostList
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ItemID
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.HGGDPEHMDBH
    L9_2 = L9_2.AHCNPMBGKID
    L8_2 = L8_2(L9_2)
    if L7_2 ~= L8_2 then
      L7_2 = {}
      L8_2 = L2_2.PromotionCostList
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.ItemID
      L7_2.ID = L8_2
      L8_2 = L2_2.PromotionCostList
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.ItemNum
      L7_2.Num = L8_2
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.promotion_material_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  A0_2._material_datas = L1_2
end
L0_1._setup_materials = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_before_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.MaxPromotion
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_after_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.MaxPromotion
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.Promotion
  L1_2 = L1_2 + 1
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.MaxPromotion
  if L1_2 > L2_2 then
    L2_2 = A0_2._equip_data
    L2_2 = L2_2.EquipmentRow
    L1_2 = L2_2.MaxPromotion
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.promotion_stars_after_panel
  L3_2 = L2_2
  L2_2 = L2_2.show_preview_node
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_promotion = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_current_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_max_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentMaxLv
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_current_after
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EquipmentPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.ConfigID
  L3_2 = A0_2._promotion_after
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level_max_after
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.MaxLevel
  L2_2(L3_2, L4_2)
end
L0_1._setup_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EquipmentPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.ConfigID
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.Promotion
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2.PromotionCostList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.PromotionCostList
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ItemID
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.HGGDPEHMDBH
    L9_2 = L9_2.AHCNPMBGKID
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = L2_2.PromotionCostList
      L7_2 = L7_2[L6_2]
      L1_2 = L7_2.ItemNum
      break
    end
  end
  A0_2._need_coin = L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.coin_cost_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_coin = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_level_enough
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "RetCodeError_1372"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._item_cost_list_gener
  L2_2 = L1_2
  L1_2 = L1_2.get_item_cost_list
  L3_2 = A0_2._do_promotion
  L4_2 = A0_2._on_item_cost_not_enough
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._btn_promotion_onclick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_item_cost_not_enough = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if L2_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A0_2._equip_data
  L3_2 = L2_2
  L2_2 = L2_2.ClearPromotionBeforeData
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.FFOMLPONIFB
  L3_2 = L2_2
  L2_2 = L2_2.CAMPNFMJFFG
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.UID
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._do_promotion = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.Level
  L2_2 = A0_2._equip_data
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentMaxLv
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 >= L2_2
  return L1_2
end
L0_1._is_level_enough = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = L1_1.MaxHP
  L1_2.PropertyType = L2_2
  L2_2 = A0_2._equip_data
  L3_2 = L2_2
  L2_2 = L2_2.GetHP
  L2_2 = L2_2(L3_2)
  L1_2.NumBefore = L2_2
  L2_2 = A0_2._equip_data
  L3_2 = L2_2
  L2_2 = L2_2.GetHP
  L4_2 = A0_2._promotion_after
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.NumAfter = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.hp_compare_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = L1_1.Attack
  L2_2.PropertyType = L3_2
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetAttack
  L3_2 = L3_2(L4_2)
  L2_2.NumBefore = L3_2
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetAttack
  L5_2 = A0_2._promotion_after
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.NumAfter = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.attack_compare_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = L1_1.Defence
  L3_2.PropertyType = L4_2
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetDefence
  L4_2 = L4_2(L5_2)
  L3_2.NumBefore = L4_2
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetDefence
  L6_2 = A0_2._promotion_after
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.NumAfter = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.defence_compare_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._disable_hint
  L4_2(L5_2)
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "set_compare_hp_name: %s"
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_compare_hp_name
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = G
  L5_2 = L5_2.SuperDebug
  L5_2 = L5_2.LogFormat
  L6_2 = L4_2
  L5_2(L6_2)
end
L0_1._refresh_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EquipmentPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.ConfigID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Promotion
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._item_cost_list_gener
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = L1_2.PromotionCostList
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._item_cost_list_gener
  L3_2 = L2_2
  L2_2 = L2_2.is_material_enough
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 and L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_btn_promotion
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_CommonItem_Exchange_Button"
    L7_2 = A0_2._item_cost_list_gener
    L8_2 = L7_2
    L7_2 = L7_2.get_common_item_name
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_btn_promotion
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_AvatarDetail_PromotionUpBtn"
    L4_2(L5_2, L6_2)
  end
end
L0_1._refresh_cost = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_promotion
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._display_disable_hint = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_max_status_hp
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AvatarModule
    L4_2 = L4_2.FormatDisplayDataByType
    L5_2 = L1_1.MaxHP
    L6_2 = A0_2._equip_data
    L7_2 = L6_2
    L6_2 = L6_2.GetHP
    L6_2, L7_2 = L6_2(L7_2)
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_max_status_attack
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AvatarModule
    L4_2 = L4_2.FormatDisplayDataByType
    L5_2 = L1_1.Attack
    L6_2 = A0_2._equip_data
    L7_2 = L6_2
    L6_2 = L6_2.GetAttack
    L6_2, L7_2 = L6_2(L7_2)
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_max_status_defence
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AvatarModule
    L4_2 = L4_2.FormatDisplayDataByType
    L5_2 = L1_1.Defence
    L6_2 = A0_2._equip_data
    L7_2 = L6_2
    L6_2 = L6_2.GetDefence
    L6_2, L7_2 = L6_2(L7_2)
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_max_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_compare_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_next_level_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_max_status_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EquipmentPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.EquipmentID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Promotion
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.WorldLevelRequire
  L3_2 = L1_2.PlayerLevelRequire
  L4_2 = L2_1.PlayerData
  L4_2 = L4_2.WorldLevel
  L5_2 = L2_1.PlayerData
  L5_2 = L5_2.Level
  L6_2 = A0_2._equip_data
  L6_2 = L6_2.Promotion
  L7_2 = A0_2._equip_data
  L7_2 = L7_2.EquipmentRow
  L7_2 = L7_2.MaxPromotion
  if L6_2 ~= L7_2 then
    L6_2 = A0_2._equip_data
    L6_2 = L6_2.Promotion
    L7_2 = A0_2._const_max_pro_num
    if not (L6_2 >= L7_2) then
      goto lbl_70
    end
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_disable_hint_panel
  L7_2 = G
  L7_2 = L7_2.UIColorUtils
  L7_2 = L7_2.GetColor
  L8_2 = DisableHintColor
  L8_2 = L8_2.Blue
  L7_2 = L7_2(L8_2)
  L6_2.color = L7_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_disable_hint_panel
  L7_2 = G
  L7_2 = L7_2.UIColorUtils
  L7_2 = L7_2.GetColor
  L8_2 = DisableHintColor
  L8_2 = L8_2.TextBlue
  L7_2 = L7_2(L8_2)
  L6_2.color = L7_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_disable_hint_panel
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = "UIText_Equipment_Promotion_Max"
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._display_disable_hint
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.coin_cost_panel
  L7_2 = L6_2
  L6_2 = L6_2.safe_set_active
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_material_list_panel
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._set_max_status_panel
  L8_2 = true
  L6_2(L7_2, L8_2)
  goto lbl_166
  ::lbl_70::
  L7_2 = A0_2
  L6_2 = A0_2._set_max_status_panel
  L8_2 = false
  L6_2(L7_2, L8_2)
  if L3_2 > L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_disable_hint_panel
    L7_2 = G
    L7_2 = L7_2.UIColorUtils
    L7_2 = L7_2.GetColor
    L8_2 = DisableHintColor
    L8_2 = L8_2.Red
    L7_2 = L7_2(L8_2)
    L6_2.color = L7_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_disable_hint_panel
    L7_2 = G
    L7_2 = L7_2.UIColorUtils
    L7_2 = L7_2.GetColor
    L8_2 = DisableHintColor
    L8_2 = L8_2.TextRed
    L7_2 = L7_2(L8_2)
    L6_2.color = L7_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_disable_hint_panel
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_AvatarDetail_PlayerLevelRequire"
    L9_2 = L3_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2._display_disable_hint
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.coin_cost_panel
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_material_list_panel
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
  elseif L2_2 > L4_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_disable_hint_panel
    L7_2 = G
    L7_2 = L7_2.UIColorUtils
    L7_2 = L7_2.GetColor
    L8_2 = DisableHintColor
    L8_2 = L8_2.Red
    L7_2 = L7_2(L8_2)
    L6_2.color = L7_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_disable_hint_panel
    L7_2 = G
    L7_2 = L7_2.UIColorUtils
    L7_2 = L7_2.GetColor
    L8_2 = DisableHintColor
    L8_2 = L8_2.TextRed
    L7_2 = L7_2(L8_2)
    L6_2.color = L7_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_disable_hint_panel
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_AvatarDetail_WorldLevelRequire"
    L9_2 = L2_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2._display_disable_hint
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.coin_cost_panel
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_material_list_panel
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
  else
    L7_2 = A0_2
    L6_2 = A0_2._display_disable_hint
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.coin_cost_panel
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_material_list_panel
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  ::lbl_166::
end
L0_1._disable_hint = L3_1
return L0_1
