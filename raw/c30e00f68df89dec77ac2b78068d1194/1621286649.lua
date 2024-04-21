local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyNewBuffTipItemPanelBinder"
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
  L4_2 = "TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_mission_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BuffPanel/BuffName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_buff_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BuffPanel/BuffInfoItem/Root/BuffNode/BuffIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.image_buff_icon = L1_2
end
L0_1._on_bind = L1_1
return L0_1
