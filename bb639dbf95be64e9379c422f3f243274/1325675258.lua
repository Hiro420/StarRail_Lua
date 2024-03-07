local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialGuideHintPanel"
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
  L2_2 = A0_2
  L1_2 = A0_2.set_tickable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L1_2 = A0_2._node
  L2_2 = L1_2
  L1_2 = L1_2.Bind
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._countdown
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._countdown
  L1_2 = L1_2 - 1
  A0_2._countdown = L1_2
  L1_2 = A0_2._countdown
  if L1_2 <= 0 then
    L1_2 = A0_2._node
    L2_2 = L1_2
    L1_2 = L1_2.IsOwnerFocused
    L1_2 = L1_2(L2_2)
    if not L1_2 then
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
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.GlobalVars
        L1_2 = L1_2.s_ModuleManager
        L1_2 = L1_2.TutorialSupportModule
        L2_2 = L1_2
        L1_2 = L1_2.ForceFinishCurrentTutorial
        L1_2(L2_2)
      end
    end
    A0_2._countdown = nil
  end
end
L0_1._on_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._node
  L2_2 = L1_2
  L1_2 = L1_2.Unbind
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L1_1
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
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L1_2(L2_2)
  L1_2 = false
  L2_2 = A0_2._node
  L3_2 = L2_2
  L2_2 = L2_2.GetNodeTransform
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = A0_2._node
    L4_2 = L3_2
    L3_2 = L3_2.IsOwnerFocused
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.TutorialSupportModule
      L4_2 = L3_2
      L3_2 = L3_2.HasTutorialBlockMask
      L3_2 = L3_2(L4_2)
      if L3_2 then
        A0_2._countdown = 1
        L1_2 = true
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_tickable
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1.on_tutorial_node_transform_changed = L1_1
return L0_1
