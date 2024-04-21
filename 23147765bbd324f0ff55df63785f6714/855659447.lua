local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Maze.TrackInfoDialogBinder"
L0_1(L1_1)
L0_1 = "MazeStealthTrackingDialog_FadeIn"
L1_1 = {}
L1_1.None = 0
L1_1.Tracking = 1
L1_1.Warning = 2
L1_1.Exposed = 3
L1_1.Faraway = 4
L2_1 = {}
L2_1.None = 0
L2_1.Normal = 1
L2_1.Hiding = 2
L2_1.Warning = 3
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "TrackInfoDialog"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TrackInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_focusable = false
  A0_2._is_resp_esc = false
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._is_hide_cursor = true
  L1_2 = L1_1.None
  A0_2._status = L1_2
  L1_2 = L2_1.Normal
  A0_2._mask_type = L1_2
  A0_2._alert_value = 0
  A0_2._in_losing = false
  A0_2._losing_time = 0
  A0_2._losing_max_time = 0
  A0_2._is_tick_paused = false
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.TrackNpcMod
  end
  A0_2._track_data = L2_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TrackNpcEnd
  L4_2 = A0_2._on_track_npc_end
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.ClearTickCallback
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MinimapOnPuzzleHide
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.None
  A0_2._status = L1_2
  L1_2 = L2_1.Normal
  A0_2._mask_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2._refresh_view
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._track_data
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L3_2 = A0_2._is_tick_paused
  if L3_2 ~= L2_2 then
    if L2_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L4_2 = L3_2
      L3_2 = L3_2.PostEvent
      L5_2 = "Ev_sfx_ui_feedback_mazeStealthTracking_faraway_pause"
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L4_2 = L3_2
      L3_2 = L3_2.PostEvent
      L5_2 = "Ev_sfx_ui_feedback_mazeStealthTracking_faraway_resume"
      L3_2(L4_2, L5_2)
    end
    A0_2._is_tick_paused = L2_2
  end
  L3_2 = A0_2._is_tick_paused
  if L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_status
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_alert_bar
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_lost_counter
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_mask
  L3_2(L4_2)
end
L3_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._alert_value
  A0_2._last_alert_value = L1_2
  L1_2 = A0_2._track_data
  L1_2 = L1_2.CurrentAlertValue
  A0_2._alert_value = L1_2
  L1_2 = A0_2._track_data
  L1_2 = L1_2.MaxAlertValue
  A0_2._max_alert_value = L1_2
end
L3_1._refresh_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "IsSafe"
  L4_2 = A0_2._alert_value
  L4_2 = L4_2 == 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_alert
  L2_2 = A0_2._alert_value
  L3_2 = A0_2._max_alert_value
  L2_2 = L2_2 / L3_2
  L1_2.value = L2_2
end
L3_1._refresh_alert_bar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_status
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._status
  L2_2 = L1_2 ~= L2_2
  A0_2._status = L1_2
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh_status_change
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_status_continue
  L3_2(L4_2)
end
L3_1._refresh_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._status
  L2_2 = L1_1.Faraway
  if L1_2 == L2_2 then
    L1_2 = A0_2._track_data
    L1_2 = L1_2.LostTargetTime
    A0_2._losing_max_time = L1_2
    A0_2._losing_time = 0
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Faraway"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._status
    L2_2 = L1_1.Exposed
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_status
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "MazeText_TrackNPC_Discover"
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.animator
      L2_2 = L1_2
      L1_2 = L1_2.SetTrigger
      L3_2 = "Exposed"
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._status
      L2_2 = L1_1.Warning
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.txt_status
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "MazeText_TrackNPC_Alert"
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.animator
        L2_2 = L1_2
        L1_2 = L1_2.SetTrigger
        L3_2 = "Warning"
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._binder
        L1_2 = L1_2.animator
        L2_2 = L1_2
        L1_2 = L1_2.SetTrigger
        L3_2 = "Tracking"
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L3_1._refresh_status_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._status
  L2_2 = L1_1.Faraway
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetBool
    L3_2 = "CountDownWarning"
    L4_2 = A0_2._losing_max_time
    L5_2 = A0_2._losing_time
    L5_2 = L5_2 + 5
    L4_2 = L4_2 <= L5_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._status
    L2_2 = L1_1.Exposed
    if L1_2 == L2_2 then
    else
      L1_2 = A0_2._status
      L2_2 = L1_1.Warning
      if L1_2 == L2_2 then
      else
        L1_2 = A0_2._track_data
        L1_2 = L1_2.IsPerceived
        if not L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.txt_status
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetTextID
          L3_2 = "MazeText_TrackNPC_Tracking"
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._binder
          L1_2 = L1_2.txt_status
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetTextID
          L3_2 = "MazeText_TrackNPC_Alert"
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L3_1._refresh_status_continue = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._track_data
  L1_2 = L1_2.IsLosingTarget
  if L1_2 then
    L1_2 = L1_1.Faraway
    return L1_2
  else
    L1_2 = A0_2._last_alert_value
    L2_2 = A0_2._alert_value
    if L1_2 == L2_2 then
      L1_2 = A0_2._status
      L2_2 = L1_1.None
      if L1_2 ~= L2_2 then
        L1_2 = A0_2._status
        L2_2 = L1_1.Faraway
        if L1_2 ~= L2_2 then
          L1_2 = A0_2._status
          return L1_2
      end
    end
    else
      L1_2 = A0_2._alert_value
      L2_2 = A0_2._max_alert_value
      if L1_2 >= L2_2 then
        L1_2 = L1_1.Exposed
        return L1_2
      else
        L1_2 = A0_2._alert_value
        L2_2 = A0_2._last_alert_value
        if L1_2 > L2_2 then
          L1_2 = L1_1.Warning
          return L1_2
        else
          L1_2 = L1_1.Tracking
          return L1_2
        end
      end
    end
  end
