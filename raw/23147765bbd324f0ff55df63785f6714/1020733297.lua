local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.QuestUtils
L1_1 = G
L1_1 = L1_1.StaticClass
L2_1 = "ActivityRewardUtils"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.RewardPreview.OptionAvatarRewardSelectDialog"
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.StrExt
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = L3_2.LuaTable
    L5_2 = L4_2
    L4_2 = L4_2.set_title_icon_path
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
  return L3_2
end
L1_1.show_avatar_reward_select_dialog = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Activity.CommonActivityRewardPage"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L1_1.show_common_activity_reward_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityQuestRewardConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = L1_1.log_error
    L3_2 = "ActivityRewardID %d\233\133\141\231\189\174\230\156\170\230\137\190\229\136\176\239\188\140\232\175\183\230\163\128\230\159\165\233\133\141\231\189\174"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = nil
    return L2_2
  end
  return L1_2
end
L1_1.get_reward_config_row = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityQuestRewardTabExcelTable
  L3_2 = 0
  L4_2 = A0_2.QuestTabGroupList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.QuestTabGroupList
    L7_2 = L7_2[L6_2]
    L8_2 = L2_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    else
      L9_2 = L1_1.log_error
      L10_2 = "ActivityRewardID %d\228\184\173QuestTabGroupID %d\233\133\141\231\189\174\230\156\170\230\137\190\229\136\176\239\188\140\232\175\183\230\163\128\230\159\165\233\133\141\231\189\174"
      L11_2 = A0_2.ActivityRewardID
      L12_2 = L7_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  return L1_2
end
L1_1.get_tab_group_rows_by_reward_config_row = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityQuestRewardDataExcelTable
  L3_2 = 0
  L4_2 = A0_2.QuestTabList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.QuestTabList
    L7_2 = L7_2[L6_2]
    L8_2 = L2_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    else
      L9_2 = L1_1.log_error
      L10_2 = "QuestTabGroupID %d\228\184\173QuestTabID %d\233\133\141\231\189\174\230\156\170\230\137\190\229\136\176\239\188\140\232\175\183\230\163\128\230\159\165\233\133\141\231\189\174"
      L11_2 = A0_2.QuestTabGroupID
      L12_2 = L7_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  return L1_2
end
L1_1.get_tab_rows_by_tab_group_row = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_1.get_tab_rows_by_tab_group_row
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = L6_2.QuestTabGroupID
    L1_2[L8_2] = L7_2
  end
  return L1_2
end
L1_1.get_tab_group_2_tab_rows_by_tab_group_rows = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = L1_1.get_tab_rows_by_tab_group_row
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L1_1.get_quest_data_arr_by_tab_row
    L9_2 = L7_2
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L1_1.get_quest_data_arr_by_tab_group_row = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 == nil then
    L2_2 = A1_2 or L2_2
    if not A1_2 then
      L2_2 = nil
    end
    return L2_2
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = {}
  end
  L3_2 = 0
  L4_2 = A0_2.QuestList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.QuestList
    L7_2 = L7_2[L6_2]
    L8_2 = L0_1.get_quest_data
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    else
      L9_2 = L1_1.log_error
      L10_2 = "QuestTabID %d\228\184\173QuestID %d\233\133\141\231\189\174\230\156\170\230\137\190\229\136\176\239\188\140\232\175\183\230\163\128\230\159\165\233\133\141\231\189\174"
      L11_2 = A0_2.QuestTabID
      L12_2 = L7_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  return L2_2
end
L1_1.get_quest_data_arr_by_tab_row = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L1_1.get_quest_data_arr_by_tab_row
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L13_2 = L11_2.QuestTabID
      L1_2[L13_2] = L12_2
    end
  end
  return L1_2
end
L1_1.get_tab_2_quest_data_arr_by_tab_group_2_tab_rows = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = A0_2.FinalRewardQuest
  if 0 < L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = A0_2.FinalRewardQuest
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_1.get_tab_group_rows_by_reward_config_row
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L1_1.get_quest_ids_by_tab_group_row
    L9_2 = L7_2
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L1_1.get_quest_ids_by_reward_config_row = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    L2_2 = A1_2 or L2_2
    if not A1_2 then
      L2_2 = nil
    end
    return L2_2
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = {}
  end
  L3_2 = L1_1.get_tab_rows_by_tab_group_row
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L1_1.get_quest_ids_by_tab_row
    L10_2 = L8_2
    L11_2 = L2_2
    L9_2(L10_2, L11_2)
  end
  return L2_2
end
L1_1.get_quest_ids_by_tab_group_row = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    L2_2 = A1_2 or L2_2
    if not A1_2 then
      L2_2 = nil
    end
    return L2_2
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = {}
  end
  L3_2 = 0
  L4_2 = A0_2.QuestList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.QuestList
    L7_2 = L7_2[L6_2]
    if 0 < L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L1_1.get_quest_ids_by_tab_row = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L1_1.get_quest_ids_by_tab_row
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L13_2 = L11_2.QuestTabID
      L1_2[L13_2] = L12_2
    end
  end
  return L1_2
end
L1_1.get_tab_2_quest_ids_by_tab_group_2_tab_rows = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.get_reward_config_row
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.ActivityModule
  if L2_2 == 0 then
    L3_2 = true
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ScheduleModule
  L4_2 = L3_2
  L3_2 = L3_2.GetScheduleDataByActivityModuleID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.IsInSchedule
  L4_2 = L3_2 ~= nil and L4_2
  return L4_2
end
L1_1.is_activity_reward_available = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.IsActivityRewardShowRedDot
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_activity_reward_show_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.IsTabGroupShowRedDot
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_tab_group_show_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.IsTabShowRedDot
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_tab_show_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.IsActivityRewardShowRedDot
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_activity_reward_show_red_dot_by_row = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.IsTabGroupShowRedDot
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_tab_group_show_red_dot_by_row = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ActivityRewardUtils
  L1_2 = L1_2.IsTabShowRedDot
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.is_tab_show_red_dot_by_row = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "[ActivityReward] "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = ...
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.log = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogWarningFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "[ActivityReward] "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = ...
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.log_warning = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogErrorFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "[ActivityReward] "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = ...
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.log_error = L2_1
L2_1 = G
L2_1.ActivityRewardUtils = L1_1
return L1_1
