local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DTouchPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.UI3D.UI3DChallengeCrystalPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.UI3D.ChallengeUI3DConfigItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.UI3D.UI3DChallengeCrystalGroupPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeSelectUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.WorldMap = 1
L1_1.Detail = 2
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.Effect_AbyssCrystalManager
L2_1 = L2_1.SelectedState
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/Abyss/AbyssScene.prefab"
  L1_2 = {}
  A0_2._camera_anchors = L1_2
  L1_2 = {}
  A0_2._look_anchors = L1_2
  L1_2 = {}
  A0_2._cameras = L1_2
  L1_2 = {}
  A0_2._crystal_group_panels = L1_2
  A0_2.current_crystal_group = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCameraPanel
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._camera_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AbyssScene_Blue/Crystals"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._resident_crystal_node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_touch_panel
  L1_2(L2_2)
  A0_2.is_init_finish = true
  L2_2 = A0_2
  L1_2 = A0_2._trigger_init_finish_callback
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._init_callback_handler = nil
  A0_2._init_callback_listener = nil
  A0_2._setup_view_handler = nil
  A0_2._setup_view_listener = nil
  A0_2._swipe_callback_handler = nil
  A0_2._swipe_callback_listener = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._init_callback_handler = A1_2
  A0_2._init_callback_listener = A2_2
  L3_2 = A0_2.is_init_finish
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._trigger_init_finish_callback
    L3_2(L4_2)
  end
end
L0_1.register_init_finish_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._init_callback_handler
  if L1_2 then
    L1_2 = A0_2._init_callback_handler
    L2_2 = A0_2._init_callback_listener
    L1_2(L2_2)
  end
end
L0_1._trigger_init_finish_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2.is_setup_view_finish = true
  L2_2 = A0_2
  L1_2 = A0_2._trigger_setup_view_callback
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._setup_view_handler = A1_2
  A0_2._setup_view_listener = A2_2
  L3_2 = A0_2.is_setup_view_finish
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._trigger_setup_view_callback
    L3_2(L4_2)
  end
end
L0_1.register_setup_view_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._setup_view_handler
  L3_2 = A0_2._setup_view_listener
  L1_2(L2_2, L3_2)
end
L0_1._trigger_setup_view_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._swipe_callback_handler = A1_2
  A0_2._swipe_callback_listener = A2_2
end
L0_1.register_swipe_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_touch_panel
  L1_2(L2_2)
end
L0_1.refresh_touch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "AbyssScene_Blue/BackGroundControl_Blue/AbyssSence_Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._renderer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.MeshRenderer
  L4_2 = "AbyssScene_Red/BackGroundControl_Red/AbyssSence_Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._renderer_schedule = L1_2
end
L0_1._init_bg = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "Root/NodeDragCamera"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_drag_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LookAtPoint/World_Map_Center"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_look_anchor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/CameraPoint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_camera_anchor = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UI3DCamera
  A0_2.node_camera = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AbyssScene_Blue"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_scene = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AbyssScene_Red"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_scene_schedule = L1_2
end
L0_1._init_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cameras
  L2_2 = L1_1.WorldMap
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/WorldMapVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._cameras
  L2_2 = L1_1.WorldMap
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.set_follow
  L3_2 = A0_2.node_camera_anchor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cameras
  L2_2 = L1_1.WorldMap
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.set_look_at
  L3_2 = A0_2.node_look_anchor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L1_1.WorldMap
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cameras
  L2_2 = L1_1.Detail
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/LevelDetailVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._cameras
  L2_2 = L1_1.Detail
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.set_look_at
  L3_2 = A0_2.node_look_anchor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L1_1.Detail
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cameras
  L2_2 = L1_1.WorldMap
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.active
  L1_2(L2_2)
end
L0_1._init_camera = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_touch_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cameras
  L2_2 = L1_1.WorldMap
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.active
  L1_2(L2_2)
