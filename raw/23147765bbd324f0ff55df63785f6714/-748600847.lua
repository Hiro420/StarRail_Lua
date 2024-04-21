local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.BattleToMazeTransitDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleToMazeTransitDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 10
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  A0_2._close_when_phase_changed = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleToMazeTransitDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BlockFixedTime
  L3_2 = L1_1
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._block_id = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.MazeConfig
  L1_2 = L1_2.MazeBattleTransitionClient
  L1_2 = L1_2.BattleToMazeTransitFadeInDuration
  A0_2._fadein_duration = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.MazeConfig
  L1_2 = L1_2.MazeBattleTransitionClient
  L1_2 = L1_2.BattleToMazeTransitFadeOutDuration
  A0_2._fadeout_duration = L1_2
  A0_2.animation_phase = 1
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2.tick_timer_begin = L1_2
  A0_2._close_when_phase_changed = false
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_native
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.SwitchToUILayer3
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "WhiteTransEntryV2"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Sample
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleToMazeTransitFadeOutStart
  L4_2 = L0_1._OnFadeOutStart
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CloseBattleToMazeTransit
  L4_2 = L0_1._OnClose
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleToMazeTransitSetAlpha
  L4_2 = L0_1._OnBattleToMazeTransitSetAlpha
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.animation_phase
  if L2_2 == 1 then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Time
    L2_2 = L2_2.time
    L3_2 = A0_2.tick_timer_begin
    L2_2 = L2_2 - L3_2
    L3_2 = A0_2._fadein_duration
    if L2_2 > L3_2 then
      A0_2.animation_phase = 2
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "WhiteTransIdle"
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.Notify
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.BattleToMazeTransitFadeInEnd
      L2_2(L3_2)
    end
  end
  L2_2 = A0_2.animation_phase
  if L2_2 == 3 then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Time
    L2_2 = L2_2.time
    L3_2 = A0_2.tick_timer_begin
    L2_2 = L2_2 - L3_2
    L3_2 = A0_2._fadeout_duration
    if L2_2 > L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.exit
      L2_2(L3_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.Notify
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.BattleToMazeTransitFadeOutEnd
      L2_2(L3_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_AudioManager
      L2_2 = L2_2.AudioConfig
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L4_2 = L3_2
      L3_2 = L3_2.PostEvent
      L5_2 = L2_2.ToneAudioEvents
      L5_2 = L5_2.BattleToneStopEvent
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "WhiteTransOutV2"
  L2_2(L3_2, L4_2)
  A0_2.animation_phase = 3
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  A0_2.tick_timer_begin = L2_2
end
L0_1._OnFadeOutStart = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L2_2 = L2_2.AudioConfig
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L4_2 = L3_2
  L3_2 = L3_2.PostEvent
  L5_2 = L2_2.ToneAudioEvents
  L5_2 = L5_2.BattleToneStopEvent
  L3_2(L4_2, L5_2)
end
L0_1._OnClose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "WhiteTransOutV2"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_bg
  L1_2 = L1_2.color
  L2_2 = alpha
  L1_2.a = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_bg
  L2_2.color = L1_2
end
L0_1._OnBattleToMazeTransitSetAlpha = L2_1
return L0_1
