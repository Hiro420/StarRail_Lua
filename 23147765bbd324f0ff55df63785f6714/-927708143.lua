local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchMonsterInfoPanelBinder"
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
  L3_2 = L3_2.Text
  L4_2 = "Root/Bg/TxtNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/NamePanel/ChoiceMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_question_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MaskRightPanel/AvatarPhoto/Avatar/ChoiceImg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unselect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/MaskRightPanel/AvatarPhoto/Avatar/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/MaskPanel/AvatarPhoto/Avatar/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_monster_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/NamePanel/MonsterName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_monster_name = L1_2
end
L0_1._on_bind = L1_1
return L0_1
