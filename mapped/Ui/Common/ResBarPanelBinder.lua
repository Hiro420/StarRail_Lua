local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResBarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/CommonKits/ResBar/ResBar.prefab"
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
  L4_2 = "Root/BtnPlus"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_plus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Splash"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_splash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PopUpTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PopUpTip/Content/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MaxTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_max_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MaxLoopEff"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_max_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BtnStates"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_states = L1_2
end
L0_1._on_bind = L1_1
return L0_1
