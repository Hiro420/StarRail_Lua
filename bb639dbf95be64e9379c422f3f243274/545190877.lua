local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhoneNotice.PhoneNoticePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneNotice.PhoneNoticePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchButtonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchButtonPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeLeftTopBtnPanelBinder"
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
  L3_2 = L3_2.Button
  L4_2 = "QuitBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_leave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "QuitBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_leave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MissionBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionBtn/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.mission_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "PhoneBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_phone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PhoneBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_phone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PhoneBtn/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.StoryLineSwitchButtonPanel
  L4_2 = G
  L4_2 = L4_2.StoryLineSwitchButtonPanelBinder
  L5_2 = "BtnStoryLineSwitch"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.story_line_button_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneNoticePanel
  L4_2 = G
  L4_2 = L4_2.PhoneNoticePanelBinder
  L5_2 = "PhoneMessageBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_message = L1_2
end
L0_1._on_bind = L1_1
