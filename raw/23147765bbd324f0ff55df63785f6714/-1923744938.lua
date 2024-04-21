local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChroniclePathDetailUnlockConditionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Mission = 1
L1_1.NextDayTime = 2
L1_1.PlayerLevel = 3
L1_1.WorldLevel = 4
L1_1.Message = 5
L1_1.GoToInteraction = 6
L1_1.EnterMap = 7
L1_1.LeaveMap = 8
L1_1.MuseumLevel = 9
L1_1.AlleyLevel = 10
L1_1.HeliobusLevel = 11
L1_1.MissionScheduleStartTime = 12
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Mission.Chronicle.PathDetail.MissionChroniclePathDetailUnlockConditionItem"
  L6_2 = "Ui.Mission.Chronicle.PathDetail.MissionChroniclePathDetailUnlockConditionItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._condition_panel = L1_2
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_condition_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._condition_table
  if L1_2 == nil then
    L1_2 = A0_2._condition_table
    L1_2 = #L1_2
    if L1_2 == 0 then
      L1_2 = nil
      return L1_2
    end
  end
  L1_2 = A0_2._condition_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._path_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._get_prepare_mission_id_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.MissionDataPromised
  L6_2 = L2_2
  L7_2 = L1_2
  L8_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._generate_unlock_condition
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_condition_panel
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1._setup_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._condition_table = L1_2
  L1_2 = {}
  A0_2._unlock_mission_id_table = L1_2
  A0_2._unlock_next_day_time_stamp = nil
  A0_2._unlock_player_level = nil
  A0_2._unlock_world_level = nil
  A0_2._unlock_message_id = nil
  A0_2._unlock_goto_interaction_map_info = nil
  A0_2._unlock_mission_start_schedial_time_stamp = nil
  A0_2._unlock_museum_level = nil
  A0_2._unlock_alley_level = nil
  A0_2._unlock_heliobus_level = nil
  L1_2 = {}
  A0_2._unlock_enter_map_info_table = L1_2
  L1_2 = {}
  A0_2._unlock_leave_map_info_table = L1_2
  L1_2 = A0_2._path_data
  L1_2 = L1_2.MainMissionData
  if L1_2 ~= nil then
    L1_2 = A0_2._path_data
    L1_2 = L1_2.MainMissionData
    if L1_2 == nil then
      goto lbl_45
    end
    L1_2 = A0_2._path_data
    L1_2 = L1_2.MainMissionData
    L1_2 = L1_2.IsStart
    if L1_2 then
      goto lbl_45
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._path_data
  L2_2 = L2_2.MainMissionID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_param
  L4_2 = L1_2.TakeParam
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_param
  L4_2 = L1_2.BeginParam
  L2_2(L3_2, L4_2)
  ::lbl_45::
  L1_2 = A0_2._path_data
  L1_2 = L1_2.MainMissionData
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._set_message_or_interaction
    L1_2(L2_2)
  else
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_custom_condtion
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_condition_table
  L1_2(L2_2)
