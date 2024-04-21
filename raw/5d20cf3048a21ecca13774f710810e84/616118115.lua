local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WayPointModule"
L2_1 = "Logic.BaseModule"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BigMapModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.FloorConnectivityModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.AdventureWaypointType
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L4_1 = L4_1.zero
function L5_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  A0_2._mission_module = L1_2
  L1_2 = {}
  A0_2._extra_waypoint_configs = L1_2
  A0_2._tracking_mission = nil
  L1_2 = {}
  A0_2.all_active_waypointcofings = L1_2
  L1_2 = {}
  A0_2._mission_config_list = L1_2
  A0_2._track_mapping_info_data = nil
  A0_2._track_monster_info_data = nil
  L1_2 = {}
  A0_2._trace_tips_config_list = L1_2
  A0_2._assist_waypoint_data = nil
  A0_2.ignore_player_lock = false
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._mission_module = nil
  A0_2._extra_waypoint_configs = nil
end
L0_1.dtor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEntered
  L4_2 = L0_1._on_adventure_phase_entered
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = L0_1._on_adventure_phase_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMission
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EntityAppear
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FrameBatchEntityRefreshFinish
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MapEntitiesCreated
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnRotatableRegionIgnoreAirlockChanged
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnTeamLeaderRegionChange
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueWayPointRefresh
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FloorConnectivityDataRefresh
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowWayPoint
  L4_2 = L0_1._on_show_waypoint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideWaypoint
  L4_2 = L0_1._on_hide_waypoint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowAssistWayPoint
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideAssistWaypoint
  L4_2 = L0_1._on_refresh_waypoints_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIUpdateMappingInfoTrace
  L4_2 = L0_1._on_ui_update_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIUpdateMonsterInfoTrace
  L4_2 = L0_1._on_ui_update_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnHoYoGroupStatusRefresh
  L4_2 = L0_1._on_hoyo_group_status_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SetWayPointIgnoreLock
  L4_2 = L0_1._on_set_waypoint_ignore_lock
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.Init = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.all_active_waypointcofings
  return L1_2
end
L0_1.get_waypoint_config_table = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.all_active_waypointcofings
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_waypoint_config = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    A1_2 = false
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.ADPInitParams
    if L3_2 ~= nil then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L3_2 = L2_2.ADPInitParams
  L3_2 = L3_2.Map
  if L3_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_mission_waypoint
  L6_2 = L3_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_assist_waypoint
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_map_trace
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._arrange_waypoint_config_list
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.RefreshMissionWayPoint
  L4_2(L5_2)
end
L0_1._do_refresh_waypoints = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L3_2 = {}
  L4_2 = A0_2._mission_module
  L4_2 = L4_2.TrackingMission
  if L4_2 ~= nil then
    L4_2 = 0
    L5_2 = A0_2._mission_module
    L5_2 = L5_2.TrackingMission
    L5_2 = L5_2.SubMissions
    L5_2 = L5_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2._mission_module
      L8_2 = L8_2.TrackingMission
      L8_2 = L8_2.SubMissions
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2.Status
      L9_2 = #L9_2
      L10_2 = G
      L10_2 = L10_2.UtilEngineWrap
      L10_2 = L10_2.ConvCsEnumToNum
      L11_2 = CS
      L11_2 = L11_2.ADBJGKLPCIO
      L11_2 = L11_2.JKHBFDJGBHB
      L10_2 = L10_2(L11_2)
      if L9_2 == L10_2 then
        L10_2 = L8_2
        L9_2 = L8_2.GetWaypointInfo
        L9_2 = L9_2(L10_2)
        L11_2 = A0_2
        L10_2 = A0_2._convert_waypoint_info
        L12_2 = A1_2
        L13_2 = L9_2
        L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2, L13_2)
        if L10_2 ~= nil or L11_2 ~= nil then
          L14_2 = A0_2
          L13_2 = A0_2._get_existing_waypoint
          L15_2 = A0_2._mission_config_list
          L16_2 = L10_2
          L17_2 = L11_2
          L18_2 = L9_2.GroupID
          L19_2 = L9_2.EntityID
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L14_2 = A0_2._mission_module
          L15_2 = L14_2
          L14_2 = L14_2.GetSubMissionInfoConfig
          L16_2 = L8_2.Row
          L16_2 = L16_2.SubMissionID
          L14_2 = L14_2(L15_2, L16_2)
          L15_2 = L14_2.WayPointShowRangeMin
          L17_2 = A0_2
          L16_2 = A0_2._get_icon_path
          L18_2 = L8_2
          L19_2 = L9_2.TargetInCurrentMap
          L16_2 = L16_2(L17_2, L18_2, L19_2)
          L18_2 = A0_2
          L17_2 = A0_2._set_mission_waypoint_config
          L19_2 = L13_2
          L20_2 = L9_2
          L21_2 = L10_2
          L22_2 = L11_2
          L23_2 = L12_2
          L24_2 = A2_2
          L25_2 = L15_2
          L26_2 = L16_2
          L27_2 = L3_1.Mission
          L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          L13_2 = L17_2
          L18_2 = A0_2
          L17_2 = A0_2._is_value_exist
          L19_2 = L3_2
          L20_2 = L13_2
          L17_2 = L17_2(L18_2, L19_2, L20_2)
          if not L17_2 then
            L17_2 = table
            L17_2 = L17_2.insert
            L18_2 = L3_2
            L19_2 = L13_2
            L17_2(L18_2, L19_2)
          end
        end
      end
    end
  end
  A0_2._mission_config_list = L3_2
