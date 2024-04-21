local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapBaseIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapTrackMonsterIconPanel"
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
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._show_layer = A1_2
  A0_2._big_map_data = A2_2
  A0_2._map_icon_data = A3_2
  L4_2 = MapIconShowType
  L4_2 = L4_2.TrackMonster
  A0_2._show_type = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._create_icon_node
  L4_2(L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.UIShowMappingInfoTrace
  L4_2 = L0_1._refresh_mapping_info_trace
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._map_icon_data
  L1_2 = L1_2.MappingInfoRow
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_icon_can_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.IsInRotatableRegion
  L2_2 = A0_2._map_icon_data
  L2_2 = L2_2.EntranceID
  L3_2 = A0_2._map_icon_data
  L3_2 = L3_2.MapNpcDef
  L3_2 = L3_2.GroupInstanceID
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
  L1_2 = true
  return L1_2
end
L0_1._is_icon_visible = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L2_1.TrackingMapMonsterData
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
  L2_2 = L2_1.TrackingMapMonsterData
  if L2_2 then
    L3_2 = A0_2._show_type
    L4_2 = MapIconShowType
    L4_2 = L4_2.TrackMonster
    if L3_2 == L4_2 then
      L3_2 = A0_2._map_icon_data
      L3_2 = L3_2.MappingInfoRow
      L4_2 = L2_2.MappingInfoRow
      if L3_2 == L4_2 then
        L3_2 = A0_2._map_icon_data
        L3_2 = L3_2.MapPosition
        L4_2 = L2_2.MapPosition
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
L0_1._setup_mapping_trace_tip_effect = L3_1
return L0_1
