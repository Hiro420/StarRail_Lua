local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueEntranceBuffInfoDisplayPanelBinder"
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
  L4_2 = "InfoPanel/BoxTitle/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.buff_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/TxtDes"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.buff_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BuffInfo/Contents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.buff_list_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BuffInfo/BoxTitle/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.eff_title = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "BuffInfo/Contents/BuffInfoRow1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "BuffInfo/Contents/BuffInfoRow2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "BuffInfo/Contents/BuffInfoRow3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "BuffInfo/Contents/BuffInfoRow4"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[4] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "BuffInfo/Contents/BuffInfoRow5"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[5] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "BuffInfo/Contents/BuffInfoRow6"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[6] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "BuffInfo/Contents/BuffInfoRow7"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[7] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "BuffInfo/Contents/BuffInfoRow8"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[8] = L2_2
  A0_2.desc_item_roots = L1_2
end
L0_1._on_bind = L1_1
return L0_1
