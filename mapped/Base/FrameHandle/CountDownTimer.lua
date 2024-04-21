local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.FrameHandle.TimerItemBase"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CountDownTimer"
L2_1 = G
L2_1 = L2_1.TimerItemBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.super
  L2_2 = L2_2.set_total_time
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._cur_run_time = A1_2
end
L0_1.set_total_time = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._total_time
  L2_2 = A0_2._cur_run_time
  L1_2 = L1_2 - L2_2
  return L1_2
end
L0_1.get_run_time = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_run_time
  return L1_2
end
L0_1.get_left_run_time = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = math
  L1_2 = L1_2.ceil
  L2_2 = A0_2._cur_run_time
  return L1_2(L2_2)
end
L0_1.get_left_run_time_int_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_disposed
  if L2_2 then
    return
  end
  L2_2 = A0_2._cur_run_time
  L2_2 = L2_2 - A1_2
  A0_2._cur_run_time = L2_2
  L2_2 = A0_2._cur_run_time
  if L2_2 < 0 then
    A0_2._cur_run_time = 0
  end
  L2_2 = A0_2._interval_left_time
  L2_2 = L2_2 + A1_2
  A0_2._interval_left_time = L2_2
  L2_2 = A0_2._is_infine_loop
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._check_and_dispatch
    L2_2(L3_2)
  else
    L2_2 = A0_2._cur_run_time
    if L2_2 <= 0 then
      L3_2 = A0_2
      L2_2 = A0_2._dispose_and_dispatch
      L2_2(L3_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._check_and_dispatch
      L2_2(L3_2)
    end
  end
end
L0_1.on_timer = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2.reset
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._total_time
  A0_2._cur_run_time = L1_2
  A0_2._cur_call_time = 0
  A0_2._interval_left_time = 0
  A0_2._is_disposed = false
end
L0_1.reset = L1_1
return L0_1
