local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoImagePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Share.SharePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Share.SharePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Camera/PhotoResultDialog.prefab"
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
  L4_2 = "BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ButtonPanel/BtnCommonRed"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_edit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ButtonPanel/BtnCommonWhite"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_save = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ButtonPanel/BtnShare"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_share = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhotoImagePanel
  L4_2 = G
  L4_2 = L4_2.PhotoImagePanelBinder
  L5_2 = "PhotoImage"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.photo_image_panel = L1_2
  L1_2 = A0_2.photo_image_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_frame_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.SharePanel
  L4_2 = G
  L4_2 = L4_2.SharePanelBinder
  L5_2 = "ButtonPanel/Tab"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.share_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.root_animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.root_canvas_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "PhotoImage"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "ButtonPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
