local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseFilter"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.unregister_events = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.Normal
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._add_notify_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.remove_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.Normal
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._remove_notify_handler = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.add_packet_handler
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyGroup
  L5_2 = L5_2.Normal
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._add_packet_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.remove_packet_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.Normal
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._remove_packet_handler = L1_1
return L0_1