end
L0_1._refresh_mission_waypoint = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2._mission_module
  L2_2 = L2_2.TrackingMission
  if L2_2 ~= nil then
    L2_2 = A0_2._mission_module
    L2_2 = L2_2.TrackingMission
    L2_2 = L2_2.CurAssistWaypoint
    if L2_2 ~= nil then
      L2_2 = A0_2._mission_module
      L2_2 = L2_2.TrackingMission
      L3_2 = L2_2
      L2_2 = L2_2.GetAssistWaypointInfo
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2._convert_waypoint_info
      L5_2 = A1_2
      L6_2 = L2_2
      L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
      L6_2 = A0_2._mission_module
      L6_2 = L6_2.AssistWaypointFinishDistance
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.ConstValueClientExcelTable
      L7_2 = L7_2.GetData
      L8_2 = "Mission_AssistWayPoint_MapIcon"
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.Value
      L7_2 = L7_2.IntValue
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.MiniMapIconExcelTable
      L8_2 = L8_2.GetData
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2.IconPath
      L11_2 = A0_2
      L10_2 = A0_2._set_mission_waypoint_config
      L12_2 = A0_2._assist_waypoint_data
      L13_2 = L2_2
      L14_2 = L3_2
      L15_2 = L4_2
      L16_2 = L5_2
      L17_2 = false
      L18_2 = L6_2
      L19_2 = L9_2
      L20_2 = L3_1.MissionAssist
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      A0_2._assist_waypoint_data = L10_2
  end
  else
    A0_2._assist_waypoint_data = nil
  end
