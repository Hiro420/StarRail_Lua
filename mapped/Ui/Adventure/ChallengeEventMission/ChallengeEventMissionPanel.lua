local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Adventure.ChallengeEventMission.ChallengeEventMissionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeEventMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = "MissionTimeLimitRed"
L3_1 = "MissionTimeLimitRtoW"
L4_1 = "UIText_ChallengeEvent_GiveUp"
L5_1 = "UIText_MazePuzzle_Reset"
L6_1 = 3
L7_1 = "SpriteOutput/labyrinthPlay/PlayIcon.png"
L8_1 = "Menu_MazeInterruptLimitMission"
L9_1 = "Menu_PuzzleChallenge"
function L10_1(A0_2)
  local L1_2
end
L0_1.ctor = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenEventMission
  L4_2 = L0_1._on_show_challenge_event_mission_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeEventPrepareOver
  L4_2 = A0_2._setup_challenge_event_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UpdateChallengeEventMission
  L4_2 = L0_1._event_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.InterruptEventMission
  L4_2 = L0_1._event_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishEventMission
  L4_2 = L0_1._event_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenMazePuzzleChallenge
  L4_2 = L0_1._on_show_puzzle_challenge_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.WaitPrepareEndMazePuzzleChallenge
  L4_2 = L0_1._setup_puzzle_challenge_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnPuzzleChallengeStartToastEnd
  L4_2 = L0_1._play_fade_out_anim
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UpdateMazePuzzleChallenge
  L4_2 = L0_1._puzzle_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishMazePuzzleChallenge
  L4_2 = L0_1._puzzle_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FailMazePuzzleChallenge
  L4_2 = L0_1._puzzle_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CancelMazePuzzleChallenge
  L4_2 = L0_1._puzzle_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TrackingMissionChanged
  L4_2 = L0_1._on_tracking_mission_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_func
  L4_2 = A0_2._on_btn_challenge_event_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_puzzle_func
  L4_2 = A0_2._on_btn_puzzle_challenge_click
  L1_2(L2_2, L3_2, L4_2)
  A0_2.is_active = false
  A0_2.allow_stop = false
  A0_2.allow_reset = false
  A0_2._is_finish = false
  A0_2._lock_counter = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "MissionList_Fadeout"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_set_mission_component_hide = false
end
L0_1._on_load = L10_1
function L10_1(A0_2, A1_2, A2_2)
  A0_2._callback_listener = A1_2
  A0_2._set_mission_component_hide_callback = A2_2
end
L0_1.register_show_mission_component_callback = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetEventMissionData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._challenge_event_data = L2_2
  L2_2 = A0_2._challenge_event_data
  if L2_2 ~= nil then
    L2_2 = A0_2._challenge_event_data
    L2_2 = L2_2.Row
    if L2_2 ~= nil then
      L2_2 = A0_2._challenge_event_data
      L2_2 = L2_2.Row
      L2_2 = L2_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.EventMissionType
      L3_2 = L3_2.Challenge
      if L2_2 == L3_2 then
        goto lbl_30
      end
    end
  end
  A0_2._challenge_event_data = nil
  do return end
  ::lbl_30::
  L2_2 = A0_2.is_active
  if L2_2 == true then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EventMissionChallengeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.IsBeginPrepare
  if L2_2 == true then
    L4_2 = A0_2
    L3_2 = A0_2._set_control_lock
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.ChallengeEventPrepare
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_challenge_event_panel
    L3_2(L4_2)
  end
end
L0_1._on_show_challenge_event_mission_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._set_mission_component_hide_callback
  L2_2 = A0_2._callback_listener
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_set_mission_component_hide = true
  L1_2 = {}
  L2_2 = A0_2._challenge_event_data
  L1_2.Data = L2_2
  L1_2.IsPuzzle = false
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeEventStart
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_event_challenge_view
  L2_2(L3_2)
