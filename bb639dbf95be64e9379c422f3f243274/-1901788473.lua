local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DTouchPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Destination_W0 = 101
L1_1.Destination_W1 = 201
L1_1.Destination_W2 = 301
L1_1.Destination_W3 = 401
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_UI3DCamera
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.Vector3
L3_1 = L3_1.zero
L4_1 = 0.3
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/WorldMap/Map_BackGround.prefab"
  L1_2 = A0_2.config
  L1_2.is_async_load = true
  L1_2 = {}
  A0_2._world_planets = L1_2
  L1_2 = {}
  A0_2._world_planets_animator = L1_2
  A0_2.is_init_finish = false
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCameraPanel
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._camera_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_touch
  L1_2(L2_2)
  A0_2.is_init_finish = true
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Map/DecorateLines"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_decorate_lines = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoEffectDecorateLineControl
  L4_2 = "Map/DecorateLines"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.decorate_line_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Map/Destinations"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_destinations = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Touch"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_touch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIMapCutSceneTween
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.map_cut_scene_tween = L1_2
  L1_2 = A0_2._world_planets
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Map/Destinations/W0"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[101] = L2_2
  L1_2 = A0_2._world_planets
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Map/Destinations/W1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[201] = L2_2
  L1_2 = A0_2._world_planets
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Map/Destinations/W2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[301] = L2_2
  L1_2 = A0_2._world_planets
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Map/Destinations/W3"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[401] = L2_2
  L1_2 = A0_2._world_planets_animator
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animator
  L5_2 = "Map/Destinations/W0/Destination_W0"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[101] = L2_2
  L1_2 = A0_2._world_planets_animator
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animator
  L5_2 = "Map/Destinations/W1/Destination_W1"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[201] = L2_2
  L1_2 = A0_2._world_planets_animator
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animator
  L5_2 = "Map/Destinations/W2/Destination_W2"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[301] = L2_2
  L1_2 = A0_2._world_planets_animator
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animator
  L5_2 = "Map/Destinations/W3/Destination_W3"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[401] = L2_2
end
L0_1._init_node = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DTouchPanel
  L4_2 = "Root/Touch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._touch_panel = L1_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.init_touch
  L1_2(L2_2)
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1._init_touch = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.node_touch
  L3_2 = L3_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.sizeDelta = L4_2
  L3_2 = A0_2._touch_panel
  L4_2 = L3_2
  L3_2 = L3_2.refresh
  L3_2(L4_2)
end
L0_1.setup_touch_size = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._world_planets
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.transform
  L3_2 = L3_2.position
  L3_2 = L3_2.x
  L4_2 = A0_2._touch_panel
  L5_2 = L4_2
  L4_2 = L4_2.focus_camera
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = L3_2
  L8_2 = 0
  L9_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = L4_1
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.focus_camera_pos_by_world_id = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._touch_panel
  L3_2 = L2_2
  L2_2 = L2_2.move_camera
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.move_camera = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L4_2 = L3_2
  L3_2 = L3_2.PostEvent
  L5_2 = "Ev_sfx_ui_menu_mapPage_space_switch"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.map_cut_scene_tween
  L3_2 = L3_2.OnCutSceneEnd
  L4_2 = L3_2
  L3_2 = L3_2.RemoveAllListeners
  L3_2(L4_2)
  L3_2 = A0_2.map_cut_scene_tween
  L3_2 = L3_2.OnCutSceneEnd
  L4_2 = L3_2
  L3_2 = L3_2.AddListener
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.get_screen_position_by_world_id
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2.map_cut_scene_tween
  L6_2 = L5_2
  L5_2 = L5_2.SetMapCutScene
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.play_map_cut_scene = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.node_decorate_lines
  if L2_2 then
    L2_2 = A0_2.node_decorate_lines
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.enable_decorate_lines = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.node_destinations
  if L2_2 then
    L2_2 = A0_2.node_destinations
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.enable_destinations = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._world_planets
  if L3_2 then
    L3_2 = A0_2._world_planets
    L3_2 = L3_2[A1_2]
    if L3_2 then
      L3_2 = A0_2._world_planets
      L3_2 = L3_2[A1_2]
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.enable_world_planet = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._world_planets
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1.hide_all_planets = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= A1_2 then
      L8_2 = A0_2
      L7_2 = A0_2._custom_set_trigger
      L9_2 = L6_2
      L10_2 = "Normal"
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1.clear_planet_animation = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.clear_planet_animation
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._custom_set_trigger
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_world_planet_animator_trigger_by_id = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._world_planets_animator
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentAnimatorStateInfo
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.IsName
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
  end
  if not L4_2 then
    L5_2 = A0_2._world_planets_animator
    L5_2 = L5_2[A1_2]
    L6_2 = L5_2
    L5_2 = L5_2.SetTrigger
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._custom_set_trigger = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1[A1_2]
  return L2_2
end
L0_1.get_planet_id_by_name = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._world_planets
  L3_2 = L3_2[A2_2]
  if L3_2 then
    L3_2 = A0_2._world_planets
    L3_2 = L3_2[A2_2]
    L3_2 = L3_2.transform
    if L3_2 then
      L3_2 = A0_2._world_planets
      L3_2 = L3_2[A2_2]
      L3_2 = L3_2.transform
      L3_2 = L3_2.position
    end
  end
  if L3_2 == nil then
    L4_2 = L3_1
    return L4_2
  end
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.WorldToScreenPoint
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector2
  L6_2 = L4_2.x
  L7_2 = L4_2.y
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.RectTransformUtility
  L6_2 = L6_2.ScreenPointToLocalPointInRectangle
  L7_2 = A1_2
  L8_2 = L5_2
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.GlobalVars
  L9_2 = L9_2.s_UICamera
  L10_2 = nil
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if not L6_2 then
    L8_2 = G
    L8_2 = L8_2.SuperDebug
    L8_2 = L8_2.LogErrorFormat
    L9_2 = "Failed to get coordinates!"
    L8_2(L9_2)
    L8_2 = L3_1
    return L8_2
  end
  return L7_2
end
L0_1.world_position_to_local_point_in_rectangle = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.decorate_line_control
  if L2_2 then
    L2_2 = A0_2.decorate_line_control
    L2_2.showDestinations = A1_2
  end
end
L0_1.set_show_destinations_count = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._world_planets
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = A0_2._world_planets
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.transform
    if L2_2 then
      L2_2 = A0_2._world_planets
      L2_2 = L2_2[A1_2]
      L2_2 = L2_2.transform
      L2_2 = L2_2.position
    end
  end
  if L2_2 == nil then
    L3_2 = 0
    L4_2 = 0
    return L3_2, L4_2
  end
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.WorldToScreenPoint
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.x
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Screen
  L5_2 = L5_2.width
  L4_2 = L4_2 / L5_2
  L5_2 = L3_2.y
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Screen
  L6_2 = L6_2.height
  L5_2 = L5_2 / L6_2
  return L4_2, L5_2
end
L0_1.get_screen_position_by_world_id = L5_1
return L0_1
