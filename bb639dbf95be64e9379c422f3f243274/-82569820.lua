local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleSkillInfoPanelBinder"
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
  L4_2 = "TitleRow/TextPanel/BuffNameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TitleRow/SkillType/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TitleRowEmergy/TextPanel/BuffNameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name_danger = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TitleRowEmergy/SkillType/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tag_danger = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "DescPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_describe = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DescPanel/FrameEmergy"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_desc_danger = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TitleRowEmergy"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_danger = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TitleRow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
end
L0_1._on_bind = L1_1
return L0_1