end
L0_1._setup_challenge_event_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_finish = false
  A0_2.is_active = true
  A0_2._last_time = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EventMissionChallengeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._challenge_event_data
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsCancellable
  A0_2.allow_stop = L2_2
  L2_2 = L1_2.IsResetable
  A0_2.allow_reset = L2_2
  L2_2 = L1_2.LimitTime
  A0_2._total_time = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_event_instance
  L2_2 = L2_2(L3_2)
  A0_2._challenge_instance = L2_2
  L2_2 = A0_2._challenge_instance
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._clear_event_challenge_data
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._event_over
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._total_time
  if L2_2 ~= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._add_tick
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_component_active
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_text
  L4_2 = challengEventData
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress_num1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_current_progress1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = tostring
  L5_2 = A0_2._challenge_event_data
  L5_2 = L5_2.CurrentProgress
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_total_progress1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = tostring
  L5_2 = A0_2._challenge_event_data
  L5_2 = L5_2.TotalProgress
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_event_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._challenge_event_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.Title
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_event_desc1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._challenge_event_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.Desc
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_control_lock
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_event_challenge_view = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._lock_counter
    L2_2 = L2_2 + 1
    A0_2._lock_counter = L2_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.GamePlayLockModule
    L3_2 = L2_2
    L2_2 = L2_2.Lock
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.LockSource
    L4_2 = L4_2.TaskLockPlayerControl
    L2_2(L3_2, L4_2)
  elseif not A1_2 then
    L2_2 = A0_2._lock_counter
    if 0 < L2_2 then
      L2_2 = A0_2._lock_counter
      L2_2 = L2_2 - 1
      A0_2._lock_counter = L2_2
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.GamePlayLockModule
      L3_2 = L2_2
      L2_2 = L2_2.Unlock
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.LockSource
      L4_2 = L4_2.TaskLockPlayerControl
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._set_control_lock = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePuzzleChallengeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._puzzle_challenge_data = L2_2
  L2_2 = A0_2._puzzle_challenge_data
  L2_2 = L2_2.SpecialModeID
  if L2_2 ~= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._clear_puzzle_challenge_data
    L2_2(L3_2)
  end
  L2_2 = A0_2._puzzle_challenge_data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2.is_active
  if L2_2 == true then
    return
  end
  L2_2 = A0_2._puzzle_challenge_data
  L2_2 = L2_2.IsBeginPrepare
  if L2_2 ~= 0 then
    L4_2 = A0_2
    L3_2 = A0_2._set_control_lock
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.WaitPrepareStartMazePuzzleChallenge
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_puzzle_challenge_panel
    L3_2(L4_2)
  end
end
L0_1._on_show_puzzle_challenge_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._puzzle_challenge_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_puzzle_instance
  L1_2 = L1_2(L2_2)
  A0_2._challenge_instance = L1_2
  L1_2 = A0_2._challenge_instance
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._clear_puzzle_challenge_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._event_over
    L1_2(L2_2)
    return
  end
  A0_2._last_time = 0
  L1_2 = A0_2._puzzle_challenge_data
  L1_2 = L1_2.LimitTime
  A0_2._total_time = L1_2
  L1_2 = A0_2._total_time
  if L1_2 ~= 0 then
    L2_2 = A0_2
    L1_2 = A0_2._add_tick
    L1_2(L2_2)
  end
  L1_2 = A0_2._puzzle_challenge_data
  L1_2 = L1_2.IsTopPriority
  if L1_2 == false then
    L1_2 = L1_1.TrackingMissionID
    if L1_2 ~= 0 then
      return
    end
  end
  L1_2 = A0_2._set_mission_component_hide_callback
  L2_2 = A0_2._callback_listener
  L3_2 = true
  L4_2 = A0_2._puzzle_challenge_data
  L4_2 = L4_2.IsShowWaypoint
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_set_mission_component_hide = true
  L2_2 = A0_2
  L1_2 = A0_2._set_control_lock
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._puzzle_challenge_data
  L1_2 = L1_2.IsShowToast
  if L1_2 then
    L1_2 = {}
    L2_2 = A0_2._puzzle_challenge_data
    L1_2.Data = L2_2
    L1_2.IsPuzzle = true
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.ChallengeEventStart
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._play_fade_out_anim
    L1_2(L2_2)
  end
end
L0_1._setup_puzzle_challenge_panel = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._puzzle_challenge_data
  if L1_2 == nil then
    L1_2 = A0_2.is_active
    if not L1_2 then
      goto lbl_21
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "MissionList_Fadeout"
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_fade_out_anim_end
    L1_2(L2_2)
  end
  ::lbl_21::
