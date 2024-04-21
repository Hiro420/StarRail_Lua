local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeSkillBtnPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/Widget/MazeSkillBtn.prefab"
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
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "IconSkill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_skill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillTag"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_tag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillTag/WeakPoint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.weak_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillTag/WeakPoint/UnActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unactive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillTag/WeakPoint/Active"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SkillTag/WeakPoint/UnActive/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_damage_unactive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SkillTag/WeakPoint/Active/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_damage_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillTag/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_skill_tag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillTag/Text"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_tag_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BanMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_ban_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EventBtnLoopEffs"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_loop_eff = L1_2
end
L0_1._on_bind = L1_1
return L0_1
