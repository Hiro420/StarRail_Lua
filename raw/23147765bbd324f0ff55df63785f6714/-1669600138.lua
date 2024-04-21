local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterBuffInfoRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Monster/Widget/BuffRow.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BuffLeft/BuffIcon/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BuffLeft/BuffName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_buff_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BuffLeft/TipsTxt"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BuffLeft/TipsTxt"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_text_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BuffLeft/DescribeTxt"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BuffLeft/BuffIcon/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.icon = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.text_count = nil
  A0_2.text_buff_name = nil
  A0_2.text_tips = nil
  A0_2.text_desc = nil
  A0_2.icon = nil
end
L0_1._on_dispose = L1_1
return L0_1
