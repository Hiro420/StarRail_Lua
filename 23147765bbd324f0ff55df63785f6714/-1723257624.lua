local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonthCardTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Shop/Widget/MonthCardPanel.prefab"
  return L1_2
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
  L4_2 = "Content/RightPanel/BtnPanel/BtnPayFirst/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_price = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/LeftPanel/CountTextPanel/TitlePanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_remain_day = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/RightPanel/BtnPanel/BtnPayFirst"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_buy = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/LeftPanel/CountTextPanel/DescPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_receive_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/LeftPanel/CountTextPanel/MaxDayPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_limit_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/LeftPanel/CountTextPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_info = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Selected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnSelected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_unselected = L1_2
  L1_2 = A0_2.text_selected
  L2_2 = L1_2
  L1_2 = L1_2.SetSingleLineEllipsis
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.text_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SetSingleLineEllipsis
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
