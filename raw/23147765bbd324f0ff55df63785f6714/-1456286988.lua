local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradeNewSkillSlotTipPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradeNewSkillSlotTipPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUpgradePageUpGradePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.System
L1_1 = L1_1.Convert
L1_1 = L1_1.ToUInt32
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AetherDivideConstCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "AetherDivide_CommonExp"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L1_1 = L1_1(L2_1)
L2_1 = {}
L2_1.Enable = "#FFFFFF"
L2_1.Disable = "#FF4C4C"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_upgrade
  L4_2 = A0_2._on_click_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mat_panel = L1_2
  L1_2 = A0_2._mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mat
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_item_num
  L1_2(L2_2)
  A0_2._badge_row = nil
  L1_2 = {}
  A0_2._bonus_data_table = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_upgrade_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._is_badge_enough = A1_2
  A0_2._is_mat_enough = A2_2
end
L0_1.set_badge_and_mat_enough = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._bonus_data_table
  return L1_2
end
L0_1.get_bonus_table = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._spirit_data = A1_2
  A0_2._new_promotion = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_slot_unlock_hint
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_cost_panel
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cost
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_disable_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_badge_enough
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_badge_enough
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_badge_enough
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_disable_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AetherDivide_Spirit_LevelUp_NeedBadgeToLevel"
    L4_2 = A0_2._new_promotion
    L4_2 = L4_2 - 2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_cost_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  A0_2._bonus_data_table = L1_2
  L1_2 = A0_2._spirit_data
  L1_2 = L1_2.Promotion
  L1_2 = L1_2 + 1
  L2_2 = A0_2._new_promotion
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AetherDivideSpiritPromotionExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._spirit_data
    L6_2 = L6_2.ID
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2.RewardID
    if L6_2 ~= 0 then
      L6_2 = G
      L6_2 = L6_2.RewardUtils
      L6_2 = L6_2.CreateRewardItemTableSorted
      L7_2 = L5_2.RewardID
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = {}
      end
      L7_2 = 1
      L8_2 = #L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = L6_2[L10_2]
        L11_2 = L11_2.ItemID
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.GameCore
        L12_2 = L12_2.AetherDividePassiveSkillExcelTable
        L12_2 = L12_2.GetData
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if L12_2 ~= nil then
          L12_2 = CS
          L12_2 = L12_2.RPG
          L12_2 = L12_2.Client
          L12_2 = L12_2.ItemFactory
          L12_2 = L12_2.CreateAetherSkillCoreItemData
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = A0_2._bonus_data_table
          L15_2 = L12_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bonus_skil_core_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._bonus_data_table
  L3_2 = #L3_2
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._bonus_data_table
  L1_2 = #L1_2
  if L1_2 ~= 0 then
  end
end
L0_1._setup_bonus_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._is_mat_enough
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spirit_data
  L2_2 = L1_2
  L1_2 = L1_2.GetNeedExpToPromotion
  L3_2 = A0_2._new_promotion
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_mat_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_mat_own
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.InventoryModule
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = L1_1
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_mat_own
  L3_2 = A0_2._is_mat_enough
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L2_1.Enable
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_45
    end
  end
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_1.Disable
  L3_2 = L3_2(L4_2)
  ::lbl_45::
  L2_2.color = L3_2
end
L0_1._setup_cost = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.Promotion
  L2_2 = L2_2 + 1
  L3_2 = A0_2._new_promotion
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.AetherDivideSpiritPromotionExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2._spirit_data
    L7_2 = L7_2.ID
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2.Slot
    if L7_2 ~= 0 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_new_slot_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= 0
  L2_2(L3_2, L4_2)
end
L0_1._setup_slot_unlock_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_click_upgrade = L3_1
return L0_1
