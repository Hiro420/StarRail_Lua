local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.RubikPuzzlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.RubikPuzzlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.RubikPuzzlePage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameMagicSquarePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameMagicSquarePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_btn_undo_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ChallengeMissionResetPuzzle
  L3_2 = A0_2._owner
  L3_2 = L3_2._cur_maze_puzzle_id
  L1_2(L2_2, L3_2)
  A0_2._last_select_index = nil
  L1_2 = pairs
  L2_2 = A0_2._all_rubik_puzzle_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_select
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_btn_reset_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._all_rubik_puzzle_panels = L1_2
  A0_2._is_init_rubik = false
  A0_2._puzzle_token = nil
  A0_2._hide_rotate_btn = false
  A0_2._last_select_index = nil
  A0_2._input_control_type = nil
  A0_2._input_control_protected_time = nil
  A0_2._puzzle_prepare_finish = false
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
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.left_action
  L4_2 = A0_2._on_btn_action_left_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.right_action
  L4_2 = A0_2._on_btn_action_right_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_rubik
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._last_select_index
  if L1_2 ~= nil then
    L1_2 = A0_2._all_rubik_puzzle_panels
    L2_2 = A0_2._last_select_index
    L1_2 = L1_2[L2_2]
    if L1_2 ~= nil then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIRubikRotate
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_left_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._last_select_index
  if L1_2 ~= nil then
    L1_2 = A0_2._all_rubik_puzzle_panels
    L2_2 = A0_2._last_select_index
    L1_2 = L1_2[L2_2]
    if L1_2 ~= nil then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIRubikRotate
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_right_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonAction0
  L3_2 = A0_2._owner
  L3_2 = L3_2._cur_maze_puzzle_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_action_left_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPuzzleCommonAction1
  L3_2 = A0_2._owner
  L3_2 = L3_2._cur_maze_puzzle_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_action_right_click = L1_1
L1_1 = G
L1_1 = L1_1.NotifyManager
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._all_rubik_puzzle_panels = L1_2
  A0_2._is_init_rubik = false
  A0_2._puzzle_token = nil
  A0_2._hide_rotate_btn = false
  A0_2._parent = nil
  A0_2._last_select_index = nil
  A0_2._left_click_time = nil
  A0_2._right_click_time = nil
  A0_2._input_control_protected_time = nil
  A0_2._puzzle_prepare_finish = false
  A0_2.is_rotate = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._all_rubik_puzzle_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.dispose
    L6_2(L7_2)
  end
  L1_2 = {}
  A0_2._all_rubik_puzzle_panels = L1_2
  L1_2 = _rubik_puzzle_panel
  if L1_2 then
    _rubik_puzzle_panel = nil
  end
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  A0_2._parent = A1_2
end
L0_1.set_parent = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_init_rubik
  if not L1_2 then
    A0_2._is_init_rubik = true
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPuzzleCommonExit
    L4_2 = A0_2.close_rubik_puzzle_page
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIShowRubikPuzzlePage
    L4_2 = A0_2.show_rubik_puzzle_page
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIBindRubikPuzzle
    L4_2 = A0_2.rubik_billboard_bind_object
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIUnbindRubikPuzzle
    L4_2 = A0_2.rubik_billboard_unbind_object
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIBindRubikPuzzleToken
    L4_2 = A0_2.rubik_billboard_bind_token
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIRubikPuzzleResetBillboardSelect
    L4_2 = A0_2.unselect_all_billboard
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIRubikSwitchSelectOrder
    L4_2 = A0_2.switch_select_order
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.PrepareFinishMazePuzzleChallenge
    L4_2 = A0_2.on_challenge_prepare_finish
    L1_2(L2_2, L3_2, L4_2)
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
    L3_2 = L3_2.UIRubikOrderSelectClick
    L4_2 = A0_2.on_select_click
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIRubikRotateStart
    L4_2 = A0_2.on_rubik_rotate
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_tick
    L1_2(L2_2)
  end
