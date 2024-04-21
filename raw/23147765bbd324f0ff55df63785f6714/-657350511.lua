local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.MazeToBattleTransitDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeToBattleTransitDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AbovePage
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeToBattleTransitDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2.animation_phase = 1
  A0_2.tick_timer_begin = 0
  A0_2._close_when_phase_changed = false
  A0_2.fade_mode = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameCoreConfigManager
  L2_2 = L2_2.MazeConfig
  L2_2 = L2_2.MazeBattleTransitionClient
  L2_2 = L2_2.MazeToBattleTransitFadeInDuration
  A0_2._fadein_duration = L2_2
  if A1_2 == 1 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GameCoreConfigManager
    L2_2 = L2_2.MazeConfig
    L2_2 = L2_2.MazeBattleTransitionClient
    L2_2 = L2_2.MazeToBattleTransitFadeInDurationStoryMode
    A0_2._fadein_duration = L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameCoreConfigManager
  L2_2 = L2_2.MazeConfig
  L2_2 = L2_2.MazeBattleTransitionClient
  L2_2 = L2_2.MazeToBattleTransitFadeOutDuration
  A0_2._fadeout_duration = L2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "WhiteTransIdle"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_trans
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2.tick_timer_begin = L1_2
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitFadeOutStart
  L4_2 = L0_1._OnFadeOutStart
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CloseMazeToBattleTransit
  L4_2 = L0_1._OnClose
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
      L3_2 = L3_2.MazeToBattleTransitFadeInEnd
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
      L3_2 = L3_2.MazeToBattleTransitFadeOutEnd
      L2_2(L3_2)
    end
  end
end
L0_1._on_tick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "WhiteTransOut"
  L2_2(L3_2, L4_2)
  A0_2.animation_phase = 3
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  A0_2.tick_timer_begin = L2_2
end
L0_1._OnFadeOutStart = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._OnClose = L1_1
return L0_1
