local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterIconRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Monster/WidgetOld/MonsterIconRow.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Light"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_light = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Dark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_dark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Base/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "WeakPointInfo/WeakPointList"
  L6_2 = "Ui.WeakPoint.WeakPointIconNode"
  L7_2 = "Ui.WeakPoint.WeakPointIconNodeBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_weak_point_list = L1_2
end
L0_1._on_bind = L1_1
