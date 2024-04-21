local L0_1, L1_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "RaidUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._is_cs_array_empty
  L2_2 = A0_2.MonsterList
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L0_1._is_cs_array_empty
    L2_2 = A0_2.MonsterHideList
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L0_1._get_monsters_from_mapping_info
      L2_2 = A0_2.MappingInfoID
      L3_2 = A0_2.WorldLevel
      return L1_2(L2_2, L3_2)
    end
  end
  L1_2 = L0_1._get_monsters_data_from_raid_config
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.get_monsters_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.get_stage_row
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Level
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = nil
  ::lbl_11::
  return L3_2
end
L0_1.get_show_monster_level = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ScoringGroupExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.ScoringIDList
  return L2_2(L3_2)
end
L0_1.get_scoring_id_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.FarmUtils
  L1_2 = L1_2.is_stage_hard
  L2_2 = A0_2.StageID
  return L1_2(L2_2)
end
L0_1.is_show_combat_power_warning = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.DisplayEventID
  L2_2 = L2_2 ~= 0 and L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L3_2 = L3_2.GetStageIDByEventID
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StageExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  return L4_2(L5_2)
end
L0_1.get_stage_row = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.ShowMonsterList
  return L3_2
end
L0_1.get_monster_ids_by_mapping_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1.get_monsters_data
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2.ID
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1.get_all_monster_ids_by_raid = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.AutoObtainDamageType
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_array
    L2_2 = A0_2.DamageType
    return L1_2(L2_2)
  else
    L1_2 = L0_1.get_all_monster_ids_by_raid
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L0_1.auto_construct_recommend_attributes
    L3_2 = L1_2
    L4_2 = true
    return L2_2(L3_2, L4_2)
  end
end
L0_1.get_recommend_attribute = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = {}
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = false
  end
  L4_2 = 0
  L5_2 = 0
  if L3_2 then
    L4_2 = 1
    L5_2 = #A0_2
  else
    L4_2 = 0
    L6_2 = A0_2.Length
    L5_2 = L6_2 - 1
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ConstValueClientExcelTable
  L6_2 = L6_2.GetData
  L7_2 = "Team_RecommendWeakPoint_ParaByMonsterRank"
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.Value
  L6_2 = L6_2.ArrayValue
  L7_2 = {}
  L8_2 = 1
  L9_2 = 0
  L10_2 = L6_2.Length
  L10_2 = L10_2 - 1
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L6_2[L12_2]
    L13_2 = L13_2.UintValue
    L7_2[L8_2] = L13_2
    L8_2 = L8_2 + 1
  end
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.MonsterExcelTable
    L13_2 = L13_2.GetData
    L14_2 = A0_2[L12_2]
    L13_2 = L13_2(L14_2)
    if L13_2 ~= nil then
      L14_2 = L13_2.StanceWeakList
      if L14_2 ~= nil then
        L14_2 = CS
        L14_2 = L14_2.RPG
        L14_2 = L14_2.GameCore
        L14_2 = L14_2.MonsterTemplateExcelTable
        L14_2 = L14_2.GetData
        L15_2 = L13_2.MonsterTemplateID
        L14_2 = L14_2(L15_2)
        if L14_2 == nil then
          L15_2 = nil
          return L15_2
        end
        L15_2 = L14_2.Rank
        L16_2 = #L15_2
        L16_2 = L7_2[L16_2]
        L17_2 = 0
        L18_2 = L13_2.StanceWeakList
        L18_2 = L18_2.Length
        L18_2 = L18_2 - 1
        L19_2 = 1
        for L20_2 = L17_2, L18_2, L19_2 do
          L21_2 = L0_1._try_get_attribute
          L22_2 = L13_2.StanceWeakList
          L22_2 = L22_2[L20_2]
          L23_2 = L2_2
          L21_2 = L21_2(L22_2, L23_2)
          if L21_2 < 0 then
            L22_2 = {}
            L23_2 = L13_2.StanceWeakList
            L23_2 = L23_2[L20_2]
            L22_2.attribute_name = L23_2
            L23_2 = 1 * L16_2
            L22_2.count = L23_2
            L23_2 = table
            L23_2 = L23_2.insert
            L24_2 = L2_2
            L25_2 = L22_2
            L23_2(L24_2, L25_2)
          else
            L22_2 = L2_2[L21_2]
            L23_2 = L2_2[L21_2]
            L23_2 = L23_2.count
            L24_2 = 1 * L16_2
            L23_2 = L23_2 + L24_2
            L22_2.count = L23_2
          end
        end
      end
    end
  end
  L9_2 = table
  L9_2 = L9_2.sort
  L10_2 = L2_2
  function L11_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.count
    L3_3 = A1_3.count
    if L2_3 == L3_3 then
      L2_3 = A0_3.attribute_name
      L2_3 = #L2_3
      L3_3 = A1_3.attribute_name
      L3_3 = #L3_3
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L2_3 = A0_3.count
    L3_3 = A1_3.count
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = 1
  L11_2 = 3
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L2_2[L13_2]
    if L14_2 ~= nil then
      L15_2 = table
      L15_2 = L15_2.insert
      L16_2 = L9_2
      L17_2 = L14_2.attribute_name
      L15_2(L16_2, L17_2)
    end
  end
  return L9_2
