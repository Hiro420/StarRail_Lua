local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousQuestRedDotFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "RogueNous_DifficultyLevel_UnlockQuestID"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil
  A0_2._is_spe_tab_unlock = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_quest_data
  L2_2(L3_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L0_1._refresh_quest_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L0_1._refresh_quest_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "RogueNousQuestReward"
  return L1_2
end
L0_1.get_associate_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.is_reward_unlocked
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._mission_quest_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = ipairs
    L7_2 = L5_2.QuestDataList
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L10_2.Status
      L12_2 = CS
      L12_2 = L12_2.BLHLCHNAJKK
      L12_2 = L12_2.CDJHHIHBNMN
      if L11_2 == L12_2 then
        L11_2 = G
        L11_2 = L11_2.RedDotModule
        L11_2 = L11_2.Instance
        L12_2 = L11_2
        L11_2 = L11_2.update_reddot
        L13_2 = "RogueNousMissionReward"
        L14_2 = L5_2.ID
        L11_2(L12_2, L13_2, L14_2)
        break
      end
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._tail_quest_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = ipairs
    L7_2 = L5_2.QuestDataList
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L10_2.Status
      L12_2 = CS
      L12_2 = L12_2.BLHLCHNAJKK
      L12_2 = L12_2.CDJHHIHBNMN
      if L11_2 == L12_2 then
        L11_2 = G
        L11_2 = L11_2.RedDotModule
        L11_2 = L11_2.Instance
        L12_2 = L11_2
        L11_2 = L11_2.update_reddot
        L13_2 = "RogueNousEndGameReward"
        L14_2 = L5_2.ID
        L11_2(L12_2, L13_2, L14_2)
        break
      end
    end
  end
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._mission_quest_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueNousMissionRewardExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = {}
    L3_2 = L1_2.Current
    L4_2 = L3_2.MissionRewardID
    L2_2.ID = L4_2
    L4_2 = {}
    L2_2.QuestDataList = L4_2
    L4_2 = 0
    L5_2 = L3_2.QuestList
    L5_2 = L5_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2.QuestDataList
      L10_2 = L2_1
      L11_2 = L10_2
      L10_2 = L10_2.TryGetQuestData
      L12_2 = L3_2.QuestList
      L12_2 = L12_2[L7_2]
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    end
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._mission_quest_data
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
  L2_2 = {}
  A0_2._tail_quest_data = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueNousEndGameRewardExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = {}
    L4_2 = L2_2.Current
    L5_2 = A0_2._is_spe_tab_unlock
    if not L5_2 then
      L5_2 = L4_2.EndGameRewardID
      if L5_2 == 2 then
        break
      end
    end
    L5_2 = L4_2.EndGameRewardID
    L3_2.ID = L5_2
    L5_2 = {}
    L3_2.QuestDataList = L5_2
    L5_2 = 0
    L6_2 = L4_2.QuestList
    L6_2 = L6_2.Length
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2.QuestDataList
      L11_2 = L2_1
      L12_2 = L11_2
      L11_2 = L11_2.TryGetQuestData
      L13_2 = L4_2.QuestList
      L13_2 = L13_2[L8_2]
      L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._tail_quest_data
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._get_quest_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_quest_data
  L1_2(L2_2)
end
L0_1._refresh_quest_data = L3_1
return L0_1
