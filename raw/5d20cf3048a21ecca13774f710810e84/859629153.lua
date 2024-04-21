local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BigMapFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "RegionalMapBtn"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._red_dot_world_id_list
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_red_dot_world_id_list
    L1_2(L2_2)
  end
  L1_2 = 0
  L2_2 = A0_2._red_dot_world_id_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "RegionalMapBtn"
    L8_2 = A0_2._red_dot_world_id_list
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UnlockMapEntranceIDChanged
  L4_2 = L0_1._refresh_red_dot_world_id_list
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UnlockMapEntranceIDChanged
  L4_2 = L0_1._refresh_red_dot_world_id_list
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.GetNewRedDotWorldIDList
  L1_2 = L1_2()
  A0_2._red_dot_world_id_list = L1_2
end
L0_1._refresh_red_dot_world_id_list = L1_1
return L0_1
