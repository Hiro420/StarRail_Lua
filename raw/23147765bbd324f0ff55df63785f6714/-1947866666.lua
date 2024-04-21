local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGamePinballPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.PopupMenu"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.VirtualCursor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.VirtualCursorBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGamePinballPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.VirtualCursor
  L4_2 = G
  L4_2 = L4_2.VirtualCursorBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._virtual_cursor = L1_2
  L1_2 = A0_2._virtual_cursor
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.virtual_cursor_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PopupMenu
  L4_2 = G
  L4_2 = L4_2.PopupMenuBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._popup_menu = L1_2
  L1_2 = A0_2._popup_menu
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.popup_menu_root
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prop
  L1_2 = L1_2.PinballPageProxy
  L1_2 = L1_2.Instance
  L3_2 = L1_2
  L2_2 = L1_2.SetPopupMenu
  L4_2 = A0_2._popup_menu
  L5_2 = L4_2
  L4_2 = L4_2.get_csharp_proxy
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_count_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L5_2 = L1_2
  L4_2 = L1_2.GetOperateCount
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_2.PlayerCursorAttachTransform
  L2_2 = L2_2.position
  A0_2._station_position = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_player_cursor
  L4_2 = A0_2._station_position
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.player_pos_cursor
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.launch_btn
  L5_2 = A0_2._on_launch_btn_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.reset_btn
  L5_2 = A0_2._on_reset_btn_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._change_launch_btn_state
  L4_2 = L1_2.PageHintState
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PinballPuzzleActiveLaunchBtn
  L5_2 = A0_2._change_launch_btn_state
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIChangePinballPuzzleRemainPlateCount
  L5_2 = A0_2._change_remain_count
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_tick
  L2_2(L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PinballPuzzleLaunch
  L1_2(L2_2)
end
L0_1._on_launch_btn_click = L1_1
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
L0_1._on_reset_btn_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prop
  L2_2 = L2_2.PinballPageProxy
  L2_2 = L2_2.PinballPageHintState
  L2_2 = L2_2.LAUNCH
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.launch_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.ready_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prop
  L2_2 = L2_2.PinballPageProxy
  L2_2 = L2_2.PinballPageHintState
  L2_2 = L2_2.DEACTIVE
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.launch_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.ready_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.hint_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "MazeText_Maze_Gameplay_Pinball_Phase01"
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prop
  L2_2 = L2_2.PinballPageProxy
  L2_2 = L2_2.PinballPageHintState
  L2_2 = L2_2.BLOCKED
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.launch_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.ready_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.hint_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "MazeText_Maze_Gameplay_Pinball_Alert02"
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prop
  L2_2 = L2_2.PinballPageProxy
  L2_2 = L2_2.PinballPageHintState
  L2_2 = L2_2.STATION_ERROR_DIRECTION
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.launch_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.ready_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.hint_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "MazeText_Maze_Gameplay_Pinball_Alert03"
    L2_2(L3_2, L4_2)
  end
end
L0_1._change_launch_btn_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_count_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._change_remain_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_share_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._virtual_cursor
    L3_2 = L2_2
    L2_2 = L2_2.show
    L2_2(L3_2)
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._init_player_cursor
  L4_2 = A0_2._station_position
  L2_2(L3_2, L4_2)
end
L0_1._on_tick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_MainCamera
  L3_2 = L2_2
  L2_2 = L2_2.WorldToScreenPoint
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransformUtility
  L4_2 = L4_2.ScreenPointToLocalPointInRectangle
  L5_2 = A0_2._binder
  L5_2 = L5_2.player_pos_cursor
  L5_2 = L5_2.parent
  L6_2 = L3_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_UICamera
  L8_2 = nil
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.player_pos_cursor
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector3
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.localPosition = L7_2
end
L0_1._init_player_cursor = L1_1
return L0_1
