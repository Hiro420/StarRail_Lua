local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "MapUtil"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.Mission = 1
L1_1.Teleport = 2
L1_1.MappingInfo = 3
L1_1.TrackMonster = 4
MapIconShowType = L1_1
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PropState
L2_1 = L2_1.BridgeState1
L1_1[L2_1] = 0
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PropState
L2_1 = L2_1.BridgeState2
L1_1[L2_1] = 1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PropState
L2_1 = L2_1.BridgeState3
L1_1[L2_1] = 2
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PropState
L2_1 = L2_1.BridgeState4
L1_1[L2_1] = 3
BridgeState2Index = L1_1
L1_1 = {}
L1_1[101] = "UI/Map/Widget/RegionalMapZeroWorld.prefab"
L1_1[201] = "UI/Map/Widget/RegionalMapFirstWorld.prefab"
L1_1[301] = "UI/Map/Widget/RegionalMapSecondWorld.prefab"
L1_1[401] = "UI/Map/Widget/RegionalMapThirdWorld.prefab"
WorldID2RegionalMapPath = L1_1
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.InControl
L2_1 = L2_1.InputControlType
L2_1 = L2_1.LeftStickRight
L3_1 = CS
L3_1 = L3_1.InControl
L3_1 = L3_1.InputControlType
L3_1 = L3_1.LeftStickLeft
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.InControl
L2_1 = L2_1.InputControlType
L2_1 = L2_1.LeftStickLeft
L3_1 = CS
L3_1 = L3_1.InControl
L3_1 = L3_1.InputControlType
L3_1 = L3_1.LeftStickRight
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.InControl
L2_1 = L2_1.InputControlType
L2_1 = L2_1.LeftStickUp
L3_1 = CS
L3_1 = L3_1.InControl
L3_1 = L3_1.InputControlType
L3_1 = L3_1.LeftStickDown
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.InControl
L2_1 = L2_1.InputControlType
L2_1 = L2_1.LeftStickDown
L3_1 = CS
L3_1 = L3_1.InControl
L3_1 = L3_1.InputControlType
L3_1 = L3_1.LeftStickUp
L1_1[L2_1] = L3_1
NextZoom2PrevZoomLeftStick = L1_1
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.InControl
L2_1 = L2_1.InputControlType
L2_1 = L2_1.DPadRight
L3_1 = CS
L3_1 = L3_1.InControl
L3_1 = L3_1.InputControlType
L3_1 = L3_1.DPadLeft
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.InControl
L2_1 = L2_1.InputControlType
L2_1 = L2_1.DPadLeft
L3_1 = CS
L3_1 = L3_1.InControl
L3_1 = L3_1.InputControlType
L3_1 = L3_1.DPadRight
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.InControl
L2_1 = L2_1.InputControlType
L2_1 = L2_1.DPadUp
L3_1 = CS
L3_1 = L3_1.InControl
L3_1 = L3_1.InputControlType
L3_1 = L3_1.DPadDown
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.InControl
L2_1 = L2_1.InputControlType
L2_1 = L2_1.DPadDown
L3_1 = CS
L3_1 = L3_1.InControl
L3_1 = L3_1.InputControlType
L3_1 = L3_1.DPadUp
L1_1[L2_1] = L3_1
NextZoom2PrevZoomDPad = L1_1
L0_1.Section_Offset_X = 0
L0_1.Section_Offset_Y = 0
L0_1.Max_Show_Count = 3
L0_1.Map_Scale_Lower_Ratio = 1
L0_1.Map_Scale_Upper_Ratio = 2
L1_1 = L0_1.Map_Scale_Lower_Ratio
L2_1 = L0_1.Map_Scale_Upper_Ratio
L1_1 = L1_1 + L2_1
L1_1 = 0.5 * L1_1
L0_1.Map_Input_Scale_Ratio = L1_1
L0_1.Map3D_Main_Page_Path = "Ui.Map3D.Map3DMainPage"
L0_1.Map2D_View_Page_Path = "Ui.Map.Map2DView.Map2DViewPage"
L0_1.Map_Main_Page = "SwitchAreaPage"
L0_1.Map2D_View_Page = "Map2DViewPage"
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = {}
  L5_2 = nil
  L6_2 = 1
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L4_2
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  L7_2 = ipairs
  L8_2 = A3_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.is_can_click
    if L12_2 then
      L12_2 = L11_2.icon_game_object
      L13_2 = A0_2.icon_game_object
      if L12_2 ~= L13_2 then
        L12_2 = L11_2.icon_game_object
        L12_2 = L12_2.transform
        L12_2 = L12_2.localPosition
        L12_2 = L12_2 * A1_2
        L13_2 = A0_2.icon_game_object
        L13_2 = L13_2.transform
        L13_2 = L13_2.localPosition
        L13_2 = L13_2 * A1_2
        L12_2 = L12_2 - L13_2
        L12_2 = L12_2.magnitude
        if A2_2 > L12_2 then
          L13_2 = #L4_2
          L14_2 = L0_1.Max_Show_Count
          if L13_2 < L14_2 then
            L13_2 = table
            L13_2 = L13_2.insert
            L14_2 = L4_2
            L15_2 = L11_2
            L13_2(L14_2, L15_2)
          else
            return L4_2
          end
        end
      end
    end
  end
  L7_2 = L0_1._sort_nearest_node_list
  L8_2 = L4_2
  L7_2(L8_2)
  L7_2 = ipairs
  L8_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.icon_game_object
    L12_2 = L12_2.transform
    L12_2 = L12_2.localPosition
    L12_2 = L12_2 * A1_2
    L13_2 = A0_2.icon_game_object
    L13_2 = L13_2.transform
    L13_2 = L13_2.localPosition
    L13_2 = L13_2 * A1_2
    L12_2 = L12_2 - L13_2
    L12_2 = L12_2.magnitude
    if L5_2 then
      if L5_2 > L12_2 then
        L5_2 = L12_2
        L6_2 = L10_2
      end
    else
      L5_2 = L12_2
      L6_2 = L10_2
    end
  end
  L7_2 = {}
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = L7_2
  L10_2 = L4_2[L6_2]
  L8_2(L9_2, L10_2)
  L8_2 = ipairs
  L9_2 = L4_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    if L11_2 ~= L6_2 then
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L7_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
  return L7_2
