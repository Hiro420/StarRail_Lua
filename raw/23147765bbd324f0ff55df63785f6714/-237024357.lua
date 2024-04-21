local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAlleyVirtualCursorPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%.2f"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.UIScaleFactor
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ui_scale_factor = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.width
  L2_2 = A0_2.ui_scale_factor
  L1_2 = L1_2 / L2_2
  L1_2 = L1_2 / 2
  A0_2._safe_half_width = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.height
  L2_2 = A0_2.ui_scale_factor
  L1_2 = L1_2 / L2_2
  L1_2 = L1_2 / 2
  A0_2._safe_half_height = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.ActivityAlleyPackUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pack_ui3d_page = L1_2
  A0_2._is_enable_cursor = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cursor_visible
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyPackJoyStickStateChange
  L4_2 = A0_2._on_joy_stick_state_change
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cursor_visible
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityAlley
  L2_2 = L2_2.AlleyPackController
  L2_2 = L2_2.AlleyJoyStickState
  L2_2 = L2_2.CursorSelection
  L2_2 = A1_2 == L2_2
  A0_2._is_enable_cursor = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cursor_visible
  L2_2(L3_2)
end
L0_1._on_joy_stick_state_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.reset_cursor_pos
  L1_2(L2_2)
end
L0_1.reset_cursor_pos = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.pane_virtual_cursor
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  return L1_2(L2_2)
end
L0_1.is_cursor_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cursor_visible
  L1_2(L2_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_enable_cursor
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.is_in_special_zoom
      L1_2 = L1_2(L2_2)
      L1_2 = not L1_2
    end
  end
  A0_2._show_cursor = L1_2
  L1_2 = A0_2._show_cursor
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.pane_virtual_cursor
    L2_2 = L1_2
    L1_2 = L1_2.show
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.reset_cursor_pos
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.pane_virtual_cursor
    L2_2 = L1_2
    L1_2 = L1_2.hide
    L1_2(L2_2)
  end
end
L0_1._refresh_cursor_visible = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init_cursor = L1_1
return L0_1
