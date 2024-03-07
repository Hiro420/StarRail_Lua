local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyButtonLocker"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._lock_tb = L1_2
  A0_2._is_all_locked = false
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  if not A1_2 then
    L2_2 = A0_2._is_all_locked
    return L2_2
  end
  L2_2 = A0_2._is_all_locked
  if not L2_2 then
    L2_2 = A0_2._lock_tb
    L2_2 = L2_2[A1_2]
  end
  return L2_2
end
L0_1.is_locked = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_all_locked = A1_2
end
L0_1.setup_all_locked = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._lock_tb
  L3_2[A1_2] = A2_2
end
L0_1.setup_single_lock = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._lock_tb = nil
end
L0_1.dispose = L1_1
return L0_1
