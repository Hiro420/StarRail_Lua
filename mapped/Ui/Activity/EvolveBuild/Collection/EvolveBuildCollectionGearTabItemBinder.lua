local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildCollectionGearTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/Widget/EvolveCollectionPropsPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "LeftPanel/Root/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.collection_gear_list_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/DetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "RightPanel/DetailPanel/Root/Contents/Content/InfoPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_detail = L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/TextPanel/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_tab_select = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/TabIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_tab_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.red_dot = L1_2
end
L0_1._on_tab_btn_bind = L2_1
return L0_1
