local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailPostInfoItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "BtnPanel/BtnDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_open_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnPanel/BtnDetail/Root/IconPanel/ArrowDown"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_arrow_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnPanel/BtnDetail/Root/IconPanel/ArrowUp"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_arrow_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_post_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "DesTextPanel/DesText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_post_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CommentsTextPanel/CommentsText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_comment_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutElement
  L4_2 = "DesTextPanel/DesText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.layout_element = L1_2
end
L0_1._on_bind = L1_1
return L0_1