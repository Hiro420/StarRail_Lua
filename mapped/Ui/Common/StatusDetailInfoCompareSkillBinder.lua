local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StatusDetailInfoCompareSkillBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/Widget/SkillTreeStatusDetailInfoResult.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "StatusTitle/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StatusTitle/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StatusDetail/StatusPreNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_num_before = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StatusDetail/StatusCurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_num_after = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "IconArrow/Down"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "IconArrow/Up"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatusTitle/PopUpNewMark"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_new = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatusDetail/IconArrow"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_icon_to = L1_2
  L1_2 = G
  L1_2 = L1_2.UIColorUtils
  L1_2 = L1_2.GetColor
  L2_2 = "#FFFFFFFF"
  L1_2 = L1_2(L2_2)
  A0_2.up_color = L1_2
  L1_2 = G
  L1_2 = L1_2.UIColorUtils
  L1_2 = L1_2.GetColor
  L2_2 = "#FFFFFFFF"
  L1_2 = L1_2(L2_2)
  A0_2.down_color = L1_2
  L1_2 = G
  L1_2 = L1_2.UIColorUtils
  L1_2 = L1_2.GetColor
  L2_2 = "#FFFFFFFF"
  L1_2 = L1_2(L2_2)
  A0_2.equal_color = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UpLevelMark"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_level_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UpLevelMark/NumPanel"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_level_up_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UpLevelMark/NumPanel/UpNum"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_level_up_value = L1_2
end
L0_1._on_bind = L1_1
return L0_1