end
L0_1.get_nearest_map_icon_node_by_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = {}
  L6_2 = nil
  L7_2 = 1
  L8_2 = A1_2.transform
  L8_2 = L8_2.localPosition
  L8_2 = L8_2.x
  L9_2 = A0_2.localPosition
  L9_2 = L9_2.x
  L8_2 = L8_2 - L9_2
  L9_2 = A1_2.transform
  L9_2 = L9_2.localPosition
  L9_2 = L9_2.y
  L10_2 = A0_2.localPosition
  L10_2 = L10_2.y
  L9_2 = L9_2 - L10_2
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Vector3
  L11_2 = L8_2
  L12_2 = L9_2
  L13_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = ipairs
  L12_2 = A4_2
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  for L14_2, L15_2 in L11_2, L12_2, L13_2 do
    L16_2 = L15_2.is_can_click
    if L16_2 then
      L16_2 = L15_2.icon_game_object
      L16_2 = L16_2.transform
      L16_2 = L16_2.localPosition
      L16_2 = L16_2 * A2_2
      L16_2 = L16_2 - L10_2
      L16_2 = L16_2.magnitude
      if A3_2 > L16_2 then
        L17_2 = #L5_2
        L18_2 = L0_1.Max_Show_Count
        if L17_2 < L18_2 then
          L17_2 = table
          L17_2 = L17_2.insert
          L18_2 = L5_2
          L19_2 = L15_2
          L17_2(L18_2, L19_2)
        else
          return L5_2
        end
      end
    end
  end
  L11_2 = L0_1._sort_nearest_node_list
  L12_2 = L5_2
  L11_2(L12_2)
  L11_2 = ipairs
  L12_2 = L5_2
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  for L14_2, L15_2 in L11_2, L12_2, L13_2 do
    L16_2 = L15_2.icon_game_object
    L16_2 = L16_2.transform
    L16_2 = L16_2.localPosition
    L16_2 = L16_2 * A2_2
    L16_2 = L16_2 - L10_2
    L16_2 = L16_2.magnitude
    if L6_2 then
      if L6_2 > L16_2 then
        L6_2 = L16_2
        L7_2 = L14_2
      end
    else
      L6_2 = L16_2
      L7_2 = L14_2
    end
  end
  L11_2 = {}
  L12_2 = table
  L12_2 = L12_2.insert
  L13_2 = L11_2
  L14_2 = L5_2[L7_2]
  L12_2(L13_2, L14_2)
  L12_2 = ipairs
  L13_2 = L5_2
  L12_2, L13_2, L14_2 = L12_2(L13_2)
  for L15_2, L16_2 in L12_2, L13_2, L14_2 do
    if L15_2 ~= L7_2 then
      L17_2 = table
      L17_2 = L17_2.insert
      L18_2 = L11_2
      L19_2 = L16_2
      L17_2(L18_2, L19_2)
    end
  end
  return L11_2
