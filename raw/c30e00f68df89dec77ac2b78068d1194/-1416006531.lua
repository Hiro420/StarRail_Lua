local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarNode"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DiscreteProgressBar"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2
  A0_2._is_child_node_pre_loaded = A5_2
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = "Ui.Component.DiscreteProgressBarNode"
  end
  A0_2.node_class_name = L6_2
  L6_2 = A4_2 or L6_2
  if not A4_2 then
    L6_2 = "Ui.Component.DiscreteProgressBarNodeBinder"
  end
  A0_2.node_binder_class_name = L6_2
  L6_2 = {}
  A0_2._node_panel_list = L6_2
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
    L3_2 = L1_2
    L2_2 = L1_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A3_2 or nil
  if not A3_2 then
    L5_2 = A2_2
  end
  A0_2._iTotal_node_count = L5_2
  A0_2._fCurrent_value = A1_2
  L5_2 = A0_2._iTotal_node_count
  L5_2 = A2_2 / L5_2
  A0_2._split_value = L5_2
  L5_2 = 1
  L7_2 = A0_2
  L6_2 = A0_2._init_node
  L8_2 = A0_2._iTotal_node_count
  L6_2(L7_2, L8_2)
  while true do
    L6_2 = A0_2._iTotal_node_count
    if not (L5_2 <= L6_2) then
      break
    end
    L6_2 = A0_2._node_panel_list
    L6_2 = L6_2[L5_2]
    L8_2 = A0_2
    L7_2 = A0_2._get_fill_amount
    L9_2 = L5_2
    L10_2 = A1_2
    L11_2 = A0_2._split_value
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L9_2 = L6_2
    L8_2 = L6_2.setup_view
    L10_2 = L7_2
    L11_2 = A4_2
    L8_2(L9_2, L10_2, L11_2)
    L5_2 = L5_2 + 1
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 1
  while true do
    L4_2 = A0_2._iTotal_node_count
    if not (L3_2 <= L4_2) then
      break
    end
    L4_2 = A0_2._node_panel_list
    L4_2 = L4_2[L3_2]
    L6_2 = A0_2
    L5_2 = A0_2._get_fill_amount
    L7_2 = L3_2
    L8_2 = A0_2._fCurrent_value
    L9_2 = A0_2._split_value
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2._get_fill_amount
    L8_2 = L3_2
    L9_2 = A1_2
    L10_2 = A0_2._split_value
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if L5_2 ~= L6_2 then
      L8_2 = A0_2
      L7_2 = A0_2.play_node_animation
      L9_2 = L3_2
      L10_2 = A2_2
      L7_2(L8_2, L9_2, L10_2)
    end
    L8_2 = L4_2
    L7_2 = L4_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L3_2 = L3_2 + 1
  end
end
L0_1.show_delta_with_anim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_panel_list
  L2_2 = L2_2[A1_2]
  L4_2 = L2_2
  L3_2 = L2_2.show_preview
  L3_2(L4_2)
end
L0_1.show_preview_node = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._node_panel_list
  L3_2 = L3_2[A1_2]
  L5_2 = L3_2
  L4_2 = L3_2.play_animation
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.play_node_animation = L2_1
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
    L3_2 = L3_2 + 1
  end
end
L0_1.rebind_child_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._node_panel_list
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._node_panel_list = L2_2
  L2_2 = 1
  L3_2 = A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._node_panel_list
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L8_2 = L6_2
      L7_2 = L6_2.safe_set_active
      L9_2 = true
      L7_2(L8_2, L9_2)
    else
      L7_2 = nil
      L8_2 = A0_2._is_child_node_pre_loaded
      if L8_2 ~= nil then
        L8_2 = A0_2._is_child_node_pre_loaded
        if L8_2 ~= false then
          goto lbl_32
        end
      end
      L9_2 = A0_2
      L8_2 = A0_2.instantiate_object
      L10_2 = A0_2._prefab_meta
      L11_2 = A0_2._binder
      L11_2 = L11_2.root
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
      goto lbl_43
      ::lbl_32::
      L8_2 = A0_2._binder
      L8_2 = L8_2.root
      L8_2 = L8_2.transform
      L9_2 = L8_2
      L8_2 = L8_2.GetChild
      L10_2 = L5_2 - 1
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L8_2.gameObject
      L8_2 = L7_2.transform
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      ::lbl_43::
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = A0_2.node_class_name
      L11_2 = A0_2.node_binder_class_name
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L6_2 = L8_2
      L9_2 = L6_2
      L8_2 = L6_2.bind
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._node_panel_list
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = A1_2 + 1
  L3_2 = A0_2._node_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._node_panel_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.safe_set_active
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_node = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A3_2 or nil
  if not A3_2 then
    L4_2 = 1
  end
  L5_2 = math
  L5_2 = L5_2.ceil
  L6_2 = A2_2 / L4_2
  L5_2 = L5_2(L6_2)
  if A1_2 > L5_2 then
    L6_2 = 0
    return L6_2
  end
  if A1_2 < L5_2 then
    L6_2 = 1
    return L6_2
  end
  L6_2 = L5_2 - 1
  L6_2 = L6_2 * L4_2
  L6_2 = A2_2 - L6_2
  L6_2 = L6_2 / L4_2
  return L6_2
end
L0_1._get_fill_amount = L2_1
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