end
L0_1._generate_unlock_condition = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = A1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = L6_2.Type
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.MissionBeginType
    L8_2 = L8_2.MultiSequence
    if L7_2 == L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2._set_unlock_condition_mission
      L9_2 = L6_2.Value
      L7_2(L8_2, L9_2)
    else
      L7_2 = L6_2.Type
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.MissionBeginType
      L8_2 = L8_2.SequenceNextDay
      if L7_2 == L8_2 then
        L8_2 = A0_2
        L7_2 = A0_2._check_is_mission_finish
        L9_2 = L6_2.Value
        L7_2 = L7_2(L8_2, L9_2)
        if not L7_2 then
          L8_2 = A0_2
          L7_2 = A0_2._set_unlock_condition_mission
          L9_2 = L6_2.Value
          L7_2(L8_2, L9_2)
        else
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.Client
          L7_2 = L7_2.GlobalVars
          L7_2 = L7_2.s_TimeManager
          L7_2 = L7_2.NextDailyUpdateTime
          A0_2._unlock_next_day_time_stamp = L7_2
        end
      else
        L7_2 = L6_2.Type
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.GameCore
        L8_2 = L8_2.MissionBeginType
        L8_2 = L8_2.PlayerLevel
        if L7_2 == L8_2 then
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.Client
          L7_2 = L7_2.GlobalVars
          L7_2 = L7_2.s_ModuleManager
          L7_2 = L7_2.PlayerModule
          L7_2 = L7_2.PlayerData
          L7_2 = L7_2.Level
          L8_2 = L6_2.Value
          if L7_2 < L8_2 then
            L8_2 = L6_2.Value
            A0_2._unlock_player_level = L8_2
          end
        else
          L7_2 = L6_2.Type
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.GameCore
          L8_2 = L8_2.MissionBeginType
          L8_2 = L8_2.WorldLevel
          if L7_2 == L8_2 then
            L7_2 = CS
            L7_2 = L7_2.RPG
            L7_2 = L7_2.Client
            L7_2 = L7_2.GlobalVars
            L7_2 = L7_2.s_ModuleManager
            L7_2 = L7_2.PlayerModule
            L7_2 = L7_2.PlayerData
            L7_2 = L7_2.WorldLevel
            L8_2 = L6_2.Value
            if L7_2 < L8_2 then
              L8_2 = L6_2.Value
              A0_2._unlock_world_level = L8_2
            end
          end
        end
      end
    end
  end
end
L0_1._set_param = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_mission_finish
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.TryGetMainMissionData
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = L2_2.IsStart
      if L3_2 then
        L3_2 = L2_2.IsShow
        if L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._check_is_value_exist
          L5_2 = A0_2._unlock_mission_id_table
          L6_2 = A1_2
          L3_2 = L3_2(L4_2, L5_2, L6_2)
          if not L3_2 then
            L3_2 = table
            L3_2 = L3_2.insert
            L4_2 = A0_2._unlock_mission_id_table
            L5_2 = A1_2
            L3_2(L4_2, L5_2)
            return
          end
      end
    end
    else
      L3_2 = nil
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MainMissionExcelTable
      L4_2 = L4_2.GetData
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      if L4_2 == nil then
        L5_2 = G
        L5_2 = L5_2.SuperDebug
        L5_2 = L5_2.LogErrorFormat
        L6_2 = "MissionChroniclePathDetailUnlockConditionPanel: MainMission\232\161\168\228\184\141\229\173\152\229\156\168ID\228\184\186"
        L7_2 = A1_2
        L8_2 = "\231\154\132\228\184\187\228\187\187\229\138\161"
        L6_2 = L6_2 .. L7_2 .. L8_2
        L5_2(L6_2)
      else
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.GlobalVars
        L5_2 = L5_2.s_ModuleManager
        L5_2 = L5_2.MissionModule
        L6_2 = L5_2
        L5_2 = L5_2.GetMainMissionPack
        L7_2 = L4_2.MissionPack
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 ~= nil then
          L6_2 = 0
          L7_2 = L5_2.Length
          L7_2 = L7_2 - 1
          L8_2 = 1
          for L9_2 = L6_2, L7_2, L8_2 do
            L10_2 = L2_1
            L11_2 = L10_2
            L10_2 = L10_2.TryGetMainMissionData
            L12_2 = L5_2[L9_2]
            L10_2 = L10_2(L11_2, L12_2)
            if L10_2 ~= nil then
              L11_2 = L10_2.IsStart
              if L11_2 then
                L11_2 = L10_2.IsShow
                if L11_2 then
                  L3_2 = L10_2
                  break
                end
              end
            end
          end
        end
        if L3_2 ~= nil then
          L7_2 = A0_2
          L6_2 = A0_2._check_is_value_exist
          L8_2 = A0_2._unlock_mission_id_table
          L9_2 = L3_2.ID
          L6_2 = L6_2(L7_2, L8_2, L9_2)
          if not L6_2 then
            L6_2 = table
            L6_2 = L6_2.insert
            L7_2 = A0_2._unlock_mission_id_table
            L8_2 = L3_2.ID
            L6_2(L7_2, L8_2)
          end
        else
          L7_2 = A0_2
          L6_2 = A0_2._check_is_value_exist
          L8_2 = A0_2._unlock_mission_id_table
          L9_2 = A1_2
          L6_2 = L6_2(L7_2, L8_2, L9_2)
          if not L6_2 then
            L6_2 = table
            L6_2 = L6_2.insert
            L7_2 = A0_2._unlock_mission_id_table
            L8_2 = A1_2
            L6_2(L7_2, L8_2)
          end
        end
      end
    end
  end
