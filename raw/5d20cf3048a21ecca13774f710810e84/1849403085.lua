local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BoxingClubModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityBoxingClubFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
L2_1 = "BoxingClubActivity_FinialQuestID"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.QuestModule
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.init_treasure_quest_id
  L1_2(L2_2)
end
L1_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      L2_2 = L1_2.Value
      L2_2 = L2_2.UintValue
      A0_2.treasure_quest_id = L2_2
    end
  end
end
L1_1.init_treasure_quest_id = L4_1
function L4_1(A0_2)
  local L1_2
end
L1_1.dtor = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = "ActivityBoxingClubQuestEntrance"
  return L1_2
end
L1_1.get_associate_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.register_events = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_red_dot
  L1_2(L2_2)
end
L1_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRedDotQuestSeriesDic
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BoxingClubActivityType
  L3_2 = L3_2.First
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "ActivityBoxingClubQuestTab"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2.treasure_quest_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.update_reddot
    L5_2 = "ActivityBoxingClubQuestTab"
    L6_2 = A0_2.treasure_quest_id
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._refresh_quest_red_dot = L4_1
return L1_1