end
L0_1.auto_construct_recommend_attributes = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = A0_2.RaidTargetID
  L3_2 = L3_2.Length
  if L3_2 == 0 then
    return L2_2
  end
  L3_2 = 0
  L4_2 = A0_2.RaidTargetID
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = nil
    if not A1_2 then
      L8_2 = L0_1._get_one_treasure_challenge_target
      L9_2 = A0_2.RaidTargetID
      L9_2 = L9_2[L6_2]
      L10_2 = A0_2.RaidID
      L11_2 = A0_2.HardLevel
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
    else
      L8_2 = L0_1.get_in_battle_treasure_challenge_target
      L9_2 = A0_2.RaidTargetID
      L9_2 = L9_2[L6_2]
      L10_2 = A0_2.RaidID
      L11_2 = A0_2.HardLevel
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
    end
    if L7_2 ~= nil then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L0_1.get_format_treasure_challenge_targets = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RaidModule
  L1_2 = L1_2.CurrentTreasureChallengeSnapShot
  if L1_2 == nil then
    return
  end
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RaidTargetConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.TargetName
  L2_2.TextID = L4_2
  L4_2 = L3_2.TargetNameSimple
  L2_2.TextIDSimple = L4_2
  L4_2 = L3_2.TargetParam1
  L2_2.DescParam1 = L4_2
  L4_2 = L3_2.TargetParam2
  L2_2.DescParam2 = L4_2
  L4_2 = L1_2.TargetStatusSnapShot
  L4_2 = L4_2[A0_2]
  L2_2.Status = L4_2
  L4_2 = L1_2.TargetProgressSnapShot
  L4_2 = L4_2[A0_2]
  L2_2.CurrentProgress = L4_2
  L4_2 = L3_2.TargetParam1
  L2_2.TotalProgress = L4_2
  L2_2.ShouldShowProgress = true
  L2_2.ShouldShowReward = false
  return L2_2
