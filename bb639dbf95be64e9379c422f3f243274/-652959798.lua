local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapRangeMissionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapRangeMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.5
L2_1 = G
L2_1 = L2_1.ComponentExtensions
L3_1 = "#FFCB09"
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._range_mission_objects = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._range_mission_objects
  if L1_2 then
    L1_2 = A0_2._range_mission_objects
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = pairs
      L2_2 = A0_2._range_mission_objects
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L7_2 = A0_2
        L6_2 = A0_2.destroy_object
        L8_2 = L5_2.range_mission_game_object
        L6_2(L7_2, L8_2)
      end
    end
  end
  L1_2 = {}
  A0_2._range_mission_objects = L1_2
end
L0_1.release_game_object_pool = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._big_map_data = A1_2
  A0_2._map_icon_data = A2_2
  L3_2 = A2_2.EntranceID
  A0_2._entrance_id = L3_2
  L3_2 = A0_2._map_icon_data
  L3_2 = L3_2.SubMissionData
  L3_2 = L3_2.Row
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.GetSubMissionInfoConfig
  L6_2 = L3_2.SubMissionID
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._is_show_sub_mission_range
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GameCoreConfigManager
  L5_2 = L5_2.GameCoreUIConfig
  L5_2 = L5_2.MinimapMapCirclePrefabPath
  L7_2 = A0_2
  L6_2 = A0_2._new_icon_game_object
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.get_blackboard
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2
  L7_2 = L7_2.query
  L9_2 = "BackgroundSize"
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L7_2 = A0_2._big_map_data
    L7_2 = L7_2.BackgroundSize
  end
  L8_2 = L2_1.SafeGetCmpt
  L9_2 = typeof
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.UI
  L10_2 = L10_2.Image
  L9_2 = L9_2(L10_2)
  L10_2 = L6_2
  L11_2 = ""
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = G
  L9_2 = L9_2.UIColorUtils
  L9_2 = L9_2.GetColor
  L10_2 = L3_1
  L9_2 = L9_2(L10_2)
  L8_2.color = L9_2
  L9_2 = L8_2.rectTransform
  L10_2 = G
  L10_2 = L10_2.MapUtil
  L10_2 = L10_2.get_icon_local_position
  L11_2 = A0_2._big_map_data
  L12_2 = A0_2._map_icon_data
  L13_2 = L7_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.localPosition = L10_2
  L9_2 = L8_2.rectTransform
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActiveByScale
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = L4_2.MapWaypointRange
  L9_2 = 2 * L9_2
  L10_2 = L1_1
  L9_2 = L9_2 / L10_2
  L10_2 = L8_2.rectTransform
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.Vector2
  L12_2 = L9_2
  L13_2 = L9_2
  L11_2 = L11_2(L12_2, L13_2)
  L10_2.sizeDelta = L11_2
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.sync_load_prefab
  L4_2 = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_mission
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = {}
  L3_2.range_mission_game_object = L2_2
  L4_2 = A0_2._map_icon_data
  L3_2.mission_def = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._range_mission_objects
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1._new_icon_game_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapEntryExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._entrance_id
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionInfoConfig
  L5_2 = A1_2.SubMissionID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BigMapUtils
  L4_2 = L4_2.IsTraceSubMission
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L3_2.MazeFloorID
    L5_2 = L2_2.FloorID
    if L4_2 ~= L5_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = true
  return L4_2
end
L0_1._is_show_sub_mission_range = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.release_game_object_pool
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
return L0_1