end
L0_1.get_nearest_map_icon_node_by_cursor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.is_can_click
    if L8_2 then
      L8_2 = L7_2.map_icon_data
      L8_2 = L8_2.MappingInfoRow
      if L8_2 then
        L8_2 = L7_2.map_icon_data
        L8_2 = L8_2.MappingInfoRow
        L8_2 = L8_2.ID
        if L8_2 == A0_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L2_2
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
          return L2_2
        end
      end
    end
  end
  L3_2 = L0_1._sort_nearest_node_list
  L4_2 = L2_2
  L3_2(L4_2)
  return L2_2
end
L0_1.get_nearest_node_by_mapping_info_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.is_can_click
    if L8_2 then
      L8_2 = L7_2.map_icon_data
      L8_2 = L8_2.SubMissionData
      if L8_2 then
        L8_2 = L7_2.map_icon_data
        L8_2 = L8_2.SubMissionData
        L8_2 = L8_2.Row
        L8_2 = L8_2.SubMissionID
        if L8_2 == A0_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L2_2
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
          return L2_2
        end
      end
    end
  end
  L3_2 = L0_1._sort_nearest_node_list
  L4_2 = L2_2
  L3_2(L4_2)
  return L2_2
end
L0_1.get_nearest_node_by_sub_mission_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 == nil then
    L3_2 = true
    A2_2 = L3_2 or A2_2
    if not L3_2 then
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MiniMapIconExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2.MapIconType
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MiniMapIconExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2.MapIconType
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.Priority
  L6_2 = L4_2.Priority
  if L5_2 == L6_2 then
    L5_2 = L3_2.ID
    L6_2 = L4_2.ID
    L5_2 = L5_2 > L6_2
    return L5_2
  elseif A2_2 then
    L5_2 = L3_2.Priority
    L6_2 = L4_2.Priority
    L5_2 = L5_2 < L6_2
    return L5_2
  else
    L5_2 = L3_2.Priority
    L6_2 = L4_2.Priority
    L5_2 = L5_2 > L6_2
    return L5_2
  end
end
L0_1.compare_mapIcon_by_priority = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = #A0_2
    if 1 < L1_2 then
      L1_2 = table
      L1_2 = L1_2.sort
      L2_2 = A0_2
      function L3_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3
        L2_3 = L0_1._compare_mission_mapIcon
        L3_3 = A0_3
        L4_3 = A1_3
        return L2_3(L3_3, L4_3)
      end
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.sort_map_mission_data_list = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L0_1._get_nearest_teleport_id
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.try_get_nearest_teleport_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.TrainEntranceID
  if A1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.WorldDataConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.TrainSpaceType
    return L3_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AreaMapConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.MapSpaceType
    return L3_2
  end
