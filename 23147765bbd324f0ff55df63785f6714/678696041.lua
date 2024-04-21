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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
    L6_2 = L6_2.transform
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector2
    L8_2 = L4_2
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.sizeDelta = L7_2
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
  L4_2 = A0_2._entranceId
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
    L5_2 = A0_2._entranceId
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
      L6_2 = L2_2
      L5_2 = L2_2.GetBackgroundMapSpritePathByAreaID
      L7_2 = L4_2
      return L5_2(L6_2, L7_2)
    end
  end
  L3_2 = L2_2.BackgroundMapSpritePath
  return L3_2
end
L0_1._get_back_group_path = L2_1
function L2_1(A0_2)
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
  L4_2 = A0_2._entranceId
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
    L5_2 = A0_2._entranceId
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
      L6_2 = L2_2
      L5_2 = L2_2.GetBackgroundSizeByAreaID
      L7_2 = L4_2
      return L5_2(L6_2, L7_2)
    end
  end
  L3_2 = L2_2.BackgroundSize
  return L3_2
end
L0_1._get_back_ground_size = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector3
  L1_2 = L1_2.zero
  return L1_2
end
L0_1._get_back_ground_position = L2_1
return L0_1
