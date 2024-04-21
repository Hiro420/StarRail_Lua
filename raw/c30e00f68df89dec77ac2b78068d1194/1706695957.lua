local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Puzzle.CommandRobotPuzzlePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommandRobotPuzzlePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/KeyMapIcons/Com/UI_com_dir_up.png"
L2_1 = "SpriteOutput/KeyMapIcons/Com/UI_com_dir_down.png"
L3_1 = "SpriteOutput/KeyMapIcons/Com/UI_com_dir_left.png"
L4_1 = "SpriteOutput/KeyMapIcons/Com/UI_com_dir_right.png"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CommandRobotPuzzlePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._command_directions = L1_2
  A0_2._current_step = 1
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._max_step
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._command_directions
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.command_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._command_directions
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_switch_to_wait_order
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2, A1_2)
  A0_2._max_step = A1_2
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.up_btn
  L4_2 = A0_2._on_click_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.left_btn
  L4_2 = A0_2._on_click_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.right_btn
  L4_2 = A0_2._on_click_right
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.down_btn
  L4_2 = A0_2._on_click_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.clear_btn
  L4_2 = A0_2._on_click_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.abort_btn
  L4_2 = A0_2._on_click_abort
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L1_2(L2_2, L3_2)
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
  L3_2 = L3_2.UIOnCommandRobotWaitOrder
  L4_2 = A0_2._on_switch_to_wait_order
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
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
  L3_2 = L3_2.UIOnCommandRobotExecutingOrder
  L4_2 = A0_2._on_switch_to_executing_order
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._try_click_direction
  L3_2 = L1_1
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_up = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._try_click_direction
  L3_2 = L3_1
  L4_2 = 3
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_left = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._try_click_direction
  L3_2 = L4_1
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_right = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._try_click_direction
  L3_2 = L2_1
  L4_2 = 2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_click_down = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._current_step
  L4_2 = A0_2._max_step
  if L3_2 > L4_2 then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.command_list
  L4_2 = L3_2
  L3_2 = L3_2.get_panel_by_index
  L5_2 = A0_2._current_step
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_direction
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._current_step
  L4_2 = L4_2 + 1
  A0_2._current_step = L4_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.UIOnCommandRobotClickDirection
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1._try_click_direction = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._current_step
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.command_list
    L6_2 = L5_2
    L5_2 = L5_2.get_panel_by_index
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.reset_direction
    L6_2(L7_2)
  end
  A0_2._current_step = 1
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIOnCommandRobotResetDirection
  L1_2(L2_2)
end
L0_1._on_click_clear = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._command_directions
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.command_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._command_directions
  L2_2(L3_2, L4_2)
end
L0_1._on_add_direction = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_notify_exit = L5_1
function L5_1(A0_2)
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
L0_1._on_click_abort = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_click_clear
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.abort_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_switch_to_wait_order = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.abort_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_switch_to_executing_order = L5_1
function L5_1(A0_2)
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
  L3_2 = L3_2.UIOnCommandRobotWaitOrder
  L4_2 = A0_2._on_switch_to_wait_order
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
  L3_2 = L3_2.UIOnCommandRobotExecutingOrder
  L4_2 = A0_2._on_switch_to_executing_order
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L0_1.super
  L1_2 = L1_2.exit
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.exit = L5_1
return L0_1
