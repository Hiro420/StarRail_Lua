local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraLensPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.CameraLensPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphWaterMarkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphWaterMarkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.IdentifyMode.IdentifyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.IdentifyMode.DroneIdentifyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphFovPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphFovPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphShotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphShotPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DroneIdentifyPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MazeFlyingPage.prefab"
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
  L4_2 = "BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FlyingCameraPanel/PhotoShotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_shot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "FlyingCameraPanel/PhotoShotPanel/PhotoShotBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_shot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "FlyingCameraPanel/PhotoShotPanel/PhotoShotBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_shot_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphFovPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphFovPanelBinder
  L5_2 = "FlyingCameraPanel/ExchangePanelHorizontal"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_fov = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphShotPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphShotPanelBinder
  L5_2 = "FlyingCameraPanel/PhotoShotPanel/PhotoShotBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_shot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.IdentifyPanel
  L4_2 = G
  L4_2 = L4_2.DroneIdentifyPanelBinder
  L5_2 = "MazeFlyingLensPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.identify_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
