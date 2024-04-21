local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapSubMapIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapSubMapIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BigMapModule
L2_1 = G
L2_1 = L2_1.ComponentExtensions
L3_1 = "Ui.Map3D.Map3DMainPage"
L4_1 = "Ui.Map.Map2DView.Map2DViewPage"
function L5_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._icon_game_object_list
  return L1_2
end
L0_1.get_icon_game_object_list = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._entrance_id = A1_2
  A0_2._show_layer = A2_2
  A0_2._big_map_data = A3_2
  A0_2._map_icon_data = A4_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.SubMapConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A4_2.SubMapID
  L5_2 = L5_2(L6_2)
  A0_2._sub_map_config_row = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MapEntryExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._entrance_id
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.FloorID
  A0_2._cur_floor_id = L6_2
  L6_2 = A0_2._sub_map_config_row
  if L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._create_icon_node
    L6_2 = L6_2(L7_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AppUtils
    L7_2 = L7_2.IsEditor
    if L7_2 and L6_2 then
      L7_2 = A0_2._map_icon_data
      L7_2 = L7_2.GroupID
      L8_2 = "_"
      L9_2 = A0_2._map_icon_data
      L9_2 = L9_2.InstanceId
      L7_2 = L7_2 .. L8_2 .. L9_2
      L8_2 = A0_2._map_icon_data
      L8_2 = L8_2.MapPropDef
      if L8_2 then
        L8_2 = L7_2
        L9_2 = "_"
        L10_2 = A0_2._map_icon_data
        L10_2 = L10_2.MapPropDef
        L10_2 = L10_2.PropID
        L7_2 = L8_2 .. L9_2 .. L10_2
      end
      L8_2 = L6_2.gameObject
      L8_2.name = L7_2
    end
  end
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIUpdateMappingInfoTrace
  L4_2 = L0_1._refresh_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMapMissionTraceChange
  L4_2 = L0_1._refresh_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mapping_info_trace
  L1_2(L2_2)
end
L0_1._on_return_to_top = L5_1
function L5_1(A0_2)
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
  L2_2 = A0_2._setup_icon_layer
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon_click
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon_img
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_navi_icons_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.icon_game_object
  return L2_2
end
L0_1._create_icon_node = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._is_map_area_hide
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = "BackgroundSize"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._big_map_data
    L2_2 = L2_2.BackgroundSize
  end
  L3_2 = G
  L3_2 = L3_2.MapUtil
  L3_2 = L3_2.get_icon_local_position
  L4_2 = A0_2._big_map_data
  L5_2 = A0_2._map_icon_data
  L6_2 = L2_2
  L7_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2._map_icon_data
  L4_2 = L4_2.AreaID
  if -1 < L4_2 then
    L4_2 = A0_2._big_map_data
    L5_2 = L4_2
    L4_2 = L4_2.IsMapSectionLighten
    L6_2 = A0_2._map_icon_data
    L6_2 = L6_2.SectionID
    return L4_2(L5_2, L6_2)
  else
    L4_2 = math
    L4_2 = L4_2.max
    L5_2 = 0
    L6_2 = A0_2._map_icon_data
    L6_2 = L6_2.AreaID
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.BigMapUtils
    L5_2 = L5_2.IsMapIconVisibleByPosition
    L6_2 = A0_2._big_map_data
    L7_2 = L3_2
    L8_2 = A0_2._map_icon_data
    L8_2 = L8_2.MapLayer
    L9_2 = L4_2
    return L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._is_icon_visible = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._big_map_data
  L1_2 = L1_2.CurMapLayerCount
  if 1 < L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.MiniMapIconExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._map_icon_data
    L2_2 = L2_2.MapIconType
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = L1_2.IsCrossLayer
      if not L2_2 then
        L2_2 = A0_2._map_icon_data
        L2_2 = L2_2.MapLayer
        L3_2 = A0_2._show_layer
        if L2_2 ~= L3_2 then
          L2_2 = false
          return L2_2
        end
      end
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._is_icon_visible_by_layer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._icon_game_object_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.destroy_object
    L8_2 = L5_2.icon_game_object
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
end
L0_1.release_game_object_pool = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._icon_game_object_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.icon_game_object
    L7_2 = L7_2.transform
    L7_2.localScale = A1_2
  end
end
L0_1.setup_icon_scale = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_icon_btn_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.trigger_icon_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.map_entry_prefab_load_meta
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = L1_2.Prefab
  L5_2 = L1_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = {}
  L3_2.icon_game_object = L2_2
  L4_2 = A0_2._map_icon_data
  L3_2.map_icon_data = L4_2
  L4_2 = A0_2._sub_map_config_row
  L3_2.sub_map_config_row = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "NaviIconList"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_navi_icons = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "NaviIconList/PlayerIcon"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_player_icon = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "NaviIconList/MissionIcon"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_mission_icon = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "NaviIconList/MappingInfoIcon"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_mapping_info_icon = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "NaviIconList/TeleportIcon"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_transport_icon = L4_2
  L4_2 = L2_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Image
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  L7_2 = "NaviIconList/MissionIcon/Icon"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.icon_mission = L4_2
  L4_2 = L2_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Image
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  L7_2 = "NaviIconList/MappingInfoIcon/Icon"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.icon_mapping_info = L4_2
  L4_2 = L2_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Image
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  L7_2 = "NaviIconList/TeleportIcon/Icon"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.icon_transport = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "NaviIconList/BgType1"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_transport_type = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "NaviIconList/BgType2"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_normal_type = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "EntryIcon/BgPanelType1"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_bg_transport_type = L4_2
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "EntryIcon/BgPanelType2"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_bg_normal_type = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._check_is_show_player_icon
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.is_show_player_icon = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._check_is_show_trace_mission_icon
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.is_show_trace_mission_icon = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._icon_game_object_list
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1._new_icon_game_object = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A1_2.icon_game_object
  L3_2 = L2_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Image
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = "EntryIcon/Icon"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._check_is_show_transport_icon
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MiniMapIconExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2._map_icon_data
  L6_2 = L6_2.MapIconType
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  if L4_2 then
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.MiniMapIconExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L5_2.ConnectID
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = L7_2.IconPath
      if L8_2 then
        goto lbl_39
        L6_2 = L8_2 or L6_2
      end
    end
    L6_2 = L5_2.IconPath
    ::lbl_39::
  else
    L6_2 = L5_2 or L6_2
    if L5_2 then
      L6_2 = L5_2.IconPath
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2._load_sprite_to
  L9_2 = L3_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._map_icon_data
  L7_2 = L7_2.MapIconColor
  L3_2.color = L7_2
  L8_2 = A0_2
  L7_2 = A0_2._is_map_area_hide
  L7_2 = L7_2(L8_2)
  L9_2 = A0_2
  L8_2 = A0_2.get_blackboard
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2
  L8_2 = L8_2.query
  L10_2 = "BackgroundSize"
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L8_2 = A0_2._big_map_data
    L8_2 = L8_2.BackgroundSize
  end
  L9_2 = L2_2.transform
  L10_2 = G
  L10_2 = L10_2.MapUtil
  L10_2 = L10_2.get_icon_local_position
  L11_2 = A0_2._big_map_data
  L12_2 = A0_2._map_icon_data
  L13_2 = L8_2
  L14_2 = L7_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L9_2.localPosition = L10_2
end
L0_1._setup_icon_img = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A1_2.icon_game_object
  L3_2 = L2_1.SafeFind
  L4_2 = L2_2
  L5_2 = "Floor"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L2_1.SafeFind
  L5_2 = L2_2
  L6_2 = "Floor/Up"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L2_1.SafeFind
  L6_2 = L2_2
  L7_2 = "Floor/Down"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2._big_map_data
  L6_2 = L6_2.CurMapLayerCount
  if 1 < L6_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.MiniMapIconExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2._map_icon_data
    L7_2 = L7_2.MapIconType
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._map_icon_data
    L7_2 = L7_2.MapLayer
    L8_2 = L6_2.IsShowCornerArrow
    if L8_2 then
      L9_2 = L3_2
      L8_2 = L3_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L9_2 = L5_2
      L8_2 = L5_2.SafeSetActive
      L10_2 = A0_2._show_layer
      L10_2 = L7_2 < L10_2
      L8_2(L9_2, L10_2)
      L9_2 = L4_2
      L8_2 = L4_2.SafeSetActive
      L10_2 = A0_2._show_layer
      L10_2 = L7_2 > L10_2
      L8_2(L9_2, L10_2)
      L8_2 = L3_2.transform
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Quaternion
      L9_2 = L9_2.Euler
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.Vector3
      L11_2 = 0
      L12_2 = 0
      L13_2 = 0
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L8_2.rotation = L9_2
    else
      L9_2 = L3_2
      L8_2 = L3_2.SafeSetActive
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._setup_icon_layer = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.icon_game_object
  L3_2 = L2_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Button
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = L3_2
  L7_2 = A0_2._on_icon_btn_click
  L8_2 = A0_2._sub_map_config_row
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_icon_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_show_player_icon
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2.node_player_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_blackboard
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.update
    L5_2 = "node_player_icon"
    L6_2 = A1_2.node_player_icon
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.get_blackboard
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.update
    L5_2 = "node_player_icon_src"
    L6_2 = "sub"
    L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._check_is_show_trace_mission_icon
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2.node_mission_icon
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.get_blackboard
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.query
    L6_2 = "StoryLineID"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.MissionModule
    L6_2 = L5_2
    L5_2 = L5_2.GetTrackingMissionByStoryLineID
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = A1_2.icon_mission
    L9_2 = L5_2.TrackIconPath
    L6_2(L7_2, L8_2, L9_2)
  end
  L4_2 = nil
  L6_2 = A0_2
  L5_2 = A0_2._check_is_show_trace_mapping_info_icon
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._check_is_show_trace_monster_icon
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L4_2 = L5_2 or L4_2
  if not L5_2 then
    L4_2 = L6_2
  end
  L7_2 = A1_2.node_mapping_info_icon
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  if L4_2 then
    L7_2 = nil
    if L5_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.MiniMapIconExcelTable
      L8_2 = L8_2.GetData
      L9_2 = L1_1.TrackingMapMappingInfoData
      L9_2 = L9_2.MapIconType
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    else
      L8_2 = L1_1.TrackingMapMonsterData
      if not L8_2 then
        L8_2 = L1_1.TempShowMapMonsterData
      end
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.MiniMapIconExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2.MapIconType
      L9_2 = L9_2(L10_2)
      L7_2 = L9_2
    end
    L9_2 = A0_2
    L8_2 = A0_2._async_load_sprite_to
    L10_2 = A1_2.icon_mapping_info
    L11_2 = L7_2.IconPath
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = A0_2
  L7_2 = A0_2._check_is_show_transport_icon
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A1_2.node_transport_icon
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  if L7_2 then
    L8_2 = A0_2._sub_map_config_row
    L8_2 = L8_2.IndoorTeleportMapIconID
    if 0 < L8_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.MiniMapIconExcelTable
      L8_2 = L8_2.GetData
      L9_2 = A0_2._sub_map_config_row
      L9_2 = L9_2.IndoorTeleportMapIconID
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L9_2 = L8_2.IconPath
        if L9_2 then
          L10_2 = A0_2
          L9_2 = A0_2._async_load_sprite_to
          L11_2 = A1_2.icon_transport
          L12_2 = L8_2.IconPath
          L9_2(L10_2, L11_2, L12_2)
        end
      end
    else
      L8_2 = A0_2._big_map_data
      L9_2 = L8_2
      L8_2 = L8_2.GetCanTransportMapIconType
      L10_2 = A0_2._sub_map_config_row
      L10_2 = L10_2.AreaID
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.MiniMapIconExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L10_2 = L9_2.IconPath
        if L10_2 then
          L11_2 = A0_2
          L10_2 = A0_2._async_load_sprite_to
          L12_2 = A1_2.icon_transport
          L13_2 = L9_2.IconPath
          L10_2(L11_2, L12_2, L13_2)
        end
      end
    end
  end
  L8_2 = A1_2.node_transport_type
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A1_2.node_normal_type
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = not L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A1_2.node_bg_transport_type
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A1_2.node_bg_normal_type
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = not L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A1_2.node_navi_icons
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L2_2 or L10_2
  L10_2 = L3_2 or L10_2
  L10_2 = L4_2 or L10_2
  if not L2_2 and not L3_2 and not L4_2 then
    L10_2 = L7_2
  end
  L8_2(L9_2, L10_2)
end
L0_1._setup_navi_icons_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_blackboard
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.query
    L4_2 = "StoryLineID"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = 0
    end
    L3_2 = A1_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MinimapAreaType
    L4_2 = L4_2.RotatableRegion
    if L3_2 == L4_2 then
      L3_2 = G
      L3_2 = L3_2.UIManager
      L3_2 = L3_2.load_and_show
      L4_2 = L3_1
      L5_2 = A1_2.MapEntranceID
      L6_2 = A1_2.RegionID
      L7_2 = nil
      L8_2 = nil
      L9_2 = L2_2
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    else
      L3_2 = G
      L3_2 = L3_2.UIManager
      L3_2 = L3_2.load_and_show
      L4_2 = L4_1
      L5_2 = A1_2.MapEntranceID
      L6_2 = nil
      L7_2 = nil
      L8_2 = L2_2
      L9_2 = A1_2.ID
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.OnOpenSubMapPage
    L3_2(L4_2)
  end
end
L0_1._on_icon_btn_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.sub_map_config_row
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.AdventureModule
  L3_2 = L3_2.MapDef
  L4_2 = L2_2.Type
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MinimapAreaType
  L5_2 = L5_2.RotatableRegion
  if L4_2 == L5_2 then
    L4_2 = L3_2.FloorID
    L5_2 = A0_2._cur_floor_id
    if L4_2 == L5_2 then
      L4_2 = L3_2.MapRotationInfo
      if L4_2 then
        L4_2 = L3_2.MapRotationInfo
        L4_2 = L4_2.CurrentRegionIndex
      end
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.Map3DUtils
      L5_2 = L5_2.ShouldShow3DMap
      L5_2 = L5_2()
      L5_2 = L5_2 and L4_2 ~= nil and -1 < L4_2
      return L5_2
    end
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MapEntryExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L2_2.MapEntranceID
    L4_2 = L4_2(L5_2)
    L6_2 = A0_2
    L5_2 = A0_2._get_player_offset_data
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L3_2.FloorID
      L7_2 = L4_2.FloorID
      L6_2 = L6_2 == L7_2
      return L6_2
    else
      L6_2 = L3_2.FloorID
      L7_2 = L4_2.FloorID
      L6_2 = L6_2 == L7_2
      return L6_2
    end
  end
  L4_2 = false
  return L4_2
end
L0_1._check_is_show_player_icon = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2.sub_map_config_row
  L3_2 = L2_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MinimapAreaType
  L4_2 = L4_2.AnotherFloor
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_blackboard
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.query
    L5_2 = "StoryLineID"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.MissionModule
    L5_2 = L4_2
    L4_2 = L4_2.GetTrackingMissionByStoryLineID
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.BigMapUtils
      L5_2 = L5_2.IsMapContainHideArea
      L6_2 = A0_2._big_map_data
      L6_2 = L6_2.MapDef
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = A0_2._big_map_data
        L6_2 = L5_2
        L5_2 = L5_2.IsInExpectedAreaID
        L7_2 = L4_2
        L8_2 = L2_2.AreaID
        return L5_2(L6_2, L7_2, L8_2)
      else
        L6_2 = L4_2
        L5_2 = L4_2.IsInExpectedEntrance
        L7_2 = L2_2.MapEntranceID
        return L5_2(L6_2, L7_2)
      end
    end
  else
    L3_2 = L2_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MinimapAreaType
    L4_2 = L4_2.RotatableRegion
    if L3_2 == L4_2 then
      L3_2 = A0_2._big_map_data
      L4_2 = L3_2
      L3_2 = L3_2.GetCRotatableRegionMap
      L5_2 = L2_2.RegionID
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2 or L4_2
      if L3_2 then
        L4_2 = L3_2.Items
      end
      if L4_2 then
        L5_2 = G
        L5_2 = L5_2.Utils
        L5_2 = L5_2.cs_list_to_table
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          goto lbl_73
        end
      end
      L5_2 = {}
      ::lbl_73::
      L6_2 = G
      L6_2 = L6_2.MapUtil
      L6_2 = L6_2.preprocess_rotatable_map_item_list
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = ipairs
      L7_2 = L5_2
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = L10_2.MissionData
        if L11_2 then
          L11_2 = CS
          L11_2 = L11_2.RPG
          L11_2 = L11_2.Client
          L11_2 = L11_2.BigMapUtils
          L11_2 = L11_2.IsTraceSubMission
          L12_2 = L10_2.MissionData
          L12_2 = L12_2.SubMissionData
          L11_2 = L11_2(L12_2)
          if L11_2 then
            L11_2 = L10_2.MissionData
            L11_2 = L11_2.IsConnectID
            if not L11_2 then
              L11_2 = true
              return L11_2
            end
          end
        end
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_show_trace_mission_icon = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.sub_map_config_row
  L3_2 = L1_1.TrackingMapMappingInfoData
  if L3_2 then
    L4_2 = L3_2.DimensionID
    L5_2 = A0_2._big_map_data
    L5_2 = L5_2.DimensionID
    if L4_2 == L5_2 then
      L4_2 = L2_2.Type
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.MinimapAreaType
      L5_2 = L5_2.AnotherFloor
      if L4_2 == L5_2 then
        L4_2 = L3_2.AreaID
        if -1 < L4_2 then
          L4_2 = L3_2.EntranceID
          L5_2 = L2_2.MapEntranceID
          L4_2 = L4_2 == L5_2
          return L4_2
        else
          L4_2 = L3_2.EntranceID
          L5_2 = L2_2.MapEntranceID
          L4_2 = L4_2 == L5_2
          return L4_2
        end
      else
        L4_2 = L2_2.Type
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.MinimapAreaType
        L5_2 = L5_2.RotatableRegion
        if L4_2 == L5_2 then
          L4_2 = L3_2.EntranceID
          L5_2 = A0_2._entrance_id
          if L4_2 == L5_2 then
            L4_2 = CS
            L4_2 = L4_2.RPG
            L4_2 = L4_2.Client
            L4_2 = L4_2.BigMapUtils
            L4_2 = L4_2.GetRotatableRegionIndex
            L5_2 = L3_2.EntranceID
            L6_2 = L3_2.GroupID
            L4_2 = L4_2(L5_2, L6_2)
            L5_2 = L2_2.RegionID
            if L4_2 == L5_2 then
              L5_2 = true
              return L5_2
            end
          end
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
L0_1._check_is_show_trace_mapping_info_icon = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.sub_map_config_row
  L3_2 = L2_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MinimapAreaType
  L4_2 = L4_2.AnotherFloor
  if L3_2 == L4_2 then
    L3_2 = A0_2._sub_map_config_row
    L3_2 = L3_2.IndoorTeleportMapIconID
    if 0 < L3_2 then
      L3_2 = A0_2._sub_map_config_row
      L3_2 = L3_2.IndoorTeleportMapIconID
      L3_2 = 0 < L3_2
      return L3_2
    else
      L3_2 = A0_2._big_map_data
      L4_2 = L3_2
      L3_2 = L3_2.GetCanTransportMapIconType
      L5_2 = L2_2.AreaID
      L3_2 = L3_2(L4_2, L5_2)
      L3_2 = 0 < L3_2
      return L3_2
    end
  else
    L3_2 = L2_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MinimapAreaType
    L4_2 = L4_2.RotatableRegion
    if L3_2 == L4_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_show_transport_icon = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.sub_map_config_row
  L3_2 = L1_1.TrackingMapMonsterData
  if not L3_2 then
    L3_2 = L1_1.TempShowMapMonsterData
  end
  if L3_2 then
    L4_2 = L2_2.Type
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MinimapAreaType
    L5_2 = L5_2.RotatableRegion
    if L4_2 == L5_2 then
      L4_2 = L3_2.EntranceID
      L5_2 = A0_2._entrance_id
      if L4_2 == L5_2 then
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.BigMapUtils
        L4_2 = L4_2.GetRotatableRegionIndex
        L5_2 = A0_2._entrance_id
        L6_2 = L3_2.GroupID
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = L2_2.RegionID
        if L4_2 == L5_2 then
          L5_2 = true
          return L5_2
        end
      end
    else
      L4_2 = L2_2.Type
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.MinimapAreaType
      L5_2 = L5_2.AnotherFloor
      if L4_2 == L5_2 then
        L4_2 = L3_2.AreaID
        if -1 < L4_2 then
          L4_2 = L3_2.EntranceID
          L5_2 = L2_2.MapEntranceID
          L4_2 = L4_2 == L5_2
          return L4_2
        else
          L4_2 = L3_2.EntranceID
          L5_2 = L2_2.MapEntranceID
          L4_2 = L4_2 == L5_2
          return L4_2
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
L0_1._check_is_show_trace_monster_icon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._icon_game_object_list
    if L1_2 then
      L1_2 = A0_2._icon_game_object_list
      L1_2 = #L1_2
      if 0 < L1_2 then
        L1_2 = pairs
        L2_2 = A0_2._icon_game_object_list
        L1_2, L2_2, L3_2 = L1_2(L2_2)
        for L4_2, L5_2 in L1_2, L2_2, L3_2 do
          L7_2 = A0_2
          L6_2 = A0_2._setup_navi_icons_view
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
end
L0_1._refresh_mapping_info_trace = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_show_player_position
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AdventureModule
  L2_2 = L2_2.MapDef
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.GetPlayerAreaData
  L4_2 = L2_2
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  return L3_2
end
L0_1._get_player_offset_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.TeamManager
    if L2_2 then
      L2_2 = L1_2.TeamManager
      L2_2 = L2_2.CurrentTeamLeader
    end
  end
  L3_2 = L2_2.UnityGO
  L3_2 = L3_2.transform
  L4_2 = L3_2.Position
  if not L4_2 then
    L4_2 = L3_2.position
  end
  return L4_2
end
L0_1._get_show_player_position = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "StoryLineID"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetBigMapData
  L4_2 = A0_2._entrance_id
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.Map2D_View_Page
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_blackboard
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.query
    L5_2 = "SubMapID"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.MapUtil
    L4_2 = L4_2.get_sub_map_area_id
    L5_2 = A0_2._entrance_id
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.BigMapUtils
    L5_2 = L5_2.IsMapAreaHide
    L6_2 = L2_2.NavmapConfig
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._is_map_area_hide = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.release_game_object_pool
  L1_2(L2_2)
end
L0_1._on_dispose = L5_1
return L0_1
