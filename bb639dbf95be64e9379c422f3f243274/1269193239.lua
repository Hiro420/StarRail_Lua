local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelRewardContentItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Adventure/Widget/TaskListInfoRow.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SubTitlePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.title_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SubTitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.title_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TaskList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.task_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TaskList/Title/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.task_list_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TaskList/DescPanel/Text1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.detail_text1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TaskList/DescPanel/Text2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.detail_text2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextDesc/Text3"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.task_desc = L1_2
end
L0_1._on_bind = L1_1
return L0_1