end
L0_1.show_world_map_camera = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_touch_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cameras
  L2_2 = L1_1.Detail
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.active
  L1_2(L2_2)
end
L0_1.show_detail_camera = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DTouchPanel
  L4_2 = "Root/NodeDragCamera"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._touch_panel = L1_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.init_touch
  L1_2(L2_2)
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_swipe_handler
  L3_2 = A0_2._on_swipe
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_swipe_end_handler
  L3_2 = A0_2._on_swipe_end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_touch_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.current_crystal_group
  L1_2 = L1_2._challenge_ui3d_config
  L2_2 = L1_2
  L1_2 = L1_2.get_root_rect_transform_size
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2.rect_drag_root
  L4_2 = L3_2
  L3_2 = L3_2.SetSizeWithCurrentAnchors
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L5_2 = L5_2.Axis
  L5_2 = L5_2.Horizontal
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.rect_drag_root
  L4_2 = L3_2
  L3_2 = L3_2.SetSizeWithCurrentAnchors
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L5_2 = L5_2.Axis
  L5_2 = L5_2.Vertical
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_drag_root_offset
  L5_2 = A0_2.current_crystal_group
  L5_2 = L5_2._challenge_ui3d_config
  L6_2 = L5_2
  L5_2 = L5_2.get_drag_offset
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_camera_pos
  L5_2 = A0_2.current_crystal_group
  L5_2 = L5_2._challenge_ui3d_config
  L6_2 = L5_2
  L5_2 = L5_2.get_camera_origin_pos
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_margin
  L5_2 = A0_2.current_crystal_group
  L5_2 = L5_2._challenge_ui3d_config
  L6_2 = L5_2
  L5_2 = L5_2.get_margin
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._touch_panel
  L4_2 = L3_2
  L3_2 = L3_2.refresh
  L3_2(L4_2)
end
L0_1._refresh_touch_panel = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2.is_schedule = A1_2
  A0_2.world_id = A3_2
  L4_2 = A0_2._crystal_group_panels
  L4_2 = L4_2[A3_2]
  if L4_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.init_group_panel
    L6_2 = A3_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.current_crystal_group
  if L4_2 ~= nil then
    L4_2 = A0_2.current_crystal_group
    L5_2 = L4_2
    L4_2 = L4_2.set_active
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._crystal_group_panels
  L4_2 = L4_2[A3_2]
  L5_2 = L4_2
  L4_2 = L4_2.set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._crystal_group_panels
  L4_2 = L4_2[A3_2]
  A0_2.current_crystal_group = L4_2
  L4_2 = A0_2.node_scene
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.node_scene_schedule
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.current_crystal_group
  L5_2 = L4_2
  L4_2 = L4_2.get_effect_manager
  L4_2 = L4_2(L5_2)
  A0_2.effect_crystal_manager = L4_2
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = A0_2.node_camera_anchor
  L4_2.CameraTransform = L5_2
end
L0_1.init_group = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = nil
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.UI3DChallengeCrystalGroupPanel
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._crystal_group_panels
  L5_2[A1_2] = L4_2
  L5_2 = require
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "Ui.Challenge.UI3D.Config.WorldConfig_%s"
  L8_2 = A1_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2._load_challenge_ui3d_config
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if A1_2 == 0 then
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = "AbyssScene_Red/Crystals/Abyss_Node_CrysatalGroup_Red"
    L6_2 = L6_2(L7_2, L8_2)
    L3_2 = L6_2
  else
    L7_2 = A0_2
    L6_2 = A0_2.sync_load_prefab
    L9_2 = L4_2
    L8_2 = L4_2.get_prefab_path
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2._resident_crystal_node
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L3_2 = L6_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.bind
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.prepare_node
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
end
L0_1.init_group_panel = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil or A1_2 == "" then
    return
  end
  if A2_2 then
    L3_2 = A0_2._renderer_schedule
    L3_2 = L3_2.material
    L4_2 = G
    L4_2 = L4_2.AssetLoader
    L4_2 = L4_2.SyncLoadAsset
    L5_2 = A1_2
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Texture2D
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.mainTexture = L4_2
  else
    L3_2 = A0_2._renderer
    L3_2 = L3_2.material
    L4_2 = G
    L4_2 = L4_2.AssetLoader
    L4_2 = L4_2.SyncLoadAsset
    L5_2 = A1_2
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Texture2D
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.mainTexture = L4_2
  end
