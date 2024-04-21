local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QuestTimeLimitWarReporterTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Selected/DetailPanel/Title/Txt"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Selected/DetailPanel/Title/TxtTd"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title_en = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Selected/DetailPanel/ProgressPanel/NumCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_current = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Selected/DetailPanel/ProgressPanel/NumTarget"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Selected/FrameBg/Mask/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Selected/FrameBg_Black/Mask/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon_unselect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Selected/DetailPanel/Finish"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_finish = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Selected/DetailPanel/ProgressPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress = L1_2
end
L0_1._on_tab_btn_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2.node_item_list = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.node_item_list
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "ScrollView/Viewport/Content/ChallengeMissionList1"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.node_item_list
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "ScrollView/Viewport/Content/ChallengeMissionList2"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.node_item_list
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "ScrollView/Viewport/Content/ChallengeMissionList3"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.node_item_list
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "ScrollView/Viewport/Content/ChallengeMissionList4"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.node_item_list
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "ScrollView/Viewport/Content/ChallengeMissionList5"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
