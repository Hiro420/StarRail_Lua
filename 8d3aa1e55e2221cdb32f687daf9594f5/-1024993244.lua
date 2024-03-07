local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AetherDivideModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AetherDivideRewardFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  A0_2._should_refresh = true
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "AetherDivideReward"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ActivityAetherDivideModule
    L1_2 = L1_2.ActivityAetherDivideModuleRedDotFilter
    A0_2._native_filter = L1_2
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gyms
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.AetherDivideLevelRewardData
  L2_2 = L1_2.HasQuestRewardCanTake
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "AetherDivideQuestReward"
    L5_2 = nil
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._refresh_quest_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.NewGymIdList
  if L1_2 ~= nil then
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
      L9_2 = "AetherDivideGymNew"
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L1_1._refresh_gyms = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._challenge_rank_row_list
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = L0_1.ChallengeData
    L3_2 = L2_2
    L2_2 = L2_2.GetChallengeRankList
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    A0_2._challenge_rank_row_list = L1_2
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.NewChallengeRankIdList
  if L1_2 ~= nil then
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
      L9_2 = "AetherDivideChallengeRankNew"
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.AetherDivideLevelRewardData
  L2_2 = L2_2.CanTakeRewardRankIDList
  if L2_2 ~= nil then
    L3_2 = 0
    L4_2 = L2_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L8_2 = G
      L8_2 = L8_2.RedDotModule
      L8_2 = L8_2.Instance
      L9_2 = L8_2
      L8_2 = L8_2.update_reddot
      L10_2 = "AetherDivideChallengeReward"
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L1_1._refresh_challenge = L2_1
return L1_1
