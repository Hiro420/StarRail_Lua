local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.HandbookGuideTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.HandbookGuideTypePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookGuideProfessionFarmTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "ListPanel/QuestList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_view_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ActiveDetection
  L4_2 = "ListPanel/QuestList/ScrollView/Scrollbar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_detect_scroll_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "ListPanel/QuestList/ScrollView/Scrollbar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_scroll_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ListPanel/QuestList/Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_list_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ListPanel/QuestList/DoubleCocoon/DoubleRewardTipsItem"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_double_reward = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_in_btn
  L3_2 = G
  L3_2 = L3_2.HandbookGuideTypePanel
  L4_2 = G
  L4_2 = L4_2.HandbookGuideTypePanelBinder
  L5_2 = A0_2.tab_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tab_btn_panel = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
