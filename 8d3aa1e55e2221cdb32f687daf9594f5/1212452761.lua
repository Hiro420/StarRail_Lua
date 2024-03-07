local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousStoryRedDotFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L1_1 = L1_1.ChessRogueDimensionData
L1_1 = L1_1.NousStoryInfo
function L2_1(A0_2)
  local L1_2
  A0_2._level_filter = nil
  A0_2._series_filter = nil
  L1_2 = {}
  A0_2._unlock_reward_quest_data = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "RogueNousStoryReward"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
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
L0_1.register_events = L2_1
function L2_1(A0_2)
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
L0_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.is_story_unlocked
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_sub_story_new
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_sub_story_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_main_story_new
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_main_story_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_unlock_story_reward
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1.SubMissionList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.QuestStatus
    L8_2 = CS
    L8_2 = L8_2.BLHLCHNAJKK
    L8_2 = L8_2.CDJHHIHBNMN
    if L7_2 == L8_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "RogueNousSubStoryReward"
      L10_2 = L6_2.SubStoryID
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._update_sub_story_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1.SubMissionList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.IsNew
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "RogueNousSubStoryNew"
      L10_2 = L6_2.SubStoryID
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._update_sub_story_new = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1.MainMissionList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.QuestStatus
    L8_2 = CS
    L8_2 = L8_2.BLHLCHNAJKK
    L8_2 = L8_2.CDJHHIHBNMN
    if L7_2 == L8_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "RogueNousMainStoryReward"
      L10_2 = L6_2.MainStoryID
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._update_main_story_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1.MainMissionList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.IsNew
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "RogueNousMainStoryNew"
      L10_2 = L6_2.MainStoryID
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._update_main_story_new = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._unlock_reward_quest_data
  if L1_2 ~= nil then
    L1_2 = A0_2._unlock_reward_quest_data
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_unlock_reward_quest_data
  L1_2(L2_2)
  ::lbl_10::
  L1_2 = ipairs
  L2_2 = A0_2._unlock_reward_quest_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Status
    L7_2 = CS
    L7_2 = L7_2.BLHLCHNAJKK
    L7_2 = L7_2.CDJHHIHBNMN
    if L6_2 == L7_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "RogueNousStoryUnlockReward"
      L9_2 = L5_2.ID
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1._update_unlock_story_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_story_reward_data
  L1_2 = L1_2()
  L2_2 = L1_2.NormalQuestData
  A0_2._unlock_reward_quest_data = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._unlock_reward_quest_data
  L4_2 = L1_2.FinalQuestData
  L2_2(L3_2, L4_2)
end
L0_1._get_unlock_reward_quest_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_unlock_reward_quest_data
  L1_2(L2_2)
end
L0_1._refresh_quest_data = L2_1
return L0_1
