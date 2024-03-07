local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Map3D.MapContainer.Map3DIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Map3DIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.Map3DUtils
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.BigMapModule
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._icon_game_object_info_list = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
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
  L3_2 = L3_2.UIUpdateMonsterInfoTrace
  L4_2 = L0_1._refresh_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMapMissionTraceChange
  L4_2 = L0_1._refresh_mission_trace
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_btn_click_call_back = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._rotatable_region_item_map_data = A1_2
  L2_2 = A1_2.HasModelIcon
  if L2_2 then
    return
  end
  L2_2 = A1_2.MappingInfoData
  if L2_2 ~= nil then
    L2_2 = MapIconShowType
    L2_2 = L2_2.MappingInfo
    A0_2._show_type = L2_2
  else
    L2_2 = A1_2.MissionData
    if L2_2 ~= nil then
      L2_2 = MapIconShowType
      L2_2 = L2_2.Mission
      A0_2._show_type = L2_2
    else
      L2_2 = A1_2.TrackMonsterData
      if L2_2 ~= nil then
        L2_2 = MapIconShowType
        L2_2 = L2_2.TrackMonster
        A0_2._show_type = L2_2
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_icon_node
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._icon_game_object_info_list
  return L1_2
end
L0_1.get_icon_game_object_info_list = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_icon
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.refresh_icon_node = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2._rotatable_region_item_map_data
  L2_2 = L2_2.MappingInfoData
  if L2_2 then
    L2_2 = A0_2._rotatable_region_item_map_data
    L2_2 = L2_2.MappingInfoData
    L1_2 = L2_2.MapIconType
  else
    L2_2 = A0_2._rotatable_region_item_map_data
    L2_2 = L2_2.MissionData
    if L2_2 then
      L2_2 = A0_2._rotatable_region_item_map_data
      L2_2 = L2_2.MissionData
      L1_2 = L2_2.MapIconType
    else
      L2_2 = A0_2._rotatable_region_item_map_data
      L2_2 = L2_2.TrackMonsterData
      L1_2 = L2_2.MapIconType
    end
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MiniMapIconExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.StrExt
    L3_2 = L3_2.IsNullOrEmpty
    L4_2 = L2_2.IconPath
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      goto lbl_40
    end
  end
  do return end
  ::lbl_40::
  L4_2 = A0_2
  L3_2 = A0_2._new_icon_game_object
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_icon_img
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_icon_click
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._create_icon_node = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_load_meta
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = L1_2.Prefab
  L5_2 = L1_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = {}
  L3_2.icon_game_object = L2_2
  L4_2 = A0_2._rotatable_region_item_map_data
  L3_2.rotatable_region_item_map_data = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._is_icon_can_click
  L4_2 = L4_2(L5_2)
  L3_2.is_can_click = L4_2
  L4_2 = A0_2._show_type
  L3_2.show_type = L4_2
  L4_2 = L1_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.Image
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  L7_2 = ""
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.img_icon = L4_2
  L4_2 = L1_1.SafeFind
  L5_2 = L2_2
  L6_2 = "Button/MissionLoopHint_Map"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_mission_trace_hint = L4_2
  L4_2 = L1_1.SafeFind
  L5_2 = L2_2
  L6_2 = "Button/CommonNaviHint"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.node_mapping_info_trace_hint = L4_2
  L4_2 = A0_2._show_type
  L5_2 = MapIconShowType
  L5_2 = L5_2.MappingInfo
  if L4_2 == L5_2 then
    L4_2 = A0_2._rotatable_region_item_map_data
    L4_2 = L4_2.MappingInfoData
    L3_2.map_icon_data = L4_2
  else
    L4_2 = A0_2._show_type
    L5_2 = MapIconShowType
    L5_2 = L5_2.Mission
    if L4_2 == L5_2 then
      L4_2 = A0_2._rotatable_region_item_map_data
      L4_2 = L4_2.MissionData
      L3_2.map_icon_data = L4_2
    else
      L4_2 = A0_2._show_type
      L5_2 = MapIconShowType
      L5_2 = L5_2.TrackMonster
      if L4_2 == L5_2 then
        L4_2 = A0_2._rotatable_region_item_map_data
        L4_2 = L4_2.TrackMonsterData
        L3_2.map_icon_data = L4_2
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._icon_game_object_info_list
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1._new_icon_game_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.icon_game_object
  L3_2 = L1_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Button
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L1_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.GraphicCast
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  L7_2 = "Button"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._is_icon_can_click
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L3_2.enabled = true
    L4_2.enabled = true
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = L3_2
    L9_2 = A0_2._on_icon_btn_click
    L10_2 = A1_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
    L3_2.enabled = false
    L4_2.enabled = false
  end
