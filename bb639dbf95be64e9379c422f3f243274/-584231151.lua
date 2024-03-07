local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMapPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Adventure/Widget/MiniMapPanel.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIAdventureMinimap
  L4_2 = "AdventureMapPanel/MapContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ui_adventure_mini_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AdventureMapPanel/Btn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_mini_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AdventureMapPanel/MapWarningMark/Warning"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_map_warning = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AdventureMapPanel/MapWarningMark/Alert"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_map_alert = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AdventureMapPanel/MapWarningMark/Safe"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_map_safe = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AdventureMapPanel/MapWarningMark/Hide"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_map_hide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AdventureMapPanel/MapWarningMark/Warning/MapWarningMarkGlow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_map_warning_glow = L1_2
end
L0_1._on_bind = L1_1
return L0_1
