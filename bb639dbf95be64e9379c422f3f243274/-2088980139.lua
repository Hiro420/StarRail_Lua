local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomHUDPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueAdventureRoomRayHUDPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "DiceMiniGame_ReadyPanelFadeIn"
L2_1 = "DiceMiniGame_ReadyPanelCount"
L3_1 = "DiceMiniGame_ReadyPanelStartFadeOut"
L4_1 = "CommonAlphaFadeIn_15f"
L5_1 = "CommonAlphaFadeOut_15f"
L6_1 = {}
L6_1.None = 0
L6_1.CountDown = 1
L6_1.Toast = 2
function L7_1(A0_2, A1_2, A2_2)
  A0_2.adventure_type = A1_2
  A0_2.param_groupid = A2_2
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._toast_remain_time = 2.5
  L1_2 = L6_1.None
  A0_2._phase = L1_2
  A0_2._time = 0
  A0_2._prepare_time = 0
  A0_2._last_display_time = 0
  A0_2._finish = false
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
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
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = L0_1._on_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomRayTurnStart
  L4_2 = L0_1._on_ray_turn_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomRayTurnHit
  L4_2 = L0_1._on_ray_turn_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.param_groupid = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueEscapeLaserConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.param_groupid
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PrepareTime
  A0_2._prepare_time = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.custom_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_RogueDLC_Adventure_DestroyProp_Prepare"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._prepare_time
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_ready
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_timer
  L3_2.alpha = 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_left
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_round
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_round
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_RogueNous_Adventure_Laser_Round"
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._add_tick
  L3_2(L4_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._finish
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._is_pause
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._time
  L2_2 = L2_2 + A1_2
  A0_2._time = L2_2
  L2_2 = A0_2._phase
  L3_2 = L6_1.CountDown
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
      L8_2 = L2_1
      L5_2(L6_2, L7_2, L8_2)
    end
  else
    L2_2 = A0_2._phase
    L3_2 = L6_1.Toast
    if L2_2 == L3_2 then
      L2_2 = A0_2._time
      L3_2 = A0_2._toast_remain_time
      if L2_2 > L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.go_toast
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = L6_1.None
        A0_2._phase = L2_2
      end
    end
  end
end
L0_1._on_tick = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._finish = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_round
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_count_down_finished = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L6_1.CountDown
  A0_2._phase = L2_2
  A0_2._time = 0
  A0_2._last_display_time = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.go_ready
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._prepare_time
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_round
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_RogueNous_Adventure_Laser_Round"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_ray_turn_start = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L6_1.Toast
  A0_2._phase = L2_2
  A0_2._time = 0
  A0_2._last_display_time = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.go_ready
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.go_toast
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.go_toast_success
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.go_toast_fail
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.go_toast
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.go_toast_success
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.go_toast_fail
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_ray_turn_end = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._last_display_time
    L2_2(L3_2, L4_2)
  else
    L2_2 = L3_1
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueDLC_Adventure_DestroyProp_Start"
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_animation_event = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.Stop
  L3_2(L4_2)
  L4_2 = A1_2
  L3_2 = A1_2.Play
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._play_animation = L7_1
function L7_1(A0_2)
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
L0_1._is_pause = L7_1
return L0_1
