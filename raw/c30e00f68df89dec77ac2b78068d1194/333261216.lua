local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookChallengeTabBtnPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/SubText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/SubText"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/StatusPanel/DoubleRewardMark"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.animation_double_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/Timer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_time_tips = L1_2
  L1_2 = A0_2.node_time_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
