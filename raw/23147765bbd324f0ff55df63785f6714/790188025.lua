local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSkillListPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Heliobus/HeliobusSkillListPage.prefab"
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
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/SkillPanel/NormalSkillList/SkillIcon1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/SkillPanel/NormalSkillList/SkillIcon2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/SkillPanel/NormalSkillList/SkillIcon3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/SkillPanel/NormalSkillList/SkillIcon4"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[4] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/SkillPanel/SpecialSkillList/SkillIcon5"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[5] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/SkillPanel/SpecialSkillList/SkillIcon6"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[6] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/SkillPanel/SpecialSkillList/SkillIcon7"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[7] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/SkillPanel/SpecialSkillList/SkillIcon8"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[8] = L2_2
  A0_2.node_skill_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RightPanel/SkillDetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RightPanel/LockPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_lock = L1_2
end
L0_1._on_bind = L1_1
return L0_1
