local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "HeliobusChallengeUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = {}
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetChallengeData
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetChallengeLineupData
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MazeBuffExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L4_2.ChallengeData
  L7_2 = L7_2.HeliobusMazeBuff
  L8_2 = 1
  L6_2 = L6_2(L7_2, L8_2)
  L3_2.ChallengeGroupID = A0_2
  L3_2.ChallengeStageID = A2_2
  L3_2.IsRaidChallenge = false
  L7_2 = L5_2.SkillId
  L3_2.SelectSkillID = L7_2
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.create_lua_table_from_cs_array
  L8_2 = L4_2.ChallengeData
  L8_2 = L8_2.HeliobusSkillRecList
  L7_2 = L7_2(L8_2)
  L3_2.RecommendSkillList = L7_2
  L7_2 = L4_2.ChallengeData
  L7_2 = L7_2.ChallengeName
  L3_2.ChallengeName = L7_2
  L7_2 = L6_2.BuffDesc
  L3_2.BuffDesc = L7_2
  L7_2 = L6_2.ParamList
  L3_2.DescParam = L7_2
  L3_2.Level = A1_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AdventureStatic
  L7_2 = L7_2.GetStageIDByEventID
  L8_2 = L4_2.ChallengeData
  L8_2 = L8_2.EventID
  L7_2 = L7_2(L8_2)
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.StageExcelTable
  L8_2 = L8_2.GetData
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2.Level
  L3_2.RecommendLevel = L9_2
  L9_2 = L8_2.Level
  L3_2.MonsterLevel = L9_2
  L9_2 = G
  L9_2 = L9_2.Utils
  L9_2 = L9_2.create_lua_table_from_cs_array
  L10_2 = L4_2.ChallengeData
  L10_2 = L10_2.MonsterList
  L9_2 = L9_2(L10_2)
  L3_2.MonsterList = L9_2
  L9_2 = {}
  L3_2.ChallengeTargetList = L9_2
  L9_2 = G
  L9_2 = L9_2.Utils
  L9_2 = L9_2.create_lua_table_from_cs_list
  L10_2 = L4_2.ChallengeTargets
  L9_2 = L9_2(L10_2)
  L10_2 = pairs
  L11_2 = L9_2
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = {}
    L16_2 = L14_2.TargetID
    L15_2.TargetID = L16_2
    L16_2 = L14_2.IsTargetFinished
    L15_2.IsTargetFinished = L16_2
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = L3_2.ChallengeTargetList
    L18_2 = L15_2
    L16_2(L17_2, L18_2)
  end
  L10_2 = G
  L10_2 = L10_2.Utils
  L10_2 = L10_2.create_lua_table_from_cs_list
  L11_2 = L1_1
  L12_2 = L11_2
  L11_2 = L11_2.GetChallengeCacheTeam
  L13_2 = A0_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2, L13_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2.SelectedAvatars = L10_2
  return L3_2
end
L0_1.get_heliobus_challenge_detail_data_from_stage = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.Row
  L3_2 = {}
  L4_2 = L2_2.RaidID
  L3_2.RaidID = L4_2
  L3_2.IsRaidChallenge = true
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetRaidChallengeSelectedSkill
  L6_2 = L2_2.RaidID
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.SelectSkillID = L4_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_array
  L5_2 = A1_2.HeliobusSkillRecList
  L4_2 = L4_2(L5_2)
  L3_2.RecommendSkillList = L4_2
  L4_2 = L2_2.RaidName
  L3_2.ChallengeName = L4_2
  L4_2 = L2_2.BuffDesc
  L3_2.BuffDesc = L4_2
  L4_2 = L2_2.BuffParamList
  L3_2.DescParam = L4_2
  L4_2 = L2_2.Level
  L3_2.RecommendLevel = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AdventureStatic
  L4_2 = L4_2.GetStageIDByEventID
  L5_2 = L2_2.DisplayEventID
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.StageExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.Level
  L3_2.MonsterLevel = L6_2
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_array
  L7_2 = L2_2.MonsterList
  L6_2 = L6_2(L7_2)
  L3_2.MonsterList = L6_2
  L6_2 = {}
  L3_2.ChallengeTargetList = L6_2
  L6_2 = A0_2.TargetStatus
  L8_2 = L6_2
  L7_2 = L6_2.GetEnumerator
  L7_2 = L7_2(L8_2)
  while true do
    L9_2 = L7_2
    L8_2 = L7_2.MoveNext
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      break
    end
    L8_2 = {}
    L9_2 = L7_2.Current
    L9_2 = L9_2.Key
    L8_2.TargetID = L9_2
    L9_2 = L7_2.Current
    L9_2 = L9_2.Value
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.TreasureChallengeTargetStatus
    L10_2 = L10_2.Finished
    L10_2 = L9_2 == L10_2
    L8_2.IsTargetFinished = L10_2
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2.ChallengeTargetList
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
  end
  L8_2 = G
  L8_2 = L8_2.Utils
  L8_2 = L8_2.create_lua_table_from_cs_list
  L9_2 = L1_1
  L10_2 = L9_2
  L9_2 = L9_2.GetRaidChallengeSelectedAvatars
  L11_2 = L2_2.RaidID
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L3_2.SelectedAvatars = L8_2
  return L3_2
end
L0_1.get_heliobus_challenge_detail_data_from_raid = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.ChallengeTargets
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.ChallengeTargets
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.IsTargetFinished
    L8_2 = A1_2.ChallengeTargets
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.IsTargetFinished
    L9_2 = L0_1._generate_one_heliobus_challenge_target_config
    L10_2 = A0_2.ChallengeTargets
    L10_2 = L10_2[L6_2]
    L10_2 = L10_2.TargetData
    L11_2 = L7_2
    L12_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  return L2_2
end
L0_1.generate_heliobus_challenge_targets_config = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = {}
  L4_2 = A0_2.TargetName
  L3_2.TextID = L4_2
  L4_2 = A0_2.TargetParam
  L3_2.DescParam1 = L4_2
  L3_2.ShouldShowReward = false
  L4_2 = not A1_2 and L4_2
  L3_2.ShouldShowEffect = L4_2
  L3_2.ShouldShowProgress = false
  if A2_2 == true then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TreasureChallengeTargetStatus
    L4_2 = L4_2.Finished
    L3_2.Status = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TreasureChallengeTargetStatus
    L4_2 = L4_2.Doing
    L3_2.Status = L4_2
  end
  return L3_2
end
L0_1._generate_one_heliobus_challenge_target_config = L2_1
return L0_1
