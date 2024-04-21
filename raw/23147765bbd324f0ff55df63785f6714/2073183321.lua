local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.JigsawPuzzle.JigsawPuzzleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.JigsawPuzzle.JigsawPuzzleMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Common.FSM.StateMachine"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.JigsawPuzzle.State.JigsawFreeCursorState"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.JigsawPuzzle.State.JigsawItemMoveState"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.JigsawPuzzle.State.JigsawNotGamePadState"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.JigsawPuzzle.State.JigsawUINavigationState"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.JigsawPuzzle.State.JigsawChildDialogOpenState"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "JigsawPuzzleMainPage"
L2_1 = G
L2_1 = L2_1.BasePage
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.JigsawPuzzleMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._jigsaw_panels = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._jigsaw_puzzle_board = A1_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.StateMachine
  L4_2 = A0_2
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._state_machine = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.JigsawFreeCursorState
  L2_2 = L2_2(L3_2)
  A0_2._free_cursor_state = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.JigsawItemMoveState
  L2_2 = L2_2(L3_2)
  A0_2._item_move_state = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.JigsawNotGamePadState
  L2_2 = L2_2(L3_2)
  A0_2._not_game_pad_state = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.JigsawUINavigationState
  L2_2 = L2_2(L3_2)
  A0_2._ui_navigation_state = L2_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.JigsawChildDialogOpenState
  L2_2 = L2_2(L3_2)
  A0_2._child_dialog_open_state = L2_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rotation_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_rotation_tips = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "[hwx] set_interactable: "
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = A0_2._jigsaw_puzzle_board
  L3_2 = L2_2
  L2_2 = L2_2.SetInteractOn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reset
  L4_2 = A0_2._on_btn_reset
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICloseJigSawPuzzlePage
  L4_2 = A0_2._on_ui_close_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshJigSawPuzzleInBox
  L4_2 = A0_2._on_ui_refresh_notify
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIDarkenJigSawPuzzleBox
  L4_2 = A0_2._ui_darken_jigsaw_puzzle_box
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIOnJigsawCurorStateChange
  L4_2 = A0_2._on_jigsaw_curor_state_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowJigSawPuzzleCursorInBox
  L4_2 = A0_2._on_show_jigsaw_puzzle_cursor_in_box
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UINavigationFail
  L4_2 = A0_2._on_ui_navigation_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIOnJigSawPuzzleRotateTip
  L4_2 = A0_2._ui_on_jigsaw_puzzle_rotate_tip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICreateJigSawItem
  L4_2 = A0_2._ui_create_jigsaw_item
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_event_trigger
  function L2_2()
    local L0_3, L1_3
    A0_2._dragging_panel = nil
  end
  L1_2.OnBeginDragTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.jigsaw_item_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._jigsaw_puzzle_board
  L2_2 = L1_2
  L1_2 = L1_2.SetUIRectTransform
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_transform_bound
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._jigsaw_puzzle_board
  L2_2 = L1_2
  L1_2 = L1_2.SetInnerUIRectTransform
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_transform_depot
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_jigsaw_item_view
  L1_2(L2_2)
  L1_2 = A0_2._state_machine
  L2_2 = L1_2
  L1_2 = L1_2.set_current_state
  L3_2 = A0_2._not_game_pad_state
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogFormat
    L2_2 = "[hwx] change_state(self._ui_navigation_state)"
    L1_2(L2_2)
    L1_2 = A0_2._state_machine
    L2_2 = L1_2
    L1_2 = L1_2.change_state
    L3_2 = A0_2._ui_navigation_state
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_gamepad_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = "UIText_JigsawPuzzle_RotateTips_Joystick"
    if L3_2 then
      goto lbl_35
    end
  end
  L3_2 = "UIText_JigsawPuzzle_RotateTips"
  ::lbl_35::
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_create_temp_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_interactable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state_machine
  L2_2 = L1_2
  L1_2 = L1_2.change_state
  L3_2 = A0_2._child_dialog_open_state
  L1_2(L2_2, L3_2)
