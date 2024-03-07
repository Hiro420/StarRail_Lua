local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Logic.MapModule.MapUtil"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapModule"
L2_1 = "Logic.BaseModule"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = G
L2_1 = L2_1.ShopModule
L2_1 = L2_1.Instance
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
L4_1 = 4
L5_1 = 201
function L6_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._map_message_row_list = L1_2
end
L0_1.Init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._map_message_row_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MapShortCutConfigExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L2_2.UnlockID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.SystemOpenModule
    L3_2 = L3_2.IsOpen
    L4_2 = L2_2.UnlockID
    L3_2 = L3_2 == 0 or L3_2
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2._is_show_map_message_by_row
      L6_2 = L2_2
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L4_2 = table
        L4_2 = L4_2.insert
        L5_2 = A0_2._map_message_row_list
        L6_2 = L2_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L0_1.update_show_map_message_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._map_message_row_list
  L1_2 = #L1_2
  L2_2 = L4_1
  if L1_2 <= L2_2 then
    L1_2 = A0_2._map_message_row_list
    return L1_2
  else
    L1_2 = {}
    L2_2 = ipairs
    L3_2 = A0_2._map_message_row_list
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = #L1_2
      L8_2 = L4_1
      if L7_2 == L8_2 then
        return L1_2
      end
    end
  end
