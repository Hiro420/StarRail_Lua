local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Tutorial.GuideUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GuidePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.GuideUtils
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.remove_mono_tick
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._config = A1_2
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.try_get_tutorial_node
  L4_2 = A1_2.OriginNodeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._start_node = L2_2
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.try_get_tutorial_node
  L4_2 = A1_2.TargetNodeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._dst_node = L2_2
  L2_2 = A0_2._start_node
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.TutorialSupportModule
    L3_2 = L2_2
    L2_2 = L2_2.ForceFinishCurrentTutorial
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "find node %s fail"
    L6_2 = A1_2.OriginNodeID
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = A0_2._dst_node
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.TutorialSupportModule
    L3_2 = L2_2
    L2_2 = L2_2.ForceFinishCurrentTutorial
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "find node %s fail"
    L6_2 = A1_2.TargetNodeID
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = L1_1.is_2d_ui_node
  L3_2 = A0_2._start_node
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  A0_2._is_start_node_3d = L2_2
  L2_2 = L1_1.is_2d_ui_node
  L3_2 = A0_2._dst_node
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  A0_2._is_dst_node_3d = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_start_point
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L3_2 = L3_2.one
  L4_2 = A0_2._config
  L4_2 = L4_2.OriginScale
  L3_2 = L3_2 * L4_2
  L2_2.localScale = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_end_point
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L3_2 = L3_2.one
  L4_2 = A0_2._config
  L4_2 = L4_2.TargetScale
  L3_2 = L3_2 * L4_2
  L2_2.localScale = L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_position
  L4_2 = A0_2._start_node
  L5_2 = A0_2._dst_node
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_item_cmpt
  L4_2 = A0_2._start_node
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._start_node_item = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_item_cmpt
  L4_2 = A0_2._dst_node
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._dst_node_item = L2_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.add_mono_tick
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_swipe = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._is_start_node_3d
  if L3_2 then
    L3_2 = L1_1.copy_3d_node_position_and_size
    L4_2 = A1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_root
    L5_2 = L5_2.transform
    L3_2(L4_2, L5_2)
  else
    L3_2 = L1_1.copy_node_center_position
    L4_2 = A1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_root
    L5_2 = L5_2.transform
    L3_2(L4_2, L5_2)
    L3_2 = L1_1.copy_2d_node_size
    L4_2 = A1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_start_point
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._is_dst_node_3d
  if L3_2 then
    L3_2 = L1_1.copy_3d_node_size
    L4_2 = A2_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_end_point
    L3_2(L4_2, L5_2)
  else
    L3_2 = L1_1.copy_2d_node_size
    L4_2 = A2_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_end_point
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = L1_1.get_node_delta_size
  L4_2 = A2_2
  L5_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L1_1.set_node_size
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_root
  L6_2 = L6_2.transform
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_position = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.SuperScrollView
  L5_2 = L5_2.LoopListViewItem2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 == nil then
    L4_2 = A1_2
    L3_2 = A1_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.SuperScrollView
    L6_2 = L6_2.LoopGridViewItem
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  return L2_2
end
L0_1._get_item_cmpt = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  if A2_2 ~= nil then
    L3_2 = A2_2.IsRecycled
    L3_2 = not L3_2
    return L3_2
  end
  L3_2 = A1_2.gameObject
  L3_2 = L3_2.activeInHierarchy
  return L3_2
end
L0_1._is_node_valid = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._is_node_valid
  L4_2 = A0_2._start_node
  L5_2 = A0_2._start_node_item
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_node_valid
    L4_2 = A0_2._dst_node
    L5_2 = A0_2._dst_node_item
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      goto lbl_17
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_17::
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_position
  L4_2 = A0_2._start_node
  L5_2 = A0_2._dst_node
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.on_mono_tick = L2_1
return L0_1
