local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Functor.FunctorCallFixParam"
L0_1(L1_1)
L0_1 = nil
L1_1 = {}
L0_1 = L1_1
L0_1.clsName = "MCoroutineState"
L1_1 = G
L2_1 = L0_1.clsName
L1_1[L2_1] = L0_1
L0_1.suspended = 0
L0_1.running = 1
L0_1.dead = 2
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MCoroutine"
L1_1 = L1_1(L2_1)
L0_1 = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._Functor = nil
  A0_2._Handle = 0
  A0_2._IsError = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.Run
    L0_3(L1_3)
  end
  L5_2 = G
  L5_2 = L5_2.new
  L6_2 = G
  L6_2 = L6_2.FunctorCallFixParam
  L5_2 = L5_2(L6_2)
  A0_2._Functor = L5_2
  L5_2 = A0_2._Functor
  L6_2 = L5_2
  L5_2 = L5_2.SetPThisAndHandle
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = coroutine
  L5_2 = L5_2.create
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  A0_2._Handle = L5_2
end
L0_1.CreateFixParam = L1_1
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.Run
    L0_3(L1_3)
  end
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.FunctorCallVarParam
  L4_2 = L4_2(L5_2)
  A0_2._Functor = L4_2
  L4_2 = A0_2._Functor
  L5_2 = L4_2
  L4_2 = L4_2.SetPThisAndHandle
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = ...
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = coroutine
  L4_2 = L4_2.create
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._Handle = L4_2
end
L0_1.CreateVarParam = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = coroutine
  L1_2 = L1_2.resume
  L2_2 = A0_2._Handle
  L3_2, L4_2, L5_2, L6_2 = ...
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L3_2 = not L1_2
  A0_2._IsError = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.Error
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L0_1.Resume = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2.CreateFixParam
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.Resume
  L4_2(L5_2)
end
L0_1.CreateAndResume = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = coroutine
  L1_2 = L1_2.status
  L2_2 = A0_2._Handle
  return L1_2(L2_2)
end
L0_1.Status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = coroutine
  L1_2 = L1_2.status
  L2_2 = A0_2._Handle
  L1_2 = L1_2(L2_2)
  if "suspended" == L1_2 then
    L2_2 = G
    L2_2 = L2_2.MCoroutineState
    L2_2 = L2_2.suspended
    return L2_2
  elseif "running" == L1_2 then
    L2_2 = G
    L2_2 = L2_2.MCoroutineState
    L2_2 = L2_2.running
    return L2_2
  elseif "dead" == L1_2 then
    L2_2 = G
    L2_2 = L2_2.MCoroutineState
    L2_2 = L2_2.dead
    return L2_2
  else
    L2_2 = G
    L2_2 = L2_2.MCoroutineState
    L2_2 = L2_2.dead
    return L2_2
  end
end
L0_1.GetStatus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = coroutine
  L1_2 = L1_2.status
  L2_2 = A0_2._Handle
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 == "suspended"
  return L2_2
end
L0_1.IsSuspended = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = coroutine
  L1_2 = L1_2.status
  L2_2 = A0_2._Handle
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 == "running"
  return L2_2
end
L0_1.IsRunning = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = coroutine
  L1_2 = L1_2.status
  L2_2 = A0_2._Handle
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 == "dead"
  return L2_2
end
L0_1.IsDead = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._IsError
  return L1_2
end
L0_1.HasError = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2
  L1_2 = coroutine
  L1_2 = L1_2.yield
  L2_2 = ...
  return L1_2(L2_2)
end
L0_1.Yield = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A1_2 then
    L3_2 = debug
    L3_2 = L3_2.traceback
    L3_2 = L3_2()
    L4_2 = debug
    L4_2 = L4_2.traceback
    L5_2 = A0_2._Handle
    L4_2 = L4_2(L5_2)
    L5_2 = error
    L6_2 = "handle_statck:\n"
    L7_2 = L4_2
    L8_2 = [[
.
 resume stack:
]]
    L9_2 = L3_2
    L10_2 = [[
.
 error:
]]
    L11_2 = A2_2
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L5_2(L6_2)
  end
end
L0_1.Error = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._Functor
  L2_2 = L1_2
  L1_2 = L1_2.Call
  L1_2(L2_2)
end
L0_1.Run = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = coroutine
  L1_2 = L1_2.running
  return L1_2()
end
L0_1.Running = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2
  L2_2 = A1_2.IsEmpty
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A1_2
    L2_2 = A1_2.AddEventHandle
    L4_2 = A0_2
    L5_2 = A0_2.OnWaitForEnd
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.Yield
    L4_2, L5_2 = ...
    return L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = true
    return L2_2
  end
end
L0_1.WaitFor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.Resume
  L1_2(L2_2)
end
L0_1.OnWaitForEnd = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._Functor
  if L1_2 ~= nil then
    L1_2 = A0_2._Functor
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
  A0_2._Handle = nil
end
L0_1.Dispose = L1_1
return L0_1
