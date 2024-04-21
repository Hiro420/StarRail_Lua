local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfEnterPanelBinder"
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
  L4_2 = "BtnExtra"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_companion_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_activity_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnShop"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_activity_shop = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnExtra/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot_companion_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnGo/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot_activity_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnShop/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot_shop_btn = L1_2
end
L0_1._on_bind = L1_1
return L0_1
