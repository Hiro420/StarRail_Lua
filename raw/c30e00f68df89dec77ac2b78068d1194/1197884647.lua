local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.SplashConfirmDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SplashConfirmDialog"
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
  L3_2 = L3_2.SplashConfirmDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 or nil
  if not A1_2 then
    L3_2 = ""
  end
  A0_2._message_id = L3_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Time
    L3_2 = L3_2.time
    L3_2 = L3_2 + 3
  end
  A0_2._AutoCloseTime = L3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.BtnFullscreen
  L4_2 = A0_2._OnBtnFullscreen
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2._AutoCloseTime
  if L2_2 >= L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
  end
end
L0_1._on_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.TextDesc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._message_id
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._OnBtnFullscreen = L1_1
return L0_1
