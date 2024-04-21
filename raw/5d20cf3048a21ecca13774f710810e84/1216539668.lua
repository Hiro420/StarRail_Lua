local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.TravelBrochureUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochureDiaryFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._new_diary_ids = L1_2
  L1_2 = {}
  A0_2._reward_diary_ids = L1_2
  A0_2._has_inited = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "TravelBrochureDiaryFinishReward"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDiaryUnlocked
  L4_2 = L0_1._on_diary_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDiarySeen
  L4_2 = L0_1._on_diary_seen
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureChoiceSelected
  L4_2 = L0_1._on_diary_seen
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_refresh_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDataSynced
  L4_2 = A0_2._on_data_synced
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDiaryUnlocked
  L4_2 = L0_1._on_diary_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDiarySeen
  L4_2 = L0_1._on_diary_seen
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureChoiceSelected
  L4_2 = L0_1._on_diary_seen
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_refresh_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDataSynced
  L4_2 = A0_2._on_data_synced
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._has_inited
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._update_new_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._update_reward_data
    L1_2(L2_2)
    A0_2._has_inited = true
  end
  L1_2 = G
  L1_2 = L1_2.TravelBrochureUtils
  L1_2 = L1_2.show_reddot
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._new_diary_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "TravelBrochureDiaryNew"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._reward_diary_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "TravelBrochureDiaryFinishReward"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._new_diary_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TravelBrochureConfigExcelTable
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
    L3_2 = L2_2.ID
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TravelBrochureUtils
    L4_2 = L4_2.IsDiaryNew
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._new_diary_ids
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
  L3_2 = L1_2
  L2_2 = L1_2.Dispose
  L2_2(L3_2)
end
L0_1._update_new_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._reward_diary_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TravelBrochureConfigExcelTable
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
    L3_2 = L2_2.ID
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.TravelBrochureModule
    L5_2 = L4_2
    L4_2 = L4_2.GetDiaryData
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2.HasAvailableReward
    if L4_2 then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._reward_diary_ids
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
  L3_2 = L1_2
  L2_2 = L1_2.Dispose
  L2_2(L3_2)
end
L0_1._update_reward_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_new_data
  L1_2(L2_2)
end
L0_1._on_diary_unlocked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_new_data
  L1_2(L2_2)
end
L0_1._on_diary_seen = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_reward_data
  L1_2(L2_2)
end
L0_1._on_refresh_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_new_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_reward_data
  L1_2(L2_2)
end
L0_1._on_data_synced = L1_1
return L0_1
