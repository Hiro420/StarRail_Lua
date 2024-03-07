local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapBaseIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapMappingInfoIconPanel"
L2_1 = G
L2_1 = L2_1.MapBaseIconPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BigMapModule
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._map_container = A1_2
  A0_2._show_layer = A2_2
  A0_2._big_map_data = A3_2
  A0_2._map_icon_data = A4_2
  A0_2._default_show_mapping_info_id = A5_2
  L6_2 = MapIconShowType
  L6_2 = L6_2.MappingInfo
  A0_2._show_type = L6_2
  L7_2 = A0_2
  L6_2 = A0_2._create_icon_node
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._map_icon_data
  L7_2 = L7_2.GroupID
  if 0 < L7_2 then
    L7_2 = A0_2._map_icon_data
    L7_2 = L7_2.InstanceId
    if 0 < L7_2 then
      L7_2 = A0_2._map_icon_data
      L7_2 = L7_2.GroupID
      L8_2 = A0_2._map_icon_data
      L8_2 = L8_2.InstanceId
      L7_2 = L7_2 .. L8_2
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.AppUtils
      L8_2 = L8_2.IsEditor
      if L8_2 and L6_2 then
        L8_2 = A0_2._map_icon_data
        L8_2 = L8_2.GroupID
        L9_2 = "_"
        L10_2 = A0_2._map_icon_data
        L10_2 = L10_2.InstanceId
        L8_2 = L8_2 .. L9_2 .. L10_2
        L6_2.name = L8_2
      end
      L8_2 = A0_2._map_container
      L8_2 = L8_2._visible_mission_icon_list
      L8_2 = L8_2[L7_2]
      if L8_2 and L6_2 then
        L9_2 = L6_2
        L8_2 = L6_2.SafeSetActive
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
    end
  end
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
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._map_icon_data
  L1_2 = L1_2.MappingInfoRow
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_icon_can_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._map_icon_data
  L1_2 = L1_2.IsInCurrentScene
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_map
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2._map_icon_data
      L2_2 = L2_2.ShowType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.MappingInfoShowType
      L3_2 = L3_2.Prop
      if L2_2 == L3_2 then
        L3_2 = L1_2
        L2_2 = L1_2.IsEntityOccupied
        L4_2 = A0_2._map_icon_data
        L4_2 = L4_2.MapPropDef
        L4_2 = L4_2.GroupInstanceID
        L5_2 = A0_2._map_icon_data
        L5_2 = L5_2.MapPropDef
        L5_2 = L5_2.InstanceID
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        if L2_2 then
          L2_2 = false
          return L2_2
        end
      else
        L2_2 = A0_2._map_icon_data
        L2_2 = L2_2.ShowType
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.MappingInfoShowType
        L3_2 = L3_2.Npc
        if L2_2 == L3_2 then
          L3_2 = L1_2
          L2_2 = L1_2.IsEntityOccupied
          L4_2 = A0_2._map_icon_data
          L4_2 = L4_2.MapNpcDef
          L4_2 = L4_2.GroupInstanceID
          L5_2 = A0_2._map_icon_data
          L5_2 = L5_2.MapNpcDef
          L5_2 = L5_2.InstanceID
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          if L2_2 then
            L2_2 = false
            return L2_2
          end
        end
      end
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.IsInRotatableRegion
  L2_2 = A0_2._map_icon_data
  L2_2 = L2_2.EntranceID
  L3_2 = A0_2._map_icon_data
  L3_2 = L3_2.GroupID
  L4_2 = A0_2._map_icon_data
  L4_2 = L4_2.DimensionID
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L1_2 = A0_2._big_map_data
    L2_2 = L1_2
    L1_2 = L1_2.IsMapSectionLighten
    L3_2 = A0_2._map_icon_data
    L3_2 = L3_2.SectionID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = A0_2._map_icon_data
  L1_2 = L1_2.MappingInfoRow
  if L1_2 then
    L1_2 = A0_2._map_icon_data
    L1_2 = L1_2.MappingInfoRow
    L1_2 = L1_2.IsShowInFog
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = A0_2._default_show_mapping_info_id
  if L1_2 then
    L1_2 = A0_2._map_icon_data
    L1_2 = L1_2.MappingInfoRow
    if L1_2 then
      L1_2 = A0_2._map_icon_data
      L1_2 = L1_2.MappingInfoRow
      L1_2 = L1_2.ID
      L2_2 = A0_2._default_show_mapping_info_id
      if L1_2 == L2_2 then
        L1_2 = true
        return L1_2
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "BackgroundSize"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = A0_2._big_map_data
    L1_2 = L1_2.BackgroundSize
  end
  L2_2 = G
  L2_2 = L2_2.MapUtil
  L2_2 = L2_2.get_icon_local_position
  L3_2 = A0_2._big_map_data
  L4_2 = A0_2._map_icon_data
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = A0_2._map_icon_data
  L5_2 = L5_2.AreaID
  L3_2 = L3_2(L4_2, L5_2)
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
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.IsMapIconVisibleByPosition
    L5_2 = A0_2._big_map_data
    L6_2 = L2_2
    L7_2 = L3_2
    return L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._is_icon_visible = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._default_show_mapping_info_id
  if L1_2 then
    L1_2 = A0_2._map_icon_data
    L1_2 = L1_2.MappingInfoRow
    if L1_2 then
      L1_2 = A0_2._map_icon_data
      L1_2 = L1_2.MappingInfoRow
      L1_2 = L1_2.ID
      L2_2 = A0_2._default_show_mapping_info_id
      if L1_2 == L2_2 then
        L1_2 = true
        return L1_2
      end
    end
  end
  L1_2 = L0_1.super
  L1_2 = L1_2._is_icon_visible_by_layer
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1._is_icon_visible_by_layer = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowMappingInfoTrace
  L4_2 = L0_1._on_show_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIHideMappingInfoTrace
  L4_2 = L0_1._on_hide_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIUpdateMonsterInfoTrace
  L4_2 = L0_1._refresh_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mapping_info_trace
  L2_2(L3_2)