end
L0_1._set_unlock_condition_mission = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._path_data
  L1_2 = L1_2.MainMissionData
  L1_2 = L1_2.IsStart
  if L1_2 then
    L1_2 = A0_2._path_data
    L1_2 = L1_2.MainMissionData
    L1_2 = L1_2.IsShow
    if not L1_2 then
      L1_2 = A0_2._path_data
      L1_2 = L1_2.MainMissionData
      L1_2 = L1_2.SubMissions
      L2_2 = 0
      L3_2 = L1_2.Count
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = L1_2[L5_2]
        L7_2 = L6_2.IsStart
        if L7_2 then
          L7_2 = L6_2.IsTrackByMessage
          if L7_2 then
            L7_2 = L6_2.MessageGroupID
            A0_2._unlock_message_id = L7_2
            return
          else
            L7_2 = L6_2.WayPointType
            L8_2 = CS
            L8_2 = L8_2.RPG
            L8_2 = L8_2.GameCore
            L8_2 = L8_2.MissionWayPointType
            L8_2 = L8_2.None
            if L7_2 ~= L8_2 then
              L7_2 = CS
              L7_2 = L7_2.RPG
              L7_2 = L7_2.Client
              L7_2 = L7_2.GlobalVars
              L7_2 = L7_2.s_ModuleManager
              L7_2 = L7_2.MissionModule
              L8_2 = L7_2
              L7_2 = L7_2.GetSubMissionInfoConfig
              L9_2 = L6_2.Row
              L9_2 = L9_2.SubMissionID
              L7_2 = L7_2(L8_2, L9_2)
              L8_2 = L7_2.MazeFloorID
              L9_2 = G
              L9_2 = L9_2.MissionUtils
              L9_2 = L9_2.get_entry_id_by_floor_id
              L10_2 = L8_2
              L9_2 = L9_2(L10_2)
              L10_2 = {}
              L10_2.FloorID = L8_2
              L10_2.EntryID = L9_2
              L11_2 = L6_2.ID
              L10_2.SubMissionID = L11_2
              A0_2._unlock_goto_interaction_map_info = L10_2
              return
            end
          end
        end
      end
    end
  end
end
L0_1._set_message_or_interaction = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionScheduleExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._path_data
  L2_2 = L2_2.MainMissionID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ScheduleModule
  L3_2 = L2_2
  L2_2 = L2_2.GetScheduleDataByID
  L4_2 = L1_2.ScheduleDataID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.BeginTimeDate
  A0_2._unlock_mission_start_schedial_time_stamp = L3_2
