local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillDetailInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SkillBasicInfo/SkillIcon/Root/IconSkill/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_skill_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillBasicInfo/SkillNamePanel/SkillName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillBasicInfo/SkillIcon/Root/Level/LevelCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_lv = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillBasicInfo/SkillTypePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillDesc/SkillDetailPanel/Desc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_desc = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.img_skill_icon = nil
  A0_2.text_skill_name = nil
  A0_2.text_skill_lv = nil
  A0_2.text_skill_type = nil
  A0_2.text_skill_desc = nil
end
L0_1._on_dispose = L1_1
return L0_1
