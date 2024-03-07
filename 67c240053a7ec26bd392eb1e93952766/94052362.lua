local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseAreaPanel"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2.OwnerPanel = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.OwnerPanel = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2, A1_2)
  A0_2.OwnerPanel = A1_2
end
L0_1.SetOwnerPanel = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._remove_handlers = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.UI
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.add_notify_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.remove_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.UI
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.remove_notify_handler = L1_1
return L0_1
