local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.NpcMonsterInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.NpcMonsterInfoPanelBinder"
L0_1(L1_1)
L0_1 = "UI/Maze/Widget/MazeSelectTarget.prefab"
L1_1 = "Maze_HUD_NeutralTargetFadeIn"
L2_1 = "BattleUI_HUD_NormalTargetFadeIn"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MazeTargetPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.EMazeLockTargetState
L4_1 = L4_1.InMeleeRange
L5_1 = L4_1
L4_1 = L4_1.GetHashCode
L4_1 = L4_1(L5_1)
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.EMazeLockTargetState
L5_1 = L5_1.InSkillRange
L6_1 = L5_1
L5_1 = L5_1.GetHashCode
L5_1 = L5_1(L6_1)
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.EMazeLockTargetState
L6_1 = L6_1.InInfoRange
L7_1 = L6_1
L6_1 = L6_1.GetHashCode
L6_1 = L6_1(L7_1)
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.EMazeLockTargetState
L7_1 = L7_1.InPuzzleTriggerRange
L8_1 = L7_1
L7_1 = L7_1.GetHashCode
L7_1 = L7_1(L8_1)
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.EMazeLockTargetUIState
L8_1 = L8_1.InUIOffset
L9_1 = L8_1
L8_1 = L8_1.GetHashCode
L8_1 = L8_1(L9_1)
L9_1 = CS
L9_1 = L9_1.UnityEngine
L9_1 = L9_1.Animator
L9_1 = L9_1.StringToHash
L10_1 = "SelectRoot"
L9_1 = L9_1(L10_1)
L10_1 = CS
L10_1 = L10_1.UnityEngine
L10_1 = L10_1.Animator
L10_1 = L10_1.StringToHash
L11_1 = "Root"
L10_1 = L10_1(L11_1)
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  L5_2 = A3_2 or nil
  if not A3_2 then
    L5_2 = G
    L5_2 = L5_2.NpcMonsterInfoPanel
  end
  A0_2._info_panel_class = L5_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = G
    L5_2 = L5_2.NpcMonsterInfoPanelBinder
  end
  A0_2._info_panel_binder_class = L5_2
end
L3_1.ctor = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = A0_2._info_panel_class
  L4_2 = A0_2._info_panel_binder_class
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._monster_info_panel = L1_2
  A0_2._info_panel_class = nil
  A0_2._info_panel_binder_class = nil
  L1_2 = A0_2._monster_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind_with_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_info_panel
  L4_2 = A0_2
  L5_2 = A0_2._on_info_panel_loaded
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_target_hud
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_lock_special_targets_items
  L1_2(L2_2)
end
L3_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._monster_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._monster_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerLockNewTarget
  L4_2 = L3_1._on_player_lock_new_target
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LockTargetStateChange
  L4_2 = L3_1._on_player_lock_target_state_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LockTargetSelectStateChange
  L4_2 = L3_1._on_neutralTarget_select_state_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GameplayLockSpecialTarget
  L4_2 = L3_1._lock_special_target
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GameplayUnlockSpecialTarget
  L4_2 = L3_1._unlock_special_target
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_info_panel_loaded = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_select_target
  A0_2._hud_root_go = L1_2
  L1_2 = A0_2._hud_root_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._hud_root_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2._hud_root_go
  L3_2 = "ArrowTarget"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._arrowTarget = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2._hud_root_go
  L3_2 = "AttackTarget"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._attackTarget = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2._hud_root_go
  L3_2 = "NeutralTarget"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._neutralTarget = L1_2
  L1_2 = A0_2._arrowTarget
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._attackTarget
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._neutralTarget
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._attackTarget
  L2_2 = L1_2
  L1_2 = L1_2.GetComponentInChildren
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animator
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._attackTargetAnimator = L1_2
  L1_2 = A0_2._neutralTarget
  L2_2 = L1_2
  L1_2 = L1_2.GetComponentInChildren
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animator
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._neutralTargetAnimator = L1_2
end
L3_1._init_target_hud = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  if A1_2 == nil then
    return L2_2
  end
  L3_2 = A1_2.UnityGO
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.AttachPointMapping
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.FindAttachPoint
    L6_2 = L9_1
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L4_2
    if L2_2 == nil then
      L5_2 = L3_2
      L4_2 = L3_2.FindAttachPoint
      L6_2 = L10_1
      L4_2 = L4_2(L5_2, L6_2)
      L2_2 = L4_2
    end
  end
  return L2_2
