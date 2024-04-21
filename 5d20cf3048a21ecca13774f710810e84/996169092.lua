local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialManager"
L2_1 = nil
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.NotifyManager
L2_1 = {}
L3_1 = 9021
L4_1 = 9048
L2_1[1] = L3_1
L2_1[2] = L4_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._entity_manager = nil
  A0_2._running_entity = nil
  L2_2 = A0_2
  L1_2 = A0_2._set_running_tutorial
  L3_2 = 0
  L1_2(L2_2, L3_2)
  A0_2._is_in_battle = false
  A0_2._running_tutorial_can_interrupt = false
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEntered
  L4_2 = L0_1._on_adventure_phase_entered
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = L0_1._on_adventure_phase_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePhaseEntered
  L4_2 = L0_1._on_battle_phase_start
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleGamePhaseLeave
  L4_2 = L0_1._on_battle_phase_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = L0_1._on_story_mode_change
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialLevelGraphStart
  L4_2 = L0_1._on_tutorial_level_graph_start
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialLevelGraphEnd
  L4_2 = L0_1._on_tutorial_level_graph_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMazeTriggerBattle
  L4_2 = L0_1._on_adventure_phase_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastQueueEmpty
  L4_2 = L0_1._on_toast_queue_empty
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LockToast
  L4_2 = L0_1._on_lock_toast
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DebugForceStartTutorial
  L4_2 = L0_1._on_force_start_tutorial
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowStageDetailInfoStart
  L4_2 = L0_1._on_show_battle_tutorial_guide
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEntered
  L4_2 = L0_1._on_adventure_phase_entered
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = L0_1._on_adventure_phase_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePhaseEntered
  L4_2 = L0_1._on_battle_phase_start
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleGamePhaseLeave
  L4_2 = L0_1._on_battle_phase_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = L0_1._on_story_mode_change
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialLevelGraphStart
  L4_2 = L0_1._on_tutorial_level_graph_start
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialLevelGraphEnd
  L4_2 = L0_1._on_tutorial_level_graph_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMazeTriggerBattle
  L4_2 = L0_1._on_adventure_phase_end
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastQueueEmpty
  L4_2 = L0_1._on_toast_queue_empty
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LockToast
  L4_2 = L0_1._on_lock_toast
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DebugForceStartTutorial
  L4_2 = L0_1._on_force_start_tutorial
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.Normal
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowStageDetailInfoStart
  L4_2 = L0_1._on_show_battle_tutorial_guide
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.dispose = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_in_battle
  return L1_2
end
L0_1.running_tutorial_is_in_battle = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._running_tutorial_id
  return L1_2
end
L0_1.get_running_tutorial_id = L3_1
function L3_1(A0_2, A1_2)
  A0_2._auto_show_tutorial_guide = A1_2
end
L0_1.set_battle_tutorial_guide_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._running_tutorial_id
  if L2_2 == 0 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.trigger_custom_string
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1.trigger_tutorial_custom_string = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetMainWorld
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.EntityManagerRef
  A0_2._entity_manager = L4_2
  A0_2._is_in_battle = false
  A0_2._auto_show_tutorial_guide = nil
  L5_2 = A0_2
  L4_2 = A0_2._start_tutorial
  L4_2(L5_2)
end
L0_1._on_adventure_phase_entered = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._stop_level_graph
  L4_2 = false
  L2_2(L3_2, L4_2)
  A0_2._entity_manager = nil
end
L0_1._on_adventure_phase_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.BattleInstanceRef
  L3_2 = L3_2.GameWorldRef
  L4_2 = L3_2.EntityManagerRef
  A0_2._entity_manager = L4_2
  A0_2._is_in_battle = true
  L5_2 = A0_2
  L4_2 = A0_2._start_tutorial
  L4_2(L5_2)
end
L0_1._on_battle_phase_start = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._stop_level_graph
  L4_2 = false
  L2_2(L3_2, L4_2)
  A0_2._entity_manager = nil
  A0_2._auto_show_tutorial_guide = nil
end
L0_1._on_battle_phase_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._stop_level_graph
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._start_tutorial
    L2_2(L3_2)
  end