end
L0_1.init_rubik = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.is_rotate = A1_2
  L2_2 = pairs
  L3_2 = A0_2._all_rubik_puzzle_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_active
    L9_2 = not A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.on_rubik_rotate = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._all_rubik_puzzle_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._all_rubik_puzzle_panels
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.game_object_trans
    if A1_2 == L6_2 then
      A0_2._last_select_index = L5_2
      break
    end
  end
end
L0_1.on_select_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._last_select_index
    if L2_2 ~= nil then
      L2_2 = A0_2._all_rubik_puzzle_panels
      L3_2 = A0_2._last_select_index
      L2_2 = L2_2[L3_2]
      if L2_2 ~= nil then
        L2_2 = A0_2._all_rubik_puzzle_panels
        L3_2 = A0_2._last_select_index
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2
        L2_2 = L2_2.on_click
        L2_2(L3_2)
      end
    end
  end
end
L0_1.input_device_swtiched = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._puzzle_prepare_finish = true
  L2_2 = A0_2
  L1_2 = A0_2.close_rubik_puzzle_page
  L1_2(L2_2)
end
L0_1.on_challenge_prepare_finish = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._all_rubik_puzzle_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._hide_rotate_btn
    L6_2 = A0_2._puzzle_prepare_finish
    L6_2 = not L6_2 and L6_2
    L5_2.visible = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.set_active
    L8_2 = A0_2._hide_rotate_btn
    L8_2 = A0_2._puzzle_prepare_finish
    L8_2 = not L8_2 and L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.refresh_billbaord = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.is_rotate
  if L2_2 then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2._all_rubik_puzzle_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.is_selected
    if L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.set_select
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
    L7_2 = L6_2.game_object_trans
    if L7_2 == A1_2 then
      L8_2 = L6_2
      L7_2 = L6_2.on_click
      L7_2(L8_2)
    end
  end
end
L0_1.switch_select_order = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._hide_rotate_btn = A1_2
  L2_2 = A0_2._parent
  L2_2 = L2_2._binder
  L2_2 = L2_2.bg_canvas_group
  L3_2 = not A1_2
  L2_2.blocksRaycasts = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_right
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rotate_hint_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_billbaord
  L2_2(L3_2)
end
L0_1.show_rubik_puzzle_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._all_rubik_puzzle_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  A0_2._all_rubik_puzzle_panels = L1_2
end
L0_1.close_rubik_puzzle_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._all_rubik_puzzle_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_select
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1.unselect_all_billboard = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = -1
  L4_2 = pairs
  L5_2 = A0_2._all_rubik_puzzle_panels
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.game_object_trans
    if L9_2 == nil then
      L2_2 = L8_2
      break
    end
  end
  if L2_2 == nil then
    L4_2 = A0_2._all_rubik_puzzle_panels
    L4_2 = #L4_2
    L3_2 = L4_2 + 1
    L4_2 = A0_2._owner
    L5_2 = L4_2
    L4_2 = L4_2.create_panel
    L6_2 = G
    L6_2 = L6_2.RubikPuzzlePanel
    L7_2 = G
    L7_2 = L7_2.RubikPuzzlePanelBinder
    L8_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L2_2 = L4_2
    L5_2 = L2_2
    L4_2 = L2_2.async_bind
    L6_2 = A0_2._binder
    L6_2 = L6_2.billboard_root
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._all_rubik_puzzle_panels
    L6_2 = A0_2._all_rubik_puzzle_panels
    L6_2 = #L6_2
    L6_2 = L6_2 + 1
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L5_2 = L2_2
  L4_2 = L2_2.bind_game_object
  L6_2 = A1_2
  L7_2 = A0_2._puzzle_token
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._hide_rotate_btn
  L4_2 = A0_2._puzzle_prepare_finish
  L4_2 = not L4_2 and L4_2
  L2_2.visible = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.set_active
  L6_2 = A0_2._hide_rotate_btn
  L6_2 = A0_2._puzzle_prepare_finish
  L6_2 = not L6_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = L2_2.game_object_trans
  if L4_2 ~= nil then
    L4_2 = L2_2.game_object_trans
    L4_2 = L4_2.name
    if L4_2 == "AttachObjectY" and 0 <= L3_2 then
      L4_2 = A0_2._last_select_index
      if L4_2 ~= nil then
        L4_2 = A0_2._all_rubik_puzzle_panels
        L4_2 = L4_2[L3_2]
        L5_2 = L4_2
        L4_2 = L4_2.on_click
        L4_2(L5_2)
      end
      A0_2._last_select_index = L3_2
    end
  end