end
L0_1.get_map_space_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.GetCurPlayerWorldID
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.WorldDataConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  if A0_2 == L1_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.AdventureModule
    L4_2 = L4_2.MapDef
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.BigMapUtils
    L5_2 = L5_2.GetMapEntryRow
    L6_2 = L4_2.PlaneID
    L7_2 = L4_2.FloorID
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L0_1.get_map_space_type
    L7_2 = A0_2
    L8_2 = L5_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    L3_2 = L6_2
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.MapSpaceType
    L6_2 = L6_2.Unknow
    if L3_2 == L6_2 then
      L6_2 = L2_2.MapSpaceTypeList
      L3_2 = L6_2[0]
    end
  else
    L4_2 = L2_2.MapSpaceTypeList
    L3_2 = L4_2[0]
  end
  return L3_2
end
L0_1.get_cur_player_map_space_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SubMapConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Type
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.MinimapAreaType
    L8_2 = L8_2.AnotherFloor
    if L7_2 == L8_2 then
      L7_2 = L6_2.MapEntranceID
      if L7_2 == A0_2 then
        L7_2 = L6_2.AreaID
        return L7_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_sub_map_area_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Map3DUtils
  L2_2 = L2_2.GetRotatableRegionItemWorldPositionWithOffset
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UI3DCamera
  L4_2 = L3_2
  L3_2 = L3_2.WorldToScreenPoint
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = L3_2.x
  L6_2 = L3_2.y
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransformUtility
  L5_2 = L5_2.ScreenPointToLocalPointInRectangle
  L6_2 = A1_2
  L7_2 = L4_2
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.GlobalVars
  L8_2 = L8_2.s_UICamera
  L9_2 = nil
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L8_2 = L6_2
  return L7_2, L8_2
end
L0_1.get_map_3d_icon_local_point_in_rectangle = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = {}
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.is_can_click
    if L9_2 then
      L9_2 = L8_2.icon_game_object
      L10_2 = A0_2.icon_game_object
      if L9_2 ~= L10_2 then
        L9_2 = L8_2.icon_game_object
        L9_2 = L9_2.transform
        L9_2 = L9_2.localPosition
        L10_2 = A0_2.icon_game_object
        L10_2 = L10_2.transform
        L10_2 = L10_2.localPosition
        L9_2 = L9_2 - L10_2
        L9_2 = L9_2.magnitude
        if A2_2 > L9_2 then
          L10_2 = #L3_2
          L11_2 = L0_1.Max_Show_Count
          if L10_2 < L11_2 then
            L10_2 = table
            L10_2 = L10_2.insert
            L11_2 = L3_2
            L12_2 = L8_2
            L10_2(L11_2, L12_2)
          end
        end
      end
    end
  end
  return L3_2
end
L0_1.get_nearest_map_3d_icon_node_by_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.is_can_click
    if L9_2 then
      L9_2 = L8_2.icon_game_object
      L9_2 = L9_2.transform
      L9_2 = L9_2.localPosition
      L10_2 = A0_2.transform
      L10_2 = L10_2.localPosition
      L9_2 = L9_2 - L10_2
      L9_2 = L9_2.magnitude
      if A2_2 > L9_2 then
        L10_2 = #L3_2
        L11_2 = L0_1.Max_Show_Count
        if L10_2 < L11_2 then
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L3_2
          L12_2 = L8_2
          L10_2(L11_2, L12_2)
        end
      end
    end
  end
  return L3_2
end
L0_1.get_nearest_map_3d_icon_node_by_cursor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.StoryLineModule
  L4_2 = L3_2
  L3_2 = L3_2.IsStoryLine
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = 0
  end
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BigMapUtils
  L4_2 = L4_2.IsInCurrentScene
  L5_2 = A0_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.Map3DUtils
  L5_2 = L5_2.ShouldShow3DMap
  L5_2 = L5_2()
  L6_2 = L4_2 or L6_2
  L6_2 = L3_2 or L6_2
  if L4_2 and L3_2 then
    L6_2 = not L5_2
  end
  return L6_2
