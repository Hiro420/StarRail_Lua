local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.IdentifyMode.IdentifyAimPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.IdentifyMode.IdentifyAimPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "IdentifyPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.IdentifyAimPanel
  L4_2 = G
  L4_2 = L4_2.IdentifyAimPanelBinder
  L5_2 = "FinderFrameArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.aim_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FinderFrameArea/FinderFrame/CameraTipsHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "FinderFrameArea/FinderFrame/CameraTipsHintPanel/CameraTipsHint/TipsInfoPanel/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "FinderFrameArea/FinderFrame/CameraTipsHintPanel/CameraTipsHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CameraLensPanel
  L4_2 = G
  L4_2 = L4_2.CameraLensPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.camera_lens_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