end
L0_1._play_fade_out_anim = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._puzzle_challenge_data
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._close_puzzle
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.OnPuzzleFinishPlayMissionFadeIn
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_puzzle_view
  L1_2(L2_2)
end
L0_1._on_fade_out_anim_end = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._puzzle_challenge_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._puzzle_challenge_data
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "MissionList_Hint"
  L2_2(L3_2, L4_2)
  A0_2._is_finish = false
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L7_1
  L2_2(L3_2, L4_2, L5_2)
  A0_2.is_active = true
  L2_2 = L1_2.IsResetable
  L2_2 = L2_2 == 2
  A0_2.allow_stop = L2_2
  L2_2 = L1_2.IsResetable
  L2_2 = L2_2 == 1
  A0_2.allow_reset = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._set_component_active
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = L6_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L7_2 = "node_progress"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = A0_2._challenge_instance
    L8_2 = L8_2.FinParamCnt
    L8_2 = L8_2.Count
    L8_2 = L5_2 <= L8_2
    L6_2(L7_2, L8_2)
  end
  A0_2._max_progress = 0
  L2_2 = A0_2._challenge_instance
  L2_2 = L2_2.FinParamCnt
  L2_2 = L2_2.Count
  L3_2 = L6_1
  if L2_2 > L3_2 then
    L2_2 = L6_1
    A0_2._max_progress = L2_2
  else
    L2_2 = A0_2._challenge_instance
    L2_2 = L2_2.FinParamCnt
    L2_2 = L2_2.Count
    A0_2._max_progress = L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePuzzleNormalUIInfoExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._puzzle_challenge_data
  L3_2 = L3_2.NormalModeID
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = A0_2._max_progress
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._challenge_instance
    L7_2 = L7_2.FinParamTotal
    L8_2 = L6_2 - 1
    L7_2 = L7_2[L8_2]
    if L7_2 ~= 0 then
      L7_2 = A0_2._binder
      L8_2 = "txt_current_progress"
      L9_2 = L6_2
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetText
      L9_2 = tostring
      L10_2 = A0_2._challenge_instance
      L10_2 = L10_2.FinParamCnt
      L11_2 = L6_2 - 1
      L10_2 = L10_2[L11_2]
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = A0_2._binder
      L8_2 = "txt_total_progress"
      L9_2 = L6_2
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetText
      L9_2 = tostring
      L10_2 = A0_2._challenge_instance
      L10_2 = L10_2.FinParamTotal
      L11_2 = L6_2 - 1
      L10_2 = L10_2[L11_2]
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
    L7_2 = A0_2._binder
    L8_2 = "node_progress_num"
    L9_2 = L6_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = A0_2._challenge_instance
    L9_2 = L9_2.FinParamTotal
    L10_2 = L6_2 - 1
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2 ~= 0
    L7_2(L8_2, L9_2)
    if L6_2 == 1 then
      L7_2 = A0_2._binder
      L8_2 = "txt_event_desc"
      L9_2 = L6_2
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L2_2.Desc01
      L7_2(L8_2, L9_2)
    elseif L6_2 == 2 then
      L7_2 = A0_2._binder
      L8_2 = "txt_event_desc"
      L9_2 = L6_2
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L2_2.Desc02
      L7_2(L8_2, L9_2)
    elseif L6_2 == 3 then
      L7_2 = A0_2._binder
      L8_2 = "txt_event_desc"
      L9_2 = L6_2
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L2_2.Desc03
      L7_2(L8_2, L9_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_btn_text
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_event_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Title
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_control_lock
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._setup_puzzle_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.allow_stop
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_func
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_puzzle_func
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.allow_reset
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_btn_func
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L5_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_btn_puzzle_func
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L5_1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_btn_text = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.EventMissionSystem
  L2_2 = L2_2.CurrentEventDictionary
  L4_2 = L2_2
  L3_2 = L2_2.ContainsKey
  L5_2 = A0_2._challenge_event_data
  L5_2 = L5_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == false then
    L3_2 = nil
    return L3_2
  end
  L3_2 = A0_2._challenge_event_data
  L3_2 = L3_2.ID
  L3_2 = L2_2[L3_2]
  return L3_2
end
L0_1._get_event_instance = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.MazeChallengeSystem
  L2_2 = L2_2.CurrentEventDictionary
  L4_2 = L2_2
  L3_2 = L2_2.ContainsKey
  L5_2 = A0_2._puzzle_challenge_data
  L5_2 = L5_2.MazePuzzleID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == false then
    L3_2 = nil
    return L3_2
  end
  L3_2 = A0_2._puzzle_challenge_data
  L3_2 = L3_2.MazePuzzleID
  L3_2 = L2_2[L3_2]
  return L3_2
end
L0_1._get_puzzle_instance = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._total_time
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_btn_active
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress3
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._set_component_active = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_func
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_puzzle_func
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.allow_stop
  if not L3_2 then
    L3_2 = A0_2.allow_reset
  end
  L1_2(L2_2, L3_2)
end
L0_1._set_btn_active = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._challenge_instance
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._challenge_instance
  L3_2 = L2_2
  L2_2 = L2_2.GetTimeRemaining
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_time
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_tick = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 <= 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_timer
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = "00:00"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._last_time
  if A1_2 > L2_2 and 10 < A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._play_time_up_hint_anim
    L4_2 = false
    L2_2(L3_2, L4_2)
  elseif A1_2 <= 10 then
    L3_2 = A0_2
    L2_2 = A0_2._play_time_up_hint_anim
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  A0_2._last_time = A1_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2 / 60
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.ceil
  L4_2 = A1_2 % 60
  L3_2 = L3_2(L4_2)
  if L3_2 == 60 then
    L2_2 = L2_2 + 1
    L3_2 = 0
  end
  L4_2 = nil
  L5_2 = nil
  if L2_2 < 10 then
    L6_2 = "0"
    L7_2 = tostring
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L4_2 = L6_2 .. L7_2
  else
    L6_2 = tostring
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
  end
  if L3_2 < 10 then
    L6_2 = "0"
    L7_2 = tostring
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L5_2 = L6_2 .. L7_2
  else
    L6_2 = tostring
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = L4_2
  L7_2 = ":"
  L8_2 = L5_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.txt_timer
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L0_1._setup_time = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_timer
    L3_2 = L2_2
    L2_2 = L2_2.IsPlaying
    L4_2 = L2_1
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.PlayFromBegin
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_timer
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_timer
    L3_2 = L2_2
    L2_2 = L2_2.IsPlaying
    L4_2 = L2_1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_timer
      L3_2 = L2_2
      L2_2 = L2_2.Stop
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
    end
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_timer
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._play_time_up_hint_anim = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._puzzle_challenge_data
  if L1_2 ~= nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_click
  L1_2(L2_2)
end
L0_1._on_btn_challenge_event_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_click
  L1_2(L2_2)
end
L0_1._on_btn_puzzle_challenge_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.allow_stop
  if not L1_2 then
    L1_2 = A0_2.allow_reset
    if not L1_2 then
      return
    end
  end
  L1_2 = A0_2.is_active
  if L1_2 == false then
    return
  end
  L1_2 = nil
  L2_2 = A0_2.allow_reset
  if L2_2 then
    L1_2 = "UIText_MazePuzzle_Dialogue_ResetConfirm"
  else
    L2_2 = A0_2.allow_stop
    if L2_2 then
      L1_2 = "UIText_ChallengeEvent_Dialog_GiveUpCurrentEvent"
    end
  end
  L2_2 = nil
  L3_2 = A0_2._challenge_event_data
  if L3_2 ~= nil then
    L3_2 = A0_2._challenge_event_data
    L2_2 = L3_2.ID
  else
    L3_2 = A0_2._puzzle_challenge_data
    if L3_2 ~= nil then
      L3_2 = A0_2._puzzle_challenge_data
      L2_2 = L3_2.MazePuzzleID
    end
  end
  if L2_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ConfirmDialogUtil
  L3_2 = L3_2.ShowConfirmDialog
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2.allow_reset
      if L1_3 then
        L1_3 = G
        L1_3 = L1_3.NotifyManager
        L1_3 = L1_3.notify
        L2_3 = G
        L2_3 = L2_3.CS
        L2_3 = L2_3.NotifyType
        L2_3 = L2_3.ChallengeMissionResetPuzzle
        L3_3 = L2_2
        L1_3(L2_3, L3_3)
      else
        L1_3 = A0_2.allow_stop
        if L1_3 then
          L1_3 = A0_2._challenge_event_data
          if L1_3 ~= nil then
            L1_3 = CS
            L1_3 = L1_3.RPG
            L1_3 = L1_3.Client
            L1_3 = L1_3.GlobalVars
            L1_3 = L1_3.s_ModuleManager
            L1_3 = L1_3.MissionModule
            L2_3 = L1_3
            L1_3 = L1_3.SendInterruptMissionEvent
            L3_3 = L2_2
            L1_3(L2_3, L3_3)
          else
            L1_3 = A0_2._puzzle_challenge_data
            if L1_3 ~= nil then
              L1_3 = G
              L1_3 = L1_3.NotifyManager
              L1_3 = L1_3.notify
              L2_3 = G
              L2_3 = L2_3.CS
              L2_3 = L2_3.NotifyType
              L2_3 = L2_3.CancelMazePuzzleChallenge
              L3_3 = L2_2
              L1_3(L2_3, L3_3)
            end
          end
        end
      end
    end
  end
  L3_2 = L3_2(L4_2)
  L4_2 = DialogBtnMode
  L4_2 = L4_2.eOkCancel
  L3_2.Mode = L4_2
  L5_2 = L3_2
  L4_2 = L3_2.GetComponentContent
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  return
end
L0_1._on_btn_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_event_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._set_mission_component_hide_callback
  L2_2 = A0_2._callback_listener
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_set_mission_component_hide = true
  L1_2 = A0_2._challenge_event_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SubMissionState
  L2_2 = L2_2.Started
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_current_progress1
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = tostring
    L4_2 = A0_2._challenge_event_data
    L4_2 = L4_2.CurrentProgress
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._set_component_active
    L1_2(L2_2)
  else
    L1_2 = A0_2._challenge_event_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.SubMissionState
    L2_2 = L2_2.Finish
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._clear_event_challenge_data
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._event_success
      L3_2 = true
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = G
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.LogErrorFormat
      L2_2 = "\233\148\153\232\175\175! \230\140\145\230\136\152EventMission\229\143\170\232\131\189\230\156\137Start\229\146\140Finish\228\184\164\231\167\141\231\138\182\230\128\129!"
      L1_2(L2_2)
    end
  end
end
L0_1._event_update = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._puzzle_challenge_data
  if L1_2 ~= nil then
    L1_2 = A0_2._challenge_instance
    if L1_2 ~= nil then
      L1_2 = A0_2.is_active
      if L1_2 ~= false then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = 1
  L2_2 = A0_2._max_progress
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._challenge_instance
    L5_2 = L5_2.FinParamTotal
    L6_2 = L4_2 - 1
    L5_2 = L5_2[L6_2]
    if L5_2 ~= 0 then
      L5_2 = A0_2._binder
      L6_2 = "txt_current_progress"
      L7_2 = L4_2
      L6_2 = L6_2 .. L7_2
      L5_2 = L5_2[L6_2]
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetText
      L7_2 = tostring
      L8_2 = A0_2._challenge_instance
      L8_2 = L8_2.FinParamCnt
      L9_2 = L4_2 - 1
      L8_2 = L8_2[L9_2]
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L0_1._puzzle_update = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._challenge_event_data
  if L2_2 ~= nil then
    L2_2 = A0_2._challenge_event_data
    L2_2 = L2_2.Row
    L2_2 = L2_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.EventMissionType
    L3_2 = L3_2.Challenge
    if L2_2 == L3_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L2_2 = A0_2._challenge_event_data
  L2_2 = L2_2.ID
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._clear_event_challenge_data
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._event_success
    L4_2 = true
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._event_finish = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._puzzle_challenge_data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._puzzle_challenge_data
  L2_2 = L2_2.MazePuzzleID
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._clear_puzzle_challenge_data
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._event_success
    L4_2 = false
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._puzzle_finish = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.IsSuccess = false
  L1_2.IsPuzzle = false
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeEventFinish
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._clear_event_challenge_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._event_over
  L2_2(L3_2)
end
L0_1._event_fail = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._puzzle_challenge_data
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  L1_2.IsSuccess = false
  L1_2.IsPuzzle = true
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeEventFinish
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._clear_puzzle_challenge_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._event_over
  L2_2(L3_2)
end
L0_1._puzzle_fail = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_puzzle_challenge_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._event_over
  L1_2(L2_2)
end
L0_1._puzzle_cancel = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._is_finish
  if L3_2 then
    return
  end
  A0_2._is_finish = true
  if A1_2 then
    L3_2 = {}
    L3_2.IsSuccess = true
    L3_2.IsPuzzle = A2_2
    if A2_2 then
      L4_2 = A0_2._puzzle_challenge_data
      L3_2.Data = L4_2
    else
      L4_2 = A0_2._challenge_event_data
      L3_2.Data = L4_2
    end
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.ChallengeEventFinish
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._event_over
  L3_2(L4_2)
end
L0_1._event_success = L10_1
function L10_1(A0_2)
  local L1_2
  A0_2._challenge_event_data = nil
end
L0_1._clear_event_challenge_data = L10_1
function L10_1(A0_2)
  local L1_2
  A0_2._puzzle_challenge_data = nil
end
L0_1._clear_puzzle_challenge_data = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = "MissionList_Hint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_event_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_challenge_event_panel
    L1_2(L2_2)
  else
    L1_2 = A0_2._puzzle_challenge_data
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2._setup_puzzle_challenge_panel
      L1_2(L2_2)
    else
      L1_2 = A0_2.is_active
      if L1_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.GlobalVars
        L1_2 = L1_2.s_UIManager
        L1_2 = L1_2.PageStackCount
        if L1_2 == 2 then
          L2_2 = A0_2
          L1_2 = A0_2._play_fade_out_anim
          L1_2(L2_2)
      end
      else
        L2_2 = A0_2
        L1_2 = A0_2._close_puzzle
        L1_2(L2_2)
      end
    end
  end
  A0_2.is_active = false
  L2_2 = A0_2
  L1_2 = A0_2._set_control_lock
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._event_over = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_func
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_puzzle_func
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._close_challenge_ui = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._challenge_event_data
  if L2_2 == nil then
    L2_2 = A0_2._puzzle_challenge_data
    if L2_2 == nil then
      return
    end
  end
  L2_2 = A0_2._puzzle_challenge_data
  L2_2 = L2_2.IsTopPriority
  if L2_2 == false then
    L2_2 = L1_1.TrackingMissionID
    if L2_2 ~= 0 then
      return
    end
  end
  if A1_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2._stop_all_anim
    L2_2(L3_2)
    L2_2 = A0_2._puzzle_challenge_data
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._setup_puzzle_view
      L2_2(L3_2)
    end
  end
end
L0_1._on_owner_active_change = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = "MissionList_Hint"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = "MissionList_FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = "MissionList_Fadeout"
  L1_2(L2_2, L3_2)
end
L0_1._stop_all_anim = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._puzzle_challenge_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._puzzle_challenge_data
  L1_2 = L1_2.IsTopPriority
  if L1_2 == true then
    return
  end
  L1_2 = L1_1.TrackingMissionID
  if L1_2 ~= 0 then
    L2_2 = A0_2
    L1_2 = A0_2._close_puzzle
    L1_2(L2_2)
  else
    L1_2 = A0_2._set_mission_component_hide_callback
    L2_2 = A0_2._callback_listener
    L3_2 = true
    L1_2(L2_2, L3_2)
    A0_2._is_set_mission_component_hide = true
    L2_2 = A0_2
    L1_2 = A0_2._setup_puzzle_view
    L1_2(L2_2)
  end
end
L0_1._on_tracking_mission_change = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._close_challenge_ui
  L1_2(L2_2)
  L1_2 = A0_2._set_mission_component_hide_callback
  L2_2 = A0_2._callback_listener
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2.is_active = false
end
L0_1._close_puzzle = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.InterruptEventMission
  L4_2 = L0_1._event_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UpdateChallengeEventMission
  L4_2 = L0_1._event_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_func
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  A0_2._callback_listener = nil
  A0_2._set_mission_component_hide_callback = nil
  A0_2._is_finish = false
end
L0_1._on_dispose = L10_1
return L0_1