end
L0_1.get_one_treasure_challenge_target_in_raid_maze = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RaidTargetConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.ItemFactory
  L5_2 = L5_2.CreateDisplayItemDataFromReward
  L6_2 = L4_2.RewardID
  L5_2 = L5_2(L6_2)
  if L5_2 ~= nil then
    L6_2 = L5_2.Count
    if 0 < L6_2 then
      L6_2 = L5_2[0]
      L3_2.RewardDisplayData = L6_2
    end
  end
  L3_2.TargetID = A0_2
  L6_2 = L4_2.TargetName
  L3_2.TextID = L6_2
  L6_2 = L4_2.TargetNameSimple
  L3_2.TextIDSimple = L6_2
  L6_2 = L4_2.TargetParam1
  L3_2.DescParam1 = L6_2
  L6_2 = L4_2.TargetParam2
  L3_2.DescParam2 = L6_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_ModuleManager
  L6_2 = L6_2.RaidModule
  L7_2 = L6_2
  L6_2 = L6_2.GetTreasureChallengeStatus
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 ~= nil then
    L7_2 = L6_2.TargetStatus
    L8_2 = L7_2
    L7_2 = L7_2.ContainsKey
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= false then
      goto lbl_52
    end
  end
  L7_2 = nil
  do return L7_2 end
  ::lbl_52::
  L7_2 = L6_2.TargetStatus
  L7_2 = L7_2[A0_2]
  L3_2.Status = L7_2
  L3_2.ShouldShowProgress = false
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.RaidModule
  L7_2 = L7_2.CurrentTreasureChallengeSnapShot
  if L7_2 ~= nil then
    L7_2 = L0_1._is_record_match
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.GlobalVars
    L8_2 = L8_2.s_ModuleManager
    L8_2 = L8_2.RaidModule
    L8_2 = L8_2.CurrentTreasureChallengeSnapShot
    L9_2 = A1_2
    L10_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_ModuleManager
      L7_2 = L7_2.RaidModule
      L7_2 = L7_2.CurrentTreasureChallengeSnapShot
      L8_2 = L7_2.TargetStatusSnapShot
      L8_2 = L8_2[A0_2]
      L3_2.Status = L8_2
      L8_2 = L7_2.TargetProgressSnapShot
      L8_2 = L8_2[A0_2]
      L3_2.CurrentProgress = L8_2
      L8_2 = L4_2.TargetParam1
      L3_2.TotalProgress = L8_2
      L8_2 = L7_2.IsTargetFinishedBefore
      L8_2 = L8_2[A0_2]
      L8_2 = not L8_2
      L3_2.ShouldShowProgress = L8_2
    end
  end
  return L3_2
end
L0_1._get_one_treasure_challenge_target = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  if A0_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2.CurrentRaidID
  L3_2 = L3_2 == A1_2
  return L3_2
end
L0_1._is_record_match = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RaidTargetConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.IsInBattle
  if not L4_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.ItemFactory
  L5_2 = L5_2.CreateDisplayItemDataFromReward
  L6_2 = L3_2.RewardID
  L5_2 = L5_2(L6_2)
  if L5_2 ~= nil then
    L6_2 = L5_2.Count
    if 0 < L6_2 then
      L6_2 = L5_2[0]
      L4_2.RewardDisplayData = L6_2
    end
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_ModuleManager
  L6_2 = L6_2.RaidModule
  L6_2 = L6_2.CurrentTreasureChallengeSnapShot
  L4_2.TargetID = A0_2
  L7_2 = L3_2.TargetName
  L4_2.TextID = L7_2
  L7_2 = L3_2.TargetNameSimple
  L4_2.TextIDSimple = L7_2
  L7_2 = L3_2.TargetParam1
  L4_2.DescParam1 = L7_2
  L7_2 = L3_2.TargetParam2
  L4_2.DescParam2 = L7_2
  L7_2 = L3_2.HintStep
  L4_2.HintStep = L7_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.RaidModule
  L8_2 = L7_2
  L7_2 = L7_2.GetTreasureChallengeStatus
  L9_2 = A1_2
  L10_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if L7_2 ~= nil then
    L8_2 = L7_2.TargetStatus
    L9_2 = L8_2
    L8_2 = L8_2.ContainsKey
    L10_2 = A0_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= false then
      goto lbl_66
    end
  end
  L8_2 = nil
  do return L8_2 end
  ::lbl_66::
  L8_2 = L7_2.TargetStatus
  L8_2 = L8_2[A0_2]
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.GlobalVars
  L9_2 = L9_2.s_ModuleManager
  L9_2 = L9_2.RaidModule
  L9_2 = L9_2.CurrentTreasureChallengeSnapShot
  L9_2 = L9_2.TargetStatusSnapShot
  L9_2 = L9_2[A0_2]
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.Client
  L10_2 = L10_2.GlobalVars
  L10_2 = L10_2.s_ModuleManager
  L10_2 = L10_2.RaidModule
  L10_2 = L10_2.CurrentTreasureChallengeSnapShot
  L10_2 = L10_2.InBattleTargetStatusSnapShot
  L10_2 = L10_2[A0_2]
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.TreasureChallengeTargetStatus
  L11_2 = L11_2.Finished
  if L8_2 == L11_2 then
    L4_2.Status = L8_2
    L4_2.ShouldShowReward = false
  else
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.TreasureChallengeTargetStatus
    L11_2 = L11_2.Finished
    if L10_2 == L11_2 then
      L4_2.Status = L10_2
      L4_2.ShouldShowReward = true
    else
      L4_2.Status = L10_2
      L4_2.ShouldShowReward = false
    end
  end
  L11_2 = L6_2.IsTargetFinishedBefore
  L11_2 = L11_2[A0_2]
  L11_2 = not L11_2
  L4_2.ShouldShowProgress = L11_2
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.BattleUIUtils
  L11_2 = L11_2.IsFailProgress
  L12_2 = L3_2.ParamType
  L11_2 = L11_2(L12_2)
  L4_2.IsFailProgress = L11_2
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.GlobalVars
  L11_2 = L11_2.s_ModuleManager
  L11_2 = L11_2.RaidModule
  L11_2 = L11_2.CurrentTreasureChallengeSnapShot
  L11_2 = L11_2.InBattleTargetProgressSnapShot
  L11_2 = L11_2[A0_2]
  L4_2.CurrentProgress = L11_2
  L11_2 = L3_2.TargetParam1
  L4_2.TotalProgress = L11_2
  return L4_2
