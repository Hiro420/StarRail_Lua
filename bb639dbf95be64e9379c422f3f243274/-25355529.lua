local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomHUDPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueAdventureRoomHUDPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = "DiceMiniGame_ReadyPanelFadeIn"
L3_1 = "DiceMiniGame_ReadyPanelCount"
L4_1 = "DiceMiniGame_ReadyPanelStartFadeOut"
L5_1 = "DiceMiniGameHUDPage_Time_FadeIn"
L6_1 = "CommonAlphaFadeIn_15f"
L7_1 = "CommonAlphaFadeOut_15f"
L8_1 = {}
L8_1.CountDown = 1
L8_1.Switch = 2
L8_1.Running = 3
function L9_1(A0_2, A1_2, A2_2)
  A0_2.adventure_type = A1_2
  A0_2.param_groupid = A2_2
end
L0_1.init = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  A0_2._running_remain_time = 2
  L2_2 = A0_2
  L1_2 = A0_2._init_member
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomGameFinish
  L4_2 = L0_1._on_count_down_finished
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomTrotterUpdate
  L4_2 = L0_1._on_number_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = L0_1._on_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._prepare_time = 0
  A0_2._game_time = 0
  A0_2._start_time = 0
  A0_2._init_trotter = 0
  A0_2._time = 0
  A0_2._last_display_time = 0
  A0_2._is_in_count_down = false
  A0_2._finish = false
  L1_2 = L8_1.CountDown
  A0_2._phase = L1_2
end
L0_1._init_member = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._init_member
  L4_2(L5_2)
  A0_2.adventure_type = A1_2
  A0_2.param_groupid = A2_2
  A0_2.room_info = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.custom_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = A0_2.adventure_type
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.RogueAdventureGameplayType
  L6_2 = L6_2.RogueCaptureMonster
  if L5_2 == L6_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.RogueCaptureMonsterConfigExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2.param_groupid
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
    L5_2 = L4_2.PrepareTime
    A0_2._prepare_time = L5_2
    L5_2 = L4_2.MonsterNum
    A0_2._init_trotter = L5_2
    L5_2 = L4_2.GameTime
    A0_2._game_time = L5_2
  else
    L5_2 = A0_2.adventure_type
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.RogueAdventureGameplayType
    L6_2 = L6_2.RogueDestroyProp
    if L5_2 == L6_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.RogueDestroyPropConfigExcelTable
      L5_2 = L5_2.GetData
      L6_2 = A0_2.param_groupid
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
      L5_2 = L4_2.PrepareTime
      A0_2._prepare_time = L5_2
      L5_2 = L4_2.GameTime
      A0_2._game_time = L5_2
    else
      L5_2 = A0_2.adventure_type
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.RogueAdventureGameplayType
      L6_2 = L6_2.RogueTurntable
      if L5_2 == L6_2 then
        A0_2._prepare_time = 3
        A0_2._game_time = 99999
        L6_2 = A0_2
        L5_2 = A0_2._bind_btn_callback
        L7_2 = A0_2._binder
        L7_2 = L7_2.btn_stop
        L8_2 = A0_2._on_stop_click
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.go_btn_stop_ban
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.btn_stop
        L5_2.interactable = false
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.GlobalVars
        L5_2 = L5_2.s_AudioManager
        L6_2 = L5_2
        L5_2 = L5_2.PostEvent
        L7_2 = "Ev_sfx_xianzhou_puzzlecompass_rogue_countdown_start"
        L5_2(L6_2, L7_2)
      end
    end
  end
  L5_2 = A0_2._game_time
  L6_2 = A0_2.room_info
  L6_2 = L6_2.TimeRatio
  L5_2 = L5_2 * L6_2
  A0_2._game_time = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_RogueDLC_Adventure_DestroyProp_Prepare"
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A0_2._prepare_time
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.go_ready
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.go_timer
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.canvas_timer
  L5_2.alpha = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.canvas_timer_text_panel
  L5_2.alpha = 0
  L5_2 = A0_2._binder
  L5_2 = L5_2.canvas_timer_bg
  L5_2.alpha = 0
  L5_2 = A0_2._binder
  L5_2 = L5_2.go_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.room_info
  L5_2 = L5_2.Status
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.RogueClientAdventureRoomStatus
  L6_2 = L6_2.None
  if L5_2 ~= L6_2 then
    L5_2 = A0_2.room_info
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.RogueClientAdventureRoomStatus
    L6_2 = L6_2.Prepare
    if L5_2 ~= L6_2 then
      goto lbl_154
    end
  end
  L5_2 = L8_1.CountDown
  A0_2._phase = L5_2
  L5_2 = A0_2._prepare_time
  A0_2._last_display_time = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._play_animation
  L7_2 = A0_2._binder
  L7_2 = L7_2.animation_top
  L8_2 = L2_1
  L5_2(L6_2, L7_2, L8_2)
  goto lbl_166
  ::lbl_154::
  L5_2 = A0_2.room_info
  L5_2 = L5_2.Status
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.RogueClientAdventureRoomStatus
  L6_2 = L6_2.Started
  if L5_2 == L6_2 then
  else
    L6_2 = A0_2
    L5_2 = A0_2._on_count_down_finished
    L5_2(L6_2)
  end
  ::lbl_166::
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Time
  L5_2 = L5_2.time
  A0_2._start_time = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._add_tick
  L5_2(L6_2)
