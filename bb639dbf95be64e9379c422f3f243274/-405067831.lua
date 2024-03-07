local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.RubikPuzzlePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RubikPuzzlePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.NotifyManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_binder
  L4_2 = G
  L4_2 = L4_2.RubikPuzzlePageBinder
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._binder = L2_2
  A0_2.hide_rotate_btn = A1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.billboard_root
  A0_2.billboard_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_click_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reset_btn
  L4_2 = A0_2._on_click_reset
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.hide_rotate_btn
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.rotate_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.reverse_rotate_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.rotate_btn
    L4_2 = A0_2._on_click_rotate
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.reverse_rotate_btn
    L4_2 = A0_2._on_click_reverse_rotate
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIActivateCloseRubikPuzzlePage
  L1_2(L2_2)
end
L0_1._on_click_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIReloadRubikPuzzle
  L1_2(L2_2)
end
L0_1._on_click_reset = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIRubikRotate
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_click_rotate = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIRubikRotate
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_click_reverse_rotate = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2.billboard_root = nil
  L1_2 = L0_1.super
  L1_2 = L1_2._on_dispose
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
return L0_1
