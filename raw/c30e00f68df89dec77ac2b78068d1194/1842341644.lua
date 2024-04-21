local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTalentTreeRowTriplePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2.talent_tree_item_trans_list = L1_2
  L1_2 = A0_2.talent_tree_item_trans_list
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "RogueSkillTreeBtn1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2 = A0_2.talent_tree_item_trans_list
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "RogueSkillTreeBtn2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L1_2 = A0_2.talent_tree_item_trans_list
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "RogueSkillTreeBtn3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L1_2 = {}
  A0_2.img_lines = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.img_lines
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Image
  L6_2 = "LinePanel/LineLeft"
  L7_2 = false
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.img_lines
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Image
  L6_2 = "LinePanel/LineCenter"
  L7_2 = false
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.img_lines
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Image
  L6_2 = "LinePanel/LineRight"
  L7_2 = false
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_bind = L1_1
return L0_1
