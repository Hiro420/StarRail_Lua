local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Billboard.NPCWarningPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Common.FSM.StateMachine"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.WarningPanelSafeState"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.WarningPanelGuardingState"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.WarningPanelDangerState"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.WarningPanelAttackingState"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.EMazeLockTargetState
L0_1 = L0_1.InMeleeRange
L1_1 = L0_1
L0_1 = L0_1.GetHashCode
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.EMazeLockTargetState
L1_1 = L1_1.InSkillRange
L2_1 = L1_1
L1_1 = L1_1.GetHashCode
L1_1 = L1_1(L2_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.EMazeLockTargetState
L2_1 = L2_1.InInfoRange
L3_1 = L2_1
L2_1 = L2_1.GetHashCode
L2_1 = L2_1(L3_1)
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.EMazeLockTargetState
L3_1 = L3_1.InPuzzleTriggerRange
L4_1 = L3_1
L3_1 = L3_1.GetHashCode
L3_1 = L3_1(L4_1)
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.EMazeLockTargetUIState
L4_1 = L4_1.InUIOffset
L5_1 = L4_1
L4_1 = L4_1.GetHashCode
L4_1 = L4_1(L5_1)
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "NPCWarningPanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
L6_1 = G
L6_1 = L6_1.ComponentExtensions
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.NPCWarningPanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
  A0_2._is_active = false
  A0_2._is_onload = false
  A0_2._alert_value = 0
  A0_2._is_lock_target = false
  A0_2._self_visible = true
  A0_2._progress_visible = true
  L1_2 = A0_2._self_visible
  if L1_2 then
    L1_2 = A0_2._progress_visible
  end
  A0_2._progress_view_visible = L1_2
  A0_2._warning_visible = true
  L1_2 = A0_2._self_visible
  if L1_2 then
    L1_2 = A0_2._warning_visible
  end
  A0_2._warning_view_visible = L1_2
  A0_2._effect_visible = true
  L1_2 = A0_2._self_visible
  if L1_2 then
    L1_2 = A0_2._effect_visible
  end
  A0_2._effect_view_visible = L1_2
  A0_2._lock_arrow_view_visible = true
  A0_2._lock_visible = true
  A0_2._is_danger = false
  A0_2._attack_before_load = false
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.StateMachine
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.fsm = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.WarningPanelSafeState
  L1_2 = L1_2(L2_2)
  A0_2.safe_state = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.WarningPanelGuardingState
  L1_2 = L1_2(L2_2)
  A0_2.guarding_state = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.WarningPanelDangerState
  L1_2 = L1_2(L2_2)
  A0_2.danger_state = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.WarningPanelAttackingState
  L1_2 = L1_2(L2_2)
  A0_2.attacking_state = L1_2
  L1_2 = A0_2.fsm
  L2_2 = L1_2
  L1_2 = L1_2.set_current_state
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.WarningPanelSafeState
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerLockNewTarget
  L4_2 = L5_1._on_player_lock_new_target
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LockTargetStateChange
  L4_2 = L5_1._on_player_lock_target_state_change
  L1_2(L2_2, L3_2, L4_2)
end
L5_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_onload = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_node_progress_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_node_warning_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_node_effect_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_node_lock_target_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_target_arrow
  L1_2(L2_2)
  L1_2 = A0_2.fsm
  L2_2 = L1_2
  L1_2 = L1_2.set_current_state
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.WarningPanelSafeState
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.play_from_begin
  L3_2 = "MazeMonsterWarningMark_Normal"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnOutScreenAlertEnemyAdd
  L4_2 = L5_1._on_add_npc_warning_tips
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnOutScreenAlertEnemyRemove
  L4_2 = L5_1._on_remove_npc_warning_tips
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._attack_before_load
  if L1_2 then
    A0_2._attack_before_load = false
    L2_2 = A0_2
    L1_2 = A0_2.on_monster_attack
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_active
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_visible
  L1_2(L2_2)
end
L5_1._on_load = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._self_visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_visible
  L2_2(L3_2)
end
L5_1._set_warning_visible = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_target_arrow
  L3_2 = A0_2._is_danger
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_node_progress_active
  L3_2 = A0_2._progress_visible
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_node_warning_active
  L3_2 = A0_2._warning_visible
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_node_effect_active
  L3_2 = A0_2._effect_visible
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_node_lock_target_active
  L3_2 = A0_2._is_lock_target
  if L3_2 then
    L3_2 = A0_2._lock_visible
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_self_visible
  L1_2(L2_2)
end
L5_1._refresh_visible = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._alert_value
  L1_2 = 0 < L1_2
  L3_2 = A0_2
  L2_2 = A0_2.set_light_weight_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L5_1._refresh_self_visible = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._entity
  if L2_2 == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_warning_visible
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L5_1._on_add_npc_warning_tips = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._entity
  if L2_2 == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_warning_visible
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L5_1._on_remove_npc_warning_tips = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._entity
  L2_2 = L2_2 == A1_2
  A0_2._is_lock_target = L2_2
  L2_2 = A0_2._is_onload
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_visible
  L2_2(L3_2)
end
L5_1._on_player_lock_new_target = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  L2_2 = A1_2 & L2_2
  if 0 < L2_2 then
    L2_2 = L4_1
    L2_2 = A1_2 & L2_2
    if 0 < L2_2 then
      A0_2._lock_visible = true
  end
  else
    L2_2 = L1_1
    L2_2 = A1_2 & L2_2
    if not (0 < L2_2) then
      L2_2 = L2_1
      L2_2 = A1_2 & L2_2
      if not (0 < L2_2) then
        goto lbl_25
      end
    end
    L2_2 = L4_1
    L2_2 = A1_2 & L2_2
    if 0 < L2_2 then
      A0_2._lock_visible = true
    ::lbl_25::
    else
      L2_2 = L3_1
      L2_2 = A1_2 & L2_2
      if 0 < L2_2 then
        A0_2._lock_visible = true
      else
        A0_2._lock_visible = false
      end
    end
  end
  L2_2 = A0_2._is_onload
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_visible
  L2_2(L3_2)
end
L5_1._on_player_lock_target_state_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_danger
  if L2_2 == A1_2 then
    return
  end
  A0_2._is_danger = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_target_arrow
  L2_2(L3_2)
end
L5_1.set_target_arrow = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_arrow_warning
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_danger
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_arrow_attack
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_danger
  L1_2(L2_2, L3_2)
end
L5_1.refresh_target_arrow = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    if L3_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = A0_2.fsm
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._min_find_threshold
  if L3_2 ~= nil then
    L3_2 = A0_2._max_find_threshold
    if L3_2 ~= nil then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  A0_2._alert_value = A2_2
  L3_2 = A0_2.fsm
  L4_2 = L3_2
  L3_2 = L3_2.tick
  L5_2 = A0_2._min_find_threshold
  L6_2 = A0_2._max_find_threshold
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_self_visible
  L3_2(L4_2)
end
L5_1._on_tick = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._progress_visible = A1_2
  L2_2 = A0_2._self_visible
  if L2_2 then
    L2_2 = A0_2._progress_visible
  end
  L3_2 = A0_2._progress_view_visible
  if L2_2 == L3_2 then
    return
  end
  A0_2._progress_view_visible = L2_2
  L3_2 = L6_1.SafeSetLightWeightActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L5_1.set_node_progress_active = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._warning_visible = A1_2
  L2_2 = A0_2._self_visible
  if L2_2 then
    L2_2 = A0_2._warning_visible
  end
  L3_2 = A0_2._warning_view_visible
  if L2_2 == L3_2 then
    return
  end
  A0_2._warning_view_visible = L2_2
  L3_2 = L6_1.SafeSetLightWeightActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_warning
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L5_1.set_node_warning_active = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._effect_visible = A1_2
  L2_2 = A0_2._self_visible
  if L2_2 then
    L2_2 = A0_2._effect_visible
  end
  L3_2 = A0_2._effect_view_visible
  if L2_2 == L3_2 then
    return
  end
  A0_2._effect_view_visible = L2_2
  L3_2 = L6_1.SafeSetLightWeightActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_effect
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L5_1.set_node_effect_active = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._lock_arrow_view_visible
  if L2_2 == A1_2 then
    return
  end
  A0_2._lock_arrow_view_visible = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1.set_node_lock_target_active = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_image_progress
  L2_2.fillAmount = A1_2
end
L5_1.set_image_progress_fill_amount = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if not L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1.play_anim = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1.play_from_begin = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.GetAnimationState
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.enabled
  if not L3_2 then
    L3_2 = -1
    return L3_2
  end
  L3_2 = L2_2.normalizedTime
  return L3_2
end
L5_1.get_anim_normalized_time = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._min_find_threshold = A1_2
  A0_2._max_find_threshold = A2_2
  A0_2._entity = A3_2
  L4_2 = G
  L4_2 = L4_2.BillboardManager
  L4_2 = L4_2.contain_alert_enemy
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  A0_2._self_visible = L4_2
  L4_2 = G
  L4_2 = L4_2.BillboardManager
  L4_2 = L4_2.is_lock_target
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  A0_2._is_lock_target = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_arrow
  if L4_2 ~= nil then
    A0_2._lock_visible = true
    L5_2 = A0_2
    L4_2 = A0_2.set_target_arrow
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_arrow
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetLightWeightActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.set_node_progress_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.set_node_warning_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.set_node_effect_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.set_node_lock_target_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._refresh_visible
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.play_from_begin
    L6_2 = "MazeMonsterWarningMark_Normal"
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.fsm
    L5_2 = L4_2
    L4_2 = L4_2.set_current_state
    L6_2 = G
    L6_2 = L6_2.new
    L7_2 = G
    L7_2 = L7_2.WarningPanelSafeState
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
end
L5_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_active
  if L2_2 == A1_2 then
    return
  end
  A0_2._is_active = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L5_1.set_light_weight_active = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.set_light_weight_active
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
  A0_2._entity = nil
end
L5_1.reset = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  A0_2._attack_before_load = true
  do return end
  ::lbl_10::
  L1_2 = A0_2.fsm
  L2_2 = L1_2
  L1_2 = L1_2.change_state
  L3_2 = A0_2.attacking_state
  L1_2(L2_2, L3_2)
end
L5_1.on_monster_attack = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromEnd
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1.reset_anim = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._binder = nil
end
L5_1._on_dispose = L7_1
return L5_1
