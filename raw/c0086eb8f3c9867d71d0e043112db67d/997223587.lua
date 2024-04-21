local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ActivityRogueChallengeUtils"
L0_1 = L0_1(L1_1)
L1_1 = 100
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1.get_buff_type_to_num_dict_by_buff_config_list
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueBuffTypeExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = L3_2
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L4_2 = L4_2.Value
    L5_2 = L4_2.RogueBuffType
    L6_2 = L1_1
    if L5_2 ~= L6_2 then
      L6_2 = {}
      L7_2 = L4_2.RogueBuffTypeIcon
      L6_2.Icon = L7_2
      L7_2 = L1_2[L5_2]
      if not L7_2 then
        L7_2 = 0
      end
      L6_2.Num = L7_2
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L2_2
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  return L2_2
end
L0_1.get_buff_type_data_by_buff_config_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2.Count
  if not L2_2 then
    L2_2 = A0_2.Length
  end
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RogueBuffExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2.BuffID
    L10_2 = L7_2.Level
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.RogueBuffType
    L9_2 = L1_2[L9_2]
    if L9_2 == nil then
      L9_2 = L8_2.RogueBuffType
      L1_2[L9_2] = 0
    end
    L9_2 = L8_2.RogueBuffType
    L10_2 = L8_2.RogueBuffType
    L10_2 = L1_2[L10_2]
    L10_2 = L10_2 + 1
    L1_2[L9_2] = L10_2
  end
  return L1_2
end
L0_1.get_buff_type_to_num_dict_by_buff_config_list = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.get_can_select_avatars_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.TrialAvatarIDArray
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.TrialAvatarIDArray
    L6_2 = L6_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.AvatarModule
    L8_2 = L7_2
    L7_2 = L7_2.AddTrialPlayer
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.AvatarModule
    L8_2 = L7_2
    L7_2 = L7_2.GetTrialAvatar
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.GlobalVars
    L8_2 = L8_2.s_ModuleManager
    L8_2 = L8_2.PlayerModule
    L8_2 = L8_2.PlayerData
    L8_2 = L8_2.HeroAvatarInfoData
    L9_2 = L8_2
    L8_2 = L8_2.GetCurrentHeroGender
    L8_2 = L8_2(L9_2)
    L9_2 = L7_2.IsHero
    if L9_2 then
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.AvatarData
      L9_2 = L9_2.IsSameGender
      L10_2 = L7_2.RealID
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L7_2 = nil
      end
    end
    if L7_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  return L1_2
end
L0_1.get_trial_avatars_table = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AvatarModule
  L1_2 = L1_2.AllAvatars
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L0_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  return L0_2
end
L0_1.get_all_avatars_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  L2_2 = L1_2 ~= 0
  return L2_2
end
L0_1.is_met_enter_battle_condition = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.AssistData
  L2_2 = A0_2.AssistIndex
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.Avatars
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.AvatarData
    L8_2 = L8_2.CreateDisplayAvatar
    L9_2 = L7_2
    L10_2 = A0_2.AssistData
    L11_2 = A0_2.AssistIndex
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.NickName
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L2_2
end
L0_1.get_support_avatar_datas = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.RealID
    L8_2 = A1_2.RealID
    if L7_2 == L8_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.is_avatar_in_table = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ActivityRogueChallengeModule
  L1_2 = L0_2
  L0_2 = L0_2.GetInBattleRogueChallengeGoalItems
  L0_2 = L0_2(L1_2)
  return L0_2
end
L0_1.get_in_battle_display_targets = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1._get_aeon_buff_data_config
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.get_buff_type_to_num_dict_by_buff_config_list
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1._get_buff_icon_display_data
  L4_2 = L2_2
  L5_2 = L1_2
  return L3_2(L4_2, L5_2)
end
L0_1.get_buff_icon_display_data_by_buff_config_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2.Count
  if not L2_2 then
    L2_2 = A0_2.Length
  end
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RogueBuffExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2.BuffID
    L10_2 = L7_2.Level
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.BattleEventBuffType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.RogueBuffAeonType
    L10_2 = L10_2.BattleEventBuff
    if L9_2 == L10_2 then
      L9_2 = L8_2.AeonID
      L1_2.AeonID = L9_2
      L9_2 = L8_2.RogueBuffType
      L1_2.BuffType = L9_2
    end
    L9_2 = L8_2.BattleEventBuffType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.RogueBuffAeonType
    L10_2 = L10_2.BattleEventBuffEnhance
    if L9_2 == L10_2 then
      L9_2 = L1_2.Count
      if not L9_2 then
        L9_2 = 0
      end
      L10_2 = L9_2 + 1
      L1_2.Count = L10_2
    end
  end
  return L1_2
end
L0_1._get_aeon_buff_data_config = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueBuffTypeExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = L3_2
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L4_2 = L4_2.Value
    L5_2 = L4_2.RogueBuffType
    L6_2 = L1_1
    if L5_2 ~= L6_2 then
      L6_2 = {}
      L7_2 = L4_2.RogueBuffTypeIcon
      L6_2.Icon = L7_2
      L7_2 = A0_2[L5_2]
      if not L7_2 then
        L7_2 = 0
      end
      L6_2.Num = L7_2
      L7_2 = L4_2.RogueBuffType
      L8_2 = A1_2.BuffType
      if L7_2 == L8_2 then
        L6_2.IsMainType = true
        L7_2 = A1_2.Count
        L6_2.MainTypeCount = L7_2
      else
        L6_2.IsMainType = false
      end
      L7_2 = L4_2.RogueBuffTypeSubTitle
      L6_2.Title = L7_2
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L2_2
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  return L2_2
end
L0_1._get_buff_icon_display_data = L2_1
return L0_1