end
L3_1._get_status = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._status
  L5_2 = L1_1.Faraway
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._status
  L3_2 = L1_1.Faraway
  if L2_2 == L3_2 then
    L2_2 = A0_2._losing_time
    L2_2 = L2_2 + A1_2
    A0_2._losing_time = L2_2
    L2_2 = A0_2._losing_time
    L3_2 = A0_2._losing_max_time
    if L2_2 > L3_2 then
      L2_2 = A0_2._losing_max_time
      A0_2._losing_time = L2_2
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_lost
    L3_2 = A0_2._losing_time
    L4_2 = A0_2._losing_max_time
    L3_2 = L3_2 / L4_2
    L3_2 = 1 - L3_2
    L2_2.fillAmount = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.remain_time_lost
    L3_2 = L2_2
    L2_2 = L2_2.SetRemainTimeInSeconds
    L4_2 = math
    L4_2 = L4_2.ceil
    L5_2 = A0_2._losing_max_time
    L6_2 = A0_2._losing_time
    L5_2 = L5_2 - L6_2
    L4_2 = L4_2(L5_2)
    L5_2 = 1
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.MonoRemainTimer
    L6_2 = L6_2.TimeMode
    L6_2 = L6_2.ShowSeconds
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L3_1._refresh_lost_counter = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_alert
  L1_2 = L1_2.value
  if 0.8 <= L1_2 then
    L1_2 = A0_2._mask_type
    L2_2 = L2_1.Warning
    if L1_2 ~= L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayToEnd
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation
      L3_2 = L0_1
      L1_2(L2_2, L3_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation
      L3_2 = "MazeStealthTrackingDialog_HUDWarning"
      L1_2(L2_2, L3_2)
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.MinimapOnPuzzleHide
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    L1_2 = L2_1.Warning
    A0_2._mask_type = L1_2
  else
    L1_2 = A0_2._track_data
    L1_2 = L1_2.PlayerHide
    if L1_2 then
      L1_2 = A0_2._mask_type
      L2_2 = L2_1.Hiding
      if L1_2 ~= L2_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.UIAnimationUtils
        L1_2 = L1_2.PlayToEnd
        L2_2 = A0_2._binder
        L2_2 = L2_2.animation
        L3_2 = L0_1
        L1_2(L2_2, L3_2)
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.UIAnimationUtils
        L1_2 = L1_2.PlayFromBegin
        L2_2 = A0_2._binder
        L2_2 = L2_2.animation
        L3_2 = "MazeStealthTrackingDialog_HUDHide"
        L1_2(L2_2, L3_2)
        L1_2 = G
        L1_2 = L1_2.NotifyManager
        L1_2 = L1_2.notify
        L2_2 = G
        L2_2 = L2_2.CS
        L2_2 = L2_2.NotifyType
        L2_2 = L2_2.MinimapOnPuzzleHide
        L3_2 = true
        L1_2(L2_2, L3_2)
      end
      L1_2 = L2_1.Hiding
      A0_2._mask_type = L1_2
    else
      L1_2 = A0_2._mask_type
      L2_2 = L2_1.Normal
      if L1_2 ~= L2_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.UIAnimationUtils
        L1_2 = L1_2.PlayToEnd
        L2_2 = A0_2._binder
        L2_2 = L2_2.animation
        L3_2 = L0_1
        L1_2(L2_2, L3_2)
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.UIAnimationUtils
        L1_2 = L1_2.PlayFromBegin
        L2_2 = A0_2._binder
        L2_2 = L2_2.animation
        L3_2 = "MazeStealthTrackingDialog_HUDNormal"
        L1_2(L2_2, L3_2)
        L1_2 = G
        L1_2 = L1_2.NotifyManager
        L1_2 = L1_2.notify
        L2_2 = G
        L2_2 = L2_2.CS
        L2_2 = L2_2.NotifyType
        L2_2 = L2_2.MinimapOnPuzzleHide
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
      L1_2 = L2_1.Normal
      A0_2._mask_type = L1_2
    end
  end
end
L3_1._refresh_mask = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_track_npc_end = L4_1
return L3_1