end
L0_1._on_show_mapping_info_trace = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mapping_info_trace
  L2_2(L3_2)
end
L0_1._on_hide_mapping_info_trace = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L2_1.TrackingMapMappingInfoData
  L2_2 = A0_2._map_icon_data
  if L2_2 then
    L2_2 = A0_2._map_icon_data
    L2_2 = L2_2.IsInCurrentScene
    if L2_2 then
      L2_2 = A0_2._icon_game_object_list
      if L2_2 then
        L2_2 = A0_2._icon_game_object_list
        L2_2 = #L2_2
        if 0 < L2_2 then
          L2_2 = pairs
          L3_2 = A0_2._icon_game_object_list
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          for L5_2, L6_2 in L2_2, L3_2, L4_2 do
            L7_2 = L1_1.SafeGetCmpt
            L8_2 = typeof
            L9_2 = CS
            L9_2 = L9_2.UnityEngine
            L9_2 = L9_2.Transform
            L8_2 = L8_2(L9_2)
            L9_2 = L6_2.icon_game_object
            L10_2 = "Button/CommonNaviHint"
            L7_2 = L7_2(L8_2, L9_2, L10_2)
            if L1_2 then
              L8_2 = L6_2.map_icon_data
              if L1_2 == L8_2 then
                L9_2 = L7_2
                L8_2 = L7_2.SafeSetActive
                L10_2 = true
                L8_2(L9_2, L10_2)
            end
            else
              L9_2 = L7_2
              L8_2 = L7_2.SafeSetActive
              L10_2 = false
              L8_2(L9_2, L10_2)
            end
          end
        end
      end
    end
  end
end
L0_1._refresh_mapping_info_trace = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L2_1.TrackingMapMappingInfoData
  if L2_2 then
    L3_2 = A0_2._show_type
    L4_2 = MapIconShowType
    L4_2 = L4_2.MappingInfo
    if L3_2 == L4_2 then
      L3_2 = A0_2._map_icon_data
      L3_2 = L3_2.IsInCurrentScene
      if L3_2 then
        L3_2 = A0_2._map_icon_data
        L3_2 = L3_2.EntranceID
        L4_2 = L2_2.EntranceID
        if L3_2 == L4_2 then
          L3_2 = A0_2._map_icon_data
          L3_2 = L3_2.IdentificationID
          L4_2 = L2_2.IdentificationID
          if L3_2 == L4_2 then
            L3_2 = L1_1.SafeGetCmpt
            L4_2 = typeof
            L5_2 = CS
            L5_2 = L5_2.UnityEngine
            L5_2 = L5_2.Transform
            L4_2 = L4_2(L5_2)
            L5_2 = A1_2
            L6_2 = "Button/CommonNaviHint"
            L3_2 = L3_2(L4_2, L5_2, L6_2)
            L5_2 = L3_2
            L4_2 = L3_2.SafeSetActive
            L6_2 = true
            L4_2(L5_2, L6_2)
          end
        end
      end
    end
  end
end
L0_1._setup_mapping_trace_tip_effect = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.ADPInitParams
    if L1_2 ~= nil then
      goto lbl_15
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_15::
  L1_2 = L0_2.ADPInitParams
  L1_2 = L1_2.Map
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  return L1_2
end
L0_1._get_map = L3_1
return L0_1
