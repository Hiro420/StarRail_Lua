local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Daily.HandbookActiveRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Daily.HandbookActiveRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookDailyActivePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TodayTotalNum/Title/NumLIst/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_active_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardProgress/ProgressPanel/RewardList/0/DotActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_not_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RewardProgress/ProgressPanel/RewardList/0/NumPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_0 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "RewardProgress/ProgressPanel/RewardList"
  L6_2 = "Ui.DailyMission.Daily.HandbookActiveRewardPanel"
  L7_2 = "Ui.DailyMission.Daily.HandbookActiveRewardPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.list_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoPerformanceUITransfer
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_tick = L1_2
end
L0_1._on_bind = L1_1
return L0_1
