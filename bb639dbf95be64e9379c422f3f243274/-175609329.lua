local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapLightenSectionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapLightenSectionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BigMapModule
L3_1 = 0.45
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._big_map_data = A1_2
  L5_2 = A1_2.EntranceID
  A0_2._entrance_id = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._new_section_game_object
  L7_2 = A0_2._binder
  L7_2 = L7_2.prefab_load_meta
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L5_2.section_game_object
  L7_2 = L1_1.SafeGetCmpt
  L8_2 = typeof
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.UI
  L9_2 = L9_2.Image
  L8_2 = L8_2(L9_2)
  L9_2 = L6_2
  L10_2 = ""
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._load_sprite_to
  L10_2 = L7_2
  L11_2 = A2_2.Sprite
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L7_2
  L8_2 = L7_2.SetNativeSize
  L8_2(L9_2)
  L8_2 = A2_2.Type
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.LevelMinimapSectionType
  L9_2 = L9_2.Normal
  if L8_2 == L9_2 and 1 < A4_2 then
    L8_2 = A2_2.MapLayerID
    if L8_2 ~= A3_2 then
      L8_2 = G
      L8_2 = L8_2.UIColorUtils
      L8_2 = L8_2.GetColorWithAlpha
      L9_2 = L7_2.color
      L10_2 = L3_1
      L8_2 = L8_2(L9_2, L10_2)
      L7_2.color = L8_2
    end
  end
  L7_2.useSpriteMesh = true
  L8_2 = L5_2.is_init_position
  if L8_2 == false then
    L8_2 = L6_2.transform
    L10_2 = A0_2
    L9_2 = A0_2._get_section_position
    L11_2 = A2_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.localPosition = L9_2
    L5_2.is_init_position = true
  end
  L8_2 = A2_2.Type
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.LevelMinimapSectionType
  L9_2 = L9_2.Normal
  if L8_2 == L9_2 then
    L8_2 = L6_2.transform
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Quaternion
    L9_2 = L9_2.identity
    L8_2.rotation = L9_2
  else
    L8_2 = L6_2.transform
    L10_2 = A0_2
    L9_2 = A0_2._get_rotation_bridge_section_rotation
    L11_2 = A2_2
    L12_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.rotation = L9_2
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = A1_2.Prefab
  L6_2 = A1_2.transform
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = {}
  L4_2.section_game_object = L3_2
  L4_2.section = A2_2
  L4_2.is_init_position = false
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._section_game_objects
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.AppUtils
  L5_2 = L5_2.IsEditor
  if L5_2 then
    L5_2 = A2_2.ID
    L3_2.name = L5_2
  end
  return L4_2