end
L0_1.set_world_bg_texture = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.current_crystal_group
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2.current_crystal_group
  L3_2 = L2_2
  L2_2 = L2_2.get_crystal_anchor_by_index
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_crystal_anchor_by_index = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2.current_crystal_group
  if L4_2 == nil then
    L4_2 = nil
    return L4_2
  end
  L4_2 = A0_2.current_crystal_group
  L5_2 = L4_2
  L4_2 = L4_2.set_crystal_active_by_index
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.set_crystal_active_by_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._swipe_callback_handler
  if L2_2 then
    L2_2 = A0_2._swipe_callback_handler
    L3_2 = A0_2._swipe_callback_listener
    L2_2(L3_2)
  end
  A0_2._is_in_swipe = true
end
L0_1._on_swipe = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_in_swipe = false
end
L0_1._on_swipe_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._is_in_swipe
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_crystal_anchor_by_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L5_2 = A0_2
  L4_2 = A0_2._check_repeat_enter
  L6_2 = L3_2
  L7_2 = L2_2
  L8_2 = L2_1.Stay
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    return
  end
  if not L3_2 then
    L4_2 = A0_2.effect_crystal_manager
    L4_2.SpecialMode = false
    L4_2 = A0_2.effect_crystal_manager
    L5_2 = L2_1.None
    L4_2.SelectState = L5_2
    L4_2 = A0_2.effect_crystal_manager
    L5_2 = L4_2
    L4_2 = L4_2.SetAureoleAni
    L4_2(L5_2)
  end
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.is_gamepad_input
  L5_2 = L5_2()
  L4_2.SpecialMode = L5_2
  L4_2 = A0_2.effect_crystal_manager
  L4_2.SelectNode = L2_2
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = L2_1.Stay
  L4_2.SelectState = L5_2
end
L0_1.enter_crystal_by_index = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A0_2.effect_crystal_manager
  if L4_2 then
    L4_2 = A0_2.effect_crystal_manager
    L4_2 = L4_2.SpecialMode
    L4_2 = L4_2 == A1_2
  end
  return L4_2
end
L0_1._check_repeat_enter = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.effect_crystal_manager
  L2_2 = L2_1.None
  L1_2.SelectState = L2_2
end
L0_1.unselect_crystal = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.get_crystal_anchor_by_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L5_2 = A0_2
  L4_2 = A0_2._check_repeat_enter
  L6_2 = L3_2
  L7_2 = L2_2
  L8_2 = L2_1.Unlock
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    return
  end
  L4_2 = A0_2.effect_crystal_manager
  L4_2.SpecialMode = L3_2
  L4_2 = A0_2.effect_crystal_manager
  L4_2.SelectNode = L2_2
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = L2_1.None
  L4_2.SelectState = L5_2
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = L4_2
  L4_2 = L4_2.SetAureoleAni
  L4_2(L5_2)
  L4_2 = A0_2.effect_crystal_manager
  L4_2.SelectNode = L2_2
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = L2_1.Unlock
  L4_2.SelectState = L5_2
end
L0_1.unlock_crystal_by_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.get_crystal_anchor_by_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = L4_2
  L4_2 = L4_2.UnlockCrystal
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.auto_unlock_crystal_by_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.effect_crystal_manager
  L1_2.SpecialMode = false
  L1_2 = A0_2.effect_crystal_manager
  L1_2.SelectNode = nil
  L1_2 = A0_2.effect_crystal_manager
  L2_2 = L2_1.None
  L1_2.SelectState = L2_2
