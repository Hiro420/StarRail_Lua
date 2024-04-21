local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DControllerPattern"
L0_1(L1_1)
L0_1 = class
L1_1 = "UI3DController"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.UI3DUtilities
L3_1 = "EnviroSystem/PostProcessVolumeProfile/Lookdev.asset"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.UI3DControllerPattern
  L1_2 = L1_2(L2_2)
  A0_2.config = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.ViewCacheType_DontCache
  A0_2._cache_type = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Widget3D
  A0_2._layer = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._linked_uis = L1_2
  L1_2 = {}
  A0_2._children = L1_2
  L1_2 = {}
  A0_2._bind_button_events = L1_2
  A0_2._root = nil
  A0_2._camera = nil
  A0_2._is_active = false
  L1_2 = {}
  A0_2._view_loaded_callbacks = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.RPG_UI_Prefab_Loader
  L1_2 = L1_2.Create
  L1_2 = L1_2()
  A0_2._prefab_loader = L1_2
  L1_2 = A0_2._prefab_loader
  L2_2 = L1_2
  L1_2 = L1_2.EnableCache
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIContextAssetLoader
  L1_2 = L1_2()
  A0_2._asset_loader = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.RPG_Client_Promise
  L1_2 = L1_2()
  A0_2._view_load_promise = L1_2
  A0_2._tickable = true
  A0_2._volume_override = false
  L1_2 = {}
  A0_2._timers = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2 = L1_2.environment_profile_path
  return L1_2
end
L0_1.get_environment_profile_path = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.on_reload_environment = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_timers
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    A0_2[L4_2] = nil
  end
