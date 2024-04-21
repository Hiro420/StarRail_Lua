local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PromotionPreview.PromotionPreviewDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PromotionPreview.PromotionPreviewDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConePromotionPreviewDialog"
L2_1 = G
L2_1 = L2_1.PromotionPreviewDialog
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 6
function L2_1(A0_2)
  local L1_2
end
L0_1._bind_all_star_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_promotion
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  if L1_2 < L2_2 then
    L1_2 = L1_2 + 1
  else
  end
  return L1_2
end
L0_1._get_first_select_promotion_level = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._object_data
  L1_2 = L1_2.Promotion
  return L1_2
end
L0_1._get_current_promotion = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EquipmentPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._object_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.EquipmentID
  L3_2 = A0_2._current_select_promotion_level
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_promote_require_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.MaxLevel
  L2_2(L3_2, L4_2)
end
L0_1._set_require_level_num = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._promotion_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_promoted
  L4_2 = A0_2
  L3_2 = A0_2._is_level_promoted
  L5_2 = A0_2._current_select_promotion_level
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._promotion_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_title
  L3_2 = "UIText_EquipmentPromotionPreview_Title"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EquipmentPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._object_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.EquipmentID
  L3_2 = A0_2._current_select_promotion_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._promotion_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_sub_title
  L4_2 = "UIText_EquipmentPromotionPreview_LevelMaxUp"
  L5_2 = L1_2.MaxLevel
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EquipmentPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._object_data
  L3_2 = L3_2.EquipmentRow
  L3_2 = L3_2.EquipmentID
  L4_2 = A0_2._current_select_promotion_level
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._promotion_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_promotion_cost_material
  L5_2 = L2_2.PromotionCostList
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._promotion_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_reward
  L5_2 = nil
  L3_2(L4_2, L5_2)
end
L0_1._setup_promotion_detail_panel = L2_1
return L0_1
