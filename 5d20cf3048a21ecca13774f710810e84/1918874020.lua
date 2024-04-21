local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BattlePassFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  A0_2._native_filter = nil
  A0_2._has_reward_dot = false
  A0_2._has_quest_dot_pierced = false
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
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
  L1_2 = "BattlePass"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_reddot
  L1_2(L2_2)
  L1_2 = A0_2._has_reward_dot
  if not L1_2 then
    L1_2 = A0_2._has_quest_dot_pierced
    if not L1_2 then
      goto lbl_26
    end
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.update_reddot
  L3_2 = "BattlePass"
  L1_2(L2_2, L3_2)
  ::lbl_26::
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.AvailableRewardKeys
  L2_2 = L1_2.Count
  L2_2 = 0 < L2_2
  A0_2._has_reward_dot = L2_2
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
    L8_2 = "BattlePassRewardPoint"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2._has_reward_dot
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "BattlePassRewardTab"
    L2_2(L3_2, L4_2)
  end
end
L1_1._refresh_reward_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._has_quest_dot_pierced = false
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HasBattlePass
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L0_1.IsLevelMax
    if not L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.AvailableQuestIDs
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
    L8_2 = "BattlePassQuestAvailable"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.NewActivityQuestIDs
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "BattlePassQuestNew"
    L10_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2._native_filter
  L3_2 = L3_2.WeeklyQuestAvailableCount
  L3_2 = 0 < L3_2
  L4_2 = A0_2._native_filter
  L4_2 = L4_2.ActivityQuestAvailableCount
  L4_2 = 0 < L4_2
  if L3_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.BPQuestType
    L5_2 = L5_2.Weekly
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "BattlePassQuestType"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  if L4_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.BPQuestType
    L5_2 = L5_2.Activity
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "BattlePassQuestType"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L5_2 = L1_2.Count
  L5_2 = 0 < L5_2
  if L5_2 then
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "BattlePassQuestTab"
    L6_2(L7_2, L8_2)
  end
  L6_2 = L0_1.IsLevelMax
  if L6_2 then
    A0_2._has_quest_dot_pierced = false
  else
    L6_2 = L0_1.IsExpWeekMax
    if L6_2 then
      A0_2._has_quest_dot_pierced = L4_2
    else
      A0_2._has_quest_dot_pierced = L5_2
    end
  end
end
L1_1._refresh_quest_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattlePassFilter
  L1_2 = L1_2()
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L1_1._init_native_filter = L2_1
return L1_1
