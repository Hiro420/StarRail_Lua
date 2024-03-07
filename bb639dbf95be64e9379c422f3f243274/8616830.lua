local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Billboard.BillboardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.BubbleTalkManager"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BillboardManager"
L2_1 = nil
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.NotifyManager
L2_1 = G
L2_1 = L2_1.new
L3_1 = G
L3_1 = L3_1.BubbleTalkManager
L2_1 = L2_1(L3_1)
L3_1 = 6
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.init
  L0_2(L1_2)
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_BillboardRoot
  L0_1._billboard_root = L0_2
  L0_2 = G
  L0_2 = L0_2.ComponentExtensions
  L0_2 = L0_2.SafeGetCmpt
  L1_2 = typeof
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoPerformanceUITransfer
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1._billboard_root
  L3_2 = ""
  L4_2 = false
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_1._mono_ticker = L0_2
  L0_2 = L0_1._mono_ticker
  if L0_2 == nil then
    L0_2 = G
    L0_2 = L0_2.ComponentExtensions
    L0_2 = L0_2.SafeAddCmpt
    L1_2 = typeof
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MonoPerformanceUITransfer
    L1_2 = L1_2(L2_2)
    L2_2 = L0_1._billboard_root
    L3_2 = ""
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L0_1._mono_ticker = L0_2
  end
  L0_2 = L0_1._mono_ticker
  L1_2 = L0_2
  L0_2 = L0_2.SetTickCallback
  L2_2 = L0_1.mono_tick
  L0_2(L1_2, L2_2)
  L0_2 = {}
  L0_1._all_billboards = L0_2
  L0_1._visible_delay_time = -1
  L0_1._visible_delay_status = nil
  L0_2 = {}
  L0_1.out_screen_alert_enemy = L0_2
  L0_1.now_lock_target = nil
  L0_1._enable = true
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SwitchBillboardVisible
  L3_2 = L0_1._on_ui_switch_billboard_visible
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowBillboard
  L3_2 = L0_1._on_ui_show_billboard
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICloseBillboard
  L3_2 = L0_1._on_ui_close_billboard
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIOverrideBillboard
  L3_2 = L0_1._on_ui_override_billboard
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIBubbleManagerResetNPCManager
  L3_2 = L0_1._on_ui_bubble_manager_reset_npc_manager
  L4_2 = self
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIChangeBillboardMutexStatus
  L3_2 = L0_1._on_mutex_status_change
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeMonsterAttack
  L3_2 = L0_1._on_monster_attack
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventurePhaseEntered
  L3_2 = L0_1._on_adventure_phase_entered
  L4_2 = self
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeToBattleTransitBegin
  L3_2 = L0_1._disable_billboard
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnOutScreenAlertEnemyAdd
  L3_2 = L0_1._on_add_npc_warning_tips
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnOutScreenAlertEnemyRemove
  L3_2 = L0_1._on_remove_npc_warning_tips
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventureTriggerBattleStart
  L3_2 = L0_1._clear_out_screen_alert_enemy
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventurePhaseEnd
  L3_2 = L0_1._clear_out_screen_alert_enemy
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PlayerLockNewTarget
  L3_2 = L0_1._on_player_lock_new_target
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.init = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.dispose
  L0_2(L1_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SwitchBillboardVisible
  L3_2 = L0_1._on_ui_switch_billboard_visible
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowBillboard
  L3_2 = L0_1._on_ui_show_billboard
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICloseBillboard
  L3_2 = L0_1._on_ui_close_billboard
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIOverrideBillboard
  L3_2 = L0_1._on_ui_override_billboard
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIBubbleManagerResetNPCManager
  L3_2 = L0_1._on_ui_bubble_manager_reset_npc_manager
  L4_2 = self
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIChangeBillboardMutexStatus
  L3_2 = L0_1._on_mutex_status_change
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeMonsterAttack
  L3_2 = L0_1._on_monster_attack
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventurePhaseEntered
  L3_2 = L0_1._on_adventure_phase_entered
  L4_2 = self
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeToBattleTransitBegin
  L3_2 = L0_1._disable_billboard
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnOutScreenAlertEnemyAdd
  L3_2 = L0_1._on_add_npc_warning_tips
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.OnOutScreenAlertEnemyRemove
  L3_2 = L0_1._on_remove_npc_warning_tips
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventureTriggerBattleStart
  L3_2 = L0_1._clear_out_screen_alert_enemy
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventurePhaseEnd
  L3_2 = L0_1._clear_out_screen_alert_enemy
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PlayerLockNewTarget
  L3_2 = L0_1._on_player_lock_new_target
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = {}
  L0_1.out_screen_alert_enemy = L0_2
  L0_1.now_lock_target = nil
  L0_2 = L0_1._mono_ticker
  L1_2 = L0_2
  L0_2 = L0_2.ClearTickCallback
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L0_1._all_billboards
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L6_2 = L4_2
    L5_2 = L4_2.dispose
    L5_2(L6_2)
  end
end
L0_1.dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1._visible_delay_time
  if 0 < L1_2 then
    L1_2 = L0_1._visible_delay_time
    L1_2 = L1_2 - A0_2
    L0_1._visible_delay_time = L1_2
    L1_2 = L0_1._visible_delay_time
    if L1_2 < 0 then
      L1_2 = L0_1._visible_delay_status
      if L1_2 ~= nil then
        L1_2 = L0_1._set_billboard_visible
        L2_2 = L0_1._visible_delay_status
        L1_2(L2_2)
        L0_1._visible_delay_status = nil
      end
    end
  end
  L1_2 = pairs
  L2_2 = L0_1._all_billboards
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_runtime_id
    L6_2 = L6_2(L7_2)
    if L6_2 ~= 0 then
      L7_2 = L5_2
      L6_2 = L5_2.tick
      L8_2 = A0_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.tick
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.mono_tick = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.late_tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = L0_1._all_billboards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_npc_id
    L7_2 = L7_2(L8_2)
    if L7_2 == A0_2 then
      L1_2 = L6_2
      break
    end
  end
  return L1_2
end
L0_1.find_billboard_by_npc_id = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1._enable_billboard
  L0_2()
  L0_2 = L0_1._preload_billboard
  L1_2 = L3_1
  L0_2(L1_2)
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2._switchBubbleTalk
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L0_1._on_adventure_phase_entered = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.IsVisible
  L2_2 = A0_2.DelayedVisibleTime
  if 1.0E-5 < L2_2 then
    L2_2 = A0_2.DelayedVisibleTime
    L0_1._visible_delay_time = L2_2
    L0_1._visible_delay_status = L1_2
  else
    L2_2 = L0_1._set_billboard_visible
    L3_2 = L1_2
    L2_2(L3_2)
    L0_1._visible_delay_status = nil
    L0_1._visible_delay_time = -1
  end
end
L0_1._on_ui_switch_billboard_visible = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2._switchBubbleTalk
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  if not A0_2 then
    L1_2 = L0_1._disable_billboard
    L1_2()
  else
    L1_2 = L0_1._enable_billboard
    L1_2()
  end
end
L0_1._set_billboard_visible = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1._find_billboard_by_runtime_id_or_close_billboard
  L2_2 = A0_2.Entity
  L2_2 = L2_2.RuntimeID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = L0_1._create_billboard
    L2_2 = L2_2()
    L1_2 = L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2
  L5_2 = L0_1._enable
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_async_callback
  L4_2 = nil
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.try_replay_talk
    L2_3 = A0_2.Entity
    L2_3 = L2_3.RuntimeID
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_ui_show_billboard = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.BillboardPanel
  L0_2 = L0_2(L1_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L0_1._all_billboards
  L3_2 = L0_1._all_billboards
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = L0_2
  L1_2 = L0_2.async_bind
  L3_2 = L0_1._billboard_root
  L1_2(L2_2, L3_2)
  return L0_2
end
L0_1._create_billboard = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_1._create_billboard
    L5_2()
  end
end
L0_1._preload_billboard = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._find_billboard_by_runtime_id
  L2_2 = A0_2.Entity
  L2_2 = L2_2.RuntimeID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.Close
    L2_2(L3_2)
  end
end
L0_1._on_ui_close_billboard = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1._find_billboard_by_runtime_id
  L2_2 = A0_2.Entity
  L2_2 = L2_2.RuntimeID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2
    L5_2 = L0_1._enable
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_ui_override_billboard = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L0_1._all_billboards
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.dispose
    L6_2(L7_2)
  end
  L1_2 = {}
  L0_1._all_billboards = L1_2
end
L0_1._on_ui_bubble_manager_reset_npc_manager = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.Entity
  if L1_2 ~= nil then
    L1_2 = L0_1._find_billboard_by_runtime_id
    L2_2 = A0_2.Entity
    L2_2 = L2_2.RuntimeID
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.set_mutex_status
      L4_2 = A0_2.Status
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_mutex_status_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = L0_1._find_billboard_by_runtime_id
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.on_monster_attack
      L2_2(L3_2)
    end
  end
end
L0_1._on_monster_attack = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L0_1.out_screen_alert_enemy
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._on_add_npc_warning_tips = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = L0_1.out_screen_alert_enemy
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_1.out_screen_alert_enemy
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.RuntimeID
    L6_2 = A0_2.RuntimeID
    if L5_2 == L6_2 then
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = L0_1.out_screen_alert_enemy
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      break
    end
  end
end
L0_1._on_remove_npc_warning_tips = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_1.out_screen_alert_enemy = L0_2
  L0_1.now_lock_target = nil
end
L0_1._clear_out_screen_alert_enemy = L4_1
function L4_1(A0_2)
  local L1_2
  L0_1.now_lock_target = A0_2
end
L0_1._on_player_lock_new_target = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = L0_1.out_screen_alert_enemy
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_1.out_screen_alert_enemy
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.RuntimeID
    L6_2 = A0_2.RuntimeID
    if L5_2 == L6_2 then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.contain_alert_enemy = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L0_1.now_lock_target
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1.is_lock_target = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = L0_1._all_billboards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_runtime_id
    L7_2 = L7_2(L8_2)
    if L7_2 == A0_2 then
      L1_2 = L6_2
      break
    end
  end
  return L1_2
end
L0_1._find_billboard_by_runtime_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = pairs
  L4_2 = L0_1._all_billboards
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_runtime_id
    L8_2 = L8_2(L9_2)
    if L8_2 == A0_2 then
      L1_2 = L7_2
      break
    end
    if L2_2 == nil and L8_2 == 0 then
      L2_2 = L7_2
    end
  end
  if L1_2 == nil then
    return L2_2
  end
  return L1_2
end
L0_1._find_billboard_by_runtime_id_or_close_billboard = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_1._enable = false
  L0_2 = pairs
  L1_2 = L0_1._all_billboards
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L6_2 = L4_2
    L5_2 = L4_2.enable_canvas
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1._disable_billboard = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_1._enable = true
  L0_2 = pairs
  L1_2 = L0_1._all_billboards
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L6_2 = L4_2
    L5_2 = L4_2.enable_canvas
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
end
L0_1._enable_billboard = L4_1
return L0_1