end
L0_1._refresh_assist_waypoint = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = A2_2.Type
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.MissionWayPointType
  L7_2 = L7_2.Anchor
  if L6_2 == L7_2 then
    L7_2 = A1_2
    L6_2 = A1_2.TryGetAnchor
    L8_2 = A2_2.GroupID
    L9_2 = A2_2.EntityID
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 ~= nil then
      L5_2 = L6_2.Position
    end
  else
    L6_2 = A2_2.Type
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.MissionWayPointType
    L7_2 = L7_2.NPC
    if L6_2 ~= L7_2 then
      L6_2 = A2_2.Type
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.MissionWayPointType
      L7_2 = L7_2.Monster
      if L6_2 ~= L7_2 then
        goto lbl_47
      end
    end
    L6_2 = A2_2.IsEntityBorn
    if L6_2 then
      L7_2 = A1_2
      L6_2 = A1_2.TryGetNpcByGroup
      L8_2 = A2_2.GroupID
      L9_2 = A2_2.EntityID
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 ~= nil then
        L3_2 = L6_2.Entity
      end
    else
      L5_2 = A2_2.EntityBornPosition
      goto lbl_89
      ::lbl_47::
      L6_2 = A2_2.Type
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.MissionWayPointType
      L7_2 = L7_2.Prop
      if L6_2 == L7_2 then
        L7_2 = A1_2
        L6_2 = A1_2.TryGetMapProp
        L8_2 = A2_2.GroupID
        L9_2 = A2_2.EntityID
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L4_2 = L6_2
        L7_2 = A2_2.IsEntityBorn
        if L7_2 then
          if L6_2 ~= nil then
            L3_2 = L6_2.PropEntity
          end
        else
          L5_2 = A2_2.EntityBornPosition
        end
      else
        L6_2 = A2_2.Type
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.MissionWayPointType
        L7_2 = L7_2.District
        if L6_2 == L7_2 then
          L7_2 = A1_2
          L6_2 = A1_2.TryGetMapDistrict
          L8_2 = A2_2.GroupID
          L9_2 = A2_2.EntityID
          L6_2 = L6_2(L7_2, L8_2, L9_2)
          L7_2 = A2_2.IsEntityBorn
          if L7_2 then
            if L6_2 ~= nil then
              L3_2 = L6_2.Entity
            end
          else
            L5_2 = A2_2.EntityBornPosition
          end
        end
      end
    end
  end
  ::lbl_89::
  L6_2 = L3_2
  L7_2 = L5_2
  L8_2 = L4_2
  return L6_2, L7_2, L8_2
end
L0_1._convert_waypoint_info = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = nil
  L3_2 = {}
  L4_2 = A0_2._track_monster_info_data
  if not L4_2 then
    L4_2 = A0_2._track_mapping_info_data
  end
  L5_2 = 0
  L6_2 = 0
  if L4_2 then
    L8_2 = A0_2
    L7_2 = A0_2._get_map_trace_target_entity
    L9_2 = A1_2
    L10_2 = L4_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L9_2
    L5_2 = L8_2
    L2_2 = L7_2
    L7_2 = false
    L8_2 = L4_2.GroupID
    if L5_2 ~= L8_2 then
      L8_2 = L4_2.InstanceID
      if L6_2 ~= L8_2 then
        L7_2 = true
      end
    end
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.AdventureWaypointTarget
    L8_2 = L8_2()
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.HashUtils
    L9_2 = L9_2.HashCombine
    L10_2 = L5_2
    L11_2 = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.IdentificationID = L9_2
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.GameCoreConfigManager
    L9_2 = L9_2.GameCoreUIConfig
    if L2_2 ~= nil then
      L10_2 = G
      L10_2 = L10_2.UtilEngineWrap
      L10_2 = L10_2.IsCsObjectNull
      L11_2 = L2_2.UnityGO
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        L10_2 = L2_2.UnityGO
        L11_2 = L10_2
        L10_2 = L10_2.GetComponent
        L12_2 = typeof
        L13_2 = CS
        L13_2 = L13_2.RPG
        L13_2 = L13_2.Client
        L13_2 = L13_2.AttachPointMapping
        L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        if L10_2 ~= nil then
          L12_2 = L10_2
          L11_2 = L10_2.FindAttachPoint
          L13_2 = L9_2.WaypointTargetAttachPoint
          L11_2 = L11_2(L12_2, L13_2)
          if L11_2 then
            L8_2.IsGameObject = true
            L12_2 = L10_2
            L11_2 = L10_2.FindAttachPoint
            L13_2 = L9_2.WaypointTargetAttachPoint
            L11_2 = L11_2(L12_2, L13_2)
            L11_2 = L11_2.gameObject
            L8_2.TargetObject = L11_2
            L8_2.TargetEntity = L2_2
        end
        else
          L8_2.IsGameObject = false
          L11_2 = L4_2.MapPosition
          L8_2.TargetPos = L11_2
        end
    end
    else
      L8_2.IsGameObject = false
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.GlobalVars
      L10_2 = L10_2.s_ModuleManager
      L10_2 = L10_2.AdventureModule
      L10_2 = L10_2.MapDef
      L12_2 = L10_2
      L11_2 = L10_2.TryGetMapPropDef
      L13_2 = L5_2
      L14_2 = L6_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L13_2 = L10_2
      L12_2 = L10_2.TryGetMapAnchorDef
      L14_2 = L5_2
      L15_2 = L6_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      if L11_2 then
        L13_2 = L11_2.Position
        L8_2.TargetPos = L13_2
      elseif L12_2 then
        L13_2 = L12_2.Position
        L8_2.TargetPos = L13_2
      else
        L13_2 = L4_2.MapPosition
        L8_2.TargetPos = L13_2
      end
    end
    L11_2 = A0_2
    L10_2 = A0_2._get_existing_waypoint
    L12_2 = A0_2._trace_tips_config_list
    L13_2 = L2_2
    L14_2 = L8_2.TargetPos
    L15_2 = L5_2
    L16_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L12_2 = A0_2
    L11_2 = A0_2._set_trace_waypoint_config
    L13_2 = L10_2
    L14_2 = L8_2
    L15_2 = L4_2
    L16_2 = L7_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = L11_2
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L3_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  A0_2._trace_tips_config_list = L3_2
end
L0_1._refresh_map_trace = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = nil
  L4_2 = 0
  L5_2 = 0
  L6_2 = A2_2.ConnectivityGroupIDInstanceID
  L4_2 = L6_2.Key
  L5_2 = L6_2.Value
  L8_2 = A1_2
  L7_2 = A1_2.TryGetMapProp
  L9_2 = L4_2
  L10_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L9_2 = A1_2
  L8_2 = A1_2.TryGetNpcByGroup
  L10_2 = L4_2
  L11_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if L7_2 ~= nil then
    L3_2 = L7_2.PropEntity
  elseif L8_2 ~= nil then
    L3_2 = L8_2.Entity
  end
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L5_2
  return L9_2, L10_2, L11_2