end
L0_1._new_section_game_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._big_map_data
  L2_2 = L2_2.NavmapConfig
  if L2_2 then
    L2_2 = A0_2._big_map_data
    L3_2 = L2_2
    L2_2 = L2_2.GetLevelNavmapAreaBySectionID
    L4_2 = A1_2.ID
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = G
      L3_2 = L3_2.MapUtil
      L3_2 = L3_2.Section_Offset_X
      L4_2 = G
      L4_2 = L4_2.MapUtil
      L4_2 = L4_2.Section_Offset_Y
      L5_2 = A1_2.UIPosition
      L5_2 = L5_2.x
      L6_2 = L3_2 * 2
      L7_2 = L2_2.PositionInCanvas
      L7_2 = L7_2.x
      L6_2 = L6_2 * L7_2
      L5_2 = L5_2 + L6_2
      L5_2 = L5_2 - L3_2
      L6_2 = A1_2.UIPosition
      L6_2 = L6_2.y
      L7_2 = L4_2 * 2
      L8_2 = L2_2.PositionInCanvas
      L8_2 = L8_2.y
      L7_2 = L7_2 * L8_2
      L6_2 = L6_2 + L7_2
      L6_2 = L6_2 - L4_2
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Vector3
      L8_2 = L5_2
      L9_2 = L6_2
      L10_2 = 0
      return L7_2(L8_2, L9_2, L10_2)
    end
  else
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = A1_2.UIPosition
    L3_2 = L3_2.x
    L4_2 = G
    L4_2 = L4_2.MapUtil
    L4_2 = L4_2.Section_Offset_X
    L3_2 = L3_2 - L4_2
    L4_2 = A1_2.UIPosition
    L4_2 = L4_2.y
    L5_2 = G
    L5_2 = L5_2.MapUtil
    L5_2 = L5_2.Section_Offset_Y
    L4_2 = L4_2 - L5_2
    L5_2 = 0
    return L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._get_section_position = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A0_2
  L3_2 = A0_2._set_pivot
  L5_2 = A2_2.rectTransform
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = 0
  L4_2 = A0_2._big_map_data
  L4_2 = L4_2.RotationBridgeList
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A1_2.PropID
    L11_2 = L9_2.InstanceID
    if L10_2 == L11_2 then
      L10_2 = L9_2.BridgeStateRotations
      if L10_2 ~= nil then
        L10_2 = L9_2.BridgeStateRotations
        L10_2 = L10_2.Length
        if 0 < L10_2 then
          L10_2 = L9_2.Rotation
          if L10_2 then
            L10_2 = L9_2.Rotation
            L10_2 = L10_2.eulerAngles
          end
          L11_2 = BridgeState2Index
          L12_2 = L9_2.State
          L11_2 = L11_2[L12_2]
          L12_2 = L9_2.BridgeStateRotations
          L12_2 = L12_2[L11_2]
          L13_2 = L10_2.y
          L3_2 = L12_2 + L13_2
        end
      end
      break
    end
  end
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Quaternion
  L5_2 = L5_2.Euler
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = 0
  L9_2 = -L3_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2, L8_2, L9_2)
  return L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1._get_rotation_bridge_section_rotation = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = A2_2.Center
  L3_2 = L3_2.x
  L4_2 = A2_2.Center
  L4_2 = L4_2.y
  L6_2 = A0_2
  L5_2 = A0_2.get_blackboard
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.query
  L7_2 = "StoryLineID"
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = 0
  end
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.GetBigMapData
  L8_2 = A0_2._entrance_id
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.GetMapVolumeData
  L7_2 = L7_2(L8_2)
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.BigMapUtils
  L8_2 = L8_2.GetSectionBounds
  L9_2 = A2_2
  L10_2 = L7_2.SectionVertices
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L8_2.MinX
  L10_2 = L8_2.MaxX
  L11_2 = L8_2.MinY
  L12_2 = L8_2.MaxY
  L13_2 = CS
  L13_2 = L13_2.UnityEngine
  L13_2 = L13_2.Vector2
  L14_2 = L3_2 - L9_2
  L15_2 = L10_2 - L9_2
  L14_2 = L14_2 / L15_2
  L15_2 = L4_2 - L11_2
  L16_2 = L12_2 - L11_2
  L15_2 = L15_2 / L16_2
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = CS
  L14_2 = L14_2.UnityEngine
  L14_2 = L14_2.Vector3
  L15_2 = L13_2.x
  L16_2 = A1_2.pivot
  L16_2 = L16_2.x
  L15_2 = L15_2 - L16_2
  L16_2 = L13_2.y
  L17_2 = A1_2.pivot
  L17_2 = L17_2.y
  L16_2 = L16_2 - L17_2
  L17_2 = 0
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = CS
  L15_2 = L15_2.UnityEngine
  L15_2 = L15_2.Vector3
  L16_2 = A1_2.rect
  L16_2 = L16_2.size
  L16_2 = L16_2.x
  L17_2 = A1_2.rect
  L17_2 = L17_2.size
  L17_2 = L17_2.y
  L18_2 = 0
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L17_2 = L14_2
  L16_2 = L14_2.Scale
  L18_2 = L15_2
  L16_2(L17_2, L18_2)
  L16_2 = A1_2.position
  L18_2 = A1_2
  L17_2 = A1_2.TransformVector
  L19_2 = L14_2
  L17_2 = L17_2(L18_2, L19_2)
  L16_2 = L16_2 + L17_2
  A1_2.pivot = L13_2
  A1_2.position = L16_2
end
L0_1._set_pivot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._section_game_objects
  if L1_2 then
    L1_2 = A0_2._section_game_objects
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = pairs
      L2_2 = A0_2._section_game_objects
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L7_2 = A0_2
        L6_2 = A0_2.destroy_object
        L8_2 = L5_2.section_game_object
        L6_2(L7_2, L8_2)
      end
    end
  end
  L1_2 = {}
  A0_2._section_game_objects = L1_2
end
L0_1.release_game_object_pool = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.release_game_object_pool
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
return L0_1
