local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FightActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.FightActivityUtils
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "FightActivityFilter"
L4_1 = G
L4_1 = L4_1.BaseFilter
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._updated_group_id = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._updated_group_id = nil
end
L2_1.dtor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "FightActivity"
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
  L3_2 = L3_2.FightActivityDataUpdated
  L4_2 = A0_2.refresh
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
  L3_2 = L3_2.FightActivityDataUpdated
  L4_2 = A0_2.refresh
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.unregister_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_group_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_extra_reward_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mission_red_dot
  L1_2(L2_2)
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = L0_1.RewardRedDotGroups
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.GroupId
    L8_2 = G
    L8_2 = L8_2.RedDotModule
    L8_2 = L8_2.Instance
    L9_2 = L8_2
    L8_2 = L8_2.update_reddot
    L10_2 = "FightActivityReward"
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = G
    L8_2 = L8_2.RedDotModule
    L8_2 = L8_2.Instance
    L9_2 = L8_2
    L8_2 = L8_2.update_reddot
    L10_2 = "FightActivityMission"
    L11_2 = 0
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = 1
    L9_2 = 3
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L6_2.TakenDifficultyLevelRewardList
      L13_2 = L12_2
      L12_2 = L12_2.Contains
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      if not L12_2 then
        L12_2 = G
        L12_2 = L12_2.RedDotModule
        L12_2 = L12_2.Instance
        L13_2 = L12_2
        L12_2 = L12_2.update_reddot
        L14_2 = "FightActivityGetRewardBtn"
        L15_2 = L1_1.GetUniqueReddotIDByGroupID
        L16_2 = L7_2
        L17_2 = L11_2
        L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2)
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
    L8_2 = L1_1.GetEndlessRewardWaves
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = 1
    L10_2 = L8_2.Length
    L10_2 = L10_2 - 1
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L1_1.HasEndlessAvailExtraReward
      L14_2 = L7_2
      L15_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2)
      if L13_2 then
        L13_2 = G
        L13_2 = L13_2.RedDotModule
        L13_2 = L13_2.Instance
        L14_2 = L13_2
        L13_2 = L13_2.update_reddot
        L15_2 = "FightActivityGetRewardBtn"
        L16_2 = L1_1.GetUniqueReddotIDByGroupID
        L17_2 = L7_2
        L18_2 = 3
        L19_2 = L8_2[L12_2]
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
  end
  L2_2 = L1_2.Count
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "FightActivityMission"
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1._refresh_reward_red_dot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FightActivityUtils
  L1_2 = L1_2.GetNewReddotGroups
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "FightActivityGroupNew"
    L10_2 = L6_2.GroupId
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._updated_group_id
    L7_2 = L7_2[L6_2]
    if L7_2 == nil then
      L7_2 = A0_2._updated_group_id
      L7_2[L6_2] = true
      L7_2 = G
      L7_2 = L7_2.NotifyManager
      L7_2 = L7_2.notify
      L8_2 = G
      L8_2 = L8_2.CS
      L8_2 = L8_2.NotifyType
      L8_2 = L8_2.ActivityUpdated
      L7_2(L8_2)
    end
  end
  L2_2 = L1_2.Count
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "FightActivityMission"
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1._refresh_new_group_red_dot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FightActivityUtils
  L1_2 = L1_2.IsExtraRewardAvail
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "FightActivityRewardExtra"
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "FightActivityMission"
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
end
L2_1._refresh_extra_reward_red_dot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FightActivityUtils
  L1_2 = L1_2.IsMessageSubmissionFinish
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "FightActivityMission"
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
end
L2_1._refresh_mission_red_dot = L3_1
return L2_1
