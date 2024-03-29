local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMiniGameMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MazeMiniGameOverViewPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.IntroButton
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTipQuest"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bg_canvas_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_target1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_target2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress3"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_target3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress1/TaskName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target1_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress2/TaskName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target2_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress3/TaskName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target3_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress1/Progress/slash"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target1_slash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress2/Progress/slash"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target2_slash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress3/Progress/slash"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target3_slash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress1/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target1_process_obtained = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress2/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target2_process_obtained = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress3/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target3_process_obtained = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress1/Progress/ClaimNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target1_process_total = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress2/Progress/ClaimNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target2_process_total = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/MiniGameMissionStatusHint/Contents/SubMissionPanel/MissionProgress3/Progress/ClaimNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_target3_process_total = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIMeta
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ui_meta = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/MiniGameContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.mini_game_container = L1_2
end
L0_1._on_bind = L1_1
return L0_1