end
L0_1.check_is_show_player_icon = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A3_2 or nil
  if not A3_2 then
    L4_2 = A0_2.BackgroundSize
  end
  if A0_2 then
    L5_2 = A0_2.NavmapConfig
    if L5_2 then
      L5_2 = A1_2.AreaID
      if -1 < L5_2 then
        L5_2 = A1_2.OffsetPosition
        L6_2 = CS
        L6_2 = L6_2.UnityEngine
        L6_2 = L6_2.Vector2
        L6_2 = L6_2.zero
        if L5_2 ~= L6_2 then
          L5_2 = G
          L5_2 = L5_2.MapUtil
          L5_2 = L5_2.Section_Offset_X
          L6_2 = A0_2.MapScale
          L5_2 = L5_2 / L6_2
          L6_2 = G
          L6_2 = L6_2.MapUtil
          L6_2 = L6_2.Section_Offset_Y
          L7_2 = A0_2.MapScale
          L6_2 = L6_2 / L7_2
          L8_2 = A0_2
          L7_2 = A0_2.GetLevelNavmapAreaByAreaID
          L9_2 = A1_2.AreaID
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 then
            L8_2 = A1_2.OffsetPosition
            L8_2 = L8_2.x
            L9_2 = L5_2 * 2
            L10_2 = L7_2.PositionInCanvas
            L10_2 = L10_2.x
            L9_2 = L9_2 * L10_2
            L8_2 = L8_2 + L9_2
            L8_2 = L8_2 - L5_2
            L9_2 = A1_2.OffsetPosition
            L9_2 = L9_2.y
            L10_2 = L6_2 * 2
            L11_2 = L7_2.PositionInCanvas
            L11_2 = L11_2.y
            L10_2 = L10_2 * L11_2
            L9_2 = L9_2 + L10_2
            L9_2 = L9_2 - L6_2
            L10_2 = A0_2.MapScale
            L11_2 = L4_2.x
            L10_2 = L10_2 * L11_2
            L11_2 = G
            L11_2 = L11_2.MapUtil
            L11_2 = L11_2.Section_Offset_X
            L11_2 = 2 * L11_2
            L10_2 = L10_2 / L11_2
            L11_2 = A0_2.MapScale
            L12_2 = L4_2.z
            L11_2 = L11_2 * L12_2
            L12_2 = G
            L12_2 = L12_2.MapUtil
            L12_2 = L12_2.Section_Offset_Y
            L12_2 = 2 * L12_2
            L11_2 = L11_2 / L12_2
            L8_2 = L8_2 * L10_2
            L9_2 = L9_2 * L11_2
            L12_2 = CS
            L12_2 = L12_2.UnityEngine
            L12_2 = L12_2.Vector3
            L13_2 = L8_2
            L14_2 = L9_2
            L15_2 = 0
            return L12_2(L13_2, L14_2, L15_2)
          else
            L8_2 = CS
            L8_2 = L8_2.RPG
            L8_2 = L8_2.Client
            L8_2 = L8_2.BigMapUtils
            L8_2 = L8_2.GetMapIconPositionInMap
            L9_2 = A0_2
            L10_2 = A2_2
            return L8_2(L9_2, L10_2)
          end
      end
    end
  end
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.BigMapUtils
    L5_2 = L5_2.GetMapIconPositionInMap
    L6_2 = A0_2
    L7_2 = A2_2
    return L5_2(L6_2, L7_2)
  end
