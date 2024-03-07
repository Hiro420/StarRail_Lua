local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityTelevisionModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityTelevisionFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "ActivityTelevisionQuestRewardTab"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L4_2 = L1_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.register_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = L1_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L4_2 = L1_1._refresh_quest_red_dot
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.unregister_events = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_unlock_red_dot
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1.RedDotQuestSeries
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
    L8_2 = "ActivityTelevisionQuestRewardTab"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1._refresh_quest_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllTelevisionData
  L1_2 = L1_2(L2_2)
  A0_2.data = L1_2
  L1_2 = L0_1.TelevisionDataCount
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.data
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.Prefs
      L7_2 = L7_2.User
      L7_2 = L7_2.ActivityTelevisionLevelSeenID
      L8_2 = L7_2
      L7_2 = L7_2.Contains
      L9_2 = L6_2.ID
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L6_2
      L8_2 = L6_2.IsUnlock
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L9_2 = L6_2
        L8_2 = L6_2.NotChallenged
        L8_2 = L8_2(L9_2)
        if L8_2 and not L7_2 then
          L8_2 = G
          L8_2 = L8_2.RedDotModule
          L8_2 = L8_2.Instance
          L9_2 = L8_2
          L8_2 = L8_2.update_reddot
          L10_2 = "ActivityTelevisionLevelUnlock"
          L11_2 = L6_2.ID
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ActivityTelevisionLevelSeenID
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.IsShowEveryDayRedDot
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_64
    end
  end
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.update_reddot
  L4_2 = "ActivityTelevisionLevelUnlock"
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  ::lbl_64::
end
L1_1._refresh_level_unlock_red_dot = L2_1
return L1_1