end
L0_1._on_lost_focus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._state_machine
  L2_2 = L1_2
  L1_2 = L1_2.get_current_state
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._child_dialog_open_state
  if L1_2 == L2_2 then
    L1_2 = A0_2._state_machine
    L2_2 = L1_2
    L1_2 = L1_2.get_previous_state
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = A0_2._not_game_pad_state
      if L1_2 == L2_2 then
        L2_2 = A0_2._state_machine
        L3_2 = L2_2
        L2_2 = L2_2.change_state
        L4_2 = A0_2._free_cursor_state
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._state_machine
        L3_2 = L2_2
        L2_2 = L2_2.change_state
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
      L2_2 = A0_2._state_machine
      L3_2 = L2_2
      L2_2 = L2_2.get_current_state
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._ui_navigation_state
      if L2_2 ~= L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2.clear_cur_selected_object
        L2_2(L3_2)
        L2_2 = A0_2._jigsaw_puzzle_board
        L3_2 = L2_2
        L2_2 = L2_2.ShowDefaultCursor
        L2_2(L3_2)
        L2_2 = G
        L2_2 = L2_2.SuperDebug
        L2_2 = L2_2.LogFormat
        L3_2 = "[hwx] _on_got_focus clear_cur_selected_object"
        L2_2(L3_2)
      end
    else
      L2_2 = A0_2._state_machine
      L3_2 = L2_2
      L2_2 = L2_2.change_state
      L4_2 = A0_2._not_game_pad_state
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_got_focus = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_49
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.JigsawPuzzleItemPanel
  L8_2 = G
  L8_2 = L8_2.JigsawPuzzleItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_exit_depot_area
  L7_2 = A0_2._exit_depot_callback
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_on_end_drag
  L7_2 = A0_2._on_child_panel_end_drag
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_parent_rect
  L7_2 = A0_2._binder
  L7_2 = L7_2.rect_transform_content
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_scroll_rect
  L7_2 = A0_2._binder
  L7_2 = L7_2.scroll_rect
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_on_btn_root_callback
  L7_2 = A0_2._on_jigsaw_panel_btn_root
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_on_begin_drag
  L7_2 = A0_2._on_child_panel_begin_drag
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_on_common_pointer_up_callback
  L7_2 = A0_2._on_child_panel_common_pointer_up
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_49::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._collect_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._jigsaw_puzzle_board
  L9_2 = A0_2._binder
  L9_2 = L9_2.canvas
  L9_2 = L9_2.sortingOrder
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_empty_state
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_depot_rect
  L7_2 = A0_2._binder
  L7_2 = L7_2.rect_transform_bound
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._jigsaw_panels
  L5_2[A2_2] = L4_2
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._jigsaw_puzzle_board
  L3_2 = L2_2
  L2_2 = L2_2.GetInBoxItems
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._collect_items = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_not_empty_num
  L3_2 = A0_2._collect_items
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._pre_not_empty_count
  if L2_2 ~= nil then
    L2_2 = A0_2._pre_not_empty_count
    if L1_2 > L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogFormat
      L3_2 = "[hwx] self._pre_not_empty_count:%d, _cur_not_empty_count:%d"
      L4_2 = A0_2._pre_not_empty_count
      L5_2 = L1_2
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_AudioManager
      L3_2 = L2_2
      L2_2 = L2_2.PostEvent
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.Prop
      L4_2 = L4_2.JigsawPuzzleBoard
      L4_2 = L4_2.JigsawConfig
      L4_2 = L4_2.EvJigsawItemRecover
      L2_2(L3_2, L4_2)
    end
  end
  A0_2._pre_not_empty_count = L1_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "[hwx] #self._collect_items:%d"
  L4_2 = A0_2._collect_items
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._jigsaw_panels = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.jigsaw_item_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._collect_items
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.jigsaw_item_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._temp_panel
  if L2_2 then
    L2_2 = A0_2._temp_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_jigsaw_item_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = #A1_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.isInBoard
    if not L8_2 then
      L8_2 = L7_2.isInUIDragging
      if not L8_2 then
        goto lbl_13
      end
    end
    L2_2 = L2_2 - 1
    ::lbl_13::
  end
  return L2_2
end
L0_1._get_not_empty_num = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIUtils
    L3_2 = L3_2.RaycastByMouseOrTouch
    L3_2 = L3_2()
    A2_2 = L3_2
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = "[hwx] mouse z:%f"
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Input
  L5_2 = L5_2.mousePosition
  L5_2 = L5_2.z
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = "[hwx] screen x:%f, y:%f, z:%f shapeType:%d"
  L5_2 = A2_2.x
  L6_2 = A2_2.y
  L7_2 = A2_2.z
  L8_2 = A1_2.type
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._jigsaw_puzzle_board
  L4_2 = L3_2
  L3_2 = L3_2.CreateMoveableItemFromUI
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.bg_event_trigger
  L4_2.NewCreatedListener = nil
