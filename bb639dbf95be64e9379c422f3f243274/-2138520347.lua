local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordRewardProgressBarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxBar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_box_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxBar/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxBar/Check"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_check = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LastLoop"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_over_bonus = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LastLoop/Top"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_last_loop_top = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LastLoop/ProgressBar/TextPanel/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cur_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LastLoop/ProgressBar/TextPanel/TxtTotal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "LastLoop/ProgressBar/Bar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bonus_progress_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "BoxBar/BarMask"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_normal_progress_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LastLoop/StatePanel/Lock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bonus_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LastLoop/StatePanel/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bonus_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LastLoop/StatePanel/Collect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bonus_collect = L1_2
end
L0_1._on_bind = L1_1
return L0_1
