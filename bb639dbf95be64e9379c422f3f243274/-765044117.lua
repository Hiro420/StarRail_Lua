local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PromotionPreviewDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/AvatarPromotionDetialDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Frame/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/LeftPlan/Content/LvStepPanel/PromotionLvStepItem1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_lv_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/LeftPlan/Content/LvStepPanel/PromotionLvStepItem2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_lv_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/LeftPlan/Content/LvStepPanel/PromotionLvStepItem3"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_lv_3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/LeftPlan/Content/LvStepPanel/PromotionLvStepItem4"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_lv_4 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/LeftPlan/Content/LvStepPanel/PromotionLvStepItem5"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_lv_5 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/LeftPlan/Content/LvStepPanel/PromotionLvStepItem6"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_lv_6 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Contents/Frame/LeftPlan/Content/BoxInfo/BtnComLast"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_prev = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Contents/Frame/LeftPlan/Content/BoxInfo/BtnComNext"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Frame/LeftPlan/Content/BoxInfo/TxtState"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_is_promoted = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Frame/LeftPlan/Content/BoxInfo/BoxLimit/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_promote_require_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Frame/RightPlan"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_detail_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
