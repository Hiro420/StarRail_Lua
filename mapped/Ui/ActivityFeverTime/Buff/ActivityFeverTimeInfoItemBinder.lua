local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeInfoItemBinder"
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
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowPanel/DownArrow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_down_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowPanel/UpArrow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_up_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Desc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ClickArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_click_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "DetailPanel/TitlePanel/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_detail_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "DetailPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_detail_desc = L1_2
end
L0_1._on_bind = L1_1
return L0_1