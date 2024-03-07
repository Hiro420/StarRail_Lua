local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = "Root/MapPanel"
L1_1 = "Root/MapPanel/MapIconContainer"
L2_1 = "Root/VirtualCamera/EditVC"
L3_1 = {}
L3_1.Player3D = 0
L3_1.MappingInfo3D = 1
L3_1.PlayerDirection2D = 2
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.Map3DUtils
L5_1 = require
L6_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L5_1(L6_1)
L5_1 = require
L6_1 = "Ui.Map3D.UIMap3DPanel"
L5_1(L6_1)
L5_1 = require
L6_1 = "Ui.Map3D.ModelIcon.Map3DModelIconContainer"
L5_1(L6_1)
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "Map3DUI3DPage"
L7_1 = G
L7_1 = L7_1.UI3DController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/Map/UI3D_3DMap.prefab"
  L1_2 = A0_2.config
  L1_2.is_async_load = true
  A0_2.is_init_finish = false
  A0_2._view_target_pos = nil
  A0_2._is_loaded = false
  A0_2._region_data = nil
  A0_2._prefab_load_meta = nil
end
L5_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._region_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_map
  L2_2(L3_2)
end
L5_1.init_map = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._v_camera
  if L1_2 ~= nil then
    L1_2 = A0_2._map_3d
    if L1_2 ~= nil then
      L1_2 = A0_2._map_3d
      L2_2 = L1_2
      L1_2 = L1_2.get_model
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._map_3d
      L3_2 = L2_2
      L2_2 = L2_2.get_bounds
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._region_data
      L3_2 = L3_2.IsPlayerCurrentRegion
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Vector3
      L4_2 = L4_2.zero
      if L3_2 then
        L5_2 = A0_2._region_data
        L5_2 = L5_2.PlayerItem
        if L5_2 ~= nil then
          L5_2 = L4_1.GetRotatableRegionItemWorldPosition
          L6_2 = A0_2._region_data
          L6_2 = L6_2.PlayerItem
          L5_2 = L5_2(L6_2)
          L4_2 = L5_2
        end
      end
      L5_2 = A0_2._v_camera
      L6_2 = L5_2
      L5_2 = L5_2.native_state
      L5_2 = L5_2(L6_2)
      L6_2 = L5_2
      L5_2 = L5_2.ResetByMapBoundsV2
      L7_2 = L1_2.transform
      L8_2 = L2_2
      L9_2 = L3_2
      L10_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L5_1.reset_camera = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_3d
  if L1_2 ~= nil then
    L1_2 = A0_2._map_3d
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
  end
end
L5_1.reset_map = L6_1
function L6_1(A0_2)
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
  L3_2 = "EditCursorHitPoint"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.transform
  A0_2._view_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.get_source_camera
  L1_2 = L1_2(L2_2)
  A0_2._source_camera = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_map
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DRotated
  L4_2 = A0_2._on_map3d_rotate
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DInitialized
  L4_2 = A0_2._on_map3d_initialized
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DCameraTransformed
  L4_2 = A0_2._on_map3d_camera_transformed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DColliderUpdate
  L4_2 = A0_2._on_map3d_collider_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMap3DSelectMapIcon
  L4_2 = A0_2._on_item_selected
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.PrefabLoadMeta
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._prefab_load_meta = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.Map3DModelIconContainer
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._player_icon_panel = L1_2
  L1_2 = A0_2._player_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_default_prefab
  L3_2 = A0_2._prefab_load_meta
  L3_2 = L3_2.MultiPrefabList
  L4_2 = L3_1.Player3D
  L3_2 = L3_2[L4_2]
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.Map3DModelIconContainer
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mapping_info_3d_icon_panel = L1_2
  L1_2 = A0_2._mapping_info_3d_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_default_prefab
  L3_2 = A0_2._prefab_load_meta
  L3_2 = L3_2.MultiPrefabList
  L4_2 = L3_1.MappingInfo3D
  L3_2 = L3_2[L4_2]
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._init_node = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCamera
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._v_camera = L1_2
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state_with_type
  L3_2 = A0_2._v_camera
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.UI3DMap3DCameraState
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_detail_camera_setting
  L1_2(L2_2)
  L1_2 = A0_2._v_camera
  L2_2 = L1_2
  L1_2 = L1_2.active
  L1_2(L2_2)
