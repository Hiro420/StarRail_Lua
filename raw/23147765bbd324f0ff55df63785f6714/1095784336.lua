local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Maze.ChallengeMazeUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MissionModule
L1_1 = G
L1_1 = L1_1.StaticClass
L2_1 = "ChallengeUtils"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = "Ui.Challenge.Entrance.ChallengeEnvironmentInfoDialog"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L4_2.show_update_hint = A1_2
  L4_2.show_close_key_hint = A2_2
  L6_2 = L4_2
  L5_2 = L4_2.set_exit_callback
  function L7_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A3_2
    L0_3(L1_3)
  end
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.async_show
  L5_2(L6_2)
end
L1_1.show_challenge_environment_info = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = "Ui.ChallengeStory.Entrance.ChallengeStoryEnvironmentInfoDialog"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L4_2.show_update_hint = A1_2
  L4_2.show_close_key_hint = A2_2
  L6_2 = L4_2
  L5_2 = L4_2.set_exit_callback
  function L7_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A3_2
    L0_3(L1_3)
  end
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.async_show
  L5_2(L6_2)
end
L1_1.show_challenge_story_environment_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2.Row
  L2_2 = L2_2.MazeBuffID
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.ChallengeMazeUtils
    L2_2 = L2_2.create_fake_adv_modifier_instance
    L3_2 = A0_2.Row
    L3_2 = L3_2.MazeBuffID
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = L1_2.BuffDesc
      L4_2 = G
      L4_2 = L4_2.UITextUtils
      L4_2 = L4_2.GetSkillParams
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.AdventureStatic
      L5_2 = L5_2.EvaluateMazeBuffDescParam
      L6_2 = L2_2
      L5_2, L6_2 = L5_2(L6_2)
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      return L3_2, L4_2, L5_2, L6_2
    end
  end
end
L1_1.create_buff_desc_text_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = A0_2.ChallengeDatas
    if L1_2 ~= nil then
      L1_2 = A0_2.ChallengeDatas
      L1_2 = L1_2.Count
      if L1_2 ~= 0 then
        goto lbl_12
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_12::
  L1_2 = A0_2.ChallengeDatas
  L1_2 = L1_2[0]
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetOpenResult
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.IsOpen
  return L3_2
end
L1_1.is_schedule_challenge_group_valid = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = tonumber
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideConstValueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "HandBookMazeMapEntrance"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  return L0_2(L1_2)
end
L1_1.get_challenge_memory_map_entrance_id = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = tonumber
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideConstValueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "HandBookMazeMappingInfo"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  return L0_2(L1_2)
end
L1_1.get_challenge_memory_mapping_info_id = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = tonumber
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideConstValueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "HandBookMazeDisplayMappingInfo01"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  return L0_2(L1_2)
end
L1_1.get_challenge_memory_resident_display_mapping_info_id = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = tonumber
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideConstValueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "HandBookMazeDisplayMappingInfo02"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  return L0_2(L1_2)
end
L1_1.get_challenge_memory_schedule_display_mapping_info_id = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = tonumber
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideConstValueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "HandBookChallengeStoryDisplayMappingInfo"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  return L0_2(L1_2)
end
L1_1.get_challenge_story_display_mapping_info_id = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = tonumber
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideConstValueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "HandBookChallengeStoryMapEntrance"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  return L0_2(L1_2)
end
L1_1.get_challenge_story_map_entrance_id = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = tonumber
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideConstValueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "HandBookChallengeStoryDisplayMappingInfo"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  return L0_2(L1_2)
end
L1_1.get_challenge_story_mapping_info_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Memory
  if L1_2 == L2_2 then
    L1_2 = A0_2.IsScheduleChallenge
    if L1_2 then
      L1_2 = L1_1.get_challenge_memory_schedule_display_mapping_info_id
      return L1_2()
    else
      L1_2 = L1_1.get_challenge_memory_resident_display_mapping_info_id
      return L1_2()
    end
  else
    L1_2 = A0_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ChallengeGroupType
    L2_2 = L2_2.Story
    if L1_2 == L2_2 then
      L1_2 = L1_1.get_challenge_story_display_mapping_info_id
      return L1_2()
    end
  end
end
L1_1.get_mapping_info_id_by_challenge_group_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.get_mapping_info_id_by_challenge_group_data
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.create_display_reward_items_from_mapping_info_id
  L3_2 = L1_2
  return L2_2(L3_2)
end
L1_1.create_display_reward_items_from_mapping_info_id_by_challenge_group_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.PlayerModule
  L3_2 = L3_2.PlayerData
  L3_2 = L3_2.WorldLevel
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MappingInfoExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.get_sorted_items_by_item_config_list
    L3_2 = L1_2.DisplayItemList
    return L2_2(L3_2)
  end
  L2_2 = {}
  return L2_2
end
L1_1.create_display_reward_items_from_mapping_info_id = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = "UIText_Abyss_Activity_OpenLevel"
  return L0_2
end
L1_1.get_challenge_memory_resident_unlock_player_level_tips = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = "UIText_GameplayGuide_UnlockNormalMemery"
  return L0_2
end
L1_1.get_challenge_memory_resident_unlock_mission_tips = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = "UIText_MapInfo_Abyss_Unlock_Context"
  return L0_2
