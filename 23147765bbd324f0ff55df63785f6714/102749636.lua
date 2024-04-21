local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameProgramming.MiniGameProgrammingPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameProgramming.MiniGameProgrammingCommandNodePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameProgrammingPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "PopUpTipForBtn"
L2_1 = "MazeText_Maze_CommandRobot_Start"
L3_1 = "MazeText_Maze_CommandRobot_Quit"
L4_1 = "MazeText_Maze_CommandRobot_Phase1"
L5_1 = "MazeText_Maze_CommandRobot_Phase2"
L6_1 = "MazeText_Maze_CommandRobot_Phase3"
L7_1 = "MiniGameInputing_BtnStart"
L8_1 = "MiniGameInputing_BtnClear"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._max_step = 0
  A0_2._current_step = 1
  A0_2._current_run_step = 1
  A0_2._start_btn_show = false
  A0_2._is_joystick_input = false
  A0_2._is_right_input = false
  A0_2._is_left_input = false
  A0_2._is_up_input = false
  A0_2._is_down_input = false
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_up
  L4_2 = A0_2._on_click_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_click_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_click_right
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_down
  L4_2 = A0_2._on_click_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_click_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_click_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_stop
  L4_2 = A0_2._on_click_stop
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._enter_wait_start_state
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._notify_init_command_list
  L1_2(L2_2)
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_click_direction
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prop
  L3_2 = L3_2.CommandRobotPuzzleDirection
  L3_2 = L3_2.Up
  L1_2(L2_2, L3_2)
end
L0_1._on_click_up = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_click_direction
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prop
  L3_2 = L3_2.CommandRobotPuzzleDirection
  L3_2 = L3_2.Left
  L1_2(L2_2, L3_2)
end
L0_1._on_click_left = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_click_direction
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prop
  L3_2 = L3_2.CommandRobotPuzzleDirection
  L3_2 = L3_2.Right
  L1_2(L2_2, L3_2)
end
L0_1._on_click_right = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_click_direction
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prop
  L3_2 = L3_2.CommandRobotPuzzleDirection
  L3_2 = L3_2.Down
  L1_2(L2_2, L3_2)
end
L0_1._on_click_down = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current_step
  L2_2 = A0_2._max_step
  if L1_2 <= L2_2 then
    return
  end
  A0_2._current_run_step = 1
  L2_2 = A0_2
  L1_2 = A0_2._enter_start_command_state
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIOnCommandRobotStart
  L1_2(L2_2)
end
L0_1._on_click_start = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.right_panel_animation
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._enter_wait_order_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_command_list_with_init_state
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIOnCommandRobotResetDirection
  L1_2(L2_2)
end
L0_1._on_click_clear = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIOnCommandRobotClickAbort
  L1_2(L2_2)
end
L0_1._on_click_stop = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._is_joystick_input
  if L3_2 then
    return
  end
  if A2_2 < 0.5 then
    return
  end
  A0_2._is_joystick_input = true
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPuzzleCommonAction
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_up
    L3_2(L4_2, L5_2)
    A0_2._is_up_input = true
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPuzzleCommonAction
      L5_2 = A0_2._binder
      L5_2 = L5_2.btn_down
      L3_2(L4_2, L5_2)
      A0_2._is_down_input = true
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L3_2 = G
        L3_2 = L3_2.NotifyManager
        L3_2 = L3_2.notify
        L4_2 = G
        L4_2 = L4_2.CS
        L4_2 = L4_2.NotifyType
        L4_2 = L4_2.UIPuzzleCommonAction
        L5_2 = A0_2._binder
        L5_2 = L5_2.btn_left
        L3_2(L4_2, L5_2)
        A0_2._is_left_input = true
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L3_2 = G
          L3_2 = L3_2.NotifyManager
          L3_2 = L3_2.notify
          L4_2 = G
          L4_2 = L4_2.CS
          L4_2 = L4_2.NotifyType
          L4_2 = L4_2.UIPuzzleCommonAction
          L5_2 = A0_2._binder
          L5_2 = L5_2.btn_right
          L3_2(L4_2, L5_2)
          A0_2._is_right_input = true
        end
      end
    end
  end
end
L0_1._on_in_control_press = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickUp
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    A0_2._is_up_input = false
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.LeftStickDown
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      A0_2._is_down_input = false
    else
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.LeftStickLeft
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        A0_2._is_left_input = false
      else
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.LeftStickRight
        L2_2 = #L2_2
        if A1_2 == L2_2 then
          A0_2._is_right_input = false
        end
      end
    end
  end
  L2_2 = A0_2._is_right_input
  if not L2_2 then
    L2_2 = A0_2._is_down_input
    if not L2_2 then
      L2_2 = A0_2._is_left_input
      if not L2_2 then
        L2_2 = A0_2._is_up_input
      end
    end
  end
  A0_2._is_joystick_input = L2_2
