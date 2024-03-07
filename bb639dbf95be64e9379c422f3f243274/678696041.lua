local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapBackgroundPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapBackgroundPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BigMapModule
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._entranceId = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_back_group_path
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_back_ground_size
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.get_blackboard
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.update
  L6_2 = "BackgroundSize"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L3_2.x
  L5_2 = L3_2.z
  L6_2 = CS
  L6_2 = L6_2.System
  L6_2 = L6_2.String
  L6_2 = L6_2.IsNullOrEmpty
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.image_icon
    L9_2 = L2_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.image_icon
    L6_2 = L6_2.sprite
    L6_2 = L6_2.pixelsPerUnit
    L7_2 = G
    L7_2 = L7_2.MapUtil
    L8_2 = A0_2._binder
    L8_2 = L8_2.image_icon
    L8_2 = L8_2.sprite
    L8_2 = L8_2.rect
    L8_2 = L8_2.width
    L9_2 = L6_2 * 2
    L8_2 = L8_2 / L9_2
    L7_2.Section_Offset_X = L8_2
    L7_2 = G
    L7_2 = L7_2.MapUtil
    L8_2 = A0_2._binder
    L8_2 = L8_2.image_icon
    L8_2 = L8_2.sprite
    L8_2 = L8_2.rect
    L8_2 = L8_2.height
    L9_2 = L6_2 * 2
    L8_2 = L8_2 / L9_2
    L7_2.Section_Offset_Y = L8_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.image_icon
    L7_2 = L7_2.transform
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Vector2
    L9_2 = L4_2
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.sizeDelta = L8_2
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L2_2 = L2_2.transform
  L2_2.localScale = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_back_ground_position
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_icon
  L3_2 = L3_2.transform
  L3_2.localPosition = L2_2
end
L0_1.setup_background_scale = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_back_group_path
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.image_icon
    L2_2 = L2_2.sprite
    L2_2 = L2_2.pixelsPerUnit
    L3_2 = G
    L3_2 = L3_2.MapUtil
    L4_2 = A0_2._binder
    L4_2 = L4_2.image_icon
    L4_2 = L4_2.sprite
    L4_2 = L4_2.rect
    L4_2 = L4_2.width
    L5_2 = L2_2 * 2
    L4_2 = L4_2 / L5_2
    L3_2.Section_Offset_X = L4_2
    L3_2 = G
    L3_2 = L3_2.MapUtil
    L4_2 = A0_2._binder
    L4_2 = L4_2.image_icon
    L4_2 = L4_2.sprite
    L4_2 = L4_2.rect
    L4_2 = L4_2.height
    L5_2 = L2_2 * 2
    L4_2 = L4_2 / L5_2
    L3_2.Section_Offset_Y = L4_2
  end
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L4_2 = A0_2._entranceId
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.Map2D_View_Page
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.MapUtil
    L3_2 = L3_2.get_sub_map_area_id
    L4_2 = A0_2._entranceId
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.IsMapAreaHide
    L5_2 = L2_2.NavmapConfig
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L2_2
      L4_2 = L2_2.GetBackgroundMapSpritePathByAreaID
      L6_2 = L3_2
      return L4_2(L5_2, L6_2)
    end
  end
  L3_2 = L2_2.BackgroundMapSpritePath
  return L3_2
end
L0_1._get_back_group_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L4_2 = A0_2._entranceId
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.Map2D_View_Page
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.MapUtil
    L3_2 = L3_2.get_sub_map_area_id
    L4_2 = A0_2._entranceId
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.IsMapAreaHide
    L5_2 = L2_2.NavmapConfig
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L2_2
      L4_2 = L2_2.GetBackgroundSizeByAreaID
      L6_2 = L3_2
      return L4_2(L5_2, L6_2)
    end
  end
  L3_2 = L2_2.BackgroundSize
  return L3_2
end
L0_1._get_back_ground_size = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L4_2 = A0_2._entranceId
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.Map2D_View_Page
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.MapUtil
    L3_2 = L3_2.get_sub_map_area_id
    L4_2 = A0_2._entranceId
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BigMapUtils
    L4_2 = L4_2.IsMapAreaHide
    L5_2 = L2_2.NavmapConfig
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L2_2
      L4_2 = L2_2.GetLevelNavmapAreaByAreaID
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L6_2 = A0_2
        L5_2 = A0_2._get_back_ground_size
        L5_2 = L5_2(L6_2)
        L6_2 = L5_2.x
        L7_2 = L4_2.PositionInCanvas
        L7_2 = L7_2.x
        L6_2 = L6_2 * L7_2
        L7_2 = L5_2.z
        L8_2 = L4_2.PositionInCanvas
        L8_2 = L8_2.y
        L7_2 = L7_2 * L8_2
        L8_2 = CS
        L8_2 = L8_2.UnityEngine
        L8_2 = L8_2.Vector3
        L9_2 = L6_2
        L10_2 = L7_2
        L11_2 = 0
        return L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L3_2 = L3_2.zero
  return L3_2
end
L0_1._get_back_ground_position = L2_1
return L0_1
