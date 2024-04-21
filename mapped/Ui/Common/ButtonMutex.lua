local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ButtonMutex"
L0_1 = L0_1(L1_1)
L1_1 = 0.1
L2_1 = 0
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._unlock_time
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = A0_2._unlock_time
  if L1_2 < L2_2 then
    L1_2 = true
    return L1_2
  end
  A0_2._unlock_time = nil
  L1_2 = false
  return L1_2
end
L0_1.GetMutex = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = L2_1
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Time
  L3_2 = L3_2.time
  L3_2 = L3_2 + L2_2
  A0_2._unlock_time = L3_2
end
L0_1.SetMutex = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._unlock_time = nil
end
L0_1.ReleaseMutex = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A0_2
  L3_2 = A0_2.GetMutex
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  if A1_2 then
    L3_2 = A1_2
    L3_2()
  end
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = L1_1
  end
  L2_1 = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.SetMutex
  L3_2(L4_2)
  L3_2 = true
  return L3_2
end
L0_1.Check = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._unlock_time = nil
end
L0_1.Dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A2_2 or nil
  if not A2_2 then
    L3_2 = 0.3
  end
  if A0_2 == nil then
    L4_2 = A1_2
    L4_2()
  else
    L5_2 = A0_2
    L4_2 = A0_2.Check
    L6_2 = A1_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.click_mutex = L3_1
return L0_1
