local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityFeverTimeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._level_config_row_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.dtor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "ActivityFeverTimeQuestRewardTab"
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = L0_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L4_2 = L0_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L0_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L4_2 = L0_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_unlock_red_dot
  L1_2(L2_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1.RedDotQuestSeries
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "ActivityFeverTimeQuestRewardTab"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._refresh_quest_red_dot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._level_config_row_list
  L1_2 = #L1_2
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._generate_level_config_data
    L1_2(L2_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._level_config_row_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.CheckHasSeenLevel
    L8_2 = L5_2.FeverTimeID
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L8_2 = A0_2
      L7_2 = A0_2._check_is_challenged
      L9_2 = L5_2.FeverTimeID
      L7_2 = L7_2(L8_2, L9_2)
      if not L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2._check_is_un_lock
        L9_2 = L5_2
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L7_2 = G
          L7_2 = L7_2.RedDotModule
          L7_2 = L7_2.Instance
          L8_2 = L7_2
          L7_2 = L7_2.update_reddot
          L9_2 = "ActivityFeverTimeLevelUnlock"
          L10_2 = L5_2.FeverTimeID
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsShowEveryDayRedDot
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ActivityFeverTimeGoToEveryDay"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_level_unlock_red_dot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityFeverTimeConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._level_config_row_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._level_config_row_list
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.FeverTimeID
    L3_3 = A1_3.FeverTimeID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
end
L0_1._generate_level_config_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetScheduleDataByActivityModuleID
  L4_2 = A1_2.ActivityModuleID
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.IsInSchedule
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L0_1._check_is_un_lock = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetHistoryBattleRank
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityRank
  L3_2 = L3_2.None
  L3_2 = L2_2 ~= L3_2
  return L3_2
end
L0_1._check_is_challenged = L3_1
return L0_1
