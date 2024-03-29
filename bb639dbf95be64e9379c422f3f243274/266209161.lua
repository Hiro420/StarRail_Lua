local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EquipmentItemIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/CommonKits/Icon/InventoryItemIcon.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/EquipLockMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/EquipCharaMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_belong_to = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/StatusPanel/EquipCharaMark/CharaPanel/ImgAvatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_belong_to = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LevelPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/LevelPanel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RefineLevelPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_refine_level_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PromotionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_promotion_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DamagePlusType"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_damage_plus_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DamagePlusType/ProfessionalType"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_professional_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DamagePlusType/ProfessionalType/ProfessionalMatchHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_professional_match_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/DamagePlusType/ProfessionalType/ProfessionalMatchHint/ActiveEffect/IconProfessional"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_professional_match_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/DamagePlusType/ProfessionalType/IconProfessional"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon_professional = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/DamagePlusType/ProfessionalType/ProfessionalMatchHint/ActiveEffect/IconLight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon_light = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/RefineLevelPanel/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_refine_level_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
