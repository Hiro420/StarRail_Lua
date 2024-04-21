local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.RPGQualitySettings
L0_1 = L0_1.FPS
if 0 < L0_1 then
  L0_1 = CS
  L0_1 = L0_1.RPG
  L0_1 = L0_1.Client
  L0_1 = L0_1.RPGQualitySettings
  L0_1 = L0_1.FPS
  L0_1 = 1 / L0_1
  if L0_1 then
    goto lbl_20
  end
end
L0_1 = 0.0167
::lbl_20::
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.Vector3
L2_1 = 0
L3_1 = 5
L4_1 = 0
L1_1 = L1_1(L2_1, L3_1, L4_1)
L2_1 = CS
L2_1 = L2_1.UnityEngine
L2_1 = L2_1.Vector3
L3_1 = 0
L4_1 = -5
L5_1 = 0
L2_1 = L2_1(L3_1, L4_1, L5_1)
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.Vector3
L4_1 = 5
L5_1 = 0
L6_1 = 0
L3_1 = L3_1(L4_1, L5_1, L6_1)
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = -5
L6_1 = 0
L7_1 = 0
L4_1 = L4_1(L5_1, L6_1, L7_1)
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "PhotoGraphMovePanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_move_up
  L4_2 = A0_2._move_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_move_down
  L4_2 = A0_2._move_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_move_left
  L4_2 = A0_2._move_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_move_right
  L4_2 = A0_2._move_right
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_move_up
  L4_2 = A0_2._move_up
  L5_2 = nil
  L6_2 = L0_1
  L7_2 = L0_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_move_down
  L4_2 = A0_2._move_down
  L5_2 = nil
  L6_2 = L0_1
  L7_2 = L0_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_move_left
  L4_2 = A0_2._move_left
  L5_2 = nil
  L6_2 = L0_1
  L7_2 = L0_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_move_right
  L4_2 = A0_2._move_right
  L5_2 = nil
  L6_2 = L0_1
  L7_2 = L0_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._move_step
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L5_1._move_up = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._move_step
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L5_1._move_down = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._move_step
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L5_1._move_left = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._move_step
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L5_1._move_right = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphMove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1._move_step = L6_1
return L5_1