end
L0_1.rubik_billboard_bind_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._all_rubik_puzzle_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.game_object_trans
    if L7_2 == A1_2 then
      L6_2.game_object_trans = nil
    end
  end
end
L0_1.rubik_billboard_unbind_object = L2_1
function L2_1(A0_2, A1_2)
  A0_2._puzzle_token = A1_2
end
L0_1.rubik_billboard_bind_token = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._is_init_rubik
  if not L2_2 then
    return
  end
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2._all_rubik_puzzle_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.late_tick
    L10_2 = A1_2
    L8_2(L9_2, L10_2)
    L8_2 = L7_2.game_object_trans
    if L8_2 ~= nil then
      L8_2 = L7_2.game_object_trans
      L8_2 = L8_2.name
      if L8_2 == "AttachObjectY" then
        L8_2 = L7_2._loaded
        if L8_2 then
          L8_2 = L7_2._billboard_trans
          L8_2 = L8_2.localPosition
          L8_2 = L8_2.x
          L8_2 = L8_2 / 2.0
          L2_2 = L2_2 + L8_2
        end
      end
    end
  end
  L3_2 = pairs
  L4_2 = A0_2._all_rubik_puzzle_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.game_object_trans
    if L8_2 ~= nil then
      L8_2 = L7_2.game_object_trans
      L8_2 = L8_2.name
      if L8_2 == "AttachObjectY" then
        L8_2 = L7_2._loaded
        if L8_2 then
          L8_2 = L7_2._billboard_trans
          L9_2 = CS
          L9_2 = L9_2.UnityEngine
          L9_2 = L9_2.Vector3
          L10_2 = L2_2
          L11_2 = L7_2._billboard_trans
          L11_2 = L11_2.localPosition
          L11_2 = L11_2.y
          L12_2 = 0
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L8_2.localPosition = L9_2
        end
      end
    end
  end
  L3_2 = A0_2._hide_rotate_btn
  if not L3_2 then
    L3_2 = A0_2._input_control_type
    if L3_2 ~= nil then
      L3_2 = nil
      L4_2 = A0_2._last_select_index
      if L4_2 ~= nil then
        L4_2 = A0_2._all_rubik_puzzle_panels
        L5_2 = A0_2._last_select_index
        L3_2 = L4_2[L5_2]
      end
      L4_2 = table
      L4_2 = L4_2.sort
      L5_2 = A0_2._all_rubik_puzzle_panels
      function L6_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3, L6_3
        L2_3 = A0_3._binder
        L2_3 = L2_3.root
        L2_3 = L2_3.localPosition
        L3_3 = A1_3._binder
        L3_3 = L3_3.root
        L3_3 = L3_3.localPosition
        L4_3 = L2_3.x
        L5_3 = L3_3.y
        L4_3 = L4_3 * L5_3
        L5_3 = L2_3.y
        L6_3 = L3_3.x
        L5_3 = L5_3 * L6_3
        L4_3 = L4_3 < L5_3
        return L4_3
      end
      L4_2(L5_2, L6_2)
      if L3_2 == nil then
        A0_2._last_select_index = 1
      else
        L4_2 = 1
        L5_2 = A0_2._all_rubik_puzzle_panels
        L5_2 = #L5_2
        L6_2 = 1
        for L7_2 = L4_2, L5_2, L6_2 do
          L8_2 = A0_2._all_rubik_puzzle_panels
          L8_2 = L8_2[L7_2]
          if L8_2 == L3_2 then
            A0_2._last_select_index = L7_2
            break
          end
        end
        L4_2 = A0_2._input_control_type
        if L4_2 == "inc" then
          L4_2 = A0_2._last_select_index
          L4_2 = L4_2 % 6
          L4_2 = L4_2 + 1
          A0_2._last_select_index = L4_2
        else
          L4_2 = A0_2._last_select_index
          L4_2 = L4_2 - 1
          A0_2._last_select_index = L4_2
          L4_2 = A0_2._last_select_index
          if L4_2 == 0 then
            A0_2._last_select_index = 6
          end
        end
      end
      L4_2 = A0_2._all_rubik_puzzle_panels
      L5_2 = A0_2._last_select_index
      L4_2 = L4_2[L5_2]
      L5_2 = L4_2
      L4_2 = L4_2.on_click
      L4_2(L5_2)
      A0_2._input_control_type = nil
    end
  end
  L3_2 = A0_2._left_click_time
  if L3_2 ~= nil then
    L3_2 = A0_2._left_click_time
    L3_2 = L3_2 - A1_2
    A0_2._left_click_time = L3_2
    L3_2 = A0_2._left_click_time
    if L3_2 < 0 then
      A0_2._left_click_time = nil
      L3_2 = A0_2._binder
      L3_2 = L3_2.left_action
      L4_2 = L3_2
      L3_2 = L3_2.SetChecked
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._right_click_time
  if L3_2 ~= nil then
    L3_2 = A0_2._right_click_time
    L3_2 = L3_2 - A1_2
    A0_2._right_click_time = L3_2
    L3_2 = A0_2._right_click_time
    if L3_2 < 0 then
      A0_2._right_click_time = nil
      L3_2 = A0_2._binder
      L3_2 = L3_2.right_action
      L4_2 = L3_2
      L3_2 = L3_2.SetChecked
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._input_control_protected_time
  if L3_2 ~= nil then
    L3_2 = A0_2._input_control_protected_time
    L3_2 = L3_2 - A1_2
    A0_2._input_control_protected_time = L3_2
    L3_2 = A0_2._input_control_protected_time
    if L3_2 < 0 then
      A0_2._input_control_protected_time = nil
    end
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._hide_rotate_btn
  if not L3_2 then
    L3_2 = A0_2.is_rotate
    if not L3_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickLeft
  L3_2 = #L3_2
  if A1_2 == L3_2 and (0.3 < A2_2 or A2_2 < -0.3) then
    L3_2 = A0_2._input_control_protected_time
    if L3_2 == nil then
      A0_2._input_control_type = "inc"
      A0_2._input_control_protected_time = 0.35
    end
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickRight
  L3_2 = #L3_2
  if A1_2 == L3_2 and (0.3 < A2_2 or A2_2 < -0.3) then
    L3_2 = A0_2._input_control_protected_time
    if L3_2 == nil then
      A0_2._input_control_type = "dec"
      A0_2._input_control_protected_time = 0.35
    end
  end
