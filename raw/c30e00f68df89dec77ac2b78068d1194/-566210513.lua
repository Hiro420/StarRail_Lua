local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkillDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Common/SkillDetailInfoPanel.prefab"
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
  A0_2.txt_skill_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillBasicInfo/SkillTypePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_skill_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillBasicInfo/SkillIcon/Root/SkillTag/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_icon_skill_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillBasicInfo/Level/LevelCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_skill_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "SkillDescInfoPanel/SkillDescInfoContent/Desc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_skill_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillDescInfoPanel/SkillDescInfoContent/ExtDescListPanel/ExtDescList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_list_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "SkillDescInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
end
L0_1._on_bind = L1_1
return L0_1