end
L0_1._on_story_mode_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._entity_manager
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._start_tutorial
    L1_2(L2_2)
  end
end
L0_1._on_tutorial_level_graph_start = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._entity_manager
  if L2_2 ~= nil then
    L2_2 = A0_2._running_tutorial_id
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._stop_level_graph
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_tutorial_level_graph_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= "FullScreenToast" then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_tutorial_level_graph_start
  L2_2(L3_2)
end
L0_1._on_toast_queue_empty = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = L2_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L2_1[L5_2]
    if L6_2 == A1_2 then
      L6_2 = false
      return L6_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._need_check_toast_when_start_tutorial = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.PendingSwitchScene
    if L2_2 then
      return
    end
  end
  L2_2 = A0_2._running_entity
  if L2_2 ~= nil then
    L2_2 = A0_2._running_tutorial_can_interrupt
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogFormatWithTag
      L3_2 = G
      L3_2 = L3_2.LogTag
      L3_2 = L3_2.Tutorial
      L4_2 = "\229\176\157\232\175\149\229\144\175\229\138\168\229\188\186\229\136\182\229\188\149\229\175\188\229\164\177\232\180\165\239\188\154\230\173\163\229\156\168\230\137\167\232\161\140\229\133\182\228\187\150\229\188\149\229\175\188"
      L2_2(L3_2, L4_2)
      return
    end
  end
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_current_unlock_tutorials
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._select_current_tutorial
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.id
    L5_2 = A0_2._running_tutorial_id
    if L4_2 ~= L5_2 then
      goto lbl_52
    end
  end
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.Tutorial
  L6_2 = "\229\176\157\232\175\149\229\144\175\229\138\168\229\188\186\229\136\182\229\188\149\229\175\188\229\164\177\232\180\165\239\188\154\230\151\160\229\143\175\229\144\175\229\138\168\229\188\186\229\136\182\229\188\149\229\175\188"
  L4_2(L5_2, L6_2)
  do return end
  ::lbl_52::
  L5_2 = A0_2
  L4_2 = A0_2._need_check_toast_when_start_tutorial
  L6_2 = L3_2.id
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = G
    L5_2 = L5_2.ToastModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.tutorial_check_has_toast_in_queue
    L7_2 = "FullScreenToast"
    L9_2 = L3_2
    L8_2 = L3_2.has_uicontext_trigger
    L8_2, L9_2 = L8_2(L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if L5_2 then
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogFormatWithTag
      L6_2 = G
      L6_2 = L6_2.LogTag
      L6_2 = L6_2.Tutorial
      L7_2 = "\229\176\157\232\175\149\229\144\175\229\138\168\229\188\186\229\136\182\229\188\149\229\175\188\229\164\177\232\180\165: Toast\233\152\159\229\136\151\229\173\152\229\156\168\229\133\168\229\177\143\229\188\185\231\170\151"
      L5_2(L6_2, L7_2)
      return
    end
  end
  L5_2 = A0_2._running_entity
  if L5_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogFormatWithTag
    L6_2 = G
    L6_2 = L6_2.LogTag
    L6_2 = L6_2.Tutorial
    L7_2 = "\228\184\173\230\150\173\229\189\147\229\137\141\229\188\186\229\136\182\229\188\149\229\175\188"
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._stop_level_graph
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._do_start_tutorial
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L0_1._start_tutorial = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.Tutorial
  L4_2 = "\229\144\175\229\138\168\229\188\186\229\136\182\229\188\149\229\175\188\239\188\154%d"
  L5_2 = A1_2.id
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2
  L2_2 = A1_2.get_row
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_running_tutorial
  L5_2 = A1_2.id
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.CanInterrupt
  A0_2._running_tutorial_can_interrupt = L3_2
  L3_2 = A0_2._entity_manager
  L4_2 = L3_2
  L3_2 = L3_2.CreateTutorialGraphEntity
  L5_2 = L2_2.TutorialJsonPath
  L6_2 = A1_2.id
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.LevelGraphComponent
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._running_entity = L3_2
  L6_2 = L4_2
  L5_2 = L4_2.StartLevelGraph
  L5_2(L6_2)
end
L0_1._do_start_tutorial = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = nil
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A0_3 == A1_3 then
      L2_3 = false
      return L2_3
    end
    L3_3 = A0_3
    L2_3 = A0_3.get_row
    L2_3 = L2_3(L3_3)
    L2_3 = L2_3.Priority
    L4_3 = A1_3
    L3_3 = A1_3.get_row
    L3_3 = L3_3(L4_3)
    L3_3 = L3_3.Priority
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 > L3_3
      return L4_3
    end
    L4_3 = A0_2._running_tutorial_id
    if L4_3 ~= 0 then
      L4_3 = A0_3.id
      L5_3 = A0_2._running_tutorial_id
      if L4_3 ~= L5_3 then
        L4_3 = A1_3.id
        L5_3 = A0_2._running_tutorial_id
        if L4_3 ~= L5_3 then
          goto lbl_36
        end
      end
      L4_3 = A0_3.id
      L5_3 = A0_2._running_tutorial_id
      L4_3 = L4_3 ~= L5_3
      return L4_3
    end
    ::lbl_36::
    L4_3 = false
    return L4_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._is_in_battle
    L10_2 = L7_2
    L9_2 = L7_2.has_battle_trigger
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      L2_2 = L7_2
      break
    end
  end
  return L2_2
end
L0_1._select_current_tutorial = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._running_entity
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.Tutorial
    L4_2 = "\229\133\179\233\151\173\229\188\186\229\136\182\229\188\149\229\175\188\239\188\154%d"
    L5_2 = A0_2._running_tutorial_id
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._running_tutorial_can_interrupt
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.TutorialSave
      L4_2 = A0_2._running_tutorial_id
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._entity_manager
    L2_2 = L2_2.OwnerWorldRef
    L3_2 = L2_2
    L2_2 = L2_2.MakeEntityDie
    L4_2 = A0_2._running_entity
    L2_2(L3_2, L4_2)
    A0_2._running_entity = nil
    A0_2._running_tutorial_can_interrupt = false
    L3_2 = A0_2
    L2_2 = A0_2._set_running_tutorial
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIShowTutorialDialog
    L4_2 = nil
    L2_2(L3_2, L4_2)
    if A1_2 then
      L3_2 = A0_2
      L2_2 = A0_2._start_tutorial
      L2_2(L3_2)
    end
  end
end
L0_1._stop_level_graph = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.ToastModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.pasue_toast
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_lock_toast = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NG_HSOD_DEBUG
  if not L2_2 then
    L2_2 = NG_HSOD_PROFILE
    if not L2_2 then
      goto lbl_31
    end
  end
  L2_2 = A0_2._running_entity
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.Tutorial
    L4_2 = "\228\184\173\230\150\173\229\189\147\229\137\141\229\188\186\229\136\182\229\188\149\229\175\188"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._stop_level_graph
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.Instance
  L2_2 = L2_2.all_tutorial_datas
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._do_start_tutorial
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  ::lbl_31::
end
L0_1._on_force_start_tutorial = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._auto_show_tutorial_guide
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.inqueue
  L3_2 = "FullScreenToast"
  L4_2 = 3
  L5_2 = "Ui.Tutorial.GuideDetailDialog"
  L6_2 = nil
  L7_2 = A0_2._auto_show_tutorial_guide
  L7_2 = L7_2.id
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._auto_show_tutorial_guide = nil
end
L0_1._on_show_battle_tutorial_guide = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._running_tutorial_id
  if A1_2 == L2_2 then
    return
  end
  A0_2._running_tutorial_id = A1_2
  if A1_2 ~= 0 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.TutorialSupportModule
    L2_2 = L2_2.IsTutorialDialogOpen
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_show
      L3_2 = "Ui.Tutorial.TutorialDialog"
      L2_2(L3_2)
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L2_2.RunningTutorialID = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L2_2 = L2_2.IsBlockTutorial
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.ToastModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.pasue_toast
    L4_2 = A0_2._running_tutorial_id
    L4_2 = L4_2 ~= 0
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_running_tutorial = L3_1
return L0_1
