local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarEidolonSkillDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MaterialCostListPanel
  L4_2 = G
  L4_2 = L4_2.MaterialCostListPanelBinder
  L5_2 = "Contents/MaterialListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.material_cost_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/MaterialListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_material = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/SkillInfo/SkillBasicInfo/SkillIcon/Root/IconSkill/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_eidolon_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/SkillInfo/SkillDesc/SkillDetailPanel/LevelCurrent/SkillNameInfo/SkillName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_eidolon_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/SkillInfo/SkillDesc/SkillDetailPanel/LevelCurrent/LevelDescCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_eidolon_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/SkillInfo/SkillDesc/SkillDetailPanel/LevelCurrent/SkillNameInfo/SubsequenceNum/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_rank = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/SkillInfo/SkillDesc/SkillDetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail = L1_2
  L1_2 = A0_2.node_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/BtnPanel/ActiveBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/BtnPanel/ActiveBtn/TextPanel/Tips/TextDescription"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_active_btn_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/BtnPanel/ActiveBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Contents/BtnPanel/ActiveBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.active_in_control_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/BtnPanel/ActiveBtn/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.active_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/BtnPanel/DisableHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/BtnPanel/DisableHintPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/BtnPanel/ActivePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_activated_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/BtnPanel/ActivePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_activated_hint = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1