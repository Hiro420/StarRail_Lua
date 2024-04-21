local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Toast.TravelBrochureDiaryUnlockDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TravelBrochureModule
L1_1 = 3
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TravelBrochureDiaryUnlockDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TravelBrochureDiaryUnlockDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_hide_cursor = true
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
  A0_2._allow_camera_zoom_rotation_by_mouse = true
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDiaryData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._diary_data = L2_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.GetClip
  L4_2 = "TravelBrochureNewPageHint_FadeIn"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.length
  L1_2 = L1_2 + L2_2
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2.exit
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
return L2_1
