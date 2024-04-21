local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.SpaceZooModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "SpaceZooActivityFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "SpaceZooActivity"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_activity_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_point_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_special_cat
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_cat
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_go_to_every_day
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailActivityRewardTabIndex
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpaceZooQuestType
  L3_2 = L3_2.TimeLimitedReward
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._available_activity_reward_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._available_activity_reward_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "SpaceZooActivityRewardGet"
    L8_2 = A0_2._available_activity_reward_list
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailActivityRewardQuestIDList
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpaceZooQuestType
  L3_2 = L3_2.TimeLimitedFinalReward
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._available_activity_reward_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._available_activity_reward_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "SpaceZooActivityRewardGet"
    L8_2 = A0_2._available_activity_reward_list
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SpaceZooActivityRewardIsSeen
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "SpaceZooActivityRewardNew"
    L1_2(L2_2, L3_2)
  end
end
L1_1._refresh_activity_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailActivityRewardQuestIDList
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpaceZooQuestType
  L3_2 = L3_2.HandBookResidentReward
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._available_point_reward_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._available_point_reward_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "SpaceZooPointReward"
    L5_2(L6_2, L7_2)
  end
end
L1_1._refresh_point_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1.IsSpecialEventUnlock
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetNewSpecialCats
  L1_2 = L1_2(L2_2)
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
    L8_2 = "SpaceZooNewSpecialCat"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1._refresh_new_special_cat = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetNewCats
  L1_2 = L1_2(L2_2)
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
    L8_2 = "SpaceZooNewCat"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1._refresh_new_cat = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsSpaceZooGoToEveryDatActive
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "SpaceZooActivityGoToEveryDay"
    L1_2(L2_2, L3_2)
  end
end
L1_1._refresh_go_to_every_day = L2_1
return L1_1