end
L3_1._find_follow_node = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2._attackTarget
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.UIFollow3DTarget
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2.FollowTarget = A2_2
  L4_2 = A1_2._neutralTarget
  L5_2 = L4_2
  L4_2 = L4_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.UIFollow3DTarget
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2.FollowTarget = A2_2
end
L3_1._setup_item_follow = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._current_normal_lock_target = A1_2
  L2_2 = A0_2._current_normal_lock_target
  if L2_2 == nil then
    L2_2 = A0_2._hud_root_go
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._monster_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = nil
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._attackTarget
    L3_2 = L2_2
    L2_2 = L2_2.GetComponent
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIFollow3DTarget
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2.FollowTarget = nil
    L3_2 = A0_2._neutralTarget
    L4_2 = L3_2
    L3_2 = L3_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.UIFollow3DTarget
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2.FollowTarget = nil
  else
    L2_2 = A0_2._hud_root_go
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._find_follow_node
    L4_2 = A0_2._current_normal_lock_target
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = A0_2._attackTarget
      L4_2 = L3_2
      L3_2 = L3_2.GetComponent
      L5_2 = typeof
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.UIFollow3DTarget
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L4_2 = L2_2.gameObject
      L3_2.FollowTarget = L4_2
      L4_2 = A0_2._neutralTarget
      L5_2 = L4_2
      L4_2 = L4_2.GetComponent
      L6_2 = typeof
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.UIFollow3DTarget
      L6_2, L7_2 = L6_2(L7_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = L2_2.gameObject
      L4_2.FollowTarget = L5_2
    end
  end
end
L3_1._on_player_lock_new_target = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._target_state = A1_2
  L2_2 = A0_2._current_normal_lock_target
  if L2_2 ~= nil then
    L2_2 = A0_2._hud_root_go
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = false
  L3_2 = A0_2._current_normal_lock_target
  if L3_2 ~= nil then
    L3_2 = A0_2._current_normal_lock_target
    L3_2 = L3_2.EntityType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.EntityType
    L4_2 = L4_2.Prop
    if L3_2 == L4_2 then
      L2_2 = true
    end
  end
  L3_2 = L4_1
  L3_2 = A1_2 & L3_2
  if 0 < L3_2 then
    L3_2 = L8_1
    L3_2 = A1_2 & L3_2
    if 0 < L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._show_lock_target_attack
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = L5_1
    L3_2 = A1_2 & L3_2
    if not (0 < L3_2) then
      L3_2 = L6_1
      L3_2 = A1_2 & L3_2
      if not (0 < L3_2) then
        goto lbl_51
      end
    end
    L3_2 = L8_1
    L3_2 = A1_2 & L3_2
    if 0 < L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._show_lock_target_info
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    ::lbl_51::
    else
      L3_2 = L7_1
      L3_2 = A1_2 & L3_2
      if 0 < L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._show_lock_target_attack
        L5_2 = true
        L3_2(L4_2, L5_2)
      else
        L4_2 = A0_2
        L3_2 = A0_2._show_lock_target_Empty
        L3_2(L4_2)
      end
    end
  end
end
L3_1._on_player_lock_target_state_change = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2._rid = 0
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.sync_load_prefab
  L4_2 = L0_1
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_target_hud_root
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2._hud_root_go = L2_2
  L2_2 = L1_2._hud_root_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeFind
  L3_2 = L1_2._hud_root_go
  L4_2 = "ArrowTarget"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2._arrowTarget = L2_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeFind
  L3_2 = L1_2._hud_root_go
  L4_2 = "AttackTarget"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2._attackTarget = L2_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeFind
  L3_2 = L1_2._hud_root_go
  L4_2 = "NeutralTarget"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2._neutralTarget = L2_2
  L2_2 = L1_2._arrowTarget
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L1_2._attackTarget
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L1_2._neutralTarget
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L1_2._attackTarget
  L3_2 = L2_2
  L2_2 = L2_2.GetComponentInChildren
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Animator
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2._attackTargetAnimator = L2_2
  L2_2 = L1_2._neutralTarget
  L3_2 = L2_2
  L2_2 = L2_2.GetComponentInChildren
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Animator
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2._neutralTargetAnimator = L2_2
  return L1_2
end
L3_1._create_single_special_target_item = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._max_spacial_targets_count = 4
  L1_2 = {}
  A0_2._special_target_items = L1_2
  L1_2 = 1
  L2_2 = A0_2._max_spacial_targets_count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._special_target_items
    L7_2 = A0_2
    L6_2 = A0_2._create_single_special_target_item
    L6_2 = L6_2(L7_2)
    L5_2[L4_2] = L6_2
  end
end
L3_1._init_lock_special_targets_items = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = A0_2._max_spacial_targets_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._special_target_items
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2._rid
    if L7_2 == 0 then
      L7_2 = A1_2.runtimeID
      L6_2._rid = L7_2
      L7_2 = L6_2._hud_root_go
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetLightWeightActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = L6_2._attackTargetAnimator
      L8_2 = L7_2
      L7_2 = L7_2.Play
      L9_2 = L2_1
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2._find_follow_node
      L9_2 = A1_2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = A0_2
      L8_2 = A0_2._setup_item_follow
      L10_2 = L6_2
      L11_2 = L7_2.gameObject
      L8_2(L9_2, L10_2, L11_2)
      break
    end
  end
end
L3_1._lock_special_target = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 1
  L3_2 = A0_2._max_spacial_targets_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._special_target_items
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2._rid
    L8_2 = A1_2.runtimeID
    if L7_2 == L8_2 then
      L6_2._rid = 0
      L7_2 = L6_2._hud_root_go
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetLightWeightActive
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2._setup_item_follow
      L9_2 = L6_2
      L10_2 = nil
      L7_2(L8_2, L9_2, L10_2)
      break
    end
  end
end
L3_1._unlock_special_target = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._attackTarget
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._neutralTarget
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._show_lock_target_Empty = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._attackTarget
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._neutralTarget
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._monster_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = nil
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._show_normal_lock_target_info
    L2_2(L3_2)
  end
end
L3_1._show_lock_target_info = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._attackTarget
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._neutralTarget
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._neutralTargetAnimator
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._monster_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = nil
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._attackTarget
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._neutralTarget
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._attackTargetAnimator
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._show_normal_lock_target_info
    L2_2(L3_2)
  end
end
L3_1._show_lock_target_attack = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._current_normal_lock_target
  if not L1_2 then
    return
  end
  L1_2 = A0_2._monster_info_panel
  L1_2 = L1_2.cacheGameEntity
  L2_2 = A0_2._current_normal_lock_target
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._current_normal_lock_target
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AdventureCharacterDataComponent
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._current_normal_lock_target
    L2_2 = L2_2.EntityType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.EntityType
    L3_2 = L3_2.NPCMonster
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.NPCDataExcelTable
      L2_2 = L2_2.GetData
      L3_2 = L1_2.CharacterID
      L2_2 = L2_2(L3_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.NPCMonsterDataExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L1_2.CharacterID
      L3_2 = L3_2(L4_2)
      if L2_2 ~= nil then
        L4_2 = A0_2._monster_info_panel
        L5_2 = L4_2
        L4_2 = L4_2.setup_view
        L6_2 = L2_2
        L7_2 = A0_2._current_normal_lock_target
        L4_2(L5_2, L6_2, L7_2)
        return
      elseif L3_2 ~= nil then
        L4_2 = A0_2._monster_info_panel
        L5_2 = L4_2
        L4_2 = L4_2.setup_view
        L6_2 = L3_2
        L7_2 = A0_2._current_normal_lock_target
        L4_2(L5_2, L6_2, L7_2)
        return
      end
    end
  end
  L2_2 = A0_2._monster_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = nil
  L2_2(L3_2, L4_2)
end
L3_1._show_normal_lock_target_info = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EMazeLockTargetSelectState
  L2_2 = L2_2.WeakBlock
  if A1_2 == L2_2 then
    L2_2 = A0_2._neutralTarget
    L3_2 = L2_2
    L2_2 = L2_2.GetComponent
    L4_2 = "UIMazeSelectController"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.SetSelectWeakBlock
    L2_2(L3_2)
  else
    L2_2 = A0_2._neutralTarget
    L3_2 = L2_2
    L2_2 = L2_2.GetComponent
    L4_2 = "UIMazeSelectController"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.ResetSelectState
    L2_2(L3_2)
  end
end
L3_1._on_neutralTarget_select_state_change = L11_1
return L3_1