end
L0_1.setup_view = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._is_pause
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._finish
  if L2_2 then
    return
  end
  L2_2 = A0_2._time
  L2_2 = L2_2 + A1_2
  A0_2._time = L2_2
  L2_2 = A0_2._phase
  L3_2 = L8_1.CountDown
  if L2_2 == L3_2 then
    L2_2 = A0_2._prepare_time
    L3_2 = A0_2._time
    L2_2 = L2_2 - L3_2
    L3_2 = 1
    L4_2 = A0_2._time
    if L4_2 == 0 then
      L3_2 = 0
    end
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = L2_2 + L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 <= 1 then
      L4_2 = 1
    end
    L5_2 = A0_2._last_display_time
    if L5_2 ~= L4_2 then
      A0_2._last_display_time = L4_2
      L6_2 = A0_2
      L5_2 = A0_2._play_animation
      L7_2 = A0_2._binder
      L7_2 = L7_2.animation_top
      L8_2 = L3_1
      L5_2(L6_2, L7_2, L8_2)
      if L4_2 == 1 then
        L5_2 = L8_1.Switch
        A0_2._phase = L5_2
        L5_2 = A0_2._binder
        L5_2 = L5_2.animation_event_top
        L6_2 = L5_2
        L5_2 = L5_2.AddAnimationEvent
        L7_2 = L4_1
        function L8_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          A0_2._time = 0
          L0_3 = A0_2._game_time
          L1_3 = A0_2._time
          L0_3 = L0_3 - L1_3
          L1_3 = math
          L1_3 = L1_3.floor
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if L1_3 < 0 then
            L1_3 = 0
          end
          L2_3 = A0_2.adventure_type
          L3_3 = CS
          L3_3 = L3_3.RPG
          L3_3 = L3_3.GameCore
          L3_3 = L3_3.RogueAdventureGameplayType
          L3_3 = L3_3.RogueTurntable
          if L2_3 ~= L3_3 then
            L2_3 = A0_2._binder
            L2_3 = L2_3.go_timer
            L3_3 = L2_3
            L2_3 = L2_3.SafeSetActive
            L4_3 = true
            L2_3(L3_3, L4_3)
          else
            L2_3 = A0_2._binder
            L2_3 = L2_3.go_btn_stop_ban
            L3_3 = L2_3
            L2_3 = L2_3.SafeSetActive
            L4_3 = false
            L2_3(L3_3, L4_3)
            L2_3 = A0_2._binder
            L2_3 = L2_3.btn_stop
            L2_3.interactable = true
            L2_3 = CS
            L2_3 = L2_3.RPG
            L2_3 = L2_3.Client
            L2_3 = L2_3.GlobalVars
            L2_3 = L2_3.s_AudioManager
            L3_3 = L2_3
            L2_3 = L2_3.PostEvent
            L4_3 = "Ev_sfx_xianzhou_puzzlecompass_rogue_countdown_end"
            L2_3(L3_3, L4_3)
          end
          L2_3 = A0_2._binder
          L2_3 = L2_3.remain_timer
          L3_3 = L2_3
          L2_3 = L2_3.SetRemainTimeInSeconds
          L4_3 = L1_3
          L5_3 = 2
          L6_3 = CS
          L6_3 = L6_3.RPG
          L6_3 = L6_3.Client
          L6_3 = L6_3.MonoRemainTimer
          L6_3 = L6_3.TimeMode
          L6_3 = L6_3.ShowMinutes
          L2_3(L3_3, L4_3, L5_3, L6_3)
          L2_3 = A0_2._binder
          L2_3 = L2_3.text_timer_title
          L3_3 = L2_3
          L2_3 = L2_3.SafeSetTextID
          L4_3 = "UIText_RogueDLC_Adventure_DestroyProp_Countdown"
          L2_3(L3_3, L4_3)
          L2_3 = L8_1.Running
          A0_2._phase = L2_3
        end
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.animation_event_top
        L6_2 = L5_2
        L5_2 = L5_2.AddAnimationEvent
        L7_2 = L3_1
        function L8_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._play_animation
          L2_3 = A0_2._binder
          L2_3 = L2_3.animation_top
          L3_3 = L4_1
          L0_3(L1_3, L2_3, L3_3)
        end
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  else
    L2_2 = A0_2._phase
    L3_2 = L8_1.Switch
    if L2_2 == L3_2 then
    else
      L2_2 = A0_2._phase
      L3_2 = L8_1.Running
      if L2_2 == L3_2 then
        L2_2 = A0_2._game_time
        L3_2 = A0_2._time
        L2_2 = L2_2 - L3_2
        L3_2 = math
        L3_2 = L3_2.floor
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if L3_2 < 0 then
          L3_2 = 0
          L5_2 = A0_2
          L4_2 = A0_2._remove_tick
          L4_2(L5_2)
          L5_2 = A0_2
          L4_2 = A0_2._play_animation
          L6_2 = A0_2._binder
          L6_2 = L6_2.animation_timer
          L7_2 = L7_1
          L4_2(L5_2, L6_2, L7_2)
          L4_2 = G
          L4_2 = L4_2.NotifyManager
          L4_2 = L4_2.notify
          L5_2 = G
          L5_2 = L5_2.CS
          L5_2 = L5_2.NotifyType
          L5_2 = L5_2.RogueAdventureRoomSettleStart
          L4_2(L5_2)
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.Client
          L4_2 = L4_2.GlobalVars
          L4_2 = L4_2.s_NetworkManager
          L5_2 = L4_2
          L4_2 = L4_2.IAMAABLBDCN
          L4_2(L5_2)
        end
        L4_2 = A0_2._binder
        L4_2 = L4_2.remain_timer
        L5_2 = L4_2
        L4_2 = L4_2.SetRemainTimeInSeconds
        L6_2 = L3_2
        L7_2 = 2
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.MonoRemainTimer
        L8_2 = L8_2.TimeMode
        L8_2 = L8_2.ShowMinutes
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
    end
  end
end
L0_1._on_tick = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_num_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_number_update = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.custom_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._finish = true
end
L0_1._on_count_down_finished = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._last_display_time
    L2_2(L3_2, L4_2)
  else
    L2_2 = L4_1
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueDLC_Adventure_DestroyProp_Start"
      L2_2(L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.RogueAdventureRoomReadyFinish
      L2_2(L3_2)
    end
  end
end
L0_1._on_animation_event = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.Stop
  L3_2(L4_2)
  L4_2 = A1_2
  L3_2 = A1_2.Play
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._play_animation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.IsLockBy
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.UI
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2
end
L0_1._is_pause = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._phase
  L2_2 = L8_1.Running
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.RogueCompassStopRing
    L1_2(L2_2)
  end
end
L0_1._on_stop_click = L9_1
return L0_1
