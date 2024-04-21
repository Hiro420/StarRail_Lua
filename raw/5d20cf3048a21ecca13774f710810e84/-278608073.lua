local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChatModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChatFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._unread_contact_ids = L1_2
  A0_2._has_inited = false
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "FriendChatContact"
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
  L3_2 = L3_2.ChatRefreshReddot
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
  L3_2 = L3_2.ChatRefreshReddot
  L4_2 = L1_1._update_data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1.EnableChat
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
  L1_2 = ipairs
  L2_2 = A0_2._unread_contact_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "FriendChatContact"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetUnreadContactIDs
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._unread_contact_ids = L1_2
end
L1_1._update_data = L2_1
return L1_1
