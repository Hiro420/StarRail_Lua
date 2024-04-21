local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Qte.QteCountDownBarBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QteCountDownBar"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._duration = -1
  A0_2._tick_timer = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tick_timer
  L3_2 = A0_2._duration
  if L2_2 > L3_2 then
    return
  end
  L2_2 = A0_2._tick_timer
  L2_2 = L2_2 + A1_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_progress
  L3_2 = A0_2._duration
  L4_2 = A0_2._tick_timer
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._duration
  L3_2 = L3_2 / L4_2
  L2_2.fillAmount = L3_2
  L2_2 = A0_2._tick_timer
  L3_2 = A0_2._duration
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_time_out
    L2_2(L3_2)
  end
end
L0_1.mono_tick = L1_1
function L1_1(A0_2, A1_2)
  A0_2._duration = A1_2
  A0_2._tick_timer = 0
end
L0_1.start = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._time_out_callback = A1_2
  A0_2._time_out_handler = A2_2
end
L0_1.register_time_out_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._time_out_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._time_out_handler
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._time_out_callback
  L2_2 = A0_2._time_out_handler
  L1_2(L2_2)
end
L0_1._on_time_out = L1_1
return L0_1
