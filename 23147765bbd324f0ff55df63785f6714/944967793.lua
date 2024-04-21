local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NodeListView"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2
  A0_2.node_class_name = A3_2
  A0_2.node_binder_class_name = A4_2
  L6_2 = {}
  A0_2._node_panel_list = L6_2
  A0_2._showCount = 0
  if A5_2 == nil then
    L6_2 = true
    if L6_2 then
      goto lbl_12
    end
  end
  L6_2 = A5_2
  ::lbl_12::
  A0_2._by_scale = L6_2
  A0_2._use_panel_prefab_path = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_load_meta
  L1_2 = L1_2.Prefab
  A0_2._prefab_meta = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = A0_2._prefab_meta
  L3_2 = L3_2.name
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._by_scale
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.SafeSetActiveByScale
      L4_2 = false
      L2_2(L3_2, L4_2)
    else
      L3_2 = L1_2
      L2_2 = L1_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_meta
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_meta
  L3_2 = L3_2.MultiPrefabList
  L3_2 = L3_2[A1_2]
  L2_2.Prefab = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_meta
  L2_2 = L2_2.Prefab
  A0_2._prefab_meta = L2_2
end
L0_1.update_prefab = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2.node_class_name = A1_2
  A0_2.node_binder_class_name = A2_2
end
L0_1.reset_node_panel_class = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_panel_setup_callback = A1_2
  A0_2._on_panel_setup_callback_self = A2_2
