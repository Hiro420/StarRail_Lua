local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RedDotAssembler"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AvatarModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TeamModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.QuestModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.PlayerModule
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.ActivityModule
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.GlobalVars
L7_1 = L7_1.s_ModuleManager
L7_1 = L7_1.MissionModule
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemsByMainTypes
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_items_by_main_types = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = L2_1.AllAvatars
  return L1_2
end
L0_1.get_all_avatars = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityPanelExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._is_in_level_range
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2._is_in_time_range
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
L0_1.get_activity_tab_datas = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = A1_2.TypeParam
  L3_2 = L3_2.Length
  L4_2 = 0
  L5_2 = L3_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2.TypeParam
    L8_2 = L8_2[L7_2]
    L9_2 = L4_1
    L10_2 = L9_2
    L9_2 = L9_2.TryGetQuestData
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  return L2_2
end
L0_1.get_quests_by_tab = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.MailModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_mail_data
  return L1_2(L2_2)
end
L0_1.get_mails = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.ID
  L4_2 = A1_2.Promotion
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L5_1.PlayerData
  L5_2 = A1_2
  L4_2 = A1_2.IsPromotionMaxLevel
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L3_2.Level
  L5_2 = L2_2.PlayerLevelRequire
  if L4_2 < L5_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L3_2.WorldLevel
  L5_2 = L2_2.WorldLevelRequire
  if L4_2 < L5_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = 0
  L5_2 = L2_2.PromotionCostList
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2.PromotionCostList
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.ItemID
    L9_2 = L2_2.PromotionCostList
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2.ItemNum
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.GetItemDataByConfigID
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 ~= nil then
      L11_2 = L10_2.Count
      if not (L9_2 > L11_2) then
        goto lbl_51
      end
    end
    L11_2 = false
    do return L11_2 end
    ::lbl_51::
  end
  L4_2 = true
  return L4_2
end
L0_1.can_avatar_promote = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = L7_1.DailyMissionFinishedCount
  return L1_2
end
L0_1.get_daily_mission_finish_num = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.has_daily_quest_reward = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L7_1.AllMainMissions
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Row
    if L8_2 ~= nil then
      L8_2 = L7_2.IsShowRedDot
      if L8_2 then
        L8_2 = L7_2.IsFinish
        if not L8_2 then
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.GameCore
          L8_2 = L8_2.MainMissionType
          L8_2 = L8_2.None
          if A1_2 ~= L8_2 then
            L8_2 = L7_2.Row
            L8_2 = L8_2.Type
            if A1_2 ~= L8_2 then
              goto lbl_34
            end
          end
          L8_2 = L7_2.IsShow
          if L8_2 then
            L8_2 = table
            L8_2 = L8_2.insert
            L9_2 = L2_2
            L10_2 = L7_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
    ::lbl_34::
  end
  return L2_2
end
L0_1.get_show_main_mission = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_all_available_guides
  return L1_2(L2_2)
end
L0_1.get_all_unlock_tutorial_guide = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.Level
  L3_2 = A1_2.MinPlayerLevel
  L3_2 = L2_2 >= L3_2
  return L3_2
end
L0_1._is_in_level_range = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.NowTimeStamp
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TimeUtils
  L3_2 = L3_2.StringDataTimeToTimeStampInSeconds
  L4_2 = A1_2.BeginTime
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TimeUtils
  L4_2 = L4_2.StringDataTimeToTimeStampInSeconds
  L5_2 = A1_2.EndTime
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2 >= L3_2 and L2_2 <= L4_2
  return L5_2
end
L0_1._is_in_time_range = L8_1
return L0_1