end
L0_1.dtor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._disposed
  if L1_2 then
    return
  end
  L1_2 = A0_2._children
  if L1_2 ~= nil then
    L1_2 = 1
    L2_2 = A0_2._children
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._children
      L5_2 = L5_2[L4_2]
      L7_2 = L5_2
      L6_2 = L5_2.dispose
      L6_2(L7_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_dispose
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_events
  L1_2(L2_2)
  A0_2._disposed = true
end
L0_1.dispose = L4_1
function L4_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = A1_2
  L5_2 = A0_2
  L6_2, L7_2 = ...
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._children
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_find
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = A0_2._root
  end
  L6_2 = L3_2
  L5_2 = L3_2.bind
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1.create_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._linked_uis
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.link_ui2d = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._linked_uis
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.unlink_ui2d = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._linked_uis
  L2_2 = L1_2
  L1_2 = L1_2.Count
  return L1_2(L2_2)
end
L0_1.linked_ui2d_count = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._linked_uis
  L3_2 = L2_2
  L2_2 = L2_2.IndexOf
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.linked_ui_idx = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_destroyed
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handlers
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.dispose
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._release_volume_profile
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._release_view
  L1_2(L2_2)
  L1_2 = A0_2._asset_loader
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseAll
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._resolve_promise
  L3_2 = A0_2._view_load_promise
  L1_2(L2_2, L3_2)
  A0_2._is_destroyed = true
end
L0_1.destroy = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._root
  if L2_2 == nil then
    return
  end
  A0_2._is_active = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_root_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._view_set
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_tickable
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._on_active_change
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._all_panels_active_change
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_active = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_active
  return L1_2
end
L0_1.is_active = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._camera
  return L1_2
end
L0_1.get_camera = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._source_camera
  return L1_2
end
L0_1.get_source_camera = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._camera
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2.config
  L1_2 = L1_2.use_global_camera
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UI3DCameraCopyUtil
    L1_2 = L1_2.CopyCameraConfig
    L2_2 = A0_2._source_camera
    L3_2 = A0_2._camera
    L1_2(L2_2, L3_2)
  end
end
L0_1.apply_camera = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UI3DCameraCopyUtil
  L2_2 = L2_2.OverrideDofOfEnvVolume
  L4_2 = A0_2
  L3_2 = A0_2.get_camera
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.load_camera_volume = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DCameraCopyUtil
  L1_2 = L1_2.OverrideDofOfEnvVolume
  L3_2 = A0_2
  L2_2 = A0_2.get_camera
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1.reset_camera_volume = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._root
  if L3_2 ~= nil then
    return
  end
  L3_2 = A0_2.config
  L3_2 = L3_2.prefab_path
  L4_2 = A0_2.config
  if L4_2 == nil or L3_2 == nil then
    return
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._view_loaded_callbacks
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._async_loading
  if L4_2 then
    return
  end
  if A1_2 then
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_view_loaded
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
      A0_2._async_loading = false
    end
    L5_2 = A0_2._prefab_loader
    L6_2 = L5_2
    L5_2 = L5_2.AsyncLoadViewPrefab
    L7_2 = L3_2
    L8_2 = A0_2._cache_type
    L9_2 = A0_2._layer
    L10_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    A0_2._async_loading = true
  else
    L4_2 = A0_2._prefab_loader
    L5_2 = L4_2
    L4_2 = L4_2.LoadViewPrefab
    L6_2 = L3_2
    L7_2 = A0_2._cache_type
    L8_2 = A0_2._layer
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L6_2 = A0_2
    L5_2 = A0_2._on_view_loaded
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.load_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._view_load_promise
  return L1_2
end
L0_1.view_load_promise = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._view_set
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
  A0_2._view_set = true
end
L0_1.on_view_set = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._root
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.is_loaded = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._prefab_loader
  L4_2 = L3_2
  L3_2 = L3_2.InstantiatePrefab
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = false
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.instantiate_object = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 ~= nil then
      L1_3 = L2_1.SwitchToUI3DLayer
      L2_3 = A0_3.transform
      L1_3(L2_3)
    end
    L1_3 = A2_2
    if L1_3 ~= nil then
      L1_3 = A2_2
      L2_3 = A3_2
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
  end
  L6_2 = A0_2._prefab_loader
  L7_2 = L6_2
  L6_2 = L6_2.AsyncLoadPrefab
  L8_2 = A1_2
  L9_2 = L5_2
  L10_2 = A4_2
  L11_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.async_load_prefab = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._prefab_loader
  L4_2 = L3_2
  L3_2 = L3_2.LoadPrefab
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 ~= nil then
    L4_2 = L2_1.SwitchToUI3DLayer
    L5_2 = L3_2.transform
    L4_2(L5_2)
  end
  return L3_2
end
L0_1.sync_load_prefab = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A2_2 then
    A2_2 = false
  end
  L3_2 = A0_2._prefab_loader
  L4_2 = L3_2
  L3_2 = L3_2.DestroyGameObject
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.destroy_object = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_destroyed
  return L1_2
end
L0_1.is_destroyed = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._asset_loader
  L4_2 = L3_2
  L3_2 = L3_2.AsyncLoadSpriteTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_sprite_to = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._asset_loader
  L4_2 = L3_2
  L3_2 = L3_2.AsyncLoadMaterialTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_material = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._asset_loader
  L4_2 = L3_2
  L3_2 = L3_2.AsyncLoadTextureTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_texture = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._asset_loader
  L4_2 = L3_2
  L3_2 = L3_2.LoadSpriteTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_sprite_to = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._asset_loader
  L4_2 = L3_2
  L3_2 = L3_2.LoadTextureTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_texture_to = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._asset_loader
  L4_2 = L3_2
  L3_2 = L3_2.LoadMaterialTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_material_to = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L2_1.OverrideDOFConfig
  L3_2 = A1_2
  L2_2(L3_2)
  A0_2._volume_override = true
end
L0_1.override_dof_config = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L2_1.SetDOFEnable
  L3_2 = A1_2
  L2_2(L3_2)
  A0_2._volume_override = true
end
L0_1.set_dof_enable = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tickable
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_tick
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.tick = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_loaded
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._root
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_root_active = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._volume_override
  if L1_2 then
    L1_2 = L2_1.ReleaseDOFConfig
    L1_2()
  end
end
L0_1._release_volume_profile = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._root
  if L1_2 ~= nil then
    L1_2 = A0_2._prefab_loader
    L2_2 = L1_2
    L1_2 = L1_2.ReleaseView
    L3_2 = A0_2._root
    L3_2 = L3_2.gameObject
    L4_2 = A0_2._cache_type
    L5_2 = A0_2._layer
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2._prefab_loader
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  A0_2._root = nil
end
L0_1._release_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._bind_root
  L4_2 = A1_2.transform
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_camera
  L4_2 = A1_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.GetComponentInChildren
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Camera
  L6_2 = L6_2(L7_2)
  L7_2 = true
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_canvas
  L4_2 = A1_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.GetComponentInChildren
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Canvas
  L6_2 = L6_2(L7_2)
  L7_2 = true
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_load
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_handlers
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._resolve_promise
  L4_2 = A0_2._view_load_promise
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._invoke_loaded_callbacks
  L2_2(L3_2)
end
L0_1._on_view_loaded = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._view_loaded_callbacks
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2
      L6_2()
    end
  end
end
L0_1._invoke_loaded_callbacks = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.CurState
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Promises
  L3_2 = L3_2.PromiseState
  L3_2 = L3_2.Pending
  if L2_2 == L3_2 then
    L3_2 = A1_2
    L2_2 = A1_2.Resolve
    L2_2(L3_2)
  end
end
L0_1._resolve_promise = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.config
  L2_2.environment_profile_path = A1_2
  L2_2 = G
  L2_2 = L2_2.UI3DManager
  L2_2 = L2_2.reload_environment_profile
  L2_2()
end
L0_1._load_environment_profile = L4_1
function L4_1(A0_2, A1_2)
  A0_2._root = A1_2
end
L0_1._bind_root = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._source_camera = A1_2
  L2_2 = A0_2._source_camera
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.config
  L2_2 = L2_2.use_global_camera
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UI3DCamera
    A0_2._camera = L2_2
  else
    A0_2._camera = A1_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_CameraManager
    L4_2 = L2_2
    L3_2 = L2_2.AddUICameraToCameraStack
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._bind_camera = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_camera
  L2_2 = L2_2(L3_2)
  A1_2.worldCamera = L2_2
end
L0_1._init_canvas = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.UIEasyTouchManager
  L3_2 = L3_2.add_gesture_handler
  L4_2 = A1_2
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._bind_gesture = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._children
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.owner_active_change
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._all_panels_active_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.UI
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._add_notify_handler = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.add_packet_handler
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyGroup
  L5_2 = L5_2.UI
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._add_packet_handler = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.remove_handlers
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_easy_touch_handlers
  L1_2(L2_2)
end
L0_1._remove_notify_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIEasyTouchManager
  L1_2 = L1_2.remove_gesture_handlers
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._remove_easy_touch_handlers = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L1_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._root
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A0_2
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._safe_get_cmpt = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L1_1.SafeFind
  L4_2 = A0_2._root
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._safe_find = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.TimerItemBase
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.add_timer_handle
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
  if A3_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.set_total_time
    L7_2 = A3_2
    L5_2(L6_2, L7_2)
  else
    L4_2.is_infine_loop = true
  end
  if A2_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.set_interval
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.reset
  L5_2(L6_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._timers
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1._add_count_down_timer = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._timers
  if nil == L1_2 then
    return
  end
  L2_2 = #L1_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.stop
    L6_2(L7_2)
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.dispose
    L6_2(L7_2)
    L1_2[L5_2] = nil
  end
end
L0_1._remove_timers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.add_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._add_tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.remove_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._remove_tick = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._tickable = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_all_panels_tickable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_tickable = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._pairs_all_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_tickable
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_all_panels_tickable = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L4_2 = G
    L4_2 = L4_2.UIButtonEventManager
    L4_2 = L4_2.bind
    L5_2 = A1_2
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._bind_button_events
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._bind_btn_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._bind_button_events
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.IsEqualsNull
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.RemoveAllListeners
      L6_2(L7_2)
    end
  end
  L1_2 = {}
  A0_2._bind_button_events = L1_2
end
L0_1._unbind_btn_events = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = A0_2._children
  L2_2, L3_2 = L2_2(L3_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = 0
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L2_2
    L1_3 = L1_2
    L1_3 = #L1_3
    if L0_3 == L1_3 then
      L0_3 = nil
      return L0_3
    end
    L0_3 = L2_2
    L0_3 = L0_3 + 1
    L2_2 = L0_3
    L0_3 = L2_2
    L0_3 = L1_2[L0_3]
    L1_3 = L0_3._children
    if L1_3 then
      L1_3 = 1
      L2_3 = L0_3._children
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = table
        L5_3 = L5_3.insert
        L6_3 = L1_2
        L7_3 = L0_3._children
        L7_3 = L7_3[L4_3]
        L5_3(L6_3, L7_3)
      end
    end
    L1_3 = L2_2
    L2_3 = L0_3
    return L1_3, L2_3
  end
  return L3_2
end
L0_1._pairs_all_panels = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
end
L0_1._on_active_change = L4_1
function L4_1(A0_2, A1_2)
end
L0_1._on_camera_active_change = L4_1
function L4_1(A0_2, A1_2)
end
L0_1._on_tick = L4_1
return L0_1
