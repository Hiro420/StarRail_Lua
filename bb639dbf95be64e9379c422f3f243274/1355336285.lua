local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.DecalMode.DecalPuzzleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.DecalMode.DecalPuzzleItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DecalPuzzleSelectPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "GraffitiBtnStaticList"
  L6_2 = "Ui.PhotoGraph.DecalMode.DecalPuzzleItemPanel"
  L7_2 = "Ui.PhotoGraph.DecalMode.DecalPuzzleItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_decal_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "GraffitiBtnStaticList/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.select_in_control_tip = L1_2
end
L0_1._on_bind = L1_1
return L0_1