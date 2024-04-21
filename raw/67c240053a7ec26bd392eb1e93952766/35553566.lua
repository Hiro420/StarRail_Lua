local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TimerItemBase"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.is_infine_loop = false
  A0_2._interval = 1
  A0_2._total_time = 1
  A0_2._cur_run_time = 0
  A0_2._cur_call_time = 0
  A0_2._interval_left_time = 0
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.EventDispatchFunctionObject
  L1_2 = L1_2(L2_2)
  A0_2._timer_dispatch = L1_2
  A0_2._is_dispose = false
  A0_2._is_continuous = false
  A0_2._is_pause = false
  A0_2.is_destroyed = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    return
  end
  L1_2 = A0_2._timer_dispatch
  if L1_2 ~= nil then
    L1_2 = A0_2._timer_dispatch
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._timer_dispatch = nil
  end
  A0_2.is_destroyed = true
end
L0_1.dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._timer_dispatch
  L5_2 = L4_2
  L4_2 = L4_2.SetFuncObject
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.add_timer_handle = L1_1
function L1_1(A0_2, A1_2)
  A0_2._interval = A1_2
end
L0_1.set_interval = L1_1
function L1_1(A0_2, A1_2)
  A0_2._total_time = A1_2
end
L0_1.set_total_time = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_run_time
  return L1_2
end
L0_1.get_run_time = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_call_time
  return L1_2
end
L0_1.get_call_time = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._total_time
  L2_2 = A0_2._cur_run_time
  L1_2 = L1_2 - L2_2
  return L1_2
end
L0_1.get_left_run_time = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  L2_2 = A0_2._total_time
  L3_2 = A0_2._cur_run_time
  L1_2 = L2_2 - L3_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  return L1_2
end
L0_1.get_left_run_time_int_value = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._total_time
  L2_2 = A0_2._cur_call_time
  L1_2 = L1_2 - L2_2
  return L1_2
end
L0_1.get_left_call_time = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_pre_call_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_dispose
  if not L2_2 then
    L2_2 = A0_2._is_pause
    if not L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._cur_run_time
  L2_2 = L2_2 + A1_2
  A0_2._cur_run_time = L2_2
  L2_2 = A0_2._cur_run_time
  L3_2 = A0_2._total_time
  if L2_2 > L3_2 then
    L2_2 = A0_2._total_time
    A0_2._cur_run_time = L2_2
  end
  L2_2 = A0_2._interval_left_time
  L2_2 = L2_2 + A1_2
  A0_2._interval_left_time = L2_2
  L2_2 = A0_2.is_infine_loop
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._check_and_dispatch
    L2_2(L3_2)
  else
    L2_2 = A0_2._cur_run_time
    L3_2 = A0_2._total_time
    if L2_2 >= L3_2 then
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
  L1_2 = A0_2._is_continuous
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._continue_dispose_and_dispatch
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._discontinue_dispose_and_dispatch
    L1_2(L2_2)
  end
end
L0_1._dispose_and_dispatch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_dispose = true
  while true do
    L1_2 = A0_2._interval_left_time
    L2_2 = A0_2._interval
    if not (L1_2 >= L2_2) then
      break
    end
    L1_2 = A0_2._cur_call_time
    L2_2 = A0_2._total_time
    if not (L1_2 < L2_2) then
      break
    end
    L1_2 = A0_2._cur_call_time
    L2_2 = A0_2._interval
    L1_2 = L1_2 + L2_2
    A0_2._cur_call_time = L1_2
    L1_2 = A0_2._interval_left_time
    L2_2 = A0_2._interval
    L1_2 = L1_2 - L2_2
    A0_2._interval_left_time = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._on_pre_call_back
    L1_2(L2_2)
    L1_2 = A0_2._timer_dispatch
    L2_2 = L1_2
    L1_2 = L1_2.IsValid
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._timer_dispatch
      L2_2 = L1_2
      L1_2 = L1_2.Call
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._continue_dispose_and_dispatch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_dispose = true
  L1_2 = A0_2._total_time
  A0_2._cur_call_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_pre_call_back
  L1_2(L2_2)
  L1_2 = A0_2._timer_dispatch
  L2_2 = L1_2
  L1_2 = L1_2.IsValid
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._timer_dispatch
    L2_2 = L1_2
    L1_2 = L1_2.Call
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._discontinue_dispose_and_dispatch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_continuous
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._continue_check_and_dispatch
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._discontinue_check_and_dispatch
    L1_2(L2_2)
  end
end
L0_1._check_and_dispatch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  while true do
    L1_2 = A0_2._interval_left_time
    L2_2 = A0_2._interval
    if not (L1_2 >= L2_2) then
      break
    end
    L1_2 = A0_2._cur_call_time
    L2_2 = A0_2._interval
    L1_2 = L1_2 + L2_2
    A0_2._cur_call_time = L1_2
    L1_2 = A0_2._interval_left_time
    L2_2 = A0_2._interval
    L1_2 = L1_2 - L2_2
    A0_2._interval_left_time = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._on_pre_call_back
    L1_2(L2_2)
    L1_2 = A0_2._timer_dispatch
    L2_2 = L1_2
    L1_2 = L1_2.IsValid
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._timer_dispatch
      L2_2 = L1_2
      L1_2 = L1_2.Call
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._continue_check_and_dispatch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._interval_left_time
  L2_2 = A0_2._interval
  if L1_2 >= L2_2 then
    L1_2 = A0_2._cur_call_time
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2._interval_left_time
    L4_2 = A0_2._interval
    L3_2 = L3_2 / L4_2
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._interval
    L2_2 = L2_2 * L3_2
    L1_2 = L1_2 + L2_2
    A0_2._cur_call_time = L1_2
    L1_2 = A0_2._interval_left_time
    L2_2 = A0_2._interval
    L1_2 = L1_2 % L2_2
    A0_2._interval_left_time = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._on_pre_call_back
    L1_2(L2_2)
    L1_2 = A0_2._timer_dispatch
    L2_2 = L1_2
    L1_2 = L1_2.IsValid
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._timer_dispatch
      L2_2 = L1_2
      L1_2 = L1_2.Call
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._discontinue_check_and_dispatch = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._cur_run_time = 0
  A0_2._cur_call_time = 0
  A0_2._interval_left_time = 0
  A0_2._is_dispose = false
end
L0_1.reset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.TimerMgr
  L1_2 = L1_2.Ins
  L2_2 = L1_2
  L1_2 = L1_2.add_timer
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.start = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.TimerMgr
  L1_2 = L1_2.Ins
  L2_2 = L1_2
  L1_2 = L1_2.remove_timer
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.stop = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_pause = true
end
L0_1.pause = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_pause = false
end
L0_1.resume = L1_1
return L0_1
