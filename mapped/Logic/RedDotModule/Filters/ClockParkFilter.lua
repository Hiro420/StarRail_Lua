local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.Prefs
L1_1 = L1_1.User
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ClockParkFilter"
L4_1 = G
L4_1 = L4_1.BaseFilter
L5_1 = G
L2_1 = L2_1(L3_1, L4_1, L5_1)
function L3_1(A0_2)
  local L1_2
  A0_2._timelimit_reward_available = false
  A0_2._lightcone_reward_available = false
  A0_2._resident_reward_available = false
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "ClockPark"
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = L2_1.refresh
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = L2_1.refresh
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.unregister_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._activity_data
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ActivityModule
    L2_2 = L1_2
    L1_2 = L1_2.GetClockParkActivityData
    L1_2 = L1_2(L2_2)
    A0_2._activity_data = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._refersh_timelimit_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_resident_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_lightcone_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_go_to_every_day
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_script_new
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_endless_new
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_street_event_new
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_raid_new
  L1_2(L2_2)
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.IsAllActivityRewardTaken
  L2_2 = L0_1.LIMITED_REWARD_ID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetClockParkLimitRewardHasSeen
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.update_reddot
      L3_2 = "ClockParkTimeLimitRewardNew"
      L1_2(L2_2, L3_2)
    end
  end
end
L2_1._refersh_timelimit_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HasAvailableResidentReward
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ClockParkResidentReward"
    L1_2(L2_2, L3_2)
  end
end
L2_1._refresh_resident_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsLightConeRewardTaken
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetClockParkLightConeRewardHasSeen
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.update_reddot
      L3_2 = "ClockParkLightConeRewardNew"
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HasAvailableLightConeReward
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ClockParkLightConeReward"
    L1_2(L2_2, L3_2)
  end
end
L2_1._refresh_lightcone_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsShowDailyGotoRedDot
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ClockParkBtnGoToEveryDay"
    L1_2(L2_2, L3_2)
  end
end
L2_1._refresh_go_to_every_day = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllClockParkScriptData
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.CheckScriptUnlock
    L8_2 = L1_2[L5_2]
    L8_2 = L8_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "ClockParkScriptNew"
      L9_2 = L1_2[L5_2]
      L9_2 = L9_2.ID
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L2_1._refresh_script_new = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckEndlessScriptUnlock
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ClockParkEndlessModeNew"
    L1_2(L2_2, L3_2)
  end
end
L2_1._refresh_endless_new = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ClockParkSpecialMissionExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.CheckStreetEventUnlock
    L9_2 = L6_2.SpecialMissionUnlockItemID
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "ClockParkSpecialMissionNew"
      L10_2 = L6_2.SpecialMissionUnlockItemID
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L2_1._refresh_street_event_new = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ClockParkRaidExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.CheckRaidUnlock
    L9_2 = L6_2.RaidID
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "ClockParkRaidNew"
      L10_2 = L6_2.RaidID
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L2_1._refresh_raid_new = L3_1
return L2_1
