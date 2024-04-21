local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochureArrowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
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
  L4_2 = "ArrowLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_last = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowLeft/Root/IconPanel/NormalPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_last_enable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowLeft/Root/IconPanel/DisablePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_last_disable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ArrowRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowRight/Root/IconPanel/NormalPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_next_enable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowRight/Root/IconPanel/DisablePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_next_disable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowLeft/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot_btn_last = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowRight/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot_btn_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "ArrowLeft/Root/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.control_tip_btn_last = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "ArrowRight/Root/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.control_tip_btn_next = L1_2
end
L0_1._on_bind = L1_1
return L0_1
