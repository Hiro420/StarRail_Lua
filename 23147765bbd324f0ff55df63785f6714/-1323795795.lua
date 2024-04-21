local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDisplayPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattlePassDisplayPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lightcone_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "ListPanel/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_lightcones = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeContainerPanel
  L4_2 = G
  L4_2 = L4_2.LightConeContainerPanelBinder
  L5_2 = "LightConeContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeDisplayPanel
  L4_2 = G
  L4_2 = L4_2.LightConeDisplayPanelBinder
  L5_2 = "AvatarLightConeDetailPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "OccupationImage"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_type = L1_2
end
L0_1._on_bind = L1_1
return L0_1
