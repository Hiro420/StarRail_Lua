local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialGuideSwipePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._config = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.GetStartNode
  L2_2 = L2_2(L3_2)
  A0_2._start_node = L2_2
  L3_2 = A1_2
  L2_2 = A1_2.GetEndNode
  L2_2 = L2_2(L3_2)
  A0_2._dst_node = L2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_tickable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIFocusControllerChanged
  L4_2 = A0_2._on_ui_focus_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L3_2 = 0.5
  L4_2 = 0.5
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.pivot = L2_2
  L1_2 = A0_2._start_node
  L2_2 = L1_2
  L1_2 = L1_2.Bind
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._dst_node
  L2_2 = L1_2
  L1_2 = L1_2.Bind
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._start_node
  L2_2 = L1_2
  L1_2 = L1_2.Unbind
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._dst_node
  L2_2 = L1_2
  L1_2 = L1_2.Unbind
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._need_skip
  if not L1_2 then
    return
  end
  A0_2._need_skip = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.ForceFinishCurrentTutorial
  L3_2 = "\230\140\135\229\188\149\232\191\135\231\168\139\228\184\173\229\188\130\229\184\184\229\188\185\229\135\186\231\149\140\233\157\162"
  L1_2(L2_2, L3_2)
end
L0_1._on_tick = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.set_parent_trans = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  return L1_2
end
L0_1.get_root = L1_1
function L1_1(A0_2, A1_2)
  A0_2._need_sync = A1_2
end
L0_1.set_need_sync = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.on_tutorial_node_transform_changed
  L1_2(L2_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._start_node
  L2_2 = L1_2
  L1_2 = L1_2.CanShow
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._need_sync
    if L2_2 then
      L2_2 = A0_2._config
      L3_2 = L2_2
      L2_2 = L2_2.SyncSwipeAreaTo
      L4_2 = A0_2._binder
      L4_2 = L4_2.root
      L4_2 = L4_2.transform
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._config
      L3_2 = L2_2
      L2_2 = L2_2.Sync
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_start_point
      L5_2 = A0_2._start_node
      L6_2 = true
      L7_2 = false
      L8_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L2_2 = A0_2._config
      L3_2 = L2_2
      L2_2 = L2_2.Sync
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_end_point
      L5_2 = A0_2._dst_node
      L6_2 = true
      L7_2 = false
      L8_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L0_1.on_tutorial_node_transform_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.HasTutorialBlockMask
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_skip
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.on_tutorial_node_transform_changed
  L1_2(L2_2)
end
L0_1._on_ui_focus_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._need_skip = true
  L2_2 = A0_2
  L1_2 = A0_2.set_tickable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._try_skip = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._need_skip = false
  L2_2 = A0_2
  L1_2 = A0_2.set_tickable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._cancel_skip = L1_1
return L0_1
