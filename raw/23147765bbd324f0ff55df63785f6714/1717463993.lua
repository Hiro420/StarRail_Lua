local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Operation.StripeDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StripeDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = {}
L3_1.PhaseOne = 1
L3_1.PhaseTwo = 2
L4_1 = 50
L5_1 = 25
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.StripeDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = "StripeDialog Init(), message : "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  A0_2._message = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._can_close = L3_2
  L3_2 = L3_1.PhaseOne
  A0_2._status = L3_2
  A0_2._latency = 1.6
end
L0_1.init = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AppUtils
  L2_2 = L2_2.ReplaceLocalTime
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_message
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.update_message = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICloseMarquee
  L4_2 = A0_2._on_close_marquee
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.InputDeviceClassSwitched
  L4_2 = A0_2._on_in_control_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_message
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = ""
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_changed = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.update_message
  L3_2 = A0_2._message
  L1_2(L2_2, L3_2)
end
L0_1._init_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._latency
  if 0 <= L2_2 then
    L2_2 = A0_2._latency
    L2_2 = L2_2 - A1_2
    A0_2._latency = L2_2
    L2_2 = A0_2._latency
    if L2_2 < 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.go_BG
      L2_2 = L2_2.rect
      L2_2 = L2_2.width
      A0_2._bg_length = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.go_bgbg
      L2_2 = L2_2.sizeDelta
      L2_2 = L2_2.x
      A0_2._bg_bg_length = L2_2
      A0_2._message_length = 0
      L3_2 = A0_2
      L2_2 = A0_2._init_view
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._reset
      L2_2(L3_2)
    end
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._move_position
  L4_2 = L4_1
  L4_2 = A1_2 * L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._status
  L3_2 = L3_1.PhaseOne
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._over_phase_one
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh_message_length
      L2_2(L3_2)
      L2_2 = L3_1.PhaseTwo
      A0_2._status = L2_2
  end
  else
    L2_2 = A0_2._status
    L3_2 = L3_1.PhaseTwo
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._over_phase_two
      L2_2 = L2_2(L3_2)
      if L2_2 then
        A0_2._can_close = true
        L3_2 = A0_2
        L2_2 = A0_2._reset
        L2_2(L3_2)
        L2_2 = L3_1.PhaseOne
        A0_2._status = L2_2
      end
    end
  end
end
L0_1._on_tick = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = A0_2._can_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_position
  L3_2 = A0_2._bg_length
  L4_2 = A0_2._bg_bg_length
  L3_2 = L3_2 + L4_2
  L4_2 = L5_1
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
end
L0_1._reset = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_close_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._can_close
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_close_marquee = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_message
  L2_2 = L2_2.transform
  L2_2 = L2_2.anchoredPosition
  L2_2.x = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_message
  L3_2 = L3_2.transform
  L3_2.anchoredPosition = L2_2
end
L0_1._set_position = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_message
  L2_2 = L2_2.transform
  L2_2 = L2_2.anchoredPosition
  L3_2 = L2_2.x
  L3_2 = L3_2 - A1_2
  L2_2.x = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_message
  L3_2 = L3_2.transform
  L3_2.anchoredPosition = L2_2
end
L0_1._move_position = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_message
  L1_2 = L1_2.transform
  L1_2 = L1_2.anchoredPosition
  L1_2 = L1_2.x
  L1_2 = L1_2 < 0
  return L1_2
end
L0_1._over_phase_one = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_message
  L1_2 = L1_2.transform
  L1_2 = L1_2.anchoredPosition
  L1_2 = L1_2.x
  L2_2 = A0_2._message_length
  L2_2 = -L2_2
  L1_2 = L1_2 < L2_2
  return L1_2
end
L0_1._over_phase_two = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_message
  L1_2 = L1_2.transform
  L1_2 = L1_2.sizeDelta
  L1_2 = L1_2.x
  A0_2._message_length = L1_2
end
L0_1._refresh_message_length = L6_1
return L0_1
