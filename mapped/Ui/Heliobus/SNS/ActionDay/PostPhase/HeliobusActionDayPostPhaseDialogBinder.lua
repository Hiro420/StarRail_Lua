local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusActionDayPostPhaseDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Heliobus/ActionDayDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bg_close_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/MissionStatusPanel/StatusIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_phase_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/MissionStatusPanel/ActionDayPanel/ActionDayText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_post_phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/Title/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/MissionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/RightPanel/MissionPanel/NaviIcon/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_mission_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/MissionPanel/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_mission_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/AuthorPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_user_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/RightPanel/AuthorPanel/AuthorPhoto/Avatar/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_user_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/AuthorPanel/AuthorText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_user_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/DescriptionTextPanel/DescriptionText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/NewMissionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_new_mission_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/NewMissionPanel/HeliobusMissionItem"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_new_main_mission_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/NewMissionPanel/HeliobusMissionItem/NumberText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_new_main_mission_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/RightPanel/NewMissionPanel/HeliobusSubMissionItem"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_new_sub_mission_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/RightPanel/NewMissionPanel/HeliobusSubMissionItem/NumberText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_new_sub_mission_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Contents/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_go_to_mission = L1_2
end
L0_1._on_bind = L1_1
return L0_1
