local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BasePanel"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._create_binder
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._binder = L3_2
  if A1_2 ~= nil then
    L3_2 = A1_2._owner
    if L3_2 == nil then
      A0_2._owner = A1_2
    else
      L3_2 = A1_2._owner
      A0_2._owner = L3_2
    end
  end
  A0_2._parent = A1_2
  L3_2 = {}
  A0_2._children = L3_2
  A0_2._ViewTransform = nil
  A0_2._prefab_loader = nil
  A0_2._ParentTransform = nil
  A0_2._LoadFinishCallbackSelf = nil
  A0_2._LoadFinishCallback = nil
  A0_2._ViewActive = false
  L3_2 = {}
  A0_2._timers = L3_2
  L3_2 = {}
  A0_2._exit_callbacks = L3_2
  A0_2._tickable = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = A1_2
  L5_2 = A0_2
  L6_2 = A2_2
  L7_2 = ...
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._add_child
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1.create_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2._on_load
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._add_child
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1.create_panel_without_binder = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.is_disposing
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = 1
  L3_2 = A0_2._children
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._children
    L6_2 = L6_2[L5_2]
    if A1_2 == L6_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2._children
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      break
    end
  end
end
L0_1.remove_child = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_ui3d_controller
  return L1_2(L2_2)
end
L0_1.fetch_ui3d = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = A1_2
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end
L0_1._create_binder = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._children
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._add_child = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2.name = A1_2
end
L0_1._rename_root_to = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "bind error: binder is null."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_load
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_bind_input_callback
  L2_2(L3_2)
end
L0_1.bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "set_async_bind_parent error: binder is null."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_root_parent
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_async_bind_parent = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_parent
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.is_async = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.is_loaded = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "async_bind error: binder is null."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._owner
  if L2_2 ~= nil then
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.add_async_load_panel
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_root_parent
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_prefab
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.get_prefab_path
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._on_async_load
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.async_bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "sync_loadto error: binder is null."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_root_parent
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._sync_load_prefab
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.get_prefab_path
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  L6_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.bind_async_load_root
  L5_2 = L2_2.transform
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_load
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_bind_input_callback
  L3_2(L4_2)
end
L0_1.sync_loadto = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2.async_bind
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_async_callback
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.async_bind_with_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._LoadFinishCallbackSelf = A1_2
  A0_2._LoadFinishCallback = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.is_loaded
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.invoke_async_callback
    L3_2(L4_2)
  end
end
L0_1.set_async_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._create_prefab_loader
  L3_2(L4_2)
  L3_2 = A0_2._prefab_loader
  L4_2 = L3_2
  L3_2 = L3_2.InstantiatePrefab
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = false
  L8_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._owner
  if L4_2 ~= nil then
    L4_2 = A0_2._owner
    L5_2 = L4_2
    L4_2 = L4_2.set_layer_recursive
    L6_2 = L3_2.transform
    L4_2(L5_2, L6_2)
  end
  return L3_2
end
L0_1.instantiate_object = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.get_root_transform
    L5_2 = L5_2(L6_2)
    A4_2 = L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._async_load_prefab
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.async_load_prefab = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = A0_2
  L6_2 = A0_2._create_prefab_loader
  L6_2(L7_2)
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2._owner
    if L1_3 ~= nil then
      L1_3 = A0_2._owner
      L2_3 = L1_3
      L1_3 = L1_3.set_layer_recursive
      L3_3 = A0_3.transform
      L1_3(L2_3, L3_3)
    end
    L1_3 = A2_2
    if L1_3 ~= nil then
      L1_3 = A2_2
      L2_3 = A3_2
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
  end
  L7_2 = A0_2._prefab_loader
  L8_2 = L7_2
  L7_2 = L7_2.AsyncLoadPrefab
  L9_2 = A1_2
  L10_2 = L6_2
  L11_2 = A4_2
  L12_2 = A5_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._async_load_prefab = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_root_transform
    L3_2 = L3_2(L4_2)
    A2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._sync_load_prefab
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = true
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.sync_load_prefab = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._create_prefab_loader
  L4_2(L5_2)
  L4_2 = A0_2._prefab_loader
  L5_2 = L4_2
  L4_2 = L4_2.LoadPrefab
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2._owner
  if L5_2 ~= nil then
    L5_2 = A0_2._owner
    L6_2 = L5_2
    L5_2 = L5_2.set_layer_recursive
    L7_2 = L4_2.transform
    L5_2(L6_2, L7_2)
  end
  return L4_2
