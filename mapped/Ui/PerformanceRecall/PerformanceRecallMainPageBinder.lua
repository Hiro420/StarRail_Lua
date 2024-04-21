local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PerformanceRecall.Widget.PerformanceRecallTypeListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PerformanceRecall.Widget.PerformanceRecallTypeListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PerformanceRecall.Widget.PerformanceRecallContentPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PerformanceRecall.Widget.PerformanceRecallContentPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PerformanceRecallMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/StoryReview/StoryReviewPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PerformanceRecallTypeListPanel
  L4_2 = G
  L4_2 = L4_2.PerformanceRecallTypeListPanelBinder
  L5_2 = "Root/LeftTabArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_type_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PerformanceRecallContentPanel
  L4_2 = G
  L4_2 = L4_2.PerformanceRecallContentPanelBinder
  L5_2 = "Root/Contents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/LeftTabArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_zoom_1 = L1_2
end
L0_1._on_bind = L1_1
return L0_1
