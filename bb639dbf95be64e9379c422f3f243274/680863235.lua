local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Common.ToastMissionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
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
  A0_2._time = 0
  L1_2 = L1_1.none
  A0_2._status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
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
    if not L2_2 then
      L2_2 = "UIText_AdventureMissionStatusHint_New"
    end
    return L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.finish_text
    if not L2_2 then
      L2_2 = "UIText_AdventureMissionStatusHint_Complete"
    end
    return L2_2
  end
end
L0_1._get_hint_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_dispose = L4_1
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
  local L2_2, L3_2, L4_2
  A0_2._panel_data = A1_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMissionTopToastPanelShowed
  L4_2 = A0_2._panel_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play
  L2_2(L3_2)
end
L0_1.refresh = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._complete_obj = A1_2
  A0_2._complete_callback = A2_2
end
L0_1.set_complete_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.none
  A0_2._status = L1_2
  L1_2 = A0_2._complete_obj
  if L1_2 ~= nil then
    L1_2 = A0_2._complete_callback
    if L1_2 ~= nil then
      L1_2 = A0_2._complete_callback
      L2_2 = A0_2._complete_obj
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._exit
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
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  local L1_2
end
L0_1._hide = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._setup_play = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_data
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogWarningFormat
    L2_2 = "MissionToast is not Initialized, please check mission info config."
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._complete
  L1_2(L2_2)
end
L0_1._on_show_ui_page = L4_1
return L0_1