end
L0_1._get_map_trace_target_entity = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = ipairs
  L7_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    if A2_2 ~= nil then
      L11_2 = L10_2.Target
      L11_2 = L11_2.TargetEntity
      if L11_2 == A2_2 then
        return L10_2
      end
    end
    if A3_2 ~= nil then
      L11_2 = L4_1
      if A3_2 ~= L11_2 then
        L11_2 = L10_2.Target
        L11_2 = L11_2.TargetPos
        if L11_2 == A3_2 then
          return L10_2
        end
      end
    end
    if A4_2 ~= 0 and A5_2 ~= 0 then
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.HashUtils
      L11_2 = L11_2.HashCombine
      L12_2 = A4_2
      L13_2 = A5_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = L10_2.Target
      L12_2 = L12_2.IdentificationID
      if L12_2 == L11_2 then
        return L10_2
      end
    end
  end
  L6_2 = nil
  return L6_2
end
L0_1._get_existing_waypoint = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2)
  local L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.GameCore
  L10_2 = L10_2.GameCoreConfigManager
  L10_2 = L10_2.GameCoreUIConfig
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.Vector2
  L11_2 = L11_2.zero
  if A3_2 ~= nil then
    L12_2 = G
    L12_2 = L12_2.UtilEngineWrap
    L12_2 = L12_2.IsCsObjectNull
    L13_2 = A3_2.UnityGO
    L12_2 = L12_2(L13_2)
    if not L12_2 then
      L12_2 = A3_2.UnityGO
      L13_2 = L12_2
      L12_2 = L12_2.GetComponent
      L14_2 = typeof
      L15_2 = CS
      L15_2 = L15_2.RPG
      L15_2 = L15_2.Client
      L15_2 = L15_2.AttachPointMapping
      L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      if L12_2 ~= nil then
        L14_2 = L12_2
        L13_2 = L12_2.FindAttachPoint
        L15_2 = L10_2.WaypointTargetAttachPoint
        L13_2 = L13_2(L14_2, L15_2)
        if L13_2 then
          if A1_2 == nil then
            L13_2 = CS
            L13_2 = L13_2.RPG
            L13_2 = L13_2.Client
            L13_2 = L13_2.AdventureWaypointConfig
            L13_2 = L13_2()
            A1_2 = L13_2
            L13_2 = CS
            L13_2 = L13_2.RPG
            L13_2 = L13_2.Client
            L13_2 = L13_2.TimeUtils
            L13_2 = L13_2.ClientNowMsTimeStamp
            A1_2.CreateTime = L13_2
          end
          L13_2 = CS
          L13_2 = L13_2.RPG
          L13_2 = L13_2.Client
          L13_2 = L13_2.AdventureWaypointTarget
          L13_2 = L13_2()
          L13_2.IsGameObject = true
          L15_2 = L12_2
          L14_2 = L12_2.FindAttachPoint
          L16_2 = L10_2.WaypointTargetAttachPoint
          L14_2 = L14_2(L15_2, L16_2)
          L14_2 = L14_2.gameObject
          L13_2.TargetObject = L14_2
          L13_2.TargetEntity = A3_2
          L14_2 = CS
          L14_2 = L14_2.RPG
          L14_2 = L14_2.HashUtils
          L14_2 = L14_2.HashCombine
          L15_2 = A2_2.GroupID
          L16_2 = A2_2.EntityID
          L14_2 = L14_2(L15_2, L16_2)
          L13_2.IdentificationID = L14_2
          L14_2 = CS
          L14_2 = L14_2.UnityEngine
          L14_2 = L14_2.Vector3
          L15_2 = 0
          L16_2 = L10_2.WaypointAttachPointOffset
          L17_2 = 0
          L14_2 = L14_2(L15_2, L16_2, L17_2)
          A1_2.Offset = L14_2
          A1_2.Target = L13_2
          L14_2 = A2_2.TargetInCurrentMap
          if L14_2 then
            A1_2.ShowRangeMin = A7_2
          else
            A1_2.IsTeleport = true
          end
          A1_2.Offset2D = L11_2
          A1_2.IconPath = A8_2
          A1_2.IsNew = A6_2
          A1_2.WaypointType = A9_2
        end
      end
  end
  elseif A4_2 ~= nil then
    if A1_2 == nil then
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.Client
      L12_2 = L12_2.AdventureWaypointConfig
      L12_2 = L12_2()
      A1_2 = L12_2
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.Client
      L12_2 = L12_2.TimeUtils
      L12_2 = L12_2.ClientNowMsTimeStamp
      A1_2.CreateTime = L12_2
    end
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.Client
    L12_2 = L12_2.AdventureWaypointTarget
    L12_2 = L12_2()
    L12_2.IsGameObject = false
    L12_2.TargetPos = A4_2
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.HashUtils
    L13_2 = L13_2.HashCombine
    L14_2 = A2_2.GroupID
    L15_2 = A2_2.EntityID
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.IdentificationID = L13_2
    L13_2 = CS
    L13_2 = L13_2.UnityEngine
    L13_2 = L13_2.Vector3
    L14_2 = 0
    L15_2 = L10_2.AnchorWaypointHeight
    L16_2 = 0
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    A1_2.Offset = L13_2
    A1_2.Target = L12_2
    L13_2 = A2_2.TargetInCurrentMap
    if L13_2 then
      A1_2.ShowRangeMin = A7_2
    else
      A1_2.IsTeleport = true
    end
    A1_2.IconPath = A8_2
    if A5_2 ~= nil then
      L14_2 = A5_2
      L13_2 = A5_2.SetDeferLoadCallbackWithoutParam
      function L15_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_refresh_waypoints_notify
        L0_3(L1_3)
      end
      L13_2(L14_2, L15_2)
    end
    A1_2.IsNew = A6_2
    A1_2.WaypointType = A9_2
  elseif A5_2 ~= nil then
    L13_2 = A5_2
    L12_2 = A5_2.SetDeferLoadCallbackWithoutParam
    function L14_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_refresh_waypoints_notify
      L0_3(L1_3)
    end
    L12_2(L13_2, L14_2)
  end
  return A1_2
