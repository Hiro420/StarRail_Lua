local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageSkillCoreItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageSkillCoreItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradeResult.AetherSpiritUpgradeResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUpgradeResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AvatarPropertyType
L3_1 = L3_1.MaxHP
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.AvatarPropertyType
L4_1 = L4_1.Attack
L2_1[1] = L3_1
L2_1[2] = L4_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUpgradeResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
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
  local L1_2, L2_2
  L1_2 = A0_2._bonus_panel
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._bonus_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_btn
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._spirit_data = A1_2
  A0_2._promotion_before_data = A2_2
  A0_2._bonus_table = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._generate_property_table
  L4_2(L5_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._property_table = L1_2
  L1_2 = 1
  L2_2 = L2_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = L2_1[L4_2]
    L5_2.Type = L6_2
    L7_2 = A0_2
    L6_2 = A0_2._set_before_value_by_property_type
    L8_2 = L5_2.Type
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.BeforeValue = L6_2
    L6_2 = A0_2._spirit_data
    L7_2 = L6_2
    L6_2 = L6_2.GetDisplayFormatPropertyByType
    L8_2 = L5_2.Type
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.CurrentValue = L6_2
    L6_2 = A0_2._promotion_before_data
    L6_2 = L6_2.PromotionBefore
    L5_2.CurPromotion = L6_2
    L6_2 = A0_2._spirit_data
    L6_2 = L6_2.Promotion
    L5_2.NewPromotion = L6_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._property_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._generate_property_table = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._promotion_before_data
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarPropertyType
  L3_2 = L3_2.MaxHP
  if A1_2 == L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AetherMonsterAvatarPropertyData
    L3_2 = L3_2.FormatDisplayDataByType
    L4_2 = A1_2
    L5_2 = L2_2.HpMaxBefore
    return L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarPropertyType
    L3_2 = L3_2.Attack
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.AetherMonsterAvatarPropertyData
      L3_2 = L3_2.FormatDisplayDataByType
      L4_2 = A1_2
      L5_2 = L2_2.AttackBefore
      return L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AvatarPropertyType
      L3_2 = L3_2.Speed
      if L3_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.AetherMonsterAvatarPropertyData
        L3_2 = L3_2.FormatDisplayDataByType
        L4_2 = A1_2
        L5_2 = L2_2.SpeedBefore
        return L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._set_before_value_by_property_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradeResult.AetherSpiritUpgradeResultDialogSinglePropertyItem"
  L6_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradeResult.AetherSpiritUpgradeResultDialogSinglePropertyItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._property_list_panel = L1_2
  L1_2 = A0_2._property_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_new_slot_hint_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_AetherDivide_Spirit_LevelUp_UnlockSlot"
  L1_2(L2_2, L3_2)
  A0_2._bonus_panel = nil
  L1_2 = A0_2._bonus_table
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bonus_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.AetherSpiritUpgradePageSkillCoreItem
    L5_2 = G
    L5_2 = L5_2.AetherSpiritUpgradePageSkillCoreItemBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._bonus_panel = L2_2
    L2_2 = A0_2._bonus_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_bonus_item
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._property_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._property_table
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._promotion_before_data
  L3_2 = L3_2.PromotionBefore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level_now
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.Promotion
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_slot_unlock_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bonus_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._promotion_before_data
  L1_2 = L1_2.PromotionBefore
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.Promotion
  L3_2 = 0
  L4_2 = L1_2 + 1
  L5_2 = L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AetherDivideSpiritPromotionExcelTable
    L8_2 = L8_2.GetData
    L9_2 = A0_2._spirit_data
    L9_2 = L9_2.ID
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.Slot
    if L9_2 ~= 0 then
      L3_2 = L3_2 + 1
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_new_slot_hint_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 ~= 0
  L4_2(L5_2, L6_2)
  if L3_2 ~= 0 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_new_slot_value
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_slot_unlock_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._bonus_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._bonus_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._bonus_table
  L3_2 = L3_2[1]
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_bonus_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_bg = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
