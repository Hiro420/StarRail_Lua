local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnSortMobilePanelBinder"
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
  L3_2 = L3_2.Button
  L4_2 = "BtnSortType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._btn_sort_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BtnSortType/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._text_sort_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnOrder"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._btn_order = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnOrder/IconPanel/IconUp"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_ascend = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnOrder/IconPanel/IconDown"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_descend = L1_2
end
L0_1._on_bind = L1_1
return L0_1
