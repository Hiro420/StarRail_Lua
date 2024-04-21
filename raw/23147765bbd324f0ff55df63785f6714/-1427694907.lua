local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Common.ToastMissionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastMissionDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.none = 0
L1_1.playing = 1
L1_1.waiting = 2
L2_1 = G
L2_1 = L2_1.ComponentExtensions
L3_1 = G
L3_1 = L3_1.TextExtensions
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.after_hide = false
  A0_2._time = 0
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L4_2 = A0_2
  L3_2 = A0_2._get_binder
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L1_2 = L1_1.none
  A0_2._status = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.start_animation
    return L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.finish_animation
    return L2_2
  end
end
L0_1._get_animation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.start_text
    return L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.finish_text
    return L2_2
  end
end
L0_1._get_hint_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMissionToastDialogShowed
  L3_2 = A0_2._panel_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._play
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.after_hide
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIMissionToastDialogClosed
    L3_2 = A0_2._panel_data
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "MissionToastDialog is not finished, maybe interrupted by performance."
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._unlock_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._overrider_on_dispose
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._overrider_on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._status
  L3_2 = L1_1.none
  if L2_2 == L3_2 then
    return
  else
    L2_2 = A0_2._status
    L3_2 = L1_1.playing
    if L2_2 == L3_2 then
      L2_2 = A0_2._time
      L2_2 = L2_2 - A1_2
      A0_2._time = L2_2
      L2_2 = A0_2._time
      if L2_2 < 0 then
        L3_2 = A0_2
        L2_2 = A0_2._hide
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._wait
        L2_2(L3_2)
      end
    else
      L2_2 = A0_2._status
      L3_2 = L1_1.waiting
      if L2_2 == L3_2 then
        L2_2 = A0_2._time
        L2_2 = L2_2 - A1_2
        A0_2._time = L2_2
        L2_2 = A0_2._time
        if L2_2 < 0 then
          L3_2 = A0_2
          L2_2 = A0_2._complete
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1._on_tick = L4_1
function L4_1(A0_2, A1_2)
  A0_2._panel_data = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.none
  A0_2._status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_complete
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._unlock_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._complete = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_data
  L1_2 = L1_2.MissionPanelTag
  if L1_2 == "Complete" then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TrainVisitorHint
    L3_2 = A0_2._panel_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
end
L0_1.try_notify_train_visitor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Unlock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.TaskLockPlayerControl
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Unlock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.TaskLockCamera
  L1_2(L2_2, L3_2)
end
L0_1._unlock_control = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Lock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.TaskLockPlayerControl
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Lock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.TaskLockCamera
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_data
  L1_2 = L1_2.MissionPanelTag
  L1_2 = L1_2 == "Start"
  L2_2 = L1_1.playing
  A0_2._status = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_animation
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._animation = L2_2
  L2_2 = A0_2._animation
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.ani_animation
    L3_2 = L2_2
    L2_2 = L2_2.GetClip
    L4_2 = A0_2._animation
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2.length
    A0_2._time = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.ani_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A0_2._animation
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.ani_animation
    L2_2 = L2_2.clip
    L2_2 = L2_2.length
    A0_2._time = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.ani_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
  end
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_start
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_complete
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_hint_text
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L3_1.SafeSetTextID
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_hint
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = L3_1.SafeSetTextID
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = A0_2._panel_data
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_play
  L3_2(L4_2)
end
L0_1._play = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L1_1.waiting
  A0_2._status = L1_2
  L1_2 = A0_2._panel_data
  L1_2 = L1_2.Duration
  A0_2._time = L1_2
end
L0_1._wait = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.after_hide = true
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMissionToastDialogClosed
  L3_2 = A0_2._panel_data
  L1_2(L2_2, L3_2)
end
L0_1._hide = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ToastMissionPanelBinder
  return L1_2
end
L0_1._get_binder = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._setup_play = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_complete = L4_1
return L0_1
