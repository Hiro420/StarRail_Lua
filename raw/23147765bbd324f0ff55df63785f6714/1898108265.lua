local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookGuideTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DailyMission/Widget/GuidePanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ActiveDetection
  L4_2 = "RightPanel/ListPanel/QuestList/ScrollView/Scrollbar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_detect_scroll_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "RightPanel/ListPanel/QuestList/ScrollView/Scrollbar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_scroll_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/ListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_item_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftInfo/ListPanel/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "LeftInfo/ListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_scroll_rect = L1_2
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
