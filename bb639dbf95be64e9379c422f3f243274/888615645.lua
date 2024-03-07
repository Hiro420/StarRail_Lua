local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialGuideTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._config = A1_2
  A0_2._node = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  return L1_2
end
L0_1.get_root = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._config
  return L1_2
end
L0_1.get_config = L1_1
function L1_1(A0_2, A1_2)
  A0_2._need_sync = A1_2
end
L0_1.set_need_sync = L1_1
function L1_1(A0_2, A1_2)
  A0_2._parent_trans = A1_2
end
L0_1.set_parent_trans = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._node
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._node
  L2_2 = L1_2
  L1_2 = L1_2.Bind
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._node
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._node
  L2_2 = L1_2
  L1_2 = L1_2.Unbind
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_guide_talk
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._config
  L4_2 = L3_2
  L3_2 = L3_2.GetGuideTalkDataRow
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._config
  L5_2 = L4_2
  L4_2 = L4_2.GetActionName
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = false
  L8_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_content = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._node
  L2_2 = L1_2
  L1_2 = L1_2.GetNodeTransform
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._need_sync
    if L2_2 == true then
      L2_2 = A0_2._config
      L3_2 = L2_2
      L2_2 = L2_2.Sync
      L4_2 = A0_2._binder
      L4_2 = L4_2.root
      L4_2 = L4_2.transform
      L5_2 = A0_2._node
      L6_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = A0_2
      L2_2 = A0_2._adjust_position
      L4_2 = A0_2._parent_trans
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.on_tutorial_node_transform_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_content
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L3_2 = L2_2
  L2_2 = L2_2.LuaGetWorldCorners
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.LuaGetLocalCorners
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.InverseTransformPoint
  L6_2 = L2_2[0]
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A1_2
  L5_2 = A1_2.InverseTransformPoint
  L7_2 = L2_2[2]
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L3_2[0]
  L7_2 = L3_2[2]
  L8_2 = 0
  L9_2 = 0
  L10_2 = 10
  L11_2 = L4_2.x
  L12_2 = L6_2.x
  L12_2 = L12_2 + L10_2
  if L11_2 < L12_2 then
    L11_2 = L6_2.x
    L11_2 = L8_2 + L11_2
    L11_2 = L11_2 + L10_2
    L12_2 = L4_2.x
    L8_2 = L11_2 - L12_2
  end
  L11_2 = L5_2.x
  L12_2 = L7_2.x
  L12_2 = L12_2 - L10_2
  if L11_2 > L12_2 then
    L11_2 = L5_2.x
    L12_2 = L7_2.x
    L11_2 = L11_2 - L12_2
    L11_2 = L11_2 + L10_2
    L8_2 = L8_2 - L11_2
  end
  L11_2 = L4_2.y
  L12_2 = L6_2.y
  L12_2 = L12_2 + L10_2
  if L11_2 < L12_2 then
    L11_2 = L6_2.y
    L11_2 = L11_2 + L10_2
    L12_2 = L4_2.y
    L11_2 = L11_2 - L12_2
    L9_2 = L9_2 + L11_2
  end
  L11_2 = L5_2.y
  L12_2 = L7_2.y
  L12_2 = L12_2 - L10_2
  if L11_2 > L12_2 then
    L11_2 = L5_2.y
    L12_2 = L7_2.y
    L11_2 = L11_2 - L12_2
    L11_2 = L11_2 + L10_2
    L9_2 = L9_2 - L11_2
  end
  L11_2 = A0_2._binder
  L11_2 = L11_2.node_content
  L11_2 = L11_2.localPosition
  L12_2 = L11_2.x
  L12_2 = L12_2 + L8_2
  L11_2.x = L12_2
  L12_2 = L11_2.y
  L12_2 = L12_2 + L9_2
  L11_2.y = L12_2
  L12_2 = A0_2._binder
  L12_2 = L12_2.node_content
  L12_2.localPosition = L11_2
end
L0_1._adjust_position = L1_1
return L0_1
