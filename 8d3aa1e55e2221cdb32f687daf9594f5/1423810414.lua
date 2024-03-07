local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_EntranceUnlock_SubMissionID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
function L3_1(A0_2)
  local L1_2
  A0_2._native_filter = nil
  A0_2._is_skill_unselected = true
  A0_2._new_skill_list = nil
  A0_2._challenge_group_list = nil
  A0_2._challenge_reward_tab_list = nil
  A0_2._is_teleport_unlock = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._native_filter = nil
  end
  A0_2._new_skill_list = nil
end
L0_1.dtor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "HeliobusActivity"
  return L1_2
end
L0_1.get_associate_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusUnselectSkill
  L4_2 = L0_1._refresh_select_skill
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishSubMission
  L4_2 = L0_1._on_submission_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_native_filter
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_teleport_unlock
    L1_2(L2_2)
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_every_day_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_time_limited_quest_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_time_limited_lightcone_reddot
  L1_2(L2_2)
  L1_2 = A0_2._is_teleport_unlock
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sns_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_reward_reddot
  L1_2(L2_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._challenge_group_list
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L1_2 = L1_2.IsChallengeDataDirty
    if not L1_2 then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_challenge_new_level
  L1_2(L2_2)
  ::lbl_10::
  L1_2 = ipairs
  L2_2 = A0_2._challenge_group_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "HeliobusChallengeGroupNew"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._challenge_raid_new_level_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "HeliobusChallengeRaidNew"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh_challenge_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._challenge_group_list = L1_2
  L1_2 = {}
  A0_2._challenge_raid_new_level_list = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._native_filter
  L3_2 = L2_2
  L2_2 = L2_2.GetNewUnlockChallengeGroups
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._challenge_group_list = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.HeliobusNewUnlockChallengeRaidLevel
  L1_2 = L1_2(L2_2)
  A0_2._challenge_raid_new_level_list = L1_2
  L1_2 = A0_2._native_filter
  L1_2.IsChallengeDataDirty = false
end
L0_1._get_challenge_new_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._challenge_unclaimed_reward_tab_list
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L1_2 = L1_2.IsChallengeRewardDataDirty
    if not L1_2 then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_challenge_unclaimed_reward_list
  L1_2(L2_2)
  ::lbl_10::
  L1_2 = ipairs
  L2_2 = A0_2._challenge_unclaimed_reward_tab_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "HeliobusChallengeReward"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh_challenge_reward_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.HeliobusChallengeUnclaimedReward
  L1_2 = L1_2(L2_2)
  A0_2._challenge_unclaimed_reward_tab_list = L1_2
  L1_2 = A0_2._native_filter
  L1_2.IsChallengeRewardDataDirty = false
end
L0_1._get_challenge_unclaimed_reward_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._new_skill_list
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L1_2 = L1_2.IsSkillDataDirty
    if not L1_2 then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_new_skill
  L1_2(L2_2)
  ::lbl_10::
  L1_2 = ipairs
  L2_2 = A0_2._new_skill_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "HeliobusSkillNew"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._is_skill_unselected
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "HeliobusSkillUnselect"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_skill_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.HeliobusNewUnlockSkill
  L1_2 = L1_2(L2_2)
  A0_2._new_skill_list = L1_2
  L1_2 = A0_2._native_filter
  L1_2.IsSkillDataDirty = false
end
L0_1._get_new_skill = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_skill_unselected = A1_2
end
L0_1._refresh_select_skill = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.SNSCanReplyMissionPostIDList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "HeliobusCanReplySNSMissionPost"
    L8_2 = A0_2._native_filter
    L8_2 = L8_2.SNSCanReplyMissionPostIDList
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = 0
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.SNSTabPostTypeList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "HeliobusSNSPostTabPostType"
    L8_2 = A0_2._native_filter
    L8_2 = L8_2.SNSTabPostTypeList
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.SNSCanTakeAnchorPostID
  if L1_2 ~= 0 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "HeliobusCanTakeSNSAnchorPost"
    L1_2(L2_2, L3_2)
  end
  L1_2 = 0
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.SNSNewPostIDList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "HeliobusSNSNewPost"
    L8_2 = A0_2._native_filter
    L8_2 = L8_2.SNSNewPostIDList
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.IncomeEntryRedDot
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "HeliobusIncomeEntryRedDot"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.IncomeUpgradeRedDot
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "HeliobusIncomeUpgradeRedDot"
    L1_2(L2_2, L3_2)
  end
  L1_2 = 0
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.SNSCanReplyCommentPostIDList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "HeliobusSNSCanReplyCommentPost"
    L8_2 = A0_2._native_filter
    L8_2 = L8_2.SNSCanReplyCommentPostIDList
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = 0
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.SNSTabCanReplyCommentPostTypeList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "HeliobusSNSCanReplyCommentPostType"
    L8_2 = A0_2._native_filter
    L8_2 = L8_2.SNSTabCanReplyCommentPostTypeList
    L8_2 = L8_2[L4_2]
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_sns_reddot = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L2_1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_teleport_unlock
    L2_2(L3_2)
  end
end
L0_1._on_submission_finish = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L3_2 = L1_2
  L2_2 = L1_2.GetSubMissionDataWithPromise
  L4_2 = L2_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaActionOneParam
  function L4_2(A0_3)
    local L1_3
    if A0_3 ~= nil then
      L1_3 = A0_3.IsFinish
      if L1_3 then
        A0_2._is_teleport_unlock = true
    end
    else
      A0_2._is_teleport_unlock = false
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._refresh_teleport_unlock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.IsActivityGoToEveryDayActive
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "HeliobusActivityGoToEveryDay"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_every_day_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._time_limited_quest_unclaimed_tab_list
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L1_2 = L1_2.IsTimeLimitedQuestDataDirty
    if not L1_2 then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_time_limited_unclaimed_quest_reward_list
  L1_2(L2_2)
  ::lbl_10::
  L1_2 = ipairs
  L2_2 = A0_2._time_limited_quest_unclaimed_tab_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "HeliobusQuestReward"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.IsHeliobusQuestRewardSeen
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "HeliobusQuestNew"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_time_limited_quest_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.HeliobusTimeLimitedUnclaimedQuestReward
  L1_2 = L1_2(L2_2)
  A0_2._time_limited_quest_unclaimed_tab_list = L1_2
  L1_2 = A0_2._native_filter
  L1_2.IsTimeLimitedQuestDataDirty = false
end
L0_1._get_time_limited_unclaimed_quest_reward_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._time_limited_lightcone_unclaimed_reward_list
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L1_2 = L1_2.IsTimeLimitedLightConeDataDirty
    if not L1_2 then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_time_limited_unclaimed_lightcone_reward_list
  L1_2(L2_2)
  ::lbl_10::
  L1_2 = ipairs
  L2_2 = A0_2._time_limited_lightcone_unclaimed_reward_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "HeliobusLightConeReward"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.IsHeliobusLightConeRewardSeen
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "HeliobusLightConeNew"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_time_limited_lightcone_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.HeliobusTimeLimitedUnclaimedLightConeReward
  L1_2 = L1_2(L2_2)
  A0_2._time_limited_lightcone_unclaimed_reward_list = L1_2
  L1_2 = A0_2._native_filter
  L1_2.IsTimeLimitedLightConeDataDirty = false
end
L0_1._get_time_limited_unclaimed_lightcone_reward_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.HeliobusModule
  L1_2 = L1_2.HeliobusRedDotFilter
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.HeliobusModule
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.HeliobusRedDotFilter
    L2_2 = L2_2()
    L1_2.HeliobusRedDotFilter = L2_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.HeliobusModule
    L1_2 = L1_2.HeliobusRedDotFilter
    A0_2._native_filter = L1_2
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Init
    L1_2(L2_2)
  end
end
L0_1._init_native_filter = L3_1
return L0_1
