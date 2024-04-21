local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeConfirmDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.DevLogin.GameDevLoginDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.DevLogin.GameStartupDebugLoginPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.DevLogin.GameStartupDebugLoginPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GameDevLoginDialog"
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
  L3_2 = L3_2.GameDevLoginDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._count = 0
  A0_2.item_data = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GameStartupDebugLoginPanel
  L4_2 = G
  L4_2 = L4_2.GameStartupDebugLoginPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._dev_panel = L1_2
  L1_2 = A0_2._dev_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
return L0_1
