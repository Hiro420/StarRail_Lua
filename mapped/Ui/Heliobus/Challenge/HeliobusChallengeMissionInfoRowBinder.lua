local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeMissionInfoRowBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Progress/Mission/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Progress/MissionFinish/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title_num_finished = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Progress/HardLevelText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Progress/Mission"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Progress/MissionFinish"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_complete = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Progress/StarPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_star = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "Progress/StarPanel/Star1"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "Progress/StarPanel/Star2"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "Progress/StarPanel/Star3"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[3] = L2_2
  A0_2.img_challenge_star = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AwardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L4_2 = "AwardPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_scroll_items = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Lock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
end
L0_1._on_bind = L1_1
return L0_1
