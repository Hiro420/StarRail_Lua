local L0_1, L1_1, L2_1
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
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
      L8_2 = G
      L8_2 = L8_2.MapUtil
      L8_2 = L8_2.get_sub_map_area_id
      L9_2 = A0_2._entrance_id
      L8_2 = L8_2(L9_2)
      if L4_2 then
        L9_2 = L7_2.AreaID
        L4_2 = L8_2 == L9_2
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
    L9_2 = A0_2.get_blackboard
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2
    L9_2 = L9_2.query
    L11_2 = "BackgroundSize"
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = A1_2.BackgroundSize
    end
    L10_2 = G
    L10_2 = L10_2.MapUtil
    L10_2 = L10_2.get_player_icon_local_position
    L11_2 = A0_2._big_map_data
    L12_2 = L7_2
    L13_2 = L5_2
    L14_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L11_2 = A0_2._binder
    L11_2 = L11_2.image_player_icon
    L11_2.localPosition = L10_2
    L11_2 = A0_2._binder
    L11_2 = L11_2.image_camera_icon
    L11_2.localPosition = L10_2
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
L0_1.setup_player_icon_scale = L2_1
function L2_1(A0_2)
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
L0_1._get_show_player_rotation = L2_1
function L2_1(A0_2)
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
L0_1._get_show_player_position = L2_1
return L0_1
