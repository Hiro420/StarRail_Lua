local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RaidCollectionQuestFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  A0_2._tab_quest_ids = nil
  L1_2 = {}
  A0_2._reddot_tab_keys = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "RaidCollectionRewardTab"
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_quest
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_quest
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._tab_quest_ids
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_quest
    L1_2(L2_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._reddot_tab_keys
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "RaidCollectionRewardTab"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._tab_quest_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityRaidCollectionQuestExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L2_2.QuestTabID
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = L2_2.QuestList
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._tab_quest_ids
    L5_2[L3_2] = L4_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.Dispose
  L2_2(L3_2)
end
L1_1._init_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._reddot_tab_keys = L1_2
  L1_2 = A0_2._tab_quest_ids
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._tab_quest_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.HasQuestInStatus
    L8_2 = L5_2
    L9_2 = CS
    L9_2 = L9_2.BLHLCHNAJKK
    L9_2 = L9_2.CDJHHIHBNMN
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._reddot_tab_keys
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    end
  end
end
L1_1._refresh_quest = L2_1
return L1_1
