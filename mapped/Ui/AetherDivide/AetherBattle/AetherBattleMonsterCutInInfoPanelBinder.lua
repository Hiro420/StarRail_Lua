local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherBattleMonsterCutInInfoPanelBinder"
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
  L4_2 = "SkillDetailContainer/AttributeTypeForAD/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_spirit_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillDetailContainer/SkillDetail/SkillName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_skill_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillDetailContainer/SkillDetail/UltraText/UltraText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_skill_tag = L1_2
end
L0_1._on_bind = L1_1
return L0_1
