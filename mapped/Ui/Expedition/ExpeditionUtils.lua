local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueCommonExcelTable
L0_1 = L0_1.GetData
L1_1 = "ActivityExpedition_BonusBaseType_GradeScore"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L0_1 = L0_1.UintValue
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "ActivityExpedition_GradeScore_Grade2"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.UintValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "ActivityExpedition_GradeScore_Grade3"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L3_1 = G
L3_1 = L3_1.StaticClass
L4_1 = "ExpeditionUtils"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = A0_2.FriendUID
  L1_2.uid = L2_2
  L2_2 = A0_2.FriendAvatarID
  L1_2.avatar_id = L2_2
  L2_2 = A0_2.FriendAvatarLevel
  L1_2.avatar_level = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2.BonusProfessionTypes
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2.AvatarIdList
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L4_2
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.Client
    L12_2 = L12_2.GlobalVars
    L12_2 = L12_2.s_ModuleManager
    L12_2 = L12_2.AvatarModule
    L13_2 = L12_2
    L12_2 = L12_2.GetAvatar
    L14_2 = L9_2
    L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
  L5_2 = G
  L5_2 = L5_2.ExpeditionUtils
  L5_2 = L5_2.get_grade_score
  L6_2 = L4_2
  L7_2 = L1_2
  L8_2 = L2_2
  return L5_2(L6_2, L7_2, L8_2)
end
L3_1.get_grade_score_by_expedition_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = 0
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.Level
    L3_2 = L3_2 + L9_2
    L9_2 = G
    L9_2 = L9_2.Utils
    L9_2 = L9_2.index_of_item
    L10_2 = A2_2
    L11_2 = L8_2.ProfessionType
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = L9_2 ~= nil
    if L9_2 then
      L10_2 = L0_1
      L3_2 = L3_2 + L10_2
    end
  end
  L4_2 = L3_1.has_friend
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A1_2.avatar_level
    L3_2 = L3_2 + L4_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AvatarExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A1_2.avatar_id
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L5_2 = G
      L5_2 = L5_2.Utils
      L5_2 = L5_2.index_of_item
      L6_2 = A2_2
      L7_2 = L4_2.AvatarBaseType
      L5_2 = L5_2(L6_2, L7_2)
      L5_2 = L5_2 ~= nil
      if L5_2 then
        L6_2 = L0_1
        L3_2 = L3_2 + L6_2
      end
    end
  end
  return L3_2
end
L3_1.get_grade_score = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = A0_2.IsActivity
  if L2_2 == true then
    L2_2 = A0_2.FriendUID
    L1_2.uid = L2_2
    L2_2 = A0_2.FriendAvatarID
    L1_2.avatar_id = L2_2
    L2_2 = A0_2.FriendAvatarLevel
    L1_2.avatar_level = L2_2
  end
  return L1_2
end
L3_1.create_friend_data_by_expedition = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  if A0_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.GetAssistInfoByAvatarID
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2.UID
    L2_2.uid = L4_2
    L4_2 = L3_2.AvatarId
    L2_2.avatar_id = L4_2
    L4_2 = L3_2.Level
    L2_2.avatar_level = L4_2
    L2_2.raw_data = A0_2
  else
    L2_2.uid = 0
    L2_2.avatar_id = 0
    L2_2.avatar_level = 0
    L2_2.raw_data = nil
  end
  return L2_2
end
L3_1.create_friend_data_by_player_brief_data = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2 ~= nil
  return L1_2
end
L3_1.has_friend = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L2_1
  if A0_2 >= L1_2 then
    L1_2 = 1
    return L1_2
  else
    L1_2 = L1_1
    if A0_2 >= L1_2 then
      L1_2 = 2
      return L1_2
    else
      L1_2 = 3
      return L1_2
    end
  end
end
L3_1.get_score_rank = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ExpeditionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetExpeditionSchedule
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.IsInSchedule
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 ~= nil and L2_2
  return L2_2
end
L3_1.is_locked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_TimeManager
  L1_2 = L1_2.NowTimeStamp
  L2_2 = A0_2.Duration
  L2_2 = L2_2 * 60
  L2_2 = L2_2 * 60
  L3_2 = A0_2.AcceptTime
  if L1_2 < L3_2 then
    L2_2 = L1_2 + L2_2
  else
    L3_2 = A0_2.AcceptTime
    L2_2 = L3_2 + L2_2
  end
  return L2_2
end
L3_1.get_finish_time_stamp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ExpeditionDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1._get_local_memorized_assigner_index
  L3_2 = A0_2
  L4_2 = L1_2.AssignerIDList
  L4_2 = L4_2.Length
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2.AssignerIDList
  L3_2 = L3_2[L2_2]
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ExpeditionAssignerExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.AssignerName
  return L5_2
end
L3_1.get_assigner_name_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 <= 1 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ExpeditionAssigner
  L4_2 = L2_2
  L3_2 = L2_2.ContainsKey
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = L2_2[A0_2]
    return L3_2
  end
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Random
  L4_2 = L4_2.Range
  L5_2 = 0
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_1._set_local_memorized_assigner_index
  L5_2 = A0_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L3_1._get_local_memorized_assigner_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ExpeditionAssigner
  L4_2 = L2_2
  L3_2 = L2_2.ContainsKey
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L2_2[A0_2] = A1_2
  else
    L4_2 = L2_2
    L3_2 = L2_2.Add
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L3_1._set_local_memorized_assigner_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = A0_2.Config
  L2_2 = L2_2.DisplayItemList
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.get_sorted_items_by_item_config_list
    L3_2 = A0_2.Config
    L3_2 = L3_2.DisplayItemList
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateRewardItemTableSorted
    L3_2 = A0_2.Config
    L3_2 = L3_2.RewardID
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2 or L1_2
    if not L2_2 then
      L2_2 = {}
      L1_2 = L2_2
    end
  end
  L2_2 = L1_2[1]
  L2_2 = L2_2.ItemID
  return L2_2
end
L3_1.get_display_item_id = L4_1
return L3_1
