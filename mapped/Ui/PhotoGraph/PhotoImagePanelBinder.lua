local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphWaterMarkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphWaterMarkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoImagePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Content/Photo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_photo = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PhotoGraphFilterImage
  L4_2 = "Content/Photo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.filter_img = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Content/Frame"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_frame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoGraphWaterMarkPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphWaterMarkPanelBinder
  L5_2 = "Content/WaterMark"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.water_mark_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