end
L0_1.register_panel_setup_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2._showCount = 0
  if A1_2 == nil then
    return
  end
  A0_2._is_reversed = A5_2
  L6_2 = #A1_2
  A0_2._showCount = L6_2
  L7_2 = A0_2
  L6_2 = A0_2._init_node
  L8_2 = A0_2._showCount
  L6_2(L7_2, L8_2)
  L6_2 = 1
  while true do
    L7_2 = A0_2._showCount
    if not (L6_2 <= L7_2) then
      break
    end
    L7_2 = A0_2._node_panel_list
    L7_2 = L7_2[L6_2]
    if A5_2 then
      L8_2 = A0_2._showCount
      L8_2 = L8_2 - L6_2
      L8_2 = L8_2 + 1
      L8_2 = A1_2[L8_2]
      if L8_2 then
        goto lbl_26
      end
    end
    L8_2 = A1_2[L6_2]
    ::lbl_26::
    if A5_2 then
      L9_2 = A0_2._showCount
      L9_2 = L9_2 - L6_2
      L9_2 = L9_2 + 1
      if L9_2 then
        goto lbl_34
      end
    end
    L9_2 = L6_2
    ::lbl_34::
    L10_2 = A0_2._on_panel_setup_callback
    if L10_2 ~= nil then
      L10_2 = G
      L10_2 = L10_2.Utils
      L10_2 = L10_2.invoke_callback
      L11_2 = A0_2._on_panel_setup_callback
      L12_2 = A0_2._on_panel_setup_callback_self
      L13_2 = L7_2
      L14_2 = L9_2
      L10_2(L11_2, L12_2, L13_2, L14_2)
    else
      L11_2 = L7_2
      L10_2 = L7_2.setup_view
      L12_2 = L8_2
      L13_2 = A2_2
      L14_2 = L9_2
      L15_2 = A3_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
    L6_2 = L6_2 + 1
  end
  L8_2 = A0_2
  L7_2 = A0_2.update_navigation
  L9_2 = A4_2
  L7_2(L8_2, L9_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._showCount = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._init_node
  L5_2 = A0_2._showCount
  L3_2(L4_2, L5_2)
  L3_2 = 1
  while true do
    L4_2 = A0_2._showCount
    if not (L3_2 <= L4_2) then
      break
    end
    L4_2 = A0_2._node_panel_list
    L4_2 = L4_2[L3_2]
    L5_2 = L3_2
    L6_2 = A0_2._on_panel_setup_callback
    if L6_2 ~= nil then
      L6_2 = G
      L6_2 = L6_2.Utils
      L6_2 = L6_2.invoke_callback
      L7_2 = A0_2._on_panel_setup_callback
      L8_2 = A0_2._on_panel_setup_callback_self
      L9_2 = L4_2
      L10_2 = L5_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L3_2 = L3_2 + 1
  end
  L5_2 = A0_2
  L4_2 = A0_2.update_navigation
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view_by_count = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._use_panel_prefab_path = true
end
L0_1.set_use_panel_prefab_path = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 ~= nil then
    L2_2 = NavigationType
    L2_2 = L2_2.None
    if A1_2 ~= L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = {}
  L3_2 = 1
  while true do
    L4_2 = A0_2._showCount
    if not (L3_2 <= L4_2) then
      break
    end
    L4_2 = A0_2._node_panel_list
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2._binder
    L5_2 = L5_2.root
    L6_2 = L1_1.SafeGetCmpt
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Button
    L7_2 = L7_2(L8_2)
    L8_2 = L5_2
    L9_2 = ""
    L10_2 = false
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if L6_2 then
      L7_2 = A0_2._is_reversed
      if L7_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L2_2
        L9_2 = 1
        L10_2 = L6_2
        L7_2(L8_2, L9_2, L10_2)
      else
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L2_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
    L3_2 = L3_2 + 1
  end
  L5_2 = A0_2
  L4_2 = A0_2.setup_navigation
  L6_2 = L2_2
  L7_2 = A1_2
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.update_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._showCount
  if 0 < L1_2 then
    L1_2 = A0_2._is_reversed
    if L1_2 then
      L1_2 = A0_2._node_panel_list
      L2_2 = A0_2._showCount
      L1_2 = L1_2[L2_2]
      L2_2 = L1_2._binder
      L2_2 = L2_2.root
      L2_2 = L2_2.gameObject
      return L2_2
    else
      L1_2 = A0_2._node_panel_list
      L1_2 = L1_2[1]
      L2_2 = L1_2._binder
      L2_2 = L2_2.root
      L2_2 = L2_2.gameObject
      return L2_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_reversed
  if L2_2 then
    L2_2 = A0_2._node_panel_list
    if L2_2 then
      L2_2 = A0_2._node_panel_list
      L3_2 = A0_2._showCount
      L3_2 = L3_2 - A1_2
      L3_2 = L3_2 + 1
      L2_2 = L2_2[L3_2]
      if L2_2 then
        L2_2 = A0_2._node_panel_list
        L3_2 = A0_2._showCount
        L3_2 = L3_2 - A1_2
        L3_2 = L3_2 + 1
        L2_2 = L2_2[L3_2]
        return L2_2
      end
    end
  else
    L2_2 = A0_2._node_panel_list
    if L2_2 then
      L2_2 = A0_2._node_panel_list
      L2_2 = L2_2[A1_2]
      if L2_2 then
        L2_2 = A0_2._node_panel_list
        L2_2 = L2_2[A1_2]
        return L2_2
      end
    end
  end
end
L0_1.get_panel_by_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsUnityObjectNotNull
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._dispose_all_node_panel
  L2_2(L3_2)
  L2_2 = {}
  A0_2._node_panel_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.childCount
  L3_2 = 1
  while L2_2 >= L3_2 do
    if A1_2 >= L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2.create_panel
      L6_2 = A0_2.node_class_name
      L7_2 = A0_2.node_binder_class_name
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L6_2 = L4_2
      L5_2 = L4_2.bind
      L7_2 = A0_2._binder
      L7_2 = L7_2.root
      L7_2 = L7_2.transform
      L8_2 = L7_2
      L7_2 = L7_2.GetChild
      L9_2 = L3_2 - 1
      L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._node_panel_list
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    else
      L4_2 = A0_2._by_scale
      if L4_2 then
        L4_2 = G
        L4_2 = L4_2.ComponentExtensions
        L4_2 = L4_2.SafeSetActiveByScale
        L5_2 = A0_2._binder
        L5_2 = L5_2.root
        L5_2 = L5_2.transform
        L6_2 = L5_2
        L5_2 = L5_2.GetChild
        L7_2 = L3_2 - 1
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = false
        L4_2(L5_2, L6_2)
      else
        L4_2 = G
        L4_2 = L4_2.ComponentExtensions
        L4_2 = L4_2.SafeSetActive
        L5_2 = A0_2._binder
        L5_2 = L5_2.root
        L5_2 = L5_2.transform
        L6_2 = L5_2
        L5_2 = L5_2.GetChild
        L7_2 = L3_2 - 1
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = false
        L4_2(L5_2, L6_2)
      end
    end
    L3_2 = L3_2 + 1
  end
end
L0_1.rebind_child_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsUnityObjectNotNull
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = {}
  A0_2._node_panel_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.childCount
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_meta
  L3_2 = L3_2.Prefab
  L3_2 = L3_2.name
  L4_2 = 1
  L5_2 = 0
  while L2_2 >= L4_2 do
    if A1_2 > L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.root
      L6_2 = L6_2.transform
      L7_2 = L6_2
      L6_2 = L6_2.GetChild
      L8_2 = L4_2 - 1
      L6_2 = L6_2(L7_2, L8_2)
      L6_2 = L6_2.gameObject
      L7_2 = L6_2.name
      if L7_2 ~= L3_2 then
        L7_2 = L6_2.name
        L8_2 = L3_2
        L9_2 = "(Clone)"
        L8_2 = L8_2 .. L9_2
      end
      if L7_2 == L8_2 then
        L8_2 = A0_2
        L7_2 = A0_2.create_panel
        L9_2 = A0_2.node_class_name
        L10_2 = A0_2.node_binder_class_name
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L9_2 = L7_2
        L8_2 = L7_2.bind
        L10_2 = L6_2.transform
        L8_2(L9_2, L10_2)
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._node_panel_list
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
        L5_2 = L5_2 + 1
      end
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.root
      L6_2 = L6_2.transform
      L7_2 = L6_2
      L6_2 = L6_2.GetChild
      L8_2 = L4_2 - 1
      L6_2 = L6_2(L7_2, L8_2)
      L6_2 = L6_2.gameObject
      L7_2 = L6_2.name
      if L7_2 ~= L3_2 then
        L7_2 = L6_2.name
        L8_2 = L3_2
        L9_2 = "(Clone)"
        L8_2 = L8_2 .. L9_2
        if L7_2 ~= L8_2 then
          goto lbl_88
        end
      end
      L7_2 = A0_2._by_scale
      if L7_2 then
        L7_2 = G
        L7_2 = L7_2.ComponentExtensions
        L7_2 = L7_2.SafeSetActiveByScale
        L8_2 = L6_2.transform
        L9_2 = false
        L7_2(L8_2, L9_2)
      else
        L7_2 = G
        L7_2 = L7_2.ComponentExtensions
        L7_2 = L7_2.SafeSetActive
        L8_2 = L6_2.transform
        L9_2 = false
        L7_2(L8_2, L9_2)
      end
    end
    ::lbl_88::
    L4_2 = L4_2 + 1
  end
end
L0_1.rebind_child_node_by_name = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._showCount = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_node
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_count = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2._init_node
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._node_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._node_panel_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.init_view
    if L7_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.init_view
      L7_2(L8_2)
    end
    L8_2 = A0_2
    L7_2 = A0_2._set_node_active
    L9_2 = L6_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1.init_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  while A1_2 >= L2_2 do
    L3_2 = A0_2._node_panel_list
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2._set_node_active
      L6_2 = L3_2
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
    else
      L5_2 = A0_2
      L4_2 = A0_2._get_new_panel
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._node_panel_list
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    L2_2 = L2_2 + 1
  end
  while true do
    L3_2 = A0_2._node_panel_list
    L3_2 = #L3_2
    if not (L2_2 <= L3_2) then
      break
    end
    L3_2 = A0_2._node_panel_list
    L3_2 = L3_2[L2_2]
    L5_2 = A0_2
    L4_2 = A0_2._set_node_active
    L6_2 = L3_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L2_2 = L2_2 + 1
  end
end
L0_1._init_node = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._by_scale
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.set_view_active_by_scale
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A1_2
    L3_2 = A1_2.safe_set_active
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._set_node_active = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = A0_2.node_class_name
  L4_2 = A0_2.node_binder_class_name
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._use_panel_prefab_path
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._prefab_meta
    L5_2 = A0_2._binder
    L5_2 = L5_2.root
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L1_2
    L3_2 = L1_2.bind
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = L1_2
    L2_2 = L1_2.sync_loadto
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L2_2(L3_2, L4_2)
  end
  return L1_2
end
L0_1._get_new_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._dispose_all_node_panel
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._node_panel_list
  if L1_2 then
    L1_2 = 1
    L2_2 = A0_2._node_panel_list
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._node_panel_list
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.dispose
      L5_2(L6_2)
    end
  end
  A0_2._node_panel_list = nil
end
L0_1._dispose_all_node_panel = L2_1
return L0_1
