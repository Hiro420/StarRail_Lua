local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseUI3DPanel"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2)
  local L2_2
  A0_2._owner = A1_2
  A0_2._root = nil
  L2_2 = {}
  A0_2._children = L2_2
  A0_2._tickable = true
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    return
  end
  L1_2 = A0_2._children
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._children
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = L5_2
      L6_2 = L5_2.dispose
      L6_2(L7_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_dispose
  L1_2(L2_2)
  A0_2.is_destroyed = true
end
L0_1.dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, ...)
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
L0_1.create_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._root = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_pc_or_ps_or_mobile_gamepad_mode
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_pc_bind
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_bind
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_load
  L2_2(L3_2)
end
L0_1.bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_camera
  return L1_2(L2_2)
end
L0_1.get_camera = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_owner_active_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._all_panels_active_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.owner_active_change = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._all_panels_active_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._root
  if L2_2 == nil then
    return
  end
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._root
  L3_2 = L3_2.transform
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._root
  if L2_2 == nil then
    return
  end
  L2_2 = L1_1.SafeSetLightWeightActive
  L3_2 = A0_2._root
  L3_2 = L3_2.transform
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_active_light_weight = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._root
  if L2_2 == nil then
    return
  end
  L2_2 = L1_1.SafeSetActiveByScale
  L3_2 = A0_2._root
  L3_2 = L3_2.transform
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_active_by_scale = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.instantiate_object
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.instantiate_object = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2._owner
  L6_2 = L5_2
  L5_2 = L5_2.async_load_prefab
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.async_load_prefab = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.sync_load_prefab
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.sync_load_prefab = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.destroy_object
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.destroy_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.async_load_sprite_to
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_sprite_to = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.async_load_material
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_material = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.async_load_texture
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_texture = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.load_sprite_to
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_sprite_to = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.load_texture_to
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_texture_to = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.load_material_to
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_material_to = L2_1
function L2_1(A0_2, A1_2)
  A0_2._tickable = A1_2
end
L0_1.set_tickable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tickable
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_tick
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.add_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._add_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.remove_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._remove_tick = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
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
L0_1._safe_get_cmpt = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
L0_1._safe_find = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2._add_count_down_timer
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._add_count_down_timer = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_bind
  L1_2(L2_2)
end
L0_1._on_pc_bind = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_owner_active_change = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_tick = L2_1
return L0_1