end
L0_1.get_player_icon_local_position = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  L4_2 = A1_2.AreaID
  if L4_2 then
    L4_2 = A1_2.AreaID
    if -1 < L4_2 then
      L4_2 = A1_2.PositionInAreaMap
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector2
      L5_2 = L5_2.zero
      if L4_2 ~= L5_2 then
        L4_2 = L0_1.get_icon_local_position_by_area
        L5_2 = A0_2
        L6_2 = A1_2
        L7_2 = A2_2
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L3_2 = L4_2
    end
  end
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.GetMapIconPositionInMap
    L5_2 = A0_2
    L6_2 = A1_2.MapPosition
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  return L3_2
end
L0_1.get_icon_local_position = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A2_2 or nil
  if not A2_2 then
    L3_2 = A0_2.BackgroundSize
  end
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.Section_Offset_X
  L5_2 = A0_2.MapScale
  L4_2 = L4_2 / L5_2
  L5_2 = G
  L5_2 = L5_2.MapUtil
  L5_2 = L5_2.Section_Offset_Y
  L6_2 = A0_2.MapScale
  L5_2 = L5_2 / L6_2
  L7_2 = A0_2
  L6_2 = A0_2.GetLevelNavmapAreaByAreaID
  L8_2 = A1_2.AreaID
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A1_2.PositionInAreaMap
  L7_2 = L7_2.x
  L8_2 = L4_2 * 2
  L9_2 = L6_2.PositionInCanvas
  L9_2 = L9_2.x
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 - L4_2
  L8_2 = A1_2.PositionInAreaMap
  L8_2 = L8_2.y
  L9_2 = L5_2 * 2
  L10_2 = L6_2.PositionInCanvas
  L10_2 = L10_2.y
  L9_2 = L9_2 * L10_2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - L5_2
  L9_2 = A0_2.MapScale
  L10_2 = L3_2.x
  L9_2 = L9_2 * L10_2
  L10_2 = G
  L10_2 = L10_2.MapUtil
  L10_2 = L10_2.Section_Offset_X
  L10_2 = 2 * L10_2
  L9_2 = L9_2 / L10_2
  L10_2 = A0_2.MapScale
  L11_2 = L3_2.z
  L10_2 = L10_2 * L11_2
  L11_2 = G
  L11_2 = L11_2.MapUtil
  L11_2 = L11_2.Section_Offset_Y
  L11_2 = 2 * L11_2
  L10_2 = L10_2 / L11_2
  L7_2 = L7_2 * L9_2
  L8_2 = L8_2 * L10_2
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.Vector3
  L12_2 = L7_2
  L13_2 = L8_2
  L14_2 = 0
  return L11_2(L12_2, L13_2, L14_2)
end
L0_1.get_icon_local_position_by_area = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = L0_1.Map2D_View_Page_Path
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.try_show_sub_map_2d_page = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = L0_1.Map3D_Main_Page_Path
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.try_show_sub_map_3d_page = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AdventureModule
  L2_2 = L2_2.MapDef
  L2_2 = L2_2.CurMapEntryID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.StoryLineModule
  L4_2 = L3_2
  L3_2 = L3_2.IsStoryLine
  L5_2 = A1_2
  L3_2 = A0_2 == L2_2 and L3_2
  return L3_2
end
L0_1.is_in_current_entrance = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = A1_2.transform
  L5_2 = L5_2.localPosition
  L5_2 = L5_2.x
  L6_2 = A0_2.localPosition
  L6_2 = L6_2.x
  L5_2 = L5_2 - L6_2
  L6_2 = A1_2.transform
  L6_2 = L6_2.localPosition
  L6_2 = L6_2.y
  L7_2 = A0_2.localPosition
  L7_2 = L7_2.y
  L6_2 = L6_2 - L7_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector3
  L8_2 = L5_2
  L9_2 = L6_2
  L10_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = ipairs
  L9_2 = A4_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L12_2.icon_game_object
    L13_2 = L13_2.transform
    L13_2 = L13_2.localPosition
    L13_2 = L13_2 * A2_2
    L13_2 = L13_2 - L7_2
    L13_2 = L13_2.magnitude
    if A3_2 > L13_2 then
      return L12_2
    end
  end
  L8_2 = nil
  return L8_2
