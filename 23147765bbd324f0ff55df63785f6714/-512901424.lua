local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.SDKWebViewPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SDKWebViewPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L0_1._count = 0
L0_1._prev_fps = nil
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SDKWebViewPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKWebPageClose
  L4_2 = A0_2._on_mdk_web_page_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1._count
  L1_2 = L1_2 + 1
  L0_1._count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_web_view_fps
  L1_2(L2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 0
  L3_2 = L0_1._count
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L0_1._count = L1_2
  L1_2 = L0_1._count
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._reset_web_view_fps
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_mdk_web_page_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._count
  if L1_2 == 1 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RPGQualitySettings
    L1_2 = L1_2.FPS
    L0_1._prev_fps = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._set_fps_impl
    L3_2 = 30
    L1_2(L2_2, L3_2)
  end
end
L0_1._set_web_view_fps = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._prev_fps
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._set_fps_impl
    L3_2 = L0_1._prev_fps
    L1_2(L2_2, L3_2)
    L0_1._prev_fps = nil
  end
end
L0_1._reset_web_view_fps = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RPGQualitySettings
  L2_2.FPS = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RPGQualitySettings
  L2_2 = L2_2.Save
  L2_2()
end
L0_1._set_fps_impl = L1_1
return L0_1
