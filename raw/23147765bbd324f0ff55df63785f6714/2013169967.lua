local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapPlayerIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Ui.Map.MapContainer.MapPlayerIconPanelBinder"
L1_1(L2_1)
L1_1 = 45
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BigMapModule
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  A0_2._big_map_data = A1_2
  A0_2._entrance_id = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.query
  L5_2 = "StoryLineID"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = G
  L4_2 = L4_2.MapUtil
  L4_2 = L4_2.check_is_show_player_icon
  L5_2 = A2_2
  L6_2 = L3_2
  L7_2 = A1_2.DimensionID
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_show_player_position
  L5_2 = L5_2(L6_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_ModuleManager
  L6_2 = L6_2.AdventureModule
  L6_2 = L6_2.MapDef
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.BigMapUtils
  L7_2 = L7_2.GetPlayerAreaData
  L8_2 = L6_2
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._owner
  L8_2 = L8_2.__name
  L9_2 = G
  L9_2 = L9_2.MapUtil
  L9_2 = L9_2.Map2D_View_Page
  if L8_2 == L9_2 then
    if L7_2 then
      L9_2 = A0_2
      L8_2 = A0_2.get_blackboard
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2
      L8_2 = L8_2.query
      L10_2 = "SubMapID"
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = G
      L9_2 = L9_2.MapUtil
      L9_2 = L9_2.get_sub_map_area_id
      L10_2 = A0_2._entrance_id
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if L4_2 then
        L4_2 = L9_2 == nil
      end
    end
  else
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.BigMapUtils
    L8_2 = L8_2.IsPlayerInHideArea
    L8_2 = L8_2()
    if L4_2 then
      L4_2 = not L8_2
    end
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_player_icon
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_camera_icon
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
  if L4_2 then
    L9_2 = A0_2
    L8_2 = A0_2._get_show_player_rotation
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.image_player_icon
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.BigMapUtils
    L10_2 = L10_2.GetMapIconRotation
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L9_2.rotation = L10_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.image_camera_icon
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.BigMapUtils
    L10_2 = L10_2.GetMapIconRotation
    L11_2 = L8_2
    L12_2 = L1_1
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.rotation = L10_2
    L10_2 = A0_2
    L9_2 = A0_2._is_map_area_hide
    L9_2 = L9_2(L10_2)
    L11_2 = A0_2
    L10_2 = A0_2.get_blackboard
    L10_2 = L10_2(L11_2)
    L11_2 = L10_2
    L10_2 = L10_2.query
    L12_2 = "BackgroundSize"
    L10_2 = L10_2(L11_2, L12_2)
    if not L10_2 then
      L10_2 = A1_2.BackgroundSize
    end
    L11_2 = G
    L11_2 = L11_2.MapUtil
    L11_2 = L11_2.get_player_icon_local_position
    L12_2 = A0_2._big_map_data
    L13_2 = L7_2
    L14_2 = L5_2
    L15_2 = L10_2
    L16_2 = L9_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L12_2 = A0_2._binder
    L12_2 = L12_2.image_player_icon
    L12_2.localPosition = L11_2
    L12_2 = A0_2._binder
    L12_2 = L12_2.image_camera_icon
    L12_2.localPosition = L11_2
    L13_2 = A0_2
    L12_2 = A0_2.get_blackboard
    L12_2 = L12_2(L13_2)
    L13_2 = L12_2
    L12_2 = L12_2.update
    L14_2 = "node_player_icon"
    L15_2 = A0_2._binder
    L15_2 = L15_2.image_player_icon
    L12_2(L13_2, L14_2, L15_2)
    L13_2 = A0_2
    L12_2 = A0_2.get_blackboard
    L12_2 = L12_2(L13_2)
    L13_2 = L12_2
    L12_2 = L12_2.update
    L14_2 = "node_player_icon_src"
    L15_2 = "main"
    L12_2(L13_2, L14_2, L15_2)
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_player_icon
  L3_2 = L3_2.transform
  L3_2.localScale = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_player_icon
  L3_2 = L3_2.transform
  L3_2.localScale = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_camera_icon
  L3_2 = L3_2.transform
  L3_2.localScale = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_camera_icon
  L3_2 = L3_2.transform
  L3_2.localScale = A2_2
end
L0_1.setup_player_icon_scale = L3_1
function L3_1(A0_2)
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
  L4_2 = L3_2.eulerAngles
  if not L4_2 then
    L4_2 = L3_2.rotation
    L4_2 = L4_2.eulerAngles
  end
  return L4_2
end
L0_1._get_show_player_rotation = L3_1
function L3_1(A0_2)
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
L0_1._get_show_player_position = L3_1
function L3_1(A0_2)
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
  L2_2 = L2_1
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
L0_1._is_map_area_hide = L3_1
return L0_1