end
L5_1._init_camera = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UIMap3DPanel
  L4_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_3d = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_map
  L1_2(L2_2)
end
L5_1._init_map = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._map_3d
  if L1_2 ~= nil then
    L1_2 = A0_2._region_data
    if L1_2 ~= nil then
      L1_2 = A0_2._map_3d
      L2_2 = L1_2
      L1_2 = L1_2.load_map
      L3_2 = A0_2._region_data
      L4_2 = A0_2._view_target
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2._init_map_icons
      L1_2(L2_2)
    end
  end
end
L5_1._refresh_map = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.UI3DMap3DCameraStateConfig
  L1_2 = L1_2()
  L2_2 = A0_2._view_target
  L1_2.Target = L2_2
  L2_2 = A0_2._source_camera
  L1_2.SourceCamera = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.get_source_camera
  L2_2 = L2_2(L3_2)
  L1_2.SourceCamera = L2_2
  L2_2 = A0_2._v_camera
  L3_2 = L2_2
  L2_2 = L2_2.native_state
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.InitConfig
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L5_1._init_detail_camera_setting = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._region_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._player_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = A0_2._mapping_info_3d_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.release_game_object_pool
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = A0_2._region_data
  L2_2 = L2_2.Items
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.HasMiniMapIcon
    if L7_2 then
      L7_2 = A0_2._mapping_info_3d_icon_panel
      L8_2 = L7_2
      L7_2 = L7_2.add_icon
      L9_2 = L6_2
      L10_2 = L6_2.ModelIconPath
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = G
      L8_2 = L8_2.Utils
      L8_2 = L8_2.cs_list_to_table
      L9_2 = L6_2.PoseIDs
      L8_2 = L8_2(L9_2)
      L7_2.pose_ids = L8_2
    end
  end
  L2_2 = A0_2._region_data
  L2_2 = L2_2.IsPlayerCurrentRegion
  if L2_2 then
    L2_2 = A0_2._player_icon_panel
    L3_2 = L2_2
    L2_2 = L2_2.add_icon
    L4_2 = A0_2._region_data
    L4_2 = L4_2.PlayerItem
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = {}
    L4_2 = A0_2._region_data
    L4_2 = L4_2.PlayerPoseID
    L3_2[1] = L4_2
    L2_2.pose_ids = L3_2
    L3_2 = A0_2._prefab_load_meta
    L3_2 = L3_2.MultiPrefabList
    L4_2 = L3_1.PlayerDirection2D
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2._player_icon_panel
    L5_2 = L4_2
    L4_2 = L4_2.add_icon
    L6_2 = A0_2._region_data
    L6_2 = L6_2.PlayerItem
    L7_2 = nil
    L8_2 = L3_2
    L9_2 = true
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = {}
    L6_2 = A0_2._region_data
    L6_2 = L6_2.PlayerPoseID
    L5_2[1] = L6_2
    L4_2.pose_ids = L5_2
  end
end
L5_1._init_map_icons = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_icons
  L3_2 = true
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_map3d_rotate = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_icons
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_map3d_initialized = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_icons
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_map3d_camera_transformed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_icons
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_map3d_collider_update = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2._mapping_info_3d_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.refresh_icon_transform
    L3_2(L4_2)
  end
  if A2_2 then
    L3_2 = A0_2._player_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.refresh_icon_transform
    L3_2(L4_2)
    L3_2 = A0_2._player_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.refresh_icon_opacity
    L3_2(L4_2)
    L3_2 = A0_2._mapping_info_3d_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.refresh_icon_opacity
    L3_2(L4_2)
  end
end
L5_1._refresh_all_icons = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._v_camera
  L3_2 = L2_2
  L2_2 = L2_2.native_state
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L4_1.GetRotatableRegionItemWorldPosition
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = L2_2
  L4_2 = L2_2.StartCenteringWorldPos
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L5_1._on_item_selected = L6_1
return L5_1
