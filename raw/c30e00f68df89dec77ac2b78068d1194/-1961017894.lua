local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionDetailBtnPanelBinder"
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
  L4_2 = "CommonBtnList/BtnReceiveFirst"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_receive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "CommonBtnList/BtnComBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reverse = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "CommonBtnList/BtnAssignment"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_accept = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "CommonBtnList/BtnAssignment/Tips/TextDescription"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_btn_accept_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "CommonBtnList/BtnAssignment/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_btn_accept = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CommonBtnList/BtnAssignment/Tips"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_accept_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CommonBtnList/BtnReceiveFirst"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_receive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CommonBtnList/BtnComBack"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reverse = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CommonBtnList/BtnAssignment"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_accept = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CommonBtnList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_common_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UnderBtnList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_under_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UnderBtnList/BtnReceiveAll"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_receive_all = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "UnderBtnList/BtnReceiveAll"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_receive_all = L1_2
end
L0_1._on_bind = L1_1
return L0_1
