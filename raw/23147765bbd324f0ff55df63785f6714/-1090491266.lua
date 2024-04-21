local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Adventure.Waypoint.WaypointPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.Waypoint.WaypointPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AdventureWaypointsPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Adventure/AdventureWaypointsPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.WaypointPanel
  L4_2 = G
  L4_2 = L4_2.WaypointPanelBinder
  L5_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_waypoint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_root = L1_2
end
L0_1._on_bind = L1_1
