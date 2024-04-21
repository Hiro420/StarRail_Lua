local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.RogueEndlessUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityRogueEndlessFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_first = true
  A0_2._activity_data = nil
  L1_2 = {}
  A0_2._area_ids = L1_2
  L1_2 = {}
  A0_2._new_area_ids = L1_2
  L1_2 = {}
  A0_2._reward_area_ids = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "RogueEndlessTimeLimitedReward"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._refresh_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._refresh_new
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessAreaSynced
  L4_2 = A0_2._refresh_new
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessRefreshRedDotNew
  L4_2 = A0_2._refresh_new
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._refresh_new
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._refresh_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._refresh_new
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessAreaSynced
  L4_2 = A0_2._refresh_new
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessRefreshRedDotNew
  L4_2 = A0_2._refresh_new
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._refresh_new
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_init
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._is_first
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh_reward
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._refresh_new
      L2_2(L3_2)
      A0_2._is_first = false
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_reddot_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_reddot_score_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_reddot_new
  L2_2(L3_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  if L1_2 ~= nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueEndlessActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = {}
  A0_2._area_ids = L1_2
  L1_2 = A0_2._activity_data
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._activity_data
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueAreaIDs
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._area_ids = L1_2
  L1_2 = true
  return L1_2
end
L0_1._safe_init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._reward_area_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "RogueEndlessAreaReward"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._update_reddot_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L2_2 = 0
  L3_2 = L1_2.AvailablePointRewardLevelList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2.AvailablePointRewardLevelList
    L6_2 = L6_2[L5_2]
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "RogueEndlessScoreReward"
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = L1_2.HasAvailableOverBonusReward
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "RogueEndlessScoreReward"
    L5_2 = -1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._update_reddot_score_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._new_area_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "RogueEndlessAreaNew"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._update_reddot_new = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_init
  L1_2(L2_2)
  L1_2 = {}
  A0_2._reward_area_ids = L1_2
  L1_2 = pairs
  L2_2 = A0_2._area_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.RogueEndlessUtils
    L6_2 = L6_2.IsAreaAvailableReward
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._reward_area_ids
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_init
  L1_2(L2_2)
  L1_2 = {}
  A0_2._new_area_ids = L1_2
  L1_2 = pairs
  L2_2 = A0_2._area_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.RogueEndlessUtils
    L6_2 = L6_2.IsAreaSeen
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_ModuleManager
      L6_2 = L6_2.RogueModule
      L7_2 = L6_2
      L6_2 = L6_2.RogueEndlessGetAreaData
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L6_2.IsUnlocked
      if L7_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._new_area_ids
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1._refresh_new = L1_1
return L0_1