end
L0_1._set_mission_waypoint_config = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GameCoreConfigManager
  L5_2 = L5_2.GameCoreUIConfig
  if A1_2 == nil then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.AdventureWaypointConfig
    L6_2 = L6_2()
    A1_2 = L6_2
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TimeUtils
    L6_2 = L6_2.ClientNowMsTimeStamp
    A1_2.CreateTime = L6_2
  end
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = L5_2.AnchorWaypointHeight
  L9_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A1_2.Offset = L6_2
  A1_2.Target = A2_2
  A1_2.IsTeleport = A4_2
  L6_2 = A0_2._track_monster_info_data
  if L6_2 ~= nil then
    L6_2 = L3_1.Monster
    A1_2.WaypointType = L6_2
  else
    L6_2 = L3_1.MappingInfo
    A1_2.WaypointType = L6_2
  end
  A1_2.IconPath = "SpriteOutput/MapPics/NaviIcons/IconMapCocoon.png"
  L6_2 = A3_2.MapIconType
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.MiniMapIconExcelTable
  L7_2 = L7_2.GetData
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L8_2 = L7_2.IconPath
    if L8_2 then
      L8_2 = L7_2.IconPath
      A1_2.IconPath = L8_2
    end
  end
  return A1_2
end
L0_1._set_trace_waypoint_config = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.all_active_waypointcofings = L1_2
  L1_2 = A0_2._mission_config_list
  if L1_2 ~= nil then
    L1_2 = 1
    L2_2 = A0_2._mission_config_list
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L6_2 = A0_2
      L5_2 = A0_2._try_add_waypoint_config
      L7_2 = A0_2._mission_config_list
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = A0_2._assist_waypoint_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._try_add_waypoint_config
    L3_2 = A0_2._assist_waypoint_data
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._trace_tips_config_list
  if L1_2 ~= nil then
    L1_2 = 1
    L2_2 = A0_2._trace_tips_config_list
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L6_2 = A0_2
      L5_2 = A0_2._try_add_waypoint_config
      L7_2 = A0_2._trace_tips_config_list
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = A0_2._extra_waypoint_configs
  if L1_2 ~= nil then
    L1_2 = 1
    L2_2 = A0_2._extra_waypoint_configs
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L6_2 = A0_2
      L5_2 = A0_2._try_add_waypoint_config
      L7_2 = A0_2._extra_waypoint_configs
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = pairs
  L2_2 = A0_2.all_active_waypointcofings
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.sort
    L7_2 = L5_2
    L8_2 = A0_2._waypoint_sorter
    L6_2(L7_2, L8_2)
  end
