local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
L1_1._NAME_FORMAT = "{0}_{1}"
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._challenge_data_dict = L1_2
  A0_2._native_filter = nil
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._challenge_data_dict = nil
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._native_filter = nil
  end
end
L1_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "ChallengeMazeAll"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2._challenge_data_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = L5_2
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_native_filter
    L1_2(L2_2)
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.RedDotRewardGroupIDs
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "ChallengeMazeReward"
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.RedDotNewScheduleGroupIDs
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = G
    L8_2 = L8_2.RedDotModule
    L8_2 = L8_2.Instance
    L9_2 = L8_2
    L8_2 = L8_2.update_reddot
    L10_2 = "ChallengeMazeNewSchedule"
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeDataUpdated
  L4_2 = L1_1._update_reddot_one_challenge
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
  L3_2 = L3_2.ChallengeDataUpdated
  L4_2 = L1_1._update_reddot_one_challenge
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1.generate_key
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._is_challenge_reddot
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2._challenge_data_dict
    L4_2 = L1_1.generate_group_key
    L5_2 = A1_2.ChallengeGroupDataRef
    L5_2 = L5_2.ID
    L4_2 = L4_2(L5_2)
    L3_2[L2_2] = L4_2
  else
    L3_2 = A0_2._challenge_data_dict
    L3_2[L2_2] = nil
  end
end
L1_1._update_reddot_one_challenge = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = A1_2.IsFinish
    if L2_2 then
      L3_2 = A1_2
      L2_2 = A1_2.HasRewardNotTaken
      L2_2 = L2_2(L3_2)
    end
  end
  return L2_2
end
L1_1._is_challenge_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = "ChallengeGroup_"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L1_1.generate_group_key = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.ChallengeGroupDataRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.StrUtils
  L2_2 = L2_2.Format
  L3_2 = L1_1._NAME_FORMAT
  L4_2 = L1_2.ID
  L5_2 = A0_2.ID
  return L2_2(L3_2, L4_2, L5_2)
end
L1_1.generate_key = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChallengeFilter
  L1_2 = L1_2()
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L1_1._init_native_filter = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ChallengeModule
  L1_2 = L0_2
  L0_2 = L0_2.GetAvailableScheduleChallengeGroupDataList
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L2_2 = L0_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.HasStarRewardNotTaken
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L2_2 = L1_2
  L1_2 = L1_2.GetNoneScheduleChallengeGroupData
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.HasStarRewardNotTaken
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L1_1.is_group_reddot = L2_1
return L1_1
