local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.IdentifyMode.IdentifyMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.IdentifyMode.IdentifyMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteCameraHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteCameraHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteCameraPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityGuessTheSilhouetteCameraPage"
L2_1 = G
L2_1 = L2_1.IdentifyMainPage
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityGuessTheSilhouetteModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityGuessTheSilhouetteCameraPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_silhouette_hint
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_silhouette_hint
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ActivityGuessTheSilhouetteCameraHintPanel
  L5_2 = G
  L5_2 = L5_2.ActivityGuessTheSilhouetteCameraHintPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L3_2(L4_2)
end
L0_1._setup_override_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_unload = L2_1
return L0_1