end
L0_1.get_in_battle_treasure_challenge_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.PreviousRaidStatus
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = nil
    L8_2 = false
    L9_2 = A0_2.CurrentRaidStatus
    L10_2 = L9_2
    L9_2 = L9_2.ContainsKey
    L11_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = A0_2.CurrentRaidStatus
      L7_2 = L9_2[L5_2]
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.TreasureChallengeTargetStatus
      L9_2 = L9_2.Finished
      L8_2 = L7_2 == L9_2
    end
    if L7_2 == nil then
      L7_2 = L6_2
    end
    L9_2 = L0_1._generate_one_settlement_target_data
    L10_2 = L5_2
    L11_2 = L6_2
    L12_2 = L7_2
    L13_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L1_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  return L1_2
end
L0_1.generate_settlement_targets_data = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.RaidTargetConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ItemFactory
  L6_2 = L6_2.CreateDisplayItemDataFromReward
  L7_2 = L5_2.RewardID
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L7_2 = L6_2.Count
    if 0 < L7_2 then
      L7_2 = L6_2[0]
      L4_2.RewardDisplayData = L7_2
    end
  end
  L7_2 = L5_2.TargetName
  L4_2.TextID = L7_2
  L7_2 = L5_2.TargetParam1
  L4_2.DescParam1 = L7_2
  L7_2 = L5_2.TargetParam2
  L4_2.DescParam2 = L7_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.TreasureChallengeTargetStatus
  L7_2 = L7_2.Finished
  L7_2 = A1_2 ~= L7_2
  L4_2.ShouldShowReward = L7_2
  L4_2.ShouldShowEffect = A3_2
  L4_2.ShouldShowProgress = false
  L4_2.Status = A2_2
  return L4_2
end
L0_1._generate_one_settlement_target_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.attribute_name
    if L7_2 == A0_2 then
      return L5_2
    end
  end
  L2_2 = -1
  return L2_2
end
L0_1._try_get_attribute = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2 == nil
  return L1_2
end
L0_1._is_cs_array_empty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1._get_monsters_data_from_array
  L2_2 = A0_2.MonsterList
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1._get_monsters_data_from_array
  L3_2 = A0_2.MonsterHideList
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.table_merge
  L4_2 = L1_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L0_1._get_monsters_data_from_raid_config = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MappingInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = {}
    return L3_2
  end
  L3_2 = L0_1._get_monsters_data_from_array
  L4_2 = L2_2.ShowMonsterList
  L5_2 = false
  return L3_2(L4_2, L5_2)
end
L0_1._get_monsters_from_mapping_info = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1._is_cs_array_empty
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L3_2 = 0
  L4_2 = A0_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = A0_2[L6_2]
    L7_2.ID = L8_2
    L7_2.IsHide = A1_2
    L8_2 = #L2_2
    L8_2 = L8_2 + 1
    L2_2[L8_2] = L7_2
  end
  return L2_2
end
L0_1._get_monsters_data_from_array = L1_1
return L0_1
