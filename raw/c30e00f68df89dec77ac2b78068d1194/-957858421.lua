local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookActiveRewardPanelBinder"
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
  L4_2 = "RewardPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RewardPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardPanel/RewardStatus/Undo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardPanel/RewardStatus/Current"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_available = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardPanel/RewardStatus/Receive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_received = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RewardPanel/BgHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ProgressLine/LineCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bar_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ProgressLine/LineCurrent/DotRight"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_full = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardPanel/Location"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardPanel/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot = L1_2
end
L0_1._on_bind = L1_1
return L0_1