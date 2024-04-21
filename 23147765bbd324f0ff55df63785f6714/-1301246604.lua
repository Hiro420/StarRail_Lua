local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.MissionDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.ChapterDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.ChapterDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchButtonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchButtonPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionMainPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "ListPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_task_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_task_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TaskDetailPanel/BtnTrace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_track = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TaskDetailPanel/BtnTrace/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tracking_button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TaskDetailPanel/BtnLocation"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_location = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TaskDetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_task_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "TaskDetailPanel/TaskDetail/DescPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MissionDetailPanel
  L4_2 = G
  L4_2 = L4_2.MissionDetailPanelBinder
  L5_2 = "TaskDetailPanel/TaskDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.main_mission_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChapterDetailPanel
  L4_2 = G
  L4_2 = L4_2.ChapterDetailPanelBinder
  L5_2 = "ChapterDetailPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.chapter_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MissionRewardPanel
  L4_2 = G
  L4_2 = L4_2.MissionRewardPanelBinder
  L5_2 = "TaskDetailPanel/PrizePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.main_mission_reward_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TaskDetailPanel/DisableHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_disable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TaskDetailPanel/DisableHintPanel/TipPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_disable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Tips"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
end
L0_1._on_bind = L1_1
return L0_1
