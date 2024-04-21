local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidCollectionFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  A0_2._tab_group_ids = nil
  L1_2 = {}
  A0_2._new_group_ids = L1_2
  L1_2 = {}
  A0_2._new_tab_keys = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "RaidCollectionGroupNew"
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
  L3_2 = L3_2.RaidCollectionRefreshSeen
  L4_2 = L0_1._refresh_all
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RaidCollectionSynced
  L4_2 = L0_1._refresh_all
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
  L3_2 = L3_2.RaidCollectionRefreshSeen
  L4_2 = L0_1._refresh_all
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RaidCollectionSynced
  L4_2 = L0_1._refresh_all
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._tab_group_ids
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_all
    L1_2(L2_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._new_group_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "RaidCollectionGroupNew"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._new_tab_keys
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "RaidCollectionTabNew"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._tab_group_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityRaidCollectionModeExcelTable
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
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_array
    L4_2 = L2_2.RaidCollectionGroupList
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._tab_group_ids
    L5_2 = L2_2.RaidCollectionTabID
    L4_2[L5_2] = L3_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.Dispose
  L2_2(L3_2)
end
L0_1._init_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  A0_2._new_group_ids = L1_2
  L1_2 = {}
  A0_2._new_tab_keys = L1_2
  L1_2 = A0_2._tab_group_ids
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2._tab_group_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = false
    L7_2 = pairs
    L8_2 = L5_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.Client
      L12_2 = L12_2.RaidCollectionUtils
      L12_2 = L12_2.IsGroupNew
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L6_2 = true
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = A0_2._new_group_ids
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
      end
    end
    if L6_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._new_tab_keys
      L9_2 = L4_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_all = L1_1
return L0_1
