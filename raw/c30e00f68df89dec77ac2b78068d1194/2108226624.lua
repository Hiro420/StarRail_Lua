local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameCompassPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameCompassPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_btn_undo_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonReset
  L3_2 = A0_2._owner
  L3_2 = L3_2._cur_maze_puzzle_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_reset_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._select_index = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_undo
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reset
  L4_2 = A0_2._on_btn_reset_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_btn_left_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_btn_right_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_panel
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonAction0
  L3_2 = A0_2._select_index
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 + 1
  A0_2._select_index = L1_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonAction0
  L3_2 = A0_2._select_index
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_left_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonAction1
  L1_2(L2_2)
end
L0_1._on_btn_right_click = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._select_index = 0
  A0_2._is_init = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._parent = A1_2
end
L0_1.set_parent = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.select
  L3_2 = A1_2 % 10
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 10 <= A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.normal
  L3_2 = A1_2 % 10
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 < 10
  L2_2(L3_2, L4_2)
end
L0_1.set_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_init
  if not L1_2 then
    A0_2._is_init = true
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPuzzleCommonInputDeviceSwitched
    L4_2 = A0_2.input_device_swtiched
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPuzzleCommonAction2
    L4_2 = A0_2.set_select
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.init_panel = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.input_device_swtiched = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadUp
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.LeftStickUp
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      goto lbl_27
    end
  end
  L2_2 = A0_2._select_index
  L2_2 = L2_2 - 1
  A0_2._select_index = L2_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPuzzleCommonAction0
  L4_2 = A0_2._select_index
  L2_2(L3_2, L4_2)
  ::lbl_27::
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadLeft
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.LeftStickLeft
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      goto lbl_53
    end
  end
  L2_2 = A0_2._select_index
  L2_2 = L2_2 - 1
  A0_2._select_index = L2_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPuzzleCommonAction0
  L4_2 = A0_2._select_index
  L2_2(L3_2, L4_2)
  ::lbl_53::
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadDown
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.LeftStickDown
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      goto lbl_79
    end
  end
  L2_2 = A0_2._select_index
  L2_2 = L2_2 + 1
  A0_2._select_index = L2_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPuzzleCommonAction0
  L4_2 = A0_2._select_index
  L2_2(L3_2, L4_2)
  ::lbl_79::
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadRight
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.LeftStickRight
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      goto lbl_105
    end
  end
  L2_2 = A0_2._select_index
  L2_2 = L2_2 + 1
  A0_2._select_index = L2_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPuzzleCommonAction0
  L4_2 = A0_2._select_index
  L2_2(L3_2, L4_2)
  ::lbl_105::
end
L0_1._on_in_control_click = L1_1
return L0_1