end
L0_1.clear_crystal_state = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.get_crystal_anchor_by_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L5_2 = A0_2
  L4_2 = A0_2._check_repeat_enter
  L6_2 = L3_2
  L7_2 = L2_2
  L8_2 = L2_1.Pressed
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    return
  end
  if not L3_2 then
    L4_2 = A0_2.effect_crystal_manager
    L4_2.SpecialMode = false
    L4_2 = A0_2.effect_crystal_manager
    L4_2.SelectNode = nil
    L4_2 = A0_2.effect_crystal_manager
    L5_2 = L2_1.None
    L4_2.SelectState = L5_2
    L4_2 = A0_2.effect_crystal_manager
    L5_2 = L4_2
    L4_2 = L4_2.SetAureoleAni
    L4_2(L5_2)
    L4_2 = A0_2.effect_crystal_manager
    L4_2.SpecialMode = false
    L4_2 = A0_2.effect_crystal_manager
    L4_2.SelectNode = L2_2
    L4_2 = A0_2.effect_crystal_manager
    L5_2 = L2_1.Stay
    L4_2.SelectState = L5_2
    L4_2 = A0_2.effect_crystal_manager
    L5_2 = L4_2
    L4_2 = L4_2.SetAureoleAni
    L4_2(L5_2)
  end
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.is_gamepad_input
  L5_2 = L5_2()
  L4_2.SpecialMode = L5_2
  L4_2 = A0_2.effect_crystal_manager
  L4_2.SelectNode = L2_2
  L4_2 = A0_2.effect_crystal_manager
  L5_2 = L2_1.Pressed
  L4_2.SelectState = L5_2
end
L0_1.press_crystal_by_index = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2.get_crystal_anchor_by_index
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.InputUtils
  L4_2 = L4_2.IsControllerInput
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2._touch_panel
    L5_2 = L4_2
    L4_2 = L4_2.focus_camera
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Vector2
    L7_2 = L3_2.position
    L7_2 = L7_2.x
    L8_2 = L3_2.position
    L8_2 = L8_2.y
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = 0.2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L5_2 = A0_2.effect_crystal_manager
    L5_2.SpecialMode = true
    L5_2 = A0_2.effect_crystal_manager
    L5_2.SelectNode = L3_2
    L5_2 = A0_2.effect_crystal_manager
    L6_2 = L2_1.None
    L5_2.SelectState = L6_2
    L5_2 = A0_2.effect_crystal_manager
    L6_2 = L5_2
    L5_2 = L5_2.SetAureoleAni
    L5_2(L6_2)
  end
  L5_2 = A0_2.effect_crystal_manager
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.is_gamepad_input
  L6_2 = L6_2()
  L5_2.SpecialMode = L6_2
  L5_2 = A0_2.effect_crystal_manager
  L5_2.SelectNode = L3_2
  L5_2 = A0_2.effect_crystal_manager
  L6_2 = L2_1.Selected
  L5_2.SelectState = L6_2
end
L0_1.select_crystal_by_index = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._touch_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_margin
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_margin = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._touch_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_camera_origin_pos
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_camera_pos = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.rect_drag_root
  L2_2 = L2_2.transform
  L2_2.localPosition = A1_2
end
L0_1.set_drag_root_offset = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.set_drag_root_offset
  L4_2 = A0_2.current_crystal_group
  L4_2 = L4_2._challenge_ui3d_config
  L5_2 = L4_2
  L4_2 = L4_2.get_drag_offset
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_camera_pos
  L4_2 = A0_2.current_crystal_group
  L4_2 = L4_2._challenge_ui3d_config
  L5_2 = L4_2
  L4_2 = L4_2.get_camera_origin_pos
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_margin
  L4_2 = A0_2.current_crystal_group
  L4_2 = L4_2._challenge_ui3d_config
  L5_2 = L4_2
  L4_2 = L4_2.get_margin
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._touch_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
end
L0_1.move_to_cur_challenge = L3_1
return L0_1