end
L0_1._on_in_control_released = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_start
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._start_btn_show = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_popup_tip
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_stop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._enter_start_command_state = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L4_2 = A0_2._max_step
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._start_btn_show
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_start
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  A0_2._start_btn_show = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_stop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._enter_wait_order_state = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.right_panel_animation
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_popup_tip
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_start
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._start_btn_show = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_stop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._enter_wait_start_state = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_stop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._enter_prepare_wait_start_state = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._current_step
  L3_2 = A0_2._max_step
  if L2_2 > L3_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.command_list
  L3_2 = L2_2
  L2_2 = L2_2.get_panel_by_index
  L4_2 = A0_2._current_step
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_direction
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_node_state
  L5_2 = MiniGameProgrammingNodeState
  L5_2 = L5_2.Normal
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._current_step
  L3_2 = L3_2 + 1
  A0_2._current_step = L3_2
  L3_2 = A0_2._current_step
  L4_2 = A0_2._max_step
  if L3_2 <= L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.command_list
    L4_2 = L3_2
    L3_2 = L3_2.get_panel_by_index
    L5_2 = A0_2._current_step
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_node_state
    L6_2 = MiniGameProgrammingNodeState
    L6_2 = L6_2.Waiting
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.state_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L4_1
  L6_2 = A0_2._max_step
  L7_2 = A0_2._current_step
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._current_step
  L4_2 = A0_2._max_step
  if L3_2 > L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._enter_wait_start_state
    L3_2(L4_2)
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIOnCommandRobotClickDirection
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._try_click_direction = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIOnCommandRobotGetMaxStep
  L4_2 = A0_2._on_get_init_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIOnCommandRobotInit
  L1_2(L2_2)
end
L0_1._notify_init_command_list = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyGroup
  L3_2 = L3_2.UI
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIOnCommandRobotGetMaxStep
  L5_2 = A0_2._on_get_init_data
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._max_step = A1_2
  A0_2._current_step = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.command_list
  L3_2 = L2_2
  L2_2 = L2_2.init_node
  L4_2 = A0_2._max_step
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._max_step
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.command_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.do_after_init
    L7_2(L8_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_command_list_state
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.state_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L4_1
  L5_2 = A0_2._max_step
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyGroup
  L3_2 = L3_2.UI
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIOnCommandRobotReset
  L5_2 = A0_2._on_puzzle_reset
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyGroup
  L3_2 = L3_2.UI
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIOnCommandRobotRunningNextCommand
  L5_2 = A0_2._on_current_command_execute
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_get_init_data = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._enter_wait_order_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_command_list_with_init_state
  L2_2(L3_2)
end
L0_1._on_puzzle_reset = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.command_list
  L3_2 = L2_2
  L2_2 = L2_2.get_panel_by_index
  L4_2 = A0_2._current_run_step
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_node_state
  L5_2 = MiniGameProgrammingNodeState
  L5_2 = L5_2.Running
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._current_run_step
  if 1 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.command_list
    L4_2 = L3_2
    L3_2 = L3_2.get_panel_by_index
    L5_2 = A0_2._current_run_step
    L5_2 = L5_2 - 1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_node_state
    L6_2 = MiniGameProgrammingNodeState
    L6_2 = L6_2.Over
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2._current_run_step
  L3_2 = L3_2 + 1
  A0_2._current_run_step = L3_2
end
L0_1._on_current_command_execute = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._max_step
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.command_list
    L6_2 = L5_2
    L5_2 = L5_2.get_panel_by_index
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L4_2 == 1 then
      L7_2 = L5_2
      L6_2 = L5_2.init_node_with_state
      L8_2 = MiniGameProgrammingNodeState
      L8_2 = L8_2.Waiting
      L6_2(L7_2, L8_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.init_node_with_state
      L8_2 = MiniGameProgrammingNodeState
      L8_2 = L8_2.Empty
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._init_command_list_state = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._current_step = 1
  L1_2 = 1
  L2_2 = A0_2._max_step
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.command_list
    L6_2 = L5_2
    L5_2 = L5_2.get_panel_by_index
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L4_2 == 1 then
      L7_2 = L5_2
      L6_2 = L5_2.set_node_state
      L8_2 = MiniGameProgrammingNodeState
      L8_2 = L8_2.Waiting
      L6_2(L7_2, L8_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.set_node_state
      L8_2 = MiniGameProgrammingNodeState
      L8_2 = L8_2.Empty
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_command_list_with_init_state = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.popup_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.popup_tip_animation
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.popup_tip_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_popup_tip = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIOnCommandRobotReset
  L4_2 = A0_2._on_puzzle_reset
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIOnCommandRobotGetMaxStep
  L4_2 = A0_2._on_get_init_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._on_dispose = L9_1
return L0_1
