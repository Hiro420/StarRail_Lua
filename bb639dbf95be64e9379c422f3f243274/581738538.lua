local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeEventMissionPanelBinder"
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
  L3_2 = L3_2.Text
  L4_2 = "MissionName/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_event_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "MissionName/MissionTypeIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow1/TaskName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_event_desc1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow2/TaskName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_event_desc2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow3/TaskName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_event_desc3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionListContent/MissionProgressRow1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionListContent/MissionProgressRow1/Progress"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_num1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow1/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_current_progress1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow1/Progress/ClaimNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_progress1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionListContent/MissionProgressRow2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionListContent/MissionProgressRow2/Progress"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_num2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow2/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_current_progress2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow2/Progress/ClaimNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_progress2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionListContent/MissionProgressRow3"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionListContent/MissionProgressRow3/Progress"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress_num3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow3/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_current_progress3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionListContent/MissionProgressRow3/Progress/ClaimNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_progress3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionTimeLimitPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionTimeLimitPanel/Root/Time"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "MissionTimeLimitPanel/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NaviHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "NaviHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "NaviHint/Hinttext/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ResetHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_puzzle_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ResetHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_puzzle_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ResetHint/Hinttext/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_puzzle_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_event = L1_2
end
L0_1._on_bind = L1_1
return L0_1