end
L0_1._arrange_waypoint_config_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.WaypointType
  L3_2 = L3_1.MissionAssist
  if L2_2 == L3_2 then
    L2_2 = A1_2.WaypointType
    L3_2 = L3_1.MissionAssist
    if L2_2 ~= L3_2 then
      L2_2 = false
      return L2_2
  end
  else
    L2_2 = A1_2.WaypointType
    L3_2 = L3_1.MissionAssist
    if L2_2 == L3_2 then
      L2_2 = A0_2.WaypointType
      L3_2 = L3_1.MissionAssist
      if L2_2 ~= L3_2 then
        L2_2 = true
        return L2_2
    end
    else
      L2_2 = A0_2.CreateTime
      L3_2 = A1_2.CreateTime
      L2_2 = L2_2 > L3_2
      return L2_2
    end
  end
end
L0_1._waypoint_sorter = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.all_active_waypointcofings
  L3_2 = A1_2.Target
  L3_2 = L3_2.IdentificationID
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = A0_2.all_active_waypointcofings
    L3_2 = A1_2.Target
    L3_2 = L3_2.IdentificationID
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = A0_2.all_active_waypointcofings
  L3_2 = A1_2.Target
  L3_2 = L3_2.IdentificationID
  L2_2 = L2_2[L3_2]
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._try_add_waypoint_config = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._mission_module
  L4_2 = L3_2
  L3_2 = L3_2.GetWaypointIconType
  L5_2 = A1_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MiniMapIconExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    if A2_2 == nil or A2_2 then
      L5_2 = L4_2.MissionIconPath
      return L5_2
    else
      L6_2 = L4_2
      L5_2 = L4_2.GetConnectMissionIconPath
      return L5_2(L6_2)
    end
  end
  L5_2 = nil
  return L5_2
