local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QueuePanelDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Ui.Common.QueuePanelDialogBinder"
L1_1(L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.QueuePanelDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.set_parent_panel
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.OperationModule
  L1_2 = L1_2.Instance
  L1_2.pause = false
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.dispose_parent_panel
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.clear_main_page_datas
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.OperationModule
  L1_2 = L1_2.Instance
  L1_2.pause = true
end
L0_1._on_dispose = L1_1
return L0_1
