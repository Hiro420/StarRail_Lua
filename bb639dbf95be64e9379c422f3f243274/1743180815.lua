local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameOpticalIllusionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.VirtualCursor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.VirtualCursorBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameOpticalIllusionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_ClockBox_SelectModule"
L2_1 = "UIText_ClockBox_MoveModule"
L3_1 = "UIText_ClockBox_RotateModule"
L4_1 = "UIText_ClockBox_MoveMirror"
L5_1 = "UIText_ClockBox_Cancel"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reset
  L4_2 = A0_2._on_btn_reset
  L1_2(L2_2, L3_2, L4_2)
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
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OpticalIllusionUIHideHint
  L4_2 = A0_2._hint_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OpticalIllusionUISelectModule
  L4_2 = A0_2._hint_select_module
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OpticalIllusionUIMoveModule
  L4_2 = A0_2._hint_move_module
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OpticalIllusionUIMoveMirror
  L4_2 = A0_2._hint_move_mirror
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OpticalIllusionUIRotateModule
  L4_2 = A0_2._hint_rotate_module
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
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
L0_1._on_in_control_click = L6_1
function L6_1(A0_2)
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
L0_1._on_btn_reset = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bottom_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hint_hide = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 158
  L1_2(L2_2, L3_2)
end
L0_1._hint_select_module = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 160
  L1_2(L2_2, L3_2)
end
L0_1._hint_move_module = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 159
  L1_2(L2_2, L3_2)
end
L0_1._hint_move_mirror = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 161
  L1_2(L2_2, L3_2)
end
L0_1._hint_rotate_module = L6_1
return L0_1
