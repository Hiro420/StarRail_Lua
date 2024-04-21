local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.MapRotationUtils
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "UIMap3DPanel"
L3_1 = G
L3_1 = L3_1.BaseUI3DPanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  A0_2._owner = A1_2
  A0_2._map_model = nil
  A0_2._map_container = nil
  A0_2._region_data = nil
  A0_2._view_target = nil
  A0_2._init_model_rotation = nil
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIMap3DContainer
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._map_container = L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._region_data = A1_2
  A0_2._view_target = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._compute_map_init_rotation
  L3_2 = L3_2(L4_2)
  A0_2._init_model_rotation = L3_2
  L3_2 = L0_1.GetRotatableRegionMap3DPrefabPath
  L4_2 = A1_2.EntranceID
  L5_2 = A1_2.RegionID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._map_model
  if L4_2 == nil then
    A0_2._map_model = 1
    L5_2 = A0_2
    L4_2 = A0_2.async_load_prefab
    L6_2 = L3_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      A0_2._map_model = A1_3
      L2_3 = A0_2._map_model
      L2_3 = L2_3.transform
      L3_3 = L2_3
      L2_3 = L2_3.SetParent
      L4_3 = A0_2._root
      L2_3(L3_3, L4_3)
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3._init_map_container
      L2_3(L3_3)
    end
    L8_2 = A0_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    return
  end
end
L1_1.load_map = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_container
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Quaternion
    L1_2 = L1_2.identity
    return L1_2
  end
  L1_2 = A0_2._map_container
  L2_2 = L1_2
  L1_2 = L1_2.GetMapRotation
  return L1_2(L2_2)
end
L1_1.get_rotation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_container
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Bounds
    return L1_2()
  end
  L1_2 = A0_2._map_container
  L2_2 = L1_2
  L1_2 = L1_2.GetMapBoundingBox
  return L1_2(L2_2)
end
L1_1.get_bounds = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._map_model
  return L1_2
end
L1_1.get_model = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_container
  if L1_2 ~= nil then
    L1_2 = A0_2._map_container
    L2_2 = L1_2
    L1_2 = L1_2.Reset
    L1_2(L2_2)
  end
end
L1_1.reset = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._map_model
  if L1_2 ~= nil then
    L1_2 = A0_2._map_model
    if L1_2 ~= 1 then
      L1_2 = A0_2._map_container
      if L1_2 ~= nil then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIMap3DContainerConfig
  L1_2 = L1_2()
  L2_2 = A0_2._map_model
  L2_2 = L2_2.transform
  L1_2.MapModelTransform = L2_2
  L2_2 = A0_2._init_model_rotation
  L1_2.InitQuaternion = L2_2
  L2_2 = A0_2._view_target
  L1_2.ViewCenterTransform = L2_2
  L2_2 = A0_2._region_data
  L2_2 = L2_2.RegionRootRotation
  L1_2.RegionRootQuaternion = L2_2
  L2_2 = A0_2._region_data
  L2_2 = L2_2.IsPlayerCurrentRegion
  L1_2.IsPlayerInRegion = L2_2
  L2_2 = A0_2._map_container
  L3_2 = L2_2
  L2_2 = L2_2.Init
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._init_map_container = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._region_data
  L2_2 = L1_2.IsPlayerCurrentRegion
  if L2_2 then
    L2_2 = L0_1.ComputeMap3DModelRotation
    L3_2 = L1_2.RegionRootRotation
    L4_2 = L1_2.PlayerItem
    L4_2 = L4_2.Rotation
    return L2_2(L3_2, L4_2)
  end
  L2_2 = L1_2.RegionRootRotation
  return L2_2
end
L1_1._compute_map_init_rotation = L2_1
