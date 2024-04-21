local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.Test_DronesPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "Test_DronesPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.Test_DronesPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._puzzle_call_close = false
  A0_2.game_object_trans = nil
  A0_2._is_hide_cursor = true
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.action_btn
  L4_2 = A0_2._on_click_action
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.action_btn
  L4_2 = A0_2._on_click_action
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reset_btn
  L4_2 = A0_2._on_click_reset
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_click_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.w_btn
  L4_2 = A0_2._on_hold_button
  L5_2 = A0_2._on_unhold_button
  L6_2 = A0_2._on_unhold_button
  L7_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.a_btn
  L4_2 = A0_2._on_hold_button
  L5_2 = A0_2._on_unhold_button
  L6_2 = A0_2._on_unhold_button
  L7_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.s_btn
  L4_2 = A0_2._on_hold_button
  L5_2 = A0_2._on_unhold_button
  L6_2 = A0_2._on_unhold_button
  L7_2 = 3
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.d_btn
  L4_2 = A0_2._on_hold_button
  L5_2 = A0_2._on_unhold_button
  L6_2 = A0_2._on_unhold_button
  L7_2 = 4
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.fly_up_btn
  L4_2 = A0_2._on_hold_button
  L5_2 = A0_2._on_unhold_button
  L6_2 = A0_2._on_unhold_button
  L7_2 = 5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_hold
  L3_2 = A0_2._binder
  L3_2 = L3_2.fly_down_btn
  L4_2 = A0_2._on_hold_button
  L5_2 = A0_2._on_unhold_button
  L6_2 = A0_2._on_unhold_button
  L7_2 = 6
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIClosePuzzleCommon
  L4_2 = A0_2._on_notify_exit
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIDronesLeaveSafeArea
  L4_2 = A0_2._on_leave_safe_area
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIDronesBindEntity
  L4_2 = A0_2._on_bind_entity
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonShow
  L3_2 = 20221129
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.game_object_trans
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.height_hint_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.height_hint_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.ComponentExtensions
    L2_2 = L2_2.SafeGetCmpt
    L3_2 = typeof
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Transform
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.game_object_trans = L2_2
  else
    A0_2.game_object_trans = nil
  end
end
L0_1._on_bind_entity = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.height_hint_image
  if L2_2 == nil then
    return
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.height_hint_image
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Color
    L3_2 = L3_2.red
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.height_hint_image
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Color
    L3_2 = L3_2.green
    L2_2.color = L3_2
  end
end
L0_1._on_leave_safe_area = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPuzzleCommonAction1
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_hold_button = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPuzzleCommonAction2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_unhold_button = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonAction
  L1_2(L2_2)
end
L0_1._on_click_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonReset
  L1_2(L2_2)
end
L0_1._on_click_reset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonMoveUp
  L1_2(L2_2)
end
L0_1._on_click_w = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonMoveLeft
  L1_2(L2_2)
end
L0_1._on_click_a = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonMoveDown
  L1_2(L2_2)
end
L0_1._on_click_s = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonMoveRight
  L1_2(L2_2)
end
L0_1._on_click_d = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._puzzle_call_close = true
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_notify_exit = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._puzzle_call_close
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPuzzleCommonExit
    L3_2 = 114514
    L1_2(L2_2, L3_2)
  end
  L1_2 = L0_1.super
  L1_2 = L1_2.exit
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.exit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.game_object_trans
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.height_hint_text
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%0.1f"
    L5_2 = A0_2.game_object_trans
    L5_2 = L5_2.position
    L5_2 = L5_2.y
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.text = L3_2
  end
end
L0_1._on_tick = L1_1
return L0_1
