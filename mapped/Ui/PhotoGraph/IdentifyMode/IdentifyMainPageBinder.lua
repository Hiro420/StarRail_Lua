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
L1_1 = "Ui.PhotoGraph.IdentifyMode.IdentifyPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "IdentifyMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Camera/CameraMainPage.prefab"
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
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MenuBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_menu = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bg = L1_2
  L1_2 = A0_2.node_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "PhotographPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.load_photograph_meta = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.IdentifyPanel
  L4_2 = G
  L4_2 = L4_2.IdentifyPanelBinder
  L5_2 = "CameraLensPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.identify_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphWaterMarkPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphWaterMarkPanelBinder
  L5_2 = "WaterMark"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.water_mark_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "JoystickRoot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_joystick = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mode_tab = L1_2
  L1_2 = A0_2.node_mode_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._extra_bind
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._extra_bind = L1_1
return L0_1
