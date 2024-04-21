local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumPerformanceAreaBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPerformanceAreaBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumPerformancePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/Museum/MuseumPerformancePage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/FunctionButtonWidget/SkipBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.MuseumPerformanceAreaBarPanel
  L5_2 = G
  L5_2 = L5_2.MuseumPerformanceAreaBarPanelBinder
  L6_2 = "Root/ProgressPanel/Area1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_panel
  L5_2 = G
  L5_2 = L5_2.MuseumPerformanceAreaBarPanel
  L6_2 = G
  L6_2 = L6_2.MuseumPerformanceAreaBarPanelBinder
  L7_2 = "Root/ProgressPanel/Area2"
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_panel
  L6_2 = G
  L6_2 = L6_2.MuseumPerformanceAreaBarPanel
  L7_2 = G
  L7_2 = L7_2.MuseumPerformanceAreaBarPanelBinder
  L8_2 = "Root/ProgressPanel/Area3"
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._create_panel
  L7_2 = G
  L7_2 = L7_2.MuseumPerformanceAreaBarPanel
  L8_2 = G
  L8_2 = L8_2.MuseumPerformanceAreaBarPanelBinder
  L9_2 = "Root/ProgressPanel/Area4"
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  A0_2.area_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/CommentsPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.comment_list_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Root/ProgressPanel/EffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.thumb_animator = L1_2
end
L0_1._on_bind = L1_1
return L0_1
