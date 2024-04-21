local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ScreenTransfer.CartoonScreenTransferDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CartoonScreenTransferDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CartoonScreenTransferDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._is_special_above_dialog = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_config
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayCartoonScreenTransfer
  L4_2 = L0_1._on_play_cartoon_transfer_config
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_config
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_cartoon_transfer
  L2_2(L3_2)
end
L0_1._on_play_cartoon_transfer_config = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.Center
  A0_2._center = L2_2
  L2_2 = A1_2.Duration
  A0_2._duration = L2_2
  L2_2 = A1_2.Curve
  A0_2._curve = L2_2
  L2_2 = A1_2.OnPlayEnd
  A0_2._callback = L2_2
  L2_2 = A1_2.Close
  A0_2._close_on_end = L2_2
end
L0_1._setup_config = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_cartoon_transfer
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cartoon_transfer
  L2_2 = L1_2
  L1_2 = L1_2.SetDuration
  L3_2 = A0_2._duration
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cartoon_transfer
  L2_2 = L1_2
  L1_2 = L1_2.SetCenter
  L3_2 = A0_2._center
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cartoon_transfer
  L2_2 = L1_2
  L1_2 = L1_2.SetRadiusCurve
  L3_2 = A0_2._curve
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cartoon_transfer
  L2_2 = L1_2
  L1_2 = L1_2.SetFinishAction
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._callback
    if L0_3 ~= nil then
      L0_3 = A0_2._callback
      L0_3()
    end
    L0_3 = A0_2._close_on_end
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.cartoon_transfer
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1._play_cartoon_transfer = L1_1
return L0_1
