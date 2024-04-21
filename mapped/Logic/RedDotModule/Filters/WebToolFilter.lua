local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = "WebTool"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "WebToolFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  A0_2._has_inited = false
  A0_2._has_new = false
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshWebTool
  L4_2 = L1_1._update_data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.register_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshWebTool
  L4_2 = L1_1._update_data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.PGDHGAICOKG
  L3_2 = "web_tool_url"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._has_inited
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._update_data
    L1_2(L2_2)
    A0_2._has_inited = true
  end
  L1_2 = A0_2._has_new
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetWebToolSeen
  L1_2 = L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.OperationModule
  L1_2 = L1_2.WebToolHasRedDot
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.GachaModule
    L2_2 = L1_2
    L1_2 = L1_2.HasNewGotUpAvatars
    L1_2 = not L1_2 or L1_2
  end
  A0_2._has_new = L1_2
end
L1_1._update_data = L2_1
return L1_1
