local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonGridFloor3DPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._animator = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Floor"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FloorLv5"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_final = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Floor/State/Selected"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_selected_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FloorLv5/State/Selected"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_selected_final = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ParticleSystemProxy
  L4_2 = "Floor/Effcontain/JamHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._partical_jam_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ParticleSystemProxy
  L4_2 = "FloorLv5/Effcontain/JamHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._partical_jam_final = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.EventTriggerListener
  L4_2 = "Content/TreasureDungeonGridItem2D/Click"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._event_listener = L1_2
  L1_2 = A0_2._event_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter
    L0_3(L1_3)
  end
  L1_2.OnEnterTrigger = L2_2
  L1_2 = A0_2._event_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_down
    L0_3(L1_3)
  end
  L1_2.OnDownTrigger = L2_2
  L1_2 = A0_2._event_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_exit
    L0_3(L1_3)
  end
  L1_2.OnExitTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._node_final
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == 1
  L2_2(L3_2, L4_2)
end
L0_1.setup_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "FlipStates"
  L5_2 = A0_2
  L4_2 = A0_2._get_animator_floor_id
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._refresh_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_view
    L2_2(L3_2)
  end
end
L0_1._on_owner_active_change = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.IsFlipped
  if not L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.CanInteract
    if L1_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.IsLocked
      if L1_2 then
        L1_2 = 1
        return L1_2
      else
        L1_2 = 2
        return L1_2
      end
    else
      L1_2 = A0_2._data
      L1_2 = L1_2.IsLocked
      if L1_2 then
        L1_2 = 3
        return L1_2
      else
        L1_2 = 4
        return L1_2
      end
    end
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.IsEmpty
    if L1_2 then
      L1_2 = 5
      return L1_2
    else
      L1_2 = A0_2._data
      L1_2 = L1_2.CanInteract
      if L1_2 then
        L1_2 = 5
        return L1_2
      else
        L1_2 = 6
        return L1_2
      end
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_animator_floor_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsFlipped
  if not L1_2 then
    L1_2 = 0
    return L1_2
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.GridType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonGridType
    L2_2 = L2_2.Enemy
    if L1_2 == L2_2 then
      L1_2 = 1
      return L1_2
    else
      L1_2 = 3
      return L1_2
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_animator_item_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._partical_jam_normal
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2._partical_jam_final
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1.play_monster_locking = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeOut"
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_out = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_selected_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._node_selected_final
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.block_interact = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "InteractionStateCtrl"
  L4_2 = 2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_enter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "InteractionStateCtrl"
  L4_2 = 3
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_down = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._animator
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "InteractionStateCtrl"
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_exit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._animator
    L3_2 = L2_2
    L2_2 = L2_2.SetInteger
    L4_2 = "InteractionStateCtrl"
    L5_2 = 4
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._animator
    L3_2 = L2_2
    L2_2 = L2_2.SetInteger
    L4_2 = "InteractionStateCtrl"
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.set_selected = L1_1
return L0_1