end
L0_1._get_icon_path = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._extra_waypoint_configs
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._extra_waypoint_configs
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Target
    L6_2 = L6_2.IdentificationID
    L7_2 = A1_2.Target
    L7_2 = L7_2.IdentificationID
    if L6_2 ~= L7_2 then
      L6_2 = A0_2._extra_waypoint_configs
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.Target
      L6_2 = L6_2.TargetEntity
      L7_2 = A1_2.Target
      L7_2 = L7_2.TargetEntity
      if L6_2 ~= L7_2 then
        goto lbl_28
      end
    end
    L6_2 = table
    L6_2 = L6_2.remove
    L7_2 = A0_2._extra_waypoint_configs
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    do break end
    ::lbl_28::
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._extra_waypoint_configs
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._do_refresh_waypoints
  L2_2(L3_2)
end
L0_1._on_show_waypoint = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._extra_waypoint_configs
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._extra_waypoint_configs
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Target
    L6_2 = L6_2.IdentificationID
    if L6_2 ~= A1_2 then
      L6_2 = A0_2._extra_waypoint_configs
      L6_2 = L6_2[L5_2]
      if L6_2 ~= nil then
        L6_2 = A0_2._extra_waypoint_configs
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.Target
        if L6_2 ~= nil then
          goto lbl_26
        end
      end
    end
    L6_2 = table
    L6_2 = L6_2.remove
    L7_2 = A0_2._extra_waypoint_configs
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    ::lbl_26::
  end
  L3_2 = A0_2
  L2_2 = A0_2._do_refresh_waypoints
  L2_2(L3_2)
end
L0_1._on_hide_waypoint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.TrackingMapMappingInfoData
  if L1_2 then
    L1_2 = L1_1.TrackingMapMappingInfoData
    L1_2 = L1_2.MapPropDef
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.BigMapUtils
      L1_2 = L1_2.IsCanLoadMapPropDef
      L2_2 = L1_1.TrackingMapMappingInfoData
      L2_2 = L2_2.MapPropDef
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        A0_2._track_mapping_info_data = nil
        L2_2 = A0_2
        L1_2 = A0_2._do_refresh_waypoints
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_hoyo_group_status_refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.TrackingMapMappingInfoData
  A0_2._track_mapping_info_data = L1_2
  L1_2 = L1_1.TrackingMapMonsterData
  A0_2._track_monster_info_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._do_refresh_waypoints
  L1_2(L2_2)
end
L0_1._on_ui_update_mapping_info_trace = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.TrackingMapMappingInfoData
  if L2_2 then
    L2_2 = L1_1.TrackingMapMappingInfoData
    L2_2 = L2_2.IsInCurrentScene
    if L2_2 then
      L2_2 = L1_1.TrackingMapMappingInfoData
      A0_2._track_mapping_info_data = L2_2
    else
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIHideMappingInfoTrace
      L4_2 = nil
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = L1_1.TrackingMapMonsterData
  if L2_2 then
    L2_2 = L1_1.TrackingMapMonsterData
    L2_2 = L2_2.IsInCurrentScene
    if L2_2 then
      L2_2 = L1_1.TrackingMapMonsterData
      A0_2._track_monster_info_data = L2_2
  end
  else
    A0_2._track_monster_info_data = nil
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh_waypoints_notify
  L2_2(L3_2)
end
L0_1._on_adventure_phase_entered = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = {}
  A0_2._extra_waypoint_configs = L2_2
end
L0_1._on_adventure_phase_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tracking_mission
  L3_2 = A0_2._mission_module
  L3_2 = L3_2.TrackingMission
  L2_2 = L2_2 ~= L3_2
  L3_2 = A0_2._mission_module
  L3_2 = L3_2.TrackingMission
  A0_2._tracking_mission = L3_2
  L3_2 = L1_1.TrackingMapMonsterData
  if L3_2 then
    L3_2 = L1_1.TrackingMapMonsterData
    L3_2 = L3_2.IsInCurrentScene
    if L3_2 then
      L3_2 = L1_1.TrackingMapMonsterData
      A0_2._track_monster_info_data = L3_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._do_refresh_waypoints
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_refresh_waypoints_notify = L5_1
function L5_1(A0_2, A1_2)
  A0_2.ignore_player_lock = A1_2
end
L0_1._on_set_waypoint_ignore_lock = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = false
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 == A2_2 then
      L3_2 = true
      break
    end
  end
  return L3_2
end
L0_1._is_value_exist = L5_1
return L0_1