end
L0_1.get_nearest_sub_map_icon_node_by_cursor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = #A0_2
    if 1 < L1_2 then
      L1_2 = table
      L1_2 = L1_2.sort
      L2_2 = A0_2
      function L3_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3
        L2_3 = A0_3.show_type
        L3_3 = A1_3.show_type
        if L2_3 == L3_3 then
          L2_3 = A0_3.show_type
          L3_3 = MapIconShowType
          L3_3 = L3_3.Mission
          if L2_3 == L3_3 then
            L2_3 = L0_1._compare_mission_mapIcon
            L3_3 = A0_3.map_icon_data
            L4_3 = A1_3.map_icon_data
            return L2_3(L3_3, L4_3)
          else
            L2_3 = L0_1.compare_mapIcon_by_priority
            L3_3 = A0_3.map_icon_data
            L4_3 = A1_3.map_icon_data
            return L2_3(L3_3, L4_3)
          end
        else
          L2_3 = A0_3.show_type
          L3_3 = A1_3.show_type
          L2_3 = L2_3 < L3_3
          return L2_3
        end
      end
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._sort_nearest_node_list = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = 0
  if 1 < A2_2 then
    L5_2 = L0_1._get_nearest_teleport_id_by_layer
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
    if 0 < L4_2 then
      return L4_2
    else
      L5_2 = L0_1._get_nearest_teleport_id_by_target_position
      L6_2 = A1_2
      L7_2 = A3_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
    end
  else
    L5_2 = L0_1._get_nearest_teleport_id_by_layer
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
  end
  return L4_2
end
L0_1._get_nearest_teleport_id = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = 0
  L5_2 = nil
  L7_2 = A3_2
  L6_2 = A3_2.get_can_transfer_icon_game_object_list
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = {}
  end
  L7_2 = pairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    if 1 < A2_2 then
      L12_2 = L11_2.map_icon_data
      L12_2 = L12_2.MapLayer
    end
    if L12_2 == A0_2 or A2_2 <= 1 then
      L12_2 = L11_2.is_can_click
      if L12_2 then
        L12_2 = L11_2.icon_game_object
        L12_2 = L12_2.transform
        L12_2 = L12_2.localPosition
        L12_2 = L12_2 - A1_2
        L12_2 = L12_2.magnitude
        if L4_2 == 0 then
          L13_2 = L11_2.map_icon_data
          L4_2 = L13_2.MappingInfoID
          L5_2 = L12_2
        elseif L12_2 < L5_2 then
          L13_2 = L11_2.map_icon_data
          L4_2 = L13_2.MappingInfoID
          L5_2 = L12_2
        end
      end
    end
  end
  return L4_2
end
L0_1._get_nearest_teleport_id_by_layer = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  L3_2 = nil
  L5_2 = A1_2
  L4_2 = A1_2.get_can_transfer_icon_game_object_list
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.is_can_click
    if L10_2 then
      L10_2 = L9_2.icon_game_object
      L10_2 = L10_2.transform
      L10_2 = L10_2.localPosition
      L10_2 = L10_2 - A0_2
      L10_2 = L10_2.magnitude
      if L2_2 == 0 then
        L11_2 = L9_2.map_icon_data
        L2_2 = L11_2.MappingInfoID
        L3_2 = L10_2
      elseif L10_2 < L3_2 then
        L11_2 = L9_2.map_icon_data
        L2_2 = L11_2.MappingInfoID
        L3_2 = L10_2
      end
    end
  end
  return L2_2
end
L0_1._get_nearest_teleport_id_by_target_position = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.IsTraceSubMission
  L3_2 = A0_2.SubMissionData
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.IsTraceSubMission
  L4_2 = A1_2.SubMissionData
  L3_2 = L3_2(L4_2)
  if L2_2 and not L3_2 then
    L4_2 = true
    return L4_2
  elseif not L2_2 and L3_2 then
    L4_2 = false
    return L4_2
  else
    L4_2 = L0_1.compare_mapIcon_by_priority
    L5_2 = A0_2
    L6_2 = A1_2
    return L4_2(L5_2, L6_2)
  end
end
L0_1._compare_mission_mapIcon = L1_1
return L0_1
