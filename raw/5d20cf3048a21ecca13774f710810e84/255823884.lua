local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.TravelBrochureUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.QuestModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TravelBrochurePasterCollectFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._all_quest_ids = L1_2
  L1_2 = {}
  A0_2._reward_quest_ids = L1_2
  A0_2._has_inited = false
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "TravelBrochurePasterCollectReward"
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
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_refresh_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_refresh_reward
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
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_refresh_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_refresh_reward
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._has_inited
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_quest
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._update_reward_data
    L1_2(L2_2)
    A0_2._has_inited = true
  end
  L1_2 = G
  L1_2 = L1_2.TravelBrochureUtils
  L1_2 = L1_2.show_reddot
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._reward_quest_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "TravelBrochurePasterCollectReward"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "PasterAchievement_Quest_ID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = {}
  A0_2._all_quest_ids = L2_2
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UintValue
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._all_quest_ids
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L1_1._init_quest = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._reward_quest_ids = L1_2
  L1_2 = pairs
  L2_2 = A0_2._all_quest_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.IsQuestStatus
    L8_2 = L5_2
    L9_2 = CS
    L9_2 = L9_2.LEOGBBOPKKO
    L9_2 = L9_2.JKFPIINHGPD
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._reward_quest_ids
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L1_1._update_reward_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_reward_data
  L1_2(L2_2)
end
L1_1._on_refresh_reward = L2_1
return L1_1
