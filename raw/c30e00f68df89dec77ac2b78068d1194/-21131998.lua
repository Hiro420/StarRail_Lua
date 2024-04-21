local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionCountDownPanelBinder"
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
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Time/CountDownPanel/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.AUiProgressBar
  L4_2 = "Time/BoxProgressBar/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.progress_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Time/CountDownPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Time/BoxProgressBar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Time/BoxComplete"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_complete = L1_2
end
L0_1._on_bind = L1_1
return L0_1
