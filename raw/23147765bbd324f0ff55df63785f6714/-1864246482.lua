local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UIBinder"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2)
  A0_2._owner = A1_2
  A0_2.is_destroyed = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.is_destroyed
  if L1_2 then
    return
  end
  A0_2.root = nil
  A0_2._async_load_root = nil
  L2_2 = A0_2
  L1_2 = A0_2._on_dispose
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._finalize
    L8_2 = A0_2[L4_2]
    L6_2(L7_2, L8_2)
    A0_2[L4_2] = nil
  end
  A0_2.is_destroyed = true
end
L0_1.dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2, A1_2)
  A0_2.root_parent = A1_2
end
L0_1.set_root_parent = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  A0_2.root = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._before_on_bind
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_pc_layout
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
end
L0_1.bind = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.root
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.is_bound = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._async_load_root = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.bind
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.bind_async_load_root = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.root
  if L2_2 ~= nil then
    L2_2 = L1_1.SafeSetActive
    L3_2 = A0_2.root
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.root
  if L2_2 ~= nil then
    L2_2 = L1_1.SafeSetLightWeightActive
    L3_2 = A0_2.root
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_light_weight_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.root
  if L2_2 ~= nil then
    L2_2 = L1_1.SafeSetActiveByScale
    L3_2 = A0_2.root
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_active_by_scale = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, ...)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2
  L4_2 = A0_2._safe_find
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._create_panel_with_root_trans
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = L4_2
  L10_2 = ...
  return L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._create_panel = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, ...)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._owner
  L5_2 = L4_2
  L4_2 = L4_2.create_panel
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = ...
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1._create_panel_with_root_trans = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._before_on_bind = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_bind = L2_1
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
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L1_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.root
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A0_2
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._safe_get_cmpt = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L1_1.SafeFind
  L4_2 = A0_2.root
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._safe_find = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L1_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.root
  L7_2 = A2_2
  L8_2 = false
  L9_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if L4_2 == nil then
    L5_2 = L1_1.SafeAddCmpt
    L6_2 = typeof
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2.root
    L8_2 = A2_2
    L9_2 = A3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
  end
  return L4_2
end
L0_1._safe_add_cmpt = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.UIBinderFinalizer
  L2_2 = L2_2.Finalize
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1._finalize = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A2_2
  if L3_2 == nil then
    L3_2 = A0_2.root
  end
  L4_2 = L1_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.BinderIndex
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2
  L7_2 = ""
  L8_2 = nil
  L9_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._binder_native = L4_2
  L4_2 = A0_2._binder_native
  if L4_2 == nil then
    L4_2 = false
    return L4_2
  end
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._binder_native
    L10_2 = L9_2
    L9_2 = L9_2.GetPlainComponentByIndex
    L11_2 = L8_2[2]
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 == nil then
      L10_2 = G
      L10_2 = L10_2.SuperDebug
      L10_2 = L10_2.LogErrorFormat
      L11_2 = "auto_bind can not find %s type [%s] in index [%s]"
      L12_2 = L7_2
      L13_2 = L8_2[1]
      L14_2 = L8_2[2]
      L10_2(L11_2, L12_2, L13_2, L14_2)
      L10_2 = false
      return L10_2
    end
    A0_2[L7_2] = L9_2
  end
  L4_2 = true
  return L4_2
end
L0_1.auto_bind = L2_1
return L0_1