end
L0_1._exit_depot_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_ui_dragging_state
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2._jigsaw_puzzle_board
    L2_2 = L1_2
    L1_2 = L1_2.ClearAllMovealbeItems
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_jigsaw_item_view
    L1_2(L2_2)
    L1_2 = A0_2._state_machine
    L2_2 = L1_2
    L1_2 = L1_2.change_state
    L3_2 = A0_2._ui_navigation_state
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "[hwx] btn reset click"
  L1_2(L2_2)
end
L0_1._on_btn_reset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "[hwx] btn close click"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_ui_dragging_state
  L1_2(L2_2)
  L1_2 = A0_2._jigsaw_puzzle_board
  L2_2 = L1_2
  L1_2 = L1_2.OnQuit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L0_1._on_ui_close_notify = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "[hwx] _on_ui_refresh_notify"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_jigsaw_item_view
  L1_2(L2_2)
end
L0_1._on_ui_refresh_notify = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "[hwx] _on_show_jigsaw_puzzle_cursor_in_box: "
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = nil
  if A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_navigation_target_by_jigsaw_item_data
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2._state_machine
  L4_2 = L3_2
  L3_2 = L3_2.change_state
  L5_2 = A0_2._ui_navigation_state
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_show_jigsaw_puzzle_cursor_in_box = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.EventSystems
  L2_2 = L2_2.MoveDirection
  L2_2 = L2_2.Left
  if A1_2 == L2_2 then
    L2_2 = A0_2._state_machine
    L3_2 = L2_2
    L2_2 = L2_2.get_current_state
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._ui_navigation_state
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._change_to_free_cursor
      L2_2(L3_2)
    end
  end
