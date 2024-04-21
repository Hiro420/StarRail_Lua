local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapBaseIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapMissionIconPanel"
L2_1 = G
L2_1 = L2_1.MapBaseIconPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.MapModule
L2_1 = L2_1.Instance
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
  A0_2._trace_mission_icon_game_object_info = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._trace_mission_icon_game_object_info
  return L1_2
end
L0_1.get_trace_mission_game_object_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._trace_mission_icon_game_object_info = nil
  L1_2 = A0_2._icon_game_object_list
  if L1_2 then
    L1_2 = A0_2._icon_game_object_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = pairs
      L2_2 = A0_2._icon_game_object_list
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = L1_1.SafeGetCmpt
        L7_2 = typeof
        L8_2 = CS
        L8_2 = L8_2.UnityEngine
        L8_2 = L8_2.Transform
        L7_2 = L7_2(L8_2)
        L8_2 = L5_2.icon_game_object
        L9_2 = "Button/MissionLoopHint_Map"
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = L5_2.show_type
        L8_2 = MapIconShowType
        L8_2 = L8_2.Mission
        if L7_2 == L8_2 then
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.Client
          L7_2 = L7_2.BigMapUtils
          L7_2 = L7_2.IsShowSubMissionInMap
          L8_2 = L5_2.map_icon_data
          L8_2 = L8_2.EntranceID
          L9_2 = L5_2.map_icon_data
          L9_2 = L9_2.SubMissionData
          L7_2 = L7_2(L8_2, L9_2)
          L8_2 = L5_2.icon_game_object
          L9_2 = L8_2
          L8_2 = L8_2.SafeSetActive
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.Client
          L8_2 = L8_2.BigMapUtils
          L8_2 = L8_2.IsTraceSubMission
          L9_2 = L5_2.map_icon_data
          L9_2 = L9_2.SubMissionData
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L9_2 = L6_2
            L8_2 = L6_2.SafeSetActive
            L10_2 = true
            L8_2(L9_2, L10_2)
            A0_2._trace_mission_icon_game_object_info = L5_2
          else
            L9_2 = L6_2
            L8_2 = L6_2.SafeSetActive
            L10_2 = false
            L8_2(L9_2, L10_2)
          end
          if not L7_2 then
            L8_2 = table
            L8_2 = L8_2.remove
            L9_2 = A0_2._icon_game_object_list
            L10_2 = L4_2
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
  end
end
L0_1.refresh_mission_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._trace_mission_icon_game_object_info = nil
  L1_2 = A0_2._icon_game_object_list
  if L1_2 then
    L1_2 = A0_2._icon_game_object_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = pairs
      L2_2 = A0_2._icon_game_object_list
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = L5_2.show_type
        L7_2 = MapIconShowType
        L7_2 = L7_2.Mission
        if L6_2 == L7_2 then
          L6_2 = CS
          L6_2 = L6_2.RPG
          L6_2 = L6_2.Client
          L6_2 = L6_2.BigMapUtils
          L6_2 = L6_2.IsTraceSubMission
          L7_2 = L5_2.map_icon_data
          L7_2 = L7_2.SubMissionData
          L6_2 = L6_2(L7_2)
          if L6_2 then
            A0_2._trace_mission_icon_game_object_info = L5_2
            break
          end
        end
      end
    end
  end
end
L0_1.update_trace_mission_icon_game_object_info = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._map_container = A1_2
  A0_2._show_layer = A2_2
  A0_2._big_map_data = A3_2
  A0_2._map_icon_data = A4_2
  L5_2 = MapIconShowType
  L5_2 = L5_2.Mission
  A0_2._show_type = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._create_icon_node
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._map_icon_data
  L6_2 = L6_2.GroupID
  if 0 < L6_2 then
    L6_2 = A0_2._map_icon_data
    L6_2 = L6_2.InstanceId
    if 0 < L6_2 then
      L6_2 = A0_2._map_icon_data
      L6_2 = L6_2.GroupID
      L7_2 = A0_2._map_icon_data
      L7_2 = L7_2.InstanceId
      L6_2 = L6_2 .. L7_2
      L7_2 = A0_2._map_container
      L7_2 = L7_2._visible_mission_icon_list
      L7_2 = L7_2[L6_2]
      if L7_2 == nil then
        L7_2 = A0_2._map_container
        L7_2 = L7_2._visible_mission_icon_list
        L7_2[L6_2] = true
      elseif L5_2 then
        L8_2 = L5_2
        L7_2 = L5_2.SafeSetActive
        L9_2 = false
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_icon_visible
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_icon_visible_by_layer
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._new_icon_game_object
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon_img
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon_layer
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon_click
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._create_icon_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.IsShowSubMissionInMap
  L2_2 = A0_2._map_icon_data
  L2_2 = L2_2.EntranceID
  L3_2 = A0_2._map_icon_data
  L3_2 = L3_2.SubMissionData
  return L1_2(L2_2, L3_2)
end
L0_1._is_icon_visible = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_icon_can_click = L3_1
return L0_1
