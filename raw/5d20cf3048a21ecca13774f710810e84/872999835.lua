local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityFindTrotterFilter"
L4_1 = G
L4_1 = L4_1.BaseFilter
L5_1 = G
L2_1 = L2_1(L3_1, L4_1, L5_1)
function L3_1(A0_2)
  local L1_2
  A0_2._has_inited = false
  A0_2._in_init = false
  L1_2 = {}
  A0_2._taken_mission_ids = L1_2
  L1_2 = {}
  A0_2._taken_sub_mission_ids = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "ActivityFindTrotterReward"
  return L1_2
end
L2_1.get_associate_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenMainMission
  L4_2 = L2_1._on_mission_taken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenSubMission
  L4_2 = L2_1._on_sub_mission_taken
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.register_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenMainMission
  L4_2 = L2_1._on_mission_taken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenSubMission
  L4_2 = L2_1._on_sub_mission_taken
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.unregister_events = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_init
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_update_new_record
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_update_new_record_by_sub
  L1_2(L2_2)
  L1_2 = A0_2._has_inited
  if L1_2 then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsAvailable
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._refresh_reward
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._refresh_mission
      L1_2(L2_2)
    end
  end
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._has_inited
  if not L1_2 then
    L1_2 = A0_2._in_init
    if not L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  A0_2._has_inited = false
  A0_2._in_init = true
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFindTrotterActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = A0_2._activity_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.DataPrepared
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3
    A0_2._in_init = false
    A0_2._has_inited = true
  end
  L1_2(L2_2, L3_2)
end
L2_1._safe_init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsFinalRewardAvailable
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "ActivityFindTrotterReward"
    L1_2(L2_2, L3_2)
  end
end
L2_1._refresh_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentFindTrotterData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = L1_2.MissionID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.IsFinish
    if not L3_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  if L3_2 ~= nil then
    L4_2 = L3_2.ActivityFindTrotterNewMissionIDs
    if L4_2 ~= nil then
      L4_2 = L3_2.ActivityFindTrotterNewMissionIDs
      L5_2 = L4_2
      L4_2 = L4_2.Contains
      L6_2 = L1_2.MissionID
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        goto lbl_34
      end
    end
  end
  do return end
  ::lbl_34::
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.update_reddot
  L6_2 = "ActivityFindTrotterMission"
  L4_2(L5_2, L6_2)
end
L2_1._refresh_mission = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._taken_mission_ids
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = nil ~= L2_2
  if L2_2 then
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._taken_mission_ids
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_init
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_update_new_record
  L3_2(L4_2)
end
L2_1._on_mission_taken = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._has_inited
  if L1_2 then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsAvailable
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = ipairs
  L3_2 = A0_2._taken_mission_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._activity_data
    L8_2 = L7_2
    L7_2 = L7_2.IsFindTrotterMission
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = L1_2.ActivityFindTrotterNewMissionIDs
      L8_2 = L7_2
      L7_2 = L7_2.Add
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = L1_2.ActivityFindTrotterToPlayMissionIDs
      L8_2 = L7_2
      L7_2 = L7_2.Add
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = {}
  A0_2._taken_mission_ids = L2_2
end
L2_1._safe_update_new_record = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._taken_sub_mission_ids
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = nil ~= L2_2
  if L2_2 then
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._taken_sub_mission_ids
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_init
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_update_new_record_by_sub
  L3_2(L4_2)
end
L2_1._on_sub_mission_taken = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._has_inited
  if L1_2 then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsAvailable
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = ipairs
  L2_2 = A0_2._taken_sub_mission_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._activity_data
    L7_2 = L6_2
    L6_2 = L6_2.IsStartSubMission
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_ModuleManager
      L6_2 = L6_2.MissionModule
      L7_2 = L6_2
      L6_2 = L6_2.GetSubMissionData
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L8_2 = A0_2
        L7_2 = A0_2._on_mission_taken
        L9_2 = L6_2.MainMissionID
        L7_2(L8_2, L9_2)
      end
    end
  end
  L1_2 = {}
  A0_2._taken_sub_mission_ids = L1_2
end
L2_1._safe_update_new_record_by_sub = L3_1
return L2_1