end
L0_1._setup_icon_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = A0_2._rotatable_region_item_map_data
  L4_2 = L4_2.MappingInfoData
  if L4_2 then
    L4_2 = A0_2._rotatable_region_item_map_data
    L4_2 = L4_2.MappingInfoData
    L2_2 = L4_2.MapIconType
    L4_2 = A0_2._rotatable_region_item_map_data
    L4_2 = L4_2.MappingInfoData
    L3_2 = L4_2.MapIconColor
  else
    L4_2 = A0_2._rotatable_region_item_map_data
    L4_2 = L4_2.MissionData
    if L4_2 then
      L4_2 = A0_2._rotatable_region_item_map_data
      L4_2 = L4_2.MissionData
      L2_2 = L4_2.MapIconType
      L4_2 = A0_2._rotatable_region_item_map_data
      L4_2 = L4_2.MissionData
      L3_2 = L4_2.MapIconColor
    else
      L4_2 = A0_2._rotatable_region_item_map_data
      L4_2 = L4_2.TrackMonsterData
      L2_2 = L4_2.MapIconType
      L4_2 = A0_2._rotatable_region_item_map_data
      L4_2 = L4_2.TrackMonsterData
      L3_2 = L4_2.MapIconColor
    end
  end
  L4_2 = L2_2 or L4_2
  if L2_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MiniMapIconExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
  end
  if L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2._load_sprite_to
    L7_2 = A1_2.img_icon
    L8_2 = L4_2.IconPath
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A1_2.img_icon
    L5_2.color = L3_2
    L5_2 = A1_2.img_icon
    L6_2 = L5_2
    L5_2 = L5_2.SetNativeSize
    L5_2(L6_2)
    L6_2 = A0_2
    L5_2 = A0_2._refresh_icon
    L7_2 = A1_2
    L8_2 = true
    L9_2 = true
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A1_2.show_type
    L6_2 = MapIconShowType
    L6_2 = L6_2.MappingInfo
    if L5_2 == L6_2 then
      L6_2 = A0_2
      L5_2 = A0_2._update_trace_mapping_info_hint
      L7_2 = A1_2
      L5_2(L6_2, L7_2)
    else
      L5_2 = A1_2.show_type
      L6_2 = MapIconShowType
      L6_2 = L6_2.Mission
      if L5_2 == L6_2 then
        L6_2 = A0_2
        L5_2 = A0_2._update_trace_mission_hint
        L7_2 = A1_2
        L5_2(L6_2, L7_2)
      else
        L5_2 = A1_2.show_type
        L6_2 = MapIconShowType
        L6_2 = L6_2.TrackMonster
        if L5_2 == L6_2 then
          L6_2 = A0_2
          L5_2 = A0_2._update_trace_monster_hint
          L7_2 = A1_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end
L0_1._setup_icon_img = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_type
  L2_2 = MapIconShowType
  L2_2 = L2_2.MappingInfo
  if L1_2 == L2_2 then
    L1_2 = A0_2._rotatable_region_item_map_data
    L1_2 = L1_2.MappingInfoData
    L1_2 = L1_2.MappingInfoRow
    L1_2 = L1_2 ~= nil
    return L1_2
  else
    L1_2 = true
    return L1_2
  end
