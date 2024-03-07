local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = "CommunityActivity"
L1_1 = 10
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommunityActivityFilter"
L4_1 = G
L4_1 = L4_1.BaseFilter
L5_1 = G
L2_1 = L2_1(L3_1, L4_1, L5_1)
function L3_1(A0_2)
  local L1_2
  L1_2 = L1_1
  A0_2._count_to_refresh = L1_2
  A0_2._has_new = nil
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = L0_1
  return L1_2
end
L2_1.get_associate_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshCommunityActivity
  L4_2 = L2_1._update_data
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.register_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshCommunityActivity
  L4_2 = L2_1._update_data
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.unregister_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.OperationModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.in_community_activity_schedule
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._has_new
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.OperationModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.has_new_community_activity
    L1_2 = L1_2(L2_2)
    A0_2._has_new = L1_2
  else
    L1_2 = A0_2._count_to_refresh
    if 0 < L1_2 then
      L1_2 = A0_2._count_to_refresh
      L1_2 = L1_2 - 1
      A0_2._count_to_refresh = L1_2
    else
      L1_2 = G
      L1_2 = L1_2.OperationModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.has_new_community_activity
      L1_2 = L1_2(L2_2)
      A0_2._has_new = L1_2
      L1_2 = L1_1
      A0_2._count_to_refresh = L1_2
    end
  end
  L1_2 = A0_2._has_new
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.OperationModule
    L1_2 = L1_2.ActivityHasRedDot
    if not L1_2 then
      goto lbl_53
    end
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.update_reddot
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  ::lbl_53::
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.OperationModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.has_new_community_activity
  L1_2 = L1_2(L2_2)
  A0_2._has_new = L1_2
  A0_2._count_to_refresh = 0
end
L2_1._update_data = L3_1
return L2_1
