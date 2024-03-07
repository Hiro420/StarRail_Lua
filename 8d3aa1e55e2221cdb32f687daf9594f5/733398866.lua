local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectAeonFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
function L2_1(A0_2)
  local L1_2
  L1_2 = "RogueNewUnlockAeon"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._unseen_aeon_ids = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._unseen_aeon_ids = nil
end
L0_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueSelectableAeonRefresh
  L4_2 = L0_1._refresh_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueSeenSelectableAeons
  L4_2 = L0_1._refresh_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueSelectableAeonRefresh
  L4_2 = L0_1._refresh_data
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueSeenSelectableAeons
  L4_2 = L0_1._refresh_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._unseen_aeon_ids
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_data
    L1_2(L2_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._unseen_aeon_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "RogueNewUnlockAeon"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L4_2 = L1_2
  L3_2 = L1_2.GetSelectableAeonIDList
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.RogueSeenUnlockAeons
  L4_2 = {}
  A0_2._unseen_aeon_ids = L4_2
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L3_2
    L9_2 = L3_2.Contains
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._unseen_aeon_ids
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._refresh_data = L2_1
return L0_1