end
L1_1.get_challenge_memory_schedule_unlock_prev_challenge_level_tips = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = "UIText_GameplayGuide_UnlockChallengeMaze"
  return L0_2
end
L1_1.get_challenge_story_unlock_mission_tips = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ChallengeModule
  L1_2 = L0_2
  L0_2 = L0_2.GetNoneScheduleChallengeGroupData
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.Count
  L1_2 = 0 < L1_2 and L1_2
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.GetMaxFinishLevel
    L2_2 = L2_2(L3_2)
    L3_2 = L1_2.ChallengeDatas
    L3_2 = L3_2.Count
    return L2_2, L3_2
  end
end
L1_1.get_challenge_memory_schedule_unlock_prev_challenge_level_tips_param = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Abyss_UnlockMissionList"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L0_2
      L8_2 = L1_2[L5_2]
      L8_2 = L8_2.IntValue
      L6_2(L7_2, L8_2)
    end
  end
  return L0_2
end
L1_1.get_challenge_memory_resident_unlock_mission_ids = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.ChallengeUtils
  L0_2 = L0_2.GetChallengeStoryUnlockMainMissionID
  return L0_2()
end
L1_1.get_challenge_story_unlock_main_mission_id = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.ChallengeUtils
  L0_2 = L0_2.GetChallengeStoryUnlockSubMissionID
  return L0_2()
end
L1_1.get_challenge_story_unlock_sub_mission_id = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.ChallengeUtils
  L0_2 = L0_2.GetChallengeMemoryUnlockPlayerLevel
  return L0_2()
end
L1_1.get_challenge_memory_resident_unlock_player_level = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.ConstValueClientExcelTable
  L0_2 = L0_2.GetData
  L1_2 = "Abyss_UnlockMessageGroupID"
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.Value
  L0_2 = L0_2.IntValue
  return L0_2
end
L1_1.get_challenge_memory_resident_unlock_message_group_id = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChallengeModule
  L4_2 = L3_2
  L3_2 = L3_2.SetContinueChallengeData
  L5_2 = true
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = false
  end
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = false
  end
  L8_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.HandbookModule
  L4_2 = L3_2
  L3_2 = L3_2.GoToGuide
  L5_2 = L1_1.get_challenge_memory_map_entrance_id
  L5_2 = L5_2()
  L6_2 = L1_1.get_challenge_memory_mapping_info_id
  L6_2, L7_2, L8_2 = L6_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.try_goto_challenge_memory = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChallengeModule
  L4_2 = L3_2
  L3_2 = L3_2.SetContinueChallengeData
  L5_2 = true
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = false
  end
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = false
  end
  L8_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.HandbookModule
  L4_2 = L3_2
  L3_2 = L3_2.GoToGuide
  L5_2 = L1_1.get_challenge_story_map_entrance_id
  L5_2 = L5_2()
  L6_2 = L1_1.get_challenge_story_mapping_info_id
  L6_2, L7_2, L8_2 = L6_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1.try_goto_challenge_story = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = G
  L0_2 = L0_2.GotoManager
  L0_2 = L0_2.GotoByType
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GotoType
  L1_2 = L1_2.Shop
  L1_2 = #L1_2
  L2_2 = {}
  L3_2 = 17
  L4_2 = 0
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L0_2(L1_2, L2_2)
end
L1_1.try_goto_challenge_memory_shop = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.ShopModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_shop_by_id
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.get_shop_good_by_id
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L1_1._is_shop_good_seen
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L4_2 = L1_1._is_shop_good_available
    L5_2 = L3_2
    L4_2 = not L4_2 and L4_2
    return L4_2
  end
  L3_2 = false
  return L3_2
end
L1_1.show_shop_good_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.GoodsID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2
  L2_2 = L2_2.GetChallengeShopGoodClickTimeStamps
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.ContainsKey
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_22::
  L3_2 = A0_2.RefreshTime
  L4_2 = L2_2[L1_2]
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TimeManager
  L5_2 = L5_2.Instance
  L5_2 = L5_2.NowTimeStamp
  L6_2 = L3_2 <= L4_2 and L3_2 > L5_2
  return L6_2
end
L1_1._is_shop_good_seen = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_is_sold_out
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.has_enough_currency
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2.RefreshTime
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.TimeManager
      L2_2 = L2_2.Instance
      L2_2 = L2_2.NowTimeStamp
      L1_2 = L1_2 < L2_2
    end
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_limit_status
  L1_2(L2_2)
  L1_2 = A0_2.IsAvailable
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.has_enough_currency
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L1_1._is_shop_good_available = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "Abyss_ExchangeTips_ShopID"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.ArrayValue
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = L2_2[L6_2]
    L9_2 = L9_2.UintValue
    L7_2(L8_2, L9_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueClientExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "Abyss_ExchangeTips_GoodsID"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.ArrayValue
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L3_2[L7_2]
    L10_2 = L10_2.UintValue
    L8_2(L9_2, L10_2)
  end
  L4_2 = L0_2
  L5_2 = L1_2
  return L4_2, L5_2
end
L1_1.get_challenge_reddot_shop_good_config = L2_1
return L1_1
