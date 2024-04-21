local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Map2DViewRegionalDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AreaSelectPanel/MapContainerPanel/MapContent/MapContainer/CloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close_symbol_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaSelectPanel/MapContainerPanel/MapControllerPanel/ZoomSlider"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_map_zoom_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaSelectPanel/MapContainerPanel/MapContent/MapContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_map_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaSelectPanel/MapContainerPanel/SymbolDetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_symbol_title_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaSelectPanel/SymbolDetailPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_symbol_detail_parent = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaSelectPanel/SymbolDetailPanel/MapSymbolInfoDialog"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_symbol_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaSelectPanel/MapContainerPanel/MapFloorPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_map_floor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AreaSelectPanel/MapContainerPanel/TipsPanel/BoxCountPanel/BoxCount"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_box_count = L1_2
end
L0_1._on_bind = L1_1
return L0_1