end
L0_1._get_mission_start_schedule_time_stamp = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_value_exist = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.IsFinish
    if L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = L2_1.DeletedMainMissionIDs
  L4_2 = L3_2
  L3_2 = L3_2.Contains
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_mission_finish = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._path_data
  L1_2 = L1_2.CustomUnlockConditionConfigList
  if L1_2 == nil then
    return
  end
  L1_2 = 0
  L2_2 = A0_2._path_data
  L2_2 = L2_2.CustomUnlockConditionConfigList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._path_data
    L5_2 = L5_2.CustomUnlockConditionConfigList
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.FinishSubMissionID
    L7_2 = nil
    if L6_2 ~= nil and L6_2 ~= 0 then
      L8_2 = L2_1
      L9_2 = L8_2
      L8_2 = L8_2.GetSubMissionData
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L8_2
    end
    if L7_2 ~= nil then
      L8_2 = L7_2.IsFinish
      if L8_2 then
        goto lbl_137
      end
    end
    L8_2 = L5_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ChronicleCustomUnlockCondition
    L9_2 = L9_2.EnterMap
    if L8_2 == L9_2 then
      L8_2 = A0_2._path_data
      L8_2 = L8_2.MainMissionData
      L8_2 = L8_2.IsStart
      if L8_2 then
        L8_2 = {}
        L9_2 = L5_2.Param
        L8_2.FloorID = L9_2
        L10_2 = A0_2
        L9_2 = A0_2._check_is_in_target_map
        L11_2 = L8_2.FloorID
        L9_2 = L9_2(L10_2, L11_2)
        if not L9_2 then
          L9_2 = G
          L9_2 = L9_2.MissionUtils
          L9_2 = L9_2.get_entry_id_by_floor_id
          L10_2 = L8_2.FloorID
          L9_2 = L9_2(L10_2)
          L8_2.EntryID = L9_2
          L10_2 = A0_2
          L9_2 = A0_2._check_is_value_exist
          L11_2 = A0_2._unlock_enter_map_info_table
          L12_2 = L8_2.FloorID
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          if not L9_2 then
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = A0_2._unlock_enter_map_info_table
            L11_2 = L8_2
            L9_2(L10_2, L11_2)
          end
        end
      end
    else
      L8_2 = L5_2.Type
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ChronicleCustomUnlockCondition
      L9_2 = L9_2.LeaveMap
      if L8_2 == L9_2 then
        L8_2 = A0_2._path_data
        L8_2 = L8_2.MainMissionData
        L8_2 = L8_2.IsStart
        if L8_2 then
          L8_2 = {}
          L9_2 = L5_2.Param
          L8_2.FloorID = L9_2
          L9_2 = G
          L9_2 = L9_2.MissionUtils
          L9_2 = L9_2.get_entry_id_by_floor_id
          L10_2 = L8_2.FloorID
          L9_2 = L9_2(L10_2)
          L8_2.EntryID = L9_2
          L10_2 = A0_2
          L9_2 = A0_2._check_is_value_exist
          L11_2 = A0_2._unlock_leave_map_info_table
          L12_2 = L8_2.FloorID
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          if not L9_2 then
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = A0_2._unlock_leave_map_info_table
            L11_2 = L8_2
            L9_2(L10_2, L11_2)
          end
        end
      else
        L8_2 = L5_2.Type
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.GameCore
        L9_2 = L9_2.ChronicleCustomUnlockCondition
        L9_2 = L9_2.MuseumLevel
        if L8_2 == L9_2 then
          L8_2 = L5_2.Param
          A0_2._unlock_museum_level = L8_2
        else
          L8_2 = L5_2.Type
          L9_2 = CS
          L9_2 = L9_2.RPG
          L9_2 = L9_2.GameCore
          L9_2 = L9_2.ChronicleCustomUnlockCondition
          L9_2 = L9_2.AlleyLevel
          if L8_2 == L9_2 then
            L8_2 = L5_2.Param
            A0_2._unlock_alley_level = L8_2
          else
            L8_2 = L5_2.Type
            L9_2 = CS
            L9_2 = L9_2.RPG
            L9_2 = L9_2.GameCore
            L9_2 = L9_2.ChronicleCustomUnlockCondition
            L9_2 = L9_2.HeliobusLevel
            if L8_2 == L9_2 then
              L8_2 = L5_2.Param
              A0_2._unlock_heliobus_level = L8_2
            end
          end
        end
      end
    end
    ::lbl_137::
  end
