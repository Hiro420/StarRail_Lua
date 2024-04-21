local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeConst"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityStrongChallengeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_TimeManager
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.ActivityModule
L4_1 = L4_1.ActivityType
L4_1 = L4_1.StrongChallengeActivity
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ActivityStrongChallengeFilter"
L7_1 = G
L7_1 = L7_1.BaseFilter
L8_1 = G
L5_1 = L5_1(L6_1, L7_1, L8_1)
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "[StrongChallenge] ActivityStrongChallengeFilter created!"
  L1_2(L2_2)
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2
end
L5_1.dtor = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = "ActivityStrongChallenge"
  return L1_2
end
L5_1.get_associate_reddot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L5_1._refresh_reward_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L5_1.register_events = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L5_1._refresh_reward_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L5_1.unregister_events = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_stage_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_reddot
  L1_2(L2_2)
end
L5_1.refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = L1_1.NormalStageIDs
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.NormalStageIDs
    L5_2 = L5_2[L4_2]
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.IsStageShowRedDot
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "ActivityStrongChallengeNormalStage"
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L1_2 = 0
  L2_2 = L1_1.HardStageIDs
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.HardStageIDs
    L5_2 = L5_2[L4_2]
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.IsStageShowRedDot
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "ActivityStrongChallengeHardStage"
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L5_1._refresh_stage_red_dot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = L1_1.FinishedQuestIDs
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "ActivityStrongChallengeRewardTab"
    L8_2 = L1_1.FinishedQuestIDs
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.StrongChallengeRewardSeen
  if not L1_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "ActivityStrongChallengeRewardNew"
    L2_2(L3_2, L4_2)
  end
end
L5_1._refresh_reward_red_dot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ActivityGoToTimeStamp
  L3_2 = L1_2
  L2_2 = L1_2.ContainsKey
  L4_2 = L4_1
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.Add
    L4_2 = L4_1
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L4_1
  L2_2 = L1_2[L2_2]
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.TimeStampCrossDailyUpdate
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = 0
    L5_2 = L1_1.AllStageIDs
    L5_2 = L5_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L1_1.AllStageIDs
      L8_2 = L8_2[L7_2]
      L9_2 = L1_1.AllStages
      L9_2 = L9_2[L8_2]
      L9_2 = L9_2.IsLocked
      L10_2 = L1_1.AllStages
      L10_2 = L10_2[L8_2]
      L10_2 = L10_2.IsCleared
      if not L9_2 and not L10_2 then
        L11_2 = G
        L11_2 = L11_2.RedDotModule
        L11_2 = L11_2.Instance
        L12_2 = L11_2
        L11_2 = L11_2.update_reddot
        L13_2 = "ActivityStrongChallengeEveryDay"
        L11_2(L12_2, L13_2)
        return
      end
    end
  end
end
L5_1._refresh_every_day_reddot = L6_1
return L5_1
