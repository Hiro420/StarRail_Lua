local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicRecommendPropertyInfoRowPanelBinder"
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
  L3_2 = L3_2.Image
  L4_2 = "StatusTitle/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_property_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StatusTitle/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_property_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RateNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_rate = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnQuickFilter"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_filter = L1_2
end
L0_1._on_bind = L1_1
return L0_1