end
L0_1._get_custom_condtion = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AdventureModule
  L2_2 = L2_2.MapDef
  L3_2 = L2_2.FloorID
  L3_2 = A1_2 == L3_2
  return L3_2
end
L0_1._check_is_in_target_map = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.FloorID
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_floor_id_exist = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_all_unlock_mission_can_begin
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._unlock_mission_id_table
  L2_2 = #L2_2
  L2_2 = L2_2 == 0
  L3_2 = 1
  L4_2 = A0_2._unlock_mission_id_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = L1_1.Mission
    L7_2.Type = L8_2
    L8_2 = A0_2._unlock_mission_id_table
    L8_2 = L8_2[L6_2]
    L7_2.Param = L8_2
    L8_2 = A0_2._path_data
    L7_2.PathData = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._condition_table
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._unlock_player_level
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.PlayerLevel
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_player_level
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._unlock_world_level
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.WorldLevel
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_world_level
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._unlock_next_day_time_stamp
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.NextDayTime
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_next_day_time_stamp
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._unlock_message_id
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.Message
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_message_id
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._unlock_goto_interaction_map_info
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.GoToInteraction
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_goto_interaction_map_info
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._unlock_mission_start_schedial_time_stamp
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.MissionScheduleStartTime
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_mission_start_schedial_time_stamp
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = 1
  L4_2 = A0_2._unlock_enter_map_info_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = L1_1.EnterMap
    L7_2.Type = L8_2
    L8_2 = A0_2._unlock_enter_map_info_table
    L8_2 = L8_2[L6_2]
    L7_2.Param = L8_2
    L8_2 = A0_2._path_data
    L7_2.PathData = L8_2
    L8_2 = not L2_2
    L7_2.ForceDisable = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._condition_table
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = 1
  L4_2 = A0_2._unlock_leave_map_info_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = L1_1.LeaveMap
    L7_2.Type = L8_2
    L8_2 = A0_2._unlock_leave_map_info_table
    L8_2 = L8_2[L6_2]
    L7_2.Param = L8_2
    L8_2 = A0_2._path_data
    L7_2.PathData = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._condition_table
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._unlock_museum_level
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.MuseumLevel
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_museum_level
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._unlock_alley_level
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.AlleyLevel
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_alley_level
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._unlock_heliobus_level
  if L3_2 ~= nil then
    L3_2 = {}
    L4_2 = L1_1.HeliobusLevel
    L3_2.Type = L4_2
    L4_2 = A0_2._unlock_heliobus_level
    L3_2.Param = L4_2
    L4_2 = A0_2._path_data
    L3_2.PathData = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._condition_table
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._unlock_next_day_time_stamp
  if L3_2 ~= nil then
    L3_2 = A0_2._condition_table
    L3_2 = #L3_2
    if 1 < L3_2 then
      L3_2 = 1
      L4_2 = A0_2._condition_table
      L4_2 = #L4_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = A0_2._condition_table
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.Type
        L8_2 = L1_1.NextDayTime
        if L7_2 == L8_2 then
          L7_2 = table
          L7_2 = L7_2.remove
          L8_2 = A0_2._condition_table
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
          break
        end
      end
    end
  end
end
L0_1._generate_condition_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._unlock_mission_id_table
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = true
    return L1_2
  end
  L1_2 = 1
  L2_2 = A0_2._unlock_mission_id_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetMainMissionData
    L7_2 = A0_2._unlock_mission_id_table
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.IsStart
      if L6_2 then
        L6_2 = L5_2.IsShow
        if L6_2 then
          goto lbl_27
        end
      end
      L6_2 = false
      return L6_2
    end
    ::lbl_27::
  end
  L1_2 = true
  return L1_2