end
L0_1.get_map_message_row_list = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MapShortCutType
  L3_2 = L3_2.WORLD_LEVEL_REWARD
  if L2_2 == L3_2 then
    L2_2 = L1_1.PlayerData
    L2_2 = L2_2.UnGottenLevelRewards
    L2_2 = L2_2.Count
    L2_2 = 0 < L2_2
    return L2_2
  else
    L2_2 = A1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MapShortCutType
    L3_2 = L3_2.CHALLENGE_TIP
    if L2_2 == L3_2 then
      L2_2 = G
      L2_2 = L2_2.ChallengeFilter
      L2_2 = L2_2.is_group_reddot
      return L2_2()
    else
      L2_2 = A1_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MapShortCutType
      L3_2 = L3_2.ROGUE_LEVEL_UNLOCK
      if L2_2 == L3_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.RogueUtils
        L2_2 = L2_2.HasUnlockAreaTip
        return L2_2()
      else
        L2_2 = A1_2.Type
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.MapShortCutType
        L3_2 = L3_2.ROGUE_SCORE_REWARD_REFRESH
        if L2_2 == L3_2 then
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.RogueUtils
          L2_2 = L2_2.HasRewardResetTip
          return L2_2()
        else
          L2_2 = A1_2.Type
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.GameCore
          L3_2 = L3_2.MapShortCutType
          L3_2 = L3_2.SHOP_SCORE_REWARD
          if L2_2 == L3_2 then
            L2_2 = L2_1
            L3_2 = L2_2
            L2_2 = L2_2.is_world_shop_reward_avaiable
            L4_2 = A1_2.Params
            L4_2 = L4_2[0]
            return L2_2(L3_2, L4_2)
          else
            L2_2 = A1_2.Type
            L3_2 = CS
            L3_2 = L3_2.RPG
            L3_2 = L3_2.GameCore
            L3_2 = L3_2.MapShortCutType
            L3_2 = L3_2.ACTIVITY_MONSTER_RESEARCH
            if L2_2 == L3_2 then
              L2_2 = CS
              L2_2 = L2_2.RPG
              L2_2 = L2_2.Client
              L2_2 = L2_2.GlobalVars
              L2_2 = L2_2.s_ModuleManager
              L2_2 = L2_2.ActivityModule
              L3_2 = L2_2
              L2_2 = L2_2.GetMonsterResearchActivityData
              L2_2 = L2_2(L3_2)
              L3_2 = L2_2 ~= nil
              return L3_2
            else
              L2_2 = A1_2.Type
              L3_2 = CS
              L3_2 = L3_2.RPG
              L3_2 = L3_2.GameCore
              L3_2 = L3_2.MapShortCutType
              L3_2 = L3_2.ROGUE_SCORE_REWARD_TO_GET
              if L2_2 == L3_2 then
                L2_2 = CS
                L2_2 = L2_2.RPG
                L2_2 = L2_2.Client
                L2_2 = L2_2.GlobalVars
                L2_2 = L2_2.s_ModuleManager
                L2_2 = L2_2.RogueModule
                L3_2 = L2_2
                L2_2 = L2_2.GetRogueScoreRewardData
                L2_2 = L2_2(L3_2)
                L3_2 = L2_2
                L2_2 = L2_2.HasRewardCanTake
                return L2_2(L3_2)
              else
                L2_2 = A1_2.Type
                L3_2 = CS
                L3_2 = L3_2.RPG
                L3_2 = L3_2.GameCore
                L3_2 = L3_2.MapShortCutType
                L3_2 = L3_2.ROGUE_HAND_BOOK_REWARD_TO_GET
                if L2_2 == L3_2 then
                  L2_2 = CS
                  L2_2 = L2_2.RPG
                  L2_2 = L2_2.Client
                  L2_2 = L2_2.GlobalVars
                  L2_2 = L2_2.s_ModuleManager
                  L2_2 = L2_2.RogueHandbookModule
                  L3_2 = L2_2
                  L2_2 = L2_2.HasHandbookRewardCanTake
                  return L2_2(L3_2)
                else
                  L2_2 = A1_2.Type
                  L3_2 = CS
                  L3_2 = L3_2.RPG
                  L3_2 = L3_2.GameCore
                  L3_2 = L3_2.MapShortCutType
                  L3_2 = L3_2.CHALLENGE_NEW_GROUP_UNLOCK
                  if L2_2 == L3_2 then
                    L2_2 = CS
                    L2_2 = L2_2.RPG
                    L2_2 = L2_2.Client
                    L2_2 = L2_2.GlobalVars
                    L2_2 = L2_2.s_ModuleManager
                    L2_2 = L2_2.ChallengeModule
                    L3_2 = L2_2
                    L2_2 = L2_2.HasNewResidentGroupUnlock
                    return L2_2(L3_2)
                  else
                    L2_2 = A1_2.Type
                    L3_2 = CS
                    L3_2 = L3_2.RPG
                    L3_2 = L3_2.GameCore
                    L3_2 = L3_2.MapShortCutType
                    L3_2 = L3_2.NEW_SHOP_GOOD_ADDED
                    if L2_2 == L3_2 then
                      L2_2 = G
                      L2_2 = L2_2.ShopModule
                      L2_2 = L2_2.Instance
                      L3_2 = L2_2
                      L2_2 = L2_2.is_shop_contain_new_good
                      L4_2 = A1_2.Params
                      L4_2 = L4_2[0]
                      return L2_2(L3_2, L4_2)
                    else
                      L2_2 = A1_2.Type
                      L3_2 = CS
                      L3_2 = L3_2.RPG
                      L3_2 = L3_2.GameCore
                      L3_2 = L3_2.MapShortCutType
                      L3_2 = L3_2.CHALLENGE_MEMORY_NEW_SCHEDULE_GROUP_UNLOCK
                      if L2_2 == L3_2 then
                        L2_2 = CS
                        L2_2 = L2_2.RPG
                        L2_2 = L2_2.Client
                        L2_2 = L2_2.GlobalVars
                        L2_2 = L2_2.s_ModuleManager
                        L2_2 = L2_2.ChallengeModule
                        L3_2 = L2_2
                        L2_2 = L2_2.HasNewScheduleMemoryGroupUnlock
                        return L2_2(L3_2)
                      else
                        L2_2 = A1_2.Type
                        L3_2 = CS
                        L3_2 = L3_2.RPG
                        L3_2 = L3_2.GameCore
                        L3_2 = L3_2.MapShortCutType
                        L3_2 = L3_2.CHALLENGE_STORY_NEW_SCHEDULE_GROUP_UNLOCK
                        if L2_2 == L3_2 then
                          L2_2 = CS
                          L2_2 = L2_2.RPG
                          L2_2 = L2_2.Client
                          L2_2 = L2_2.GlobalVars
                          L2_2 = L2_2.s_ModuleManager
                          L2_2 = L2_2.ChallengeModule
                          L3_2 = L2_2
                          L2_2 = L2_2.HasNewStoryChallengeGroup
                          return L2_2(L3_2)
                        else
                          L2_2 = A1_2.Type
                          L3_2 = CS
                          L3_2 = L3_2.RPG
                          L3_2 = L3_2.GameCore
                          L3_2 = L3_2.MapShortCutType
                          L3_2 = L3_2.CHALLENGE_STORY_TIP
                          if L2_2 == L3_2 then
                            L2_2 = CS
                            L2_2 = L2_2.RPG
                            L2_2 = L2_2.Client
                            L2_2 = L2_2.GlobalVars
                            L2_2 = L2_2.s_ModuleManager
                            L2_2 = L2_2.ChallengeModule
                            L3_2 = L2_2
                            L2_2 = L2_2.HasStoryRewardNotTaken
                            return L2_2(L3_2)
                          else
                            L2_2 = A1_2.Type
                            L3_2 = CS
                            L3_2 = L3_2.RPG
                            L3_2 = L3_2.GameCore
                            L3_2 = L3_2.MapShortCutType
                            L3_2 = L3_2.OFFERING_REWARD
                            if L2_2 == L3_2 then
                              L2_2 = CS
                              L2_2 = L2_2.RPG
                              L2_2 = L2_2.Client
                              L2_2 = L2_2.GlobalVars
                              L2_2 = L2_2.s_ModuleManager
                              L2_2 = L2_2.OfferingModule
                              L3_2 = L2_2
                              L2_2 = L2_2.ShouldShowMapShortCutHint
                              L4_2 = A1_2.Params
                              L4_2 = L4_2[0]
                              return L2_2(L3_2, L4_2)
                            else
                              L2_2 = A1_2.Type
                              L3_2 = CS
                              L3_2 = L3_2.RPG
                              L3_2 = L3_2.GameCore
                              L3_2 = L3_2.MapShortCutType
                              L3_2 = L3_2.MAINMISSION_TODO
                              if L2_2 == L3_2 then
                                L2_2 = A1_2.Params
                                L3_2 = 0
                                L4_2 = L2_2.Length
                                L4_2 = L4_2 - 1
                                L5_2 = 1
                                for L6_2 = L3_2, L4_2, L5_2 do
                                  L7_2 = L3_1
                                  L8_2 = L7_2
                                  L7_2 = L7_2.TryGetMainMissionData
                                  L9_2 = L2_2[L6_2]
                                  L7_2 = L7_2(L8_2, L9_2)
                                  if L7_2 ~= nil then
                                    L8_2 = L7_2.IsStart
                                    if L8_2 then
                                      L8_2 = true
                                      return L8_2
                                    end
                                  end
                                end
                                L3_2 = false
                                return L3_2
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_show_map_message_by_row = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L5_1
  return L1_2(L2_2)
end
L0_1.is_teleport_unlock = L6_1
return L0_1