end
L0_1._sync_load_prefab = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._create_prefab_loader
  L3_2(L4_2)
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
L0_1.destroy_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_after_transition
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_exit_after_transition = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.OverrideTransition
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.override_transition = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L3_2.callback = A1_2
  L3_2.obj = A2_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._exit_callbacks
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.set_exit_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._tickable = A1_2
end
L0_1.set_tickable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tickable
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_tick
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._children
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._children
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = L5_2
      L6_2 = L5_2.all_res_loaded
      L6_2(L7_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_all_res_loaded
  L1_2(L2_2)
end
L0_1.all_res_loaded = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_owner_active_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.owner_active_change = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root
      L1_2 = L1_2.transform
      return L1_2
    end
  end
end
L0_1.get_root_transform = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_blackboard
  return L1_2(L2_2)
end
L0_1.get_blackboard = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_owner_active_change = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_all_res_loaded = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_tick = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    return
  end
  L1_2 = A0_2._exit_callbacks
  if L1_2 ~= nil then
    L1_2 = ipairs
    L2_2 = A0_2._exit_callbacks
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.callback
      L7_2 = L5_2.obj
      L6_2(L7_2)
    end
  end
  A0_2._exit_callbacks = nil
  L2_2 = A0_2
  L1_2 = A0_2.dispose
  L1_2(L2_2)
end
L0_1._exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    return
  end
  L1_2 = A0_2._children
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._children
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.is_destroyed
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.dispose
      L6_2(L7_2)
      L6_2 = G
      L6_2 = L6_2.delete
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._unload
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_dispose
  L1_2(L2_2)
  L1_2 = A0_2._prefab_loader
  if L1_2 ~= nil then
    L1_2 = A0_2._prefab_loader
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
  end
  A0_2._LoadFinishCallbackSelf = nil
  A0_2._LoadFinishCallback = nil
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_handlers
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_timers
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_from_ancestor
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_remove_input_callback
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    A0_2[L4_2] = nil
  end
  A0_2.is_destroyed = true
end
L0_1.dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_unload
  L1_2(L2_2)
end
L0_1._unload = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_unload = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._prefab_loader
  if L1_2 ~= nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIPrefabLoader
  L1_2 = L1_2.Create
  L1_2 = L1_2()
  A0_2._prefab_loader = L1_2
end
L0_1._create_prefab_loader = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.view_cache_type
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.ViewCacheType_DontCache
  L1_2 = L1_2 ~= L2_2
  return L1_2
end
L0_1._should_cache_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
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
L0_1._add_count_down_timer = L1_1
function L1_1(A0_2)
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
  A0_2._timers = nil
end
L0_1._remove_timers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._parent
  if L1_2 ~= nil then
    L1_2 = A0_2._parent
    L2_2 = L1_2
    L1_2 = L1_2.remove_child
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._remove_from_ancestor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_top_page
  return L1_2(L2_2)
end
L0_1._owner_is_top_page = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_top_page_or_dialog
  return L1_2(L2_2)
end
L0_1.is_top_page_or_dialog = L1_1
function L1_1(A0_2)
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
L0_1._remove_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIEasyTouchManager
  L1_2 = L1_2.remove_gesture_handlers
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._remove_easy_touch_handlers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_light_weight_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_light_weight_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogErrorFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "BasePanel.set_view_active is deprecated, use safe_set_active instead."
  L2_2(L3_2, L4_2)
  A0_2._ViewActive = A1_2
  L2_2 = A0_2._ViewTransform
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.ComponentExtensions
    L2_2 = L2_2.SafeSetActive
    L3_2 = A0_2._ViewTransform
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_view_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.safe_set_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_active_by_scale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_view_active_by_scale = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeSelf
    return L1_2
  end
end
L0_1.is_active = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeInHierarchy
    return L1_2
  end
end
L0_1.is_active_in_hierarchy = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L1_2 = L1_2.transform
    L1_2 = L1_2.localScale
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L2_2 = L2_2.zero
    L1_2 = L1_2 == L2_2
    return L1_2
  end
end
L0_1.is_scale_zero = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.show_full_screen_block
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.show_full_screen_block = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.show_full_screen_block_forever
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.show_full_screen_block_forever = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2.show_full_screen_block_for_packet
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.show_full_screen_block_for_packet = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.bind_async_load_root
  L4_2 = A1_2.transform
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_load
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_bind_input_callback
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.invoke_async_callback
  L2_2(L3_2)
  L2_2 = A0_2._owner
  if L2_2 ~= nil then
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.async_load_panel_finish
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = false
  return L2_2
end
L0_1._on_async_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._LoadFinishCallback
  if L1_2 then
    L1_2 = A0_2._LoadFinishCallbackSelf
    if L1_2 then
      L1_2 = A0_2._LoadFinishCallback
      L2_2 = A0_2._LoadFinishCallbackSelf
      L1_2(L2_2)
    else
      L1_2 = A0_2._LoadFinishCallback
      L1_2()
    end
  end
end
L0_1.invoke_async_callback = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIButtonEventManager
  L2_2 = L2_2.bind
  L3_2 = A1_2
  L4_2 = A0_2._owner
  L5_2 = A0_2._owner
  L5_2 = L5_2.exit
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._owner
  L4_2 = L4_2._bind_button_events
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._bind_exit_btn = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
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
    L6_2 = A0_2._owner
    L6_2 = L6_2._bind_button_events
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._bind_btn_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.unbind
  L5_2 = A1_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
end
L0_1._unbind_btn_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_short_down_click
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._owner
  L5_2 = L5_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_short_down_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_short_click
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._owner
  L5_2 = L5_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_short_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = G
  L6_2 = L6_2.UIButtonEventManager
  L6_2 = L6_2.bind_long_click
  L7_2 = A1_2
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = A0_2._owner
  L7_2 = L7_2._long_press_buttons
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
end
L0_1._bind_long_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L7_2 = G
  L7_2 = L7_2.UIButtonEventManager
  L7_2 = L7_2.bind_long_press_repeat
  L8_2 = A1_2
  L9_2 = A0_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A5_2
  L14_2 = A6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = A0_2._owner
  L8_2 = L8_2._long_press_buttons
  L9_2 = A1_2
  L7_2(L8_2, L9_2)
end
L0_1._bind_long_press_repeated = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_release
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._owner
  L5_2 = L5_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_release = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_long_press_exit
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._owner
  L5_2 = L5_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_long_press_exit = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_over_short_click_time
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._owner
  L5_2 = L5_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_over_short_click_time = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_pressing_down
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._owner
  L5_2 = L5_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_pressing_down = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.UIEasyTouchManager
  L3_2 = L3_2.add_gesture_handler
  L4_2 = A1_2
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._bind_gesture = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = G
  L6_2 = L6_2.UIButtonEventManager
  L6_2 = L6_2.bind_hold
  L7_2 = A1_2
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._bind_btn_hold = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = G
  L6_2 = L6_2.UIButtonEventManager
  L6_2 = L6_2.unbind_hold
  L7_2 = A1_2
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._unbind_btn_hold = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.async_load_sprite_to
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._async_load_sprite_to = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.async_release_sprite_in
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._async_release_sprite_in = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.load_sprite_to
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._load_sprite_to = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.release_sprite_in
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._release_sprite_in = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.async_load_material
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._async_load_material = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.load_material_to
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._load_material_to = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.release_material_in
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._release_material_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.add_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._add_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.remove_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._remove_tick = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
L0_1._add_notify_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.remove_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.UI
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._remove_notify_handler = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
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
L0_1._add_packet_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.remove_packet_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.UI
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._remove_packet_handler = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_navigation_target
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_navigation_target = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.save_navigation_target
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.save_navigation_target = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.save_navigation_target_by_zoom
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.save_navigation_target_by_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.clear_zoom_navigation_target
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.clear_zoom_navigation_target = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_cur_navigation_target
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.is_active
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return L1_2
  else
    L3_2 = A0_2
    L2_2 = A0_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_navigation_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_return_to_top
  L1_2(L2_2)
end
L0_1.on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_got_focus
  L1_2(L2_2)
end
L0_1.on_got_focus = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_got_focus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_lost_focus
  L1_2(L2_2)
end
L0_1.on_lost_focus = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_lost_focus = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_zoom
  return L1_2(L2_2)
end
L0_1.get_cur_zoom = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._on_enter_zoom
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.enter_zoom = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_leave_zoom
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.leave_zoom = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_leave_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_special_zoom
  L1_2(L2_2)
end
L0_1.enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_leave_special_zoom_fail
  L1_2(L2_2)
end
L0_1.leave_special_zoom_fail = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_leave_special_zoom_fail = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_back_zoom_fail
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.back_zoom_fail = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_back_zoom_fail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_leave_special_zoom
  L1_2(L2_2)
end
L0_1.leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.to_first_zoom
    L1_2(L2_2)
  end
end
L0_1.to_first_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._on_in_control_input_switch
  L2_2(L3_2)
end
L0_1.on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_mouse_wheel_roll
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_mouse_wheel_roll = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_mouse_wheel_roll = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_in_control_click
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_in_control_click_callback
    L3_2 = A0_2
    L4_2 = A0_2._on_in_control_click
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._on_in_control_press
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_in_control_press_callback
    L3_2 = A0_2
    L4_2 = A0_2._on_in_control_press
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._on_in_control_released
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_in_control_released_callback
    L3_2 = A0_2
    L4_2 = A0_2._on_in_control_released
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._on_keyboard_click
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_keyboard_click_callbacks
    L3_2 = A0_2
    L4_2 = A0_2._on_keyboard_click
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._on_in_control_action_click
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_in_control_action_click_callback
    L3_2 = A0_2
    L4_2 = A0_2._on_in_control_action_click
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._try_bind_input_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_in_control_click
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_in_control_click_callback
    L3_2 = A0_2
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._on_in_control_press
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_in_control_press_callback
    L3_2 = A0_2
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._on_in_control_released
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_in_control_released_callback
    L3_2 = A0_2
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._on_keyboard_click
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_keyboard_click_callbacks
    L3_2 = A0_2
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._on_in_control_action_click
  if L1_2 then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.setup_in_control_action_click_callback
    L3_2 = A0_2
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._try_remove_input_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_out_most_zoom
  return L1_2(L2_2)
end
L0_1.is_out_most_zoom = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = G
  L5_2 = L5_2.UIUtils
  L5_2 = L5_2.setup_navigation
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.force_set_default_navigation_target
  L1_2(L2_2)
end
L0_1.force_set_default_navigation_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1.force_set_first_navigation_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_can_to_special_zoom
  return L1_2(L2_2)
end
L0_1.is_can_to_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_can_to_special_zoom
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.set_can_to_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_in_special_zoom
  return L1_2(L2_2)
end
L0_1.is_in_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_in_special_zoom
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.set_in_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.set_special_zoom_navigation_target
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_special_zoom_navigation_target = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.save_special_zoom_navigation_target
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.save_special_zoom_navigation_target = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.create_guide_particles
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.create_guide_particles = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2.setup_short_cut_hint_panel
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_short_cut_hint_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.reset_short_cut_hint_panel
  L1_2(L2_2)
end
L0_1.reset_short_cut_hint_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.get_zoom_navigation_target
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_zoom_navigation_target = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.clear_cur_selected_object
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.clear_cur_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.add_hide_node_on_sharing
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_hide_node_on_sharing = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.remove_hide_node_on_sharing
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.remove_hide_node_on_sharing = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.add_hide_nodes_on_sharing
  L3_2 = ...
  L1_2(L2_2, L3_2)
end
L0_1.add_hide_nodes_on_sharing = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.setup_navigation_control_type
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_navigation_control_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.setup_to_next_zoom_left_stick_type
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_to_next_zoom_left_stick_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.setup_to_next_zoom_dpad_type
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_to_next_zoom_dpad_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.setup_to_next_zoom_by_confirm
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_to_next_zoom_by_confirm = L1_1
return L0_1
