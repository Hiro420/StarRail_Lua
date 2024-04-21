local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DailyMission.Daily.HandbookDailyActivePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Daily.HandbookDailyActivePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookDailyTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DailyMission/Widget/DailyPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.HandbookDailyActivePanel
  L4_2 = G
  L4_2 = L4_2.HandbookDailyActivePanelBinder
  L5_2 = "Topinfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_daily_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "ListPanel/MissionList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_daily_quests = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "RemainTime/ItemRemainTimeIcon/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Topinfo/RewardProgress/ProgressPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_info = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.go_reddot = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.select_icon_image = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