end
L0_1._is_icon_can_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_func
  if L2_2 then
    L2_2 = A0_2._callback_func
    L3_2 = A0_2._callback_obj
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_icon_btn_click = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2.icon_game_object
  L5_2 = A1_2.rotatable_region_item_map_data
  L6_2 = A1_2.img_icon
  if A2_2 then
    L7_2 = G
    L7_2 = L7_2.MapUtil
    L7_2 = L7_2.get_map_3d_icon_local_point_in_rectangle
    L8_2 = L5_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.root
    L9_2 = L9_2.transform
    L7_2, L8_2 = L7_2(L8_2, L9_2)
    L9_2 = L4_2.transform
    L10_2 = CS
    L10_2 = L10_2.UnityEngine
    L10_2 = L10_2.Vector3
    L11_2 = L8_2.x
    L12_2 = L8_2.y
    L13_2 = 0
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2.localPosition = L10_2
  end
  if A3_2 then
    L7_2 = L2_1.GetRotatableRegionItemIconOpacity
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = G
    L8_2 = L8_2.UIColorUtils
    L8_2 = L8_2.GetColorWithAlpha
    L9_2 = L6_2.color
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L6_2.color = L8_2
    if L7_2 < 1 then
      L8_2 = L4_2.transform
      L9_2 = L8_2
      L8_2 = L8_2.SetSiblingIndex
      L10_2 = 0
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._refresh_icon = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.show_type
  L3_2 = MapIconShowType
  L3_2 = L3_2.MappingInfo
  if L2_2 == L3_2 then
    L2_2 = A1_2.rotatable_region_item_map_data
    L3_2 = A1_2.node_mapping_info_trace_hint
    L4_2 = false
    L5_2 = L3_1.TrackingMapMappingInfoData
    if L5_2 then
      L6_2 = L2_2.MappingInfoData
      if L6_2 then
        L7_2 = L6_2.EntranceID
        L8_2 = L5_2.EntranceID
        if L7_2 == L8_2 then
          L7_2 = L6_2.IdentificationID
          L8_2 = L5_2.IdentificationID
          if L7_2 == L8_2 then
            L4_2 = true
          end
        end
      end
    end
    L7_2 = L3_2
    L6_2 = L3_2.SafeSetActive
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._update_trace_mapping_info_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.show_type
  L3_2 = MapIconShowType
  L3_2 = L3_2.Mission
  if L2_2 == L3_2 then
    L2_2 = A1_2.rotatable_region_item_map_data
    L3_2 = A1_2.node_mission_trace_hint
    L4_2 = false
    L5_2 = L2_2.MissionData
    if L5_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.BigMapUtils
      L6_2 = L6_2.IsTraceSubMission
      L7_2 = L5_2.SubMissionData
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L4_2 = true
      end
    end
    L7_2 = L3_2
    L6_2 = L3_2.SafeSetActive
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._update_trace_mission_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.show_type
  L3_2 = MapIconShowType
  L3_2 = L3_2.TrackMonster
  if L2_2 == L3_2 then
    L2_2 = A1_2.rotatable_region_item_map_data
    L3_2 = A1_2.node_mapping_info_trace_hint
    L4_2 = false
    L5_2 = L3_1.TrackingMapMonsterData
    if L5_2 then
      L6_2 = L2_2.TrackMonsterData
      if L6_2 then
        L7_2 = L6_2.EntranceID
        L8_2 = L5_2.EntranceID
        if L7_2 == L8_2 then
          L7_2 = L6_2.IdentificationID
          L8_2 = L5_2.IdentificationID
          if L7_2 == L8_2 then
            L4_2 = true
          end
        end
      end
    end
    L7_2 = L3_2
    L6_2 = L3_2.SafeSetActive
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._update_trace_monster_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._icon_game_object_info_list
  if L1_2 then
    L1_2 = A0_2._icon_game_object_info_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = pairs
      L2_2 = A0_2._icon_game_object_info_list
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L7_2 = A0_2
        L6_2 = A0_2._update_trace_mapping_info_hint
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
        L7_2 = A0_2
        L6_2 = A0_2._update_trace_monster_hint
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1._refresh_mapping_info_trace = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._icon_game_object_info_list
  if L1_2 then
    L1_2 = A0_2._icon_game_object_info_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = pairs
      L2_2 = A0_2._icon_game_object_info_list
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L7_2 = A0_2
        L6_2 = A0_2._update_trace_mission_hint
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1._refresh_mission_trace = L4_1
return L0_1