end
L0_1._check_is_all_unlock_mission_can_begin = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._path_data
  L3_2 = L3_2.MainMissionID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_mission_id_from_param
  L5_2 = L2_2.TakeParam
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_mission_id_from_param
  L5_2 = L2_2.BeginParam
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.MainMissionExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L1_2[L6_2]
    L7_2 = L7_2(L8_2)
    if L7_2 == nil then
      L8_2 = G
      L8_2 = L8_2.SuperDebug
      L8_2 = L8_2.LogErrorFormat
      L9_2 = "MissionChroniclePathDetailUnlockConditionPanel: MainMission\232\161\168\228\184\141\229\173\152\229\156\168ID\228\184\186"
      L10_2 = L1_2[L6_2]
      L11_2 = "\231\154\132\228\184\187\228\187\187\229\138\161"
      L9_2 = L9_2 .. L10_2 .. L11_2
      L8_2(L9_2)
    else
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.GlobalVars
      L8_2 = L8_2.s_ModuleManager
      L8_2 = L8_2.MissionModule
      L9_2 = L8_2
      L8_2 = L8_2.GetMainMissionPack
      L10_2 = L7_2.MissionPack
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 ~= nil then
        L9_2 = 0
        L10_2 = L8_2.Length
        L10_2 = L10_2 - 1
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L8_2[L12_2]
          L15_2 = L1_2
          L14_2 = L1_2.Contains
          L16_2 = L13_2
          L14_2 = L14_2(L15_2, L16_2)
          if not L14_2 then
            L15_2 = L1_2
            L14_2 = L1_2.Add
            L16_2 = L13_2
            L14_2(L15_2, L16_2)
          end
        end
      end
    end
  end
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = 0
  L5_2 = A0_2._path_data
  L5_2 = L5_2.CustomUnlockConditionConfigList
  L5_2 = L5_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._path_data
    L8_2 = L8_2.CustomUnlockConditionConfigList
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2.FinishSubMissionID
    if L9_2 ~= nil and L9_2 ~= 0 then
      L11_2 = L3_2
      L10_2 = L3_2.Contains
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L11_2 = L3_2
        L10_2 = L3_2.Add
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.Collections
  L4_2 = L4_2.Generic
  L4_2 = L4_2.List
  L5_2 = CS
  L5_2 = L5_2.System
  L5_2 = L5_2.UInt32
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2()
  L5_2 = L1_2
  L6_2 = L3_2
  L7_2 = L4_2
  return L5_2, L6_2, L7_2
end
L0_1._get_prepare_mission_id_list = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = L7_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.MissionBeginType
    L9_2 = L9_2.MultiSequence
    if L8_2 ~= L9_2 then
      L8_2 = L7_2.Type
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.MissionBeginType
      L9_2 = L9_2.SequenceNextDay
      if L8_2 ~= L9_2 then
        goto lbl_31
      end
    end
    L9_2 = A2_2
    L8_2 = A2_2.Contains
    L10_2 = L7_2.Value
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L9_2 = A2_2
      L8_2 = A2_2.Add
      L10_2 = L7_2.Value
      L8_2(L9_2, L10_2)
    end
    ::lbl_31::
  end
end
L0_1._get_mission_id_from_param = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._condition_table
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = A0_2._condition_table
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2._condition_panel
    L3_2 = L2_2
    L2_2 = L2_2.rebind_child_node
    L4_2 = A0_2._condition_table
    L4_2 = #L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._condition_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._condition_table
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._condition_panel
    L3_2 = L2_2
    L2_2 = L2_2.update_navigation
    L4_2 = NavigationType
    L4_2 = L4_2.Vertical
    L2_2(L3_2, L4_2)
    L1_2 = 32
  else
    L1_2 = 1
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = L1_2
      L0_3(L1_3, L2_3)
    end
  end
  L2_2(L3_2)
end
L0_1._setup_condition_panel = L3_1
return L0_1