end
L0_1._on_in_control_press = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._hide_rotate_btn
  if not L2_2 then
    L2_2 = A0_2.is_rotate
    if not L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadUp
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._input_control_type
    if L2_2 == nil then
      L2_2 = A0_2._input_control_protected_time
      if L2_2 == nil then
        A0_2._input_control_type = "inc"
        A0_2._input_control_protected_time = 0.35
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadLeft
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._input_control_protected_time
    if L2_2 == nil then
      A0_2._input_control_type = "inc"
      A0_2._input_control_protected_time = 0.35
    end
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadDown
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._input_control_type
    if L2_2 == nil then
      L2_2 = A0_2._input_control_protected_time
      if L2_2 == nil then
        A0_2._input_control_type = "dec"
        A0_2._input_control_protected_time = 0.35
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadRight
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._input_control_protected_time
    if L2_2 == nil then
      A0_2._input_control_type = "dec"
      A0_2._input_control_protected_time = 0.35
    end
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightStickLeft
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPuzzleCommonAction0
    L4_2 = A0_2._owner
    L4_2 = L4_2._cur_maze_puzzle_id
    L2_2(L3_2, L4_2)
    A0_2._left_click_time = 0.1
    L2_2 = A0_2._binder
    L2_2 = L2_2.left_action
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightStickRight
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPuzzleCommonAction1
    L4_2 = A0_2._owner
    L4_2 = L4_2._cur_maze_puzzle_id
    L2_2(L3_2, L4_2)
    A0_2._right_click_time = 0.1
    L2_2 = A0_2._binder
    L2_2 = L2_2.right_action
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_click = L2_1
return L0_1
