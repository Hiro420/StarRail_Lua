local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTreasureDungeonFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  A0_2._should_refresh = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "TreasureDungeonReward"
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_data_refreshed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MGFIMPKKAGC
  L4_2 = A0_2._on_data_refreshed
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_data_refreshed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MGFIMPKKAGC
  L4_2 = A0_2._on_data_refreshed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._treasuredungeon_activity_data
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ActivityModule
    L2_2 = L1_2
    L1_2 = L1_2.GetTreasureDungeonActivityData
    L1_2 = L1_2(L2_2)
    A0_2._treasuredungeon_activity_data = L1_2
  end
  L1_2 = A0_2._treasuredungeon_activity_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._should_refresh
  if L1_2 then
    A0_2._should_refresh = false
    L1_2 = A0_2._treasuredungeon_activity_data
    L2_2 = L1_2
    L1_2 = L1_2.RefreshRedDot
    L1_2(L2_2)
  end
  L1_2 = A0_2._treasuredungeon_activity_data
  L1_2 = L1_2.IsFinalRewardCanTake
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "TreasureDungeonFinalReward"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._treasuredungeon_activity_data
  L1_2 = L1_2.HasRewardDungeonList
  L2_2 = A0_2._treasuredungeon_activity_data
  L2_2 = L2_2.NewDungeonList
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "TreasureDungeonRewardTab"
    L10_2 = L1_2[L6_2]
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "TreasureDungeonNewDungeon"
    L10_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._should_refresh = true
end
L0_1._on_data_refreshed = L1_1
return L0_1
