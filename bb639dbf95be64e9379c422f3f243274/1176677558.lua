local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeRaidPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/Status"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_unlock = L1_2
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
  L3_2 = L3_2.Text
  L4_2 = "Root/TitlePanel/TxtTitle/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Reward/RewardItemIconLite"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Status/Locked"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Status/Unlock"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unlock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Status/Finish"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_finished = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/TitlePanel/Star/ChallengeStarInfo1/Active"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/TitlePanel/Star/ChallengeStarInfo2/Active"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/TitlePanel/Star/ChallengeStarInfo3/Active"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.node_active_stars = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/TitlePanel/Star/ChallengeStarInfo1/UnActive"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/TitlePanel/Star/ChallengeStarInfo2/UnActive"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/TitlePanel/Star/ChallengeStarInfo3/UnActive"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[3] = L2_2
  A0_2.node_unactive_stars = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Reward/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
