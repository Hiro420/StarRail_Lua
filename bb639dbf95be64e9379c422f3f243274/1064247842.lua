local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityRankPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityRankPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionRewardDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Assignment/AssignmentResultDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_contents = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Contents/SinglePanel/BoxReward/RewardListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.common_reward_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Contents/SinglePanel/BoxReward/ExtraRewardListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.extra_reward_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/SinglePanel/BoxReward/ExtraRewardListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_extra_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnAgain"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_again = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/SinglePanel/InfoPanel/BoxInfo/BoxContent/RemainTime/Hour"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_hour = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/BoxHead"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_no_assist = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_can_assist = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/BoxHead/AvatarHead2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/BoxHead/AvatarHead1/Selected/IconAvatar/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/BoxHead/AvatarHead2/Selected/IconAvatar/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar2 = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/BoxHead/AvatarHead1"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/BoxHead/AvatarHead2"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_find
  L6_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/BoxHead/AvatarHead3"
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  A0_2.nodes_avatar_activity = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/BoxHead/AvatarHead1/Selected/IconAvatar/Image"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Image
  L6_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/BoxHead/AvatarHead2/Selected/IconAvatar/Image"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_get_cmpt
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Image
  L7_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/BoxHead/AvatarHead3/Selected/IconAvatar/Image"
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  A0_2.imgs_avatar_activity = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/AvatarHeadSupport"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/Image"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_find
  L6_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/SupportMark"
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  A0_2.nodes_assist = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/SinglePanel/AvatarPanel/BoxInfo/BoxContent/MedicineHead/AvatarHeadSupport/Selected/IconAvatar/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_assist = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/SinglePanel/AssessmentPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityRankPanel
  L4_2 = G
  L4_2 = L4_2.ActivityRankPanelBinder
  L5_2 = "Contents/SinglePanel/AssessmentPanel/BoxInfo/Rank"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_rank = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_can_restart = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_no_restart = L1_2
end
L0_1._on_bind = L1_1
return L0_1
