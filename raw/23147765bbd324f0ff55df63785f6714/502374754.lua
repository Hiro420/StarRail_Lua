local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Talk.TalkRecording.TalkRecordingDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TalkRecordingDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TalkRecordingDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CloseTalkRecordingDialog
  L4_2 = L0_1._OnCloseTalkRecordingDialog
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._OnCloseTalkRecordingDialog = L1_1
return L0_1
