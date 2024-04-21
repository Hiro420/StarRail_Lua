local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDetailFunctionTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tab_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "LeftNormal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "LeftBorder"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_border = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RightNormal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RightBorder"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_border = L1_2
end
L0_1._on_tab_btn_bind = L2_1
return L0_1