end
L0_1._on_ui_navigation_fail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_rotation_tips
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1._ui_on_jigsaw_puzzle_rotate_tip = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._dragging_panel
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "[hwx] _ui_create_jigsaw_item _dragging_panel"
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._copy_dragging_panel_to_temp
    L4_2 = A0_2._dragging_panel
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_new_2d_panel
    L4_2 = A0_2._dragging_panel
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_create_temp_panel
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "[hwx] _ui_create_jigsaw_item _temp_panel"
    L2_2(L3_2)
    L2_2 = A0_2._temp_panel
    L3_2 = L2_2
    L2_2 = L2_2.enable_raycast
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._temp_panel
    L2_2 = L2_2._binder
    L2_2 = L2_2.animator_button
    L2_2.enabled = true
    L3_2 = A0_2
    L2_2 = A0_2._setup_new_2d_panel
    L4_2 = A0_2._temp_panel
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._temp_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.bg_event_trigger
    L3_2 = A0_2._temp_panel
    L3_2 = L3_2._binder
    L3_2 = L3_2.event_trigger_listener
    L2_2.NewCreatedListener = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.bg_event_trigger
    L2_2 = L2_2.IsDragging
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogFormat
      L3_2 = "[hwx] force pointer up"
      L2_2(L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.bg_event_trigger
      L3_2 = L2_2
      L2_2 = L2_2.OnEndDrag
      L4_2 = nil
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._ui_create_jigsaw_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A2_2
  L6_2 = A0_2._jigsaw_puzzle_board
  L7_2 = A0_2._binder
  L7_2 = L7_2.canvas
  L7_2 = L7_2.sortingOrder
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_empty
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.manual_begin_drag
  L3_2(L4_2)
  L3_2 = A1_2._binder
  L3_2 = L3_2.event_trigger_listener
  L4_2 = L3_2
  L3_2 = L3_2.ManualStopDrag
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._setup_new_2d_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state_machine
  L2_2 = L1_2
  L1_2 = L1_2.change_state
  L3_2 = A0_2._free_cursor_state
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._jigsaw_puzzle_board
  L2_2 = L1_2
  L1_2 = L1_2.ShowJoystickCursor
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L3_2 = L3_2.zero
  L1_2(L2_2, L3_2)
end
L0_1._change_to_free_cursor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.collect_item_data
  L2_2 = L2_2.isInBoard
  if not L2_2 then
    L2_2 = A1_2.collect_item_data
    L2_2 = L2_2.isInUIDragging
    if not L2_2 then
      goto lbl_12
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._change_to_free_cursor
  L2_2(L3_2)
  goto lbl_33
  ::lbl_12::
  L2_2 = A0_2._jigsaw_puzzle_board
  L3_2 = L2_2
  L2_2 = L2_2.ShowJoystickCursor
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L4_2 = L4_2.zero
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._jigsaw_puzzle_board
  L3_2 = L2_2
  L2_2 = L2_2.CreateMoveableItemFromUI
  L4_2 = A1_2.collect_item_data
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L5_2 = L5_2.zero
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._state_machine
    L4_2 = L3_2
    L3_2 = L3_2.change_state
    L5_2 = A0_2._item_move_state
    L3_2(L4_2, L5_2)
  end
  ::lbl_33::
end
L0_1._on_jigsaw_panel_btn_root = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.PostEvent
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prop
  L4_2 = L4_2.JigsawPuzzleBoard
  L4_2 = L4_2.JigsawConfig
  L4_2 = L4_2.EvJigsawItemSelect
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._copy_dragging_panel_to_temp
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._pre_not_empty_count
  L2_2 = L2_2 - 1
  A0_2._pre_not_empty_count = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._clear_ui_dragging_state
  L2_2(L3_2)
  A0_2._dragging_panel = A1_2
end
L0_1._on_child_panel_begin_drag = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._try_create_temp_panel
  L2_2(L3_2)
  L2_2 = A0_2._temp_panel
  L3_2 = L2_2
  L2_2 = L2_2.enable_raycast
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._temp_panel
  L2_2 = L2_2._binder
  L2_2 = L2_2.animator_button
  L2_2.enabled = false
  L3_2 = A1_2
  L2_2 = A1_2.get_navigation_game_object
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._temp_game_object
  L3_2 = L3_2.transform
  L4_2 = L2_2.transform
  L4_2 = L4_2.anchoredPosition
  L3_2.anchoredPosition = L4_2
  L3_2 = A0_2._temp_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._temp_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2.collect_item_data
  L6_2 = A0_2._jigsaw_puzzle_board
  L7_2 = A0_2._binder
  L7_2 = L7_2.canvas
  L7_2 = L7_2.sortingOrder
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._temp_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_empty
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._copy_dragging_panel_to_temp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_jigsaw_item_view
  L1_2(L2_2)
end
L0_1._on_child_panel_end_drag = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._dragging_panel = nil
end
L0_1._on_child_panel_common_pointer_up = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._temp_game_object
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.jigsaw_item_view
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 == nil then
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.jigsaw_item_view
    L4_2 = L4_2.ItemPrefabDataList
    L4_2 = L4_2[0]
    L4_2 = L4_2.mItemPrefab
    L5_2 = A0_2._binder
    L5_2 = L5_2.rect_transform_content
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._temp_game_object = L2_2
    L4_2 = A0_2
    L3_2 = A0_2._change_layer
    L5_2 = L2_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_close
    L6_2 = L6_2.gameObject
    L6_2 = L6_2.layer
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._temp_game_object
    L3_2 = L3_2.transform
    L4_2 = L1_2.UserObjectData
    L4_2 = L4_2._binder
    L4_2 = L4_2.root
    L4_2 = L4_2.transform
    L4_2 = L4_2.anchorMin
    L3_2.anchorMin = L4_2
    L3_2 = A0_2._temp_game_object
    L3_2 = L3_2.transform
    L4_2 = L1_2.UserObjectData
    L4_2 = L4_2._binder
    L4_2 = L4_2.root
    L4_2 = L4_2.transform
    L4_2 = L4_2.anchorMax
    L3_2.anchorMax = L4_2
    L3_2 = A0_2._temp_game_object
    L3_2 = L3_2.transform
    L4_2 = L1_2.UserObjectData
    L4_2 = L4_2._binder
    L4_2 = L4_2.root
    L4_2 = L4_2.transform
    L4_2 = L4_2.pivot
    L3_2.pivot = L4_2
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.JigsawPuzzleItemPanel
    L6_2 = G
    L6_2 = L6_2.JigsawPuzzleItemPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._temp_panel = L3_2
    L3_2 = A0_2._temp_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._temp_panel
    L4_2 = L3_2
    L3_2 = L3_2.register_exit_depot_area
    L5_2 = A0_2._exit_depot_callback
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._temp_panel
    L4_2 = L3_2
    L3_2 = L3_2.register_on_end_drag
    L5_2 = A0_2._on_child_panel_end_drag
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._temp_panel
    L4_2 = L3_2
    L3_2 = L3_2.register_parent_rect
    L5_2 = A0_2._binder
    L5_2 = L5_2.rect_transform_content
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._temp_panel
    L4_2 = L3_2
    L3_2 = L3_2.register_scroll_rect
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_rect
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._temp_panel
    L4_2 = L3_2
    L3_2 = L3_2.register_on_btn_root_callback
    L5_2 = A0_2._on_jigsaw_panel_btn_root
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._temp_panel
    L4_2 = L3_2
    L3_2 = L3_2.register_depot_rect
    L5_2 = A0_2._binder
    L5_2 = L5_2.rect_transform_bound
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._temp_panel
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_create_temp_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A1_2.layer = A2_2
  L3_2 = 0
  L4_2 = A1_2.transform
  L4_2 = L4_2.childCount
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._change_layer
    L9_2 = A1_2.transform
    L10_2 = L9_2
    L9_2 = L9_2.GetChild
    L11_2 = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = L9_2.gameObject
    L10_2 = A2_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._change_layer = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._ui_darken_jigsaw_puzzle_box = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "[hwx] _on_jigsaw_curor_state_change: "
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = A0_2._state_machine
  L3_2 = L2_2
  L2_2 = L2_2.get_current_state
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._child_dialog_open_state
  if L2_2 == L3_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prop
  L2_2 = L2_2.JigsawCurorState
  L2_2 = L2_2.Free
  if A1_2 == L2_2 then
    L2_2 = A0_2._state_machine
    L3_2 = L2_2
    L2_2 = L2_2.change_state
    L4_2 = A0_2._free_cursor_state
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prop
    L2_2 = L2_2.JigsawCurorState
    L2_2 = L2_2.Select
    if A1_2 == L2_2 then
      L2_2 = A0_2._state_machine
      L3_2 = L2_2
      L2_2 = L2_2.change_state
      L4_2 = A0_2._item_move_state
      L2_2(L3_2, L4_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prop
      L2_2 = L2_2.JigsawCurorState
      L2_2 = L2_2.Hide
      if A1_2 == L2_2 then
        L2_2 = A0_2._state_machine
        L3_2 = L2_2
        L2_2 = L2_2.change_state
        L4_2 = A0_2._ui_navigation_state
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_jigsaw_curor_state_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._jigsaw_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.logic_end_drag
    L6_2(L7_2)
  end
end
L0_1._clear_ui_dragging_state = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_navigation_target
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.jigsaw_item_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_navigation_game_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2._jigsaw_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.collect_item_data
    if L7_2 == A1_2 then
      L8_2 = L6_2
      L7_2 = L6_2.get_navigation_game_object
      return L7_2(L8_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_navigation_target_by_jigsaw_item_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogFormat
    L2_2 = "[hwx] change_state(self._not_game_pad_state) _on_in_control_input_switch"
    L1_2(L2_2)
    L1_2 = A0_2._state_machine
    L2_2 = L1_2
    L1_2 = L1_2.get_current_state
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._child_dialog_open_state
    if L1_2 == L2_2 then
      L1_2 = A0_2._jigsaw_puzzle_board
      L2_2 = L1_2
      L1_2 = L1_2.HideCursor
      L1_2(L2_2)
    end
    L1_2 = A0_2._state_machine
    L2_2 = L1_2
    L1_2 = L1_2.change_state
    L3_2 = A0_2._not_game_pad_state
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._state_machine
    L2_2 = L1_2
    L1_2 = L1_2.get_current_state
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._ui_navigation_state
    if L1_2 ~= L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.clear_cur_selected_object
      L1_2(L2_2)
    end
    L1_2 = A0_2._state_machine
    L2_2 = L1_2
    L1_2 = L1_2.get_current_state
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._child_dialog_open_state
    if L1_2 == L2_2 then
      L1_2 = A0_2._jigsaw_puzzle_board
      L2_2 = L1_2
      L1_2 = L1_2.ShowDefaultCursor
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_gamepad_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = "UIText_JigsawPuzzle_RotateTips_Joystick"
    if L3_2 then
      goto lbl_56
    end
  end
  L3_2 = "UIText_JigsawPuzzle_RotateTips"
  ::lbl_56::
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state_machine
  L2_2 = L1_2
  L1_2 = L1_2.get_current_state
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._ui_navigation_state
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._state_machine
    L2_2 = L1_2
    L1_2 = L1_2.get_current_state
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._not_game_pad_state
    if L1_2 ~= L2_2 then
      goto lbl_15
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
  ::lbl_15::
end
L0_1._in_control_exit_click = L1_1
return L0_1
