local L0_1, L1_1, L2_1, L3_1
L0_1 = class
L1_1 = "UIController"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._native = nil
  A0_2._ui_layer = nil
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.ViewCacheType_DontCache
  A0_2._view_cache_type = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.UIPriority_Default
  A0_2._priority = L1_2
  A0_2._binder = nil
  A0_2._ui3d_controller = nil
  A0_2._fade_animation = nil
  A0_2._view_set = nil
  L1_2 = {}
  A0_2._children = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.HashSet
  L1_2 = L1_2(L2_2)
  A0_2._async_load_panel_set = L1_2
  L1_2 = {}
  A0_2._timers = L1_2
  L1_2 = {}
  A0_2._exit_callbacks = L1_2
  L1_2 = {}
  A0_2._bind_button_events = L1_2
  L1_2 = {}
  A0_2._long_press_buttons = L1_2
  A0_2.is_all_res_loaded = false
  A0_2._pause_game = false
  A0_2._block_input = false
  A0_2._close_when_phase_changed = true
  A0_2._is_hide_cursor = false
  A0_2._is_focusable = true
  A0_2._is_resp_esc = true
  A0_2._is_special_above_dialog = false
  A0_2._is_repeatable_open_dialog = true
  A0_2._is_save_by_click = true
  A0_2._short_cut_hint_panel = nil
  A0_2._tickable = true
  A0_2._to_next_zoom_left_stick_type = nil
  A0_2._to_next_zoom_dpad_type = nil
  A0_2._is_to_next_zoom_by_confirm = true
  L1_2 = {}
  A0_2._in_control_click_callbacks = L1_2
  L1_2 = {}
  A0_2._in_control_press_callbacks = L1_2
  L1_2 = {}
  A0_2._in_control_released_callbacks = L1_2
  L1_2 = {}
  A0_2._keyboard_click_callbacks = L1_2
  L1_2 = {}
  A0_2._in_control_action_click_callbacks = L1_2
  A0_2._active = true
  A0_2._navigation_zone_mgr = nil
  A0_2.block_when_async_load = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_Default
  A0_2._transition_style = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.RPG_Client_Promise
  L1_2 = L1_2()
  A0_2._view_set_promise = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.RPG_Client_Promise
  L1_2 = L1_2()
  A0_2._exit_promise = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = false
  A0_2._allow_camera_zoom_by_gamepad = false
  A0_2._allow_camera_rotation = true
  A0_2._allow_camera_zoom = true
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._button_mutex = L1_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseMutex
  L1_2(L2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if nil ~= L1_2 then
    L1_2 = A0_2._binder
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._binder
    L1_2(L2_2)
  end
  L1_2 = A0_2._async_load_panel_set
  if nil ~= L1_2 then
    L1_2 = A0_2._async_load_panel_set
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._async_load_panel_set
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._remove_timers
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    A0_2[L4_2] = nil
  end
  L1_2 = A0_2._navigation_zone_mgr
  if L1_2 ~= nil then
    L1_2 = A0_2._navigation_zone_mgr
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._navigation_zone_mgr
    L1_2(L2_2)
  end
  L1_2 = A0_2._button_mutex
  if L1_2 then
    L1_2 = A0_2._button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._button_mutex
    L1_2(L2_2)
    A0_2._button_mutex = nil
  end
end
L0_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = A1_2
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end
L0_1._create_binder = L2_1
function L2_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = A1_2
  L5_2 = A0_2
  L6_2 = A2_2
  L7_2 = ...
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._children
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1.create_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2._on_load
  L3_2(L4_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._children
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1.create_panel_without_binder = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.is_disposing
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = 1
  L3_2 = A0_2._children
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._children
    L6_2 = L6_2[L5_2]
    if A1_2 == L6_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2._children
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      break
    end
  end
end
L0_1.remove_child = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.UI3DManager
  L2_2 = L2_2.get_controller
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._ui3d_controller = L2_2
  return L2_2
end
L0_1.fetch_ui3d = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._ui3d_controller
  return L1_2
end
L0_1.get_ui3d_controller = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = A0_2._children
  L2_2, L3_2 = L2_2(L3_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = 0
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L2_2
    L1_3 = L1_2
    L1_3 = #L1_3
    if L0_3 == L1_3 then
      L0_3 = nil
      return L0_3
    end
    L0_3 = L2_2
    L0_3 = L0_3 + 1
    L2_2 = L0_3
    L0_3 = L2_2
    L0_3 = L1_2[L0_3]
    L1_3 = L0_3._children
    if L1_3 then
      L1_3 = 1
      L2_3 = L0_3._children
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = table
        L5_3 = L5_3.insert
        L6_3 = L1_2
        L7_3 = L0_3._children
        L7_3 = L7_3[L4_3]
        L5_3(L6_3, L7_3)
      end
    end
    L1_3 = L2_2
    L2_3 = L0_3
    return L1_3, L2_3
  end
  return L3_2
end
L0_1._pairs_all_panels = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._async_load_panel_set
  L3_2 = L2_2
  L2_2 = L2_2.add
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_async_load_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._async_load_panel_set
  L3_2 = L2_2
  L2_2 = L2_2.remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._async_load_panel_set
  L3_2 = L2_2
  L2_2 = L2_2.count
  L2_2 = L2_2(L3_2)
  if L2_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.try_adjust_ui
    L2_2(L3_2)
  end
end
L0_1.async_load_panel_finish = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._native
  L2_2.ExitAfterTransition = A1_2
end
L0_1.set_exit_after_transition = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.OverrideTransition
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.override_transition = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.OverrideTransitionAnimType
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.override_transition_anim_type = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = ""
  return L1_2
end
L0_1.get_custom_fade_in_anim_name = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = ""
  return L1_2
end
L0_1.get_custom_fade_out_anim_name = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._native
    L3_2 = L2_2
    L2_2 = L2_2.SetLayerRecursive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_layer_recursive = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native
  L2_2 = L1_2
  L1_2 = L1_2.DoAdjustUI
  L1_2(L2_2)
end
L0_1.try_adjust_ui = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native
  L2_2 = L1_2
  L1_2 = L1_2.GetRootIndentValue
  return L1_2(L2_2)
end
L0_1.get_root_indent_value = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._view_cache_type
  return L1_2
end
L0_1.view_cache_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._native = A1_2
  L2_2 = A0_2._close_when_phase_changed
  A1_2.CloseWhenPhaseChanged = L2_2
  L2_2 = A0_2._is_hide_cursor
  A1_2.IsHideCursor = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._focusable_by_layer
  L2_2 = L2_2(L3_2)
  A1_2.IsFocusable = L2_2
  L2_2 = A0_2._is_resp_esc
  A1_2.IsRespEsc = L2_2
  L2_2 = A0_2._is_repeatable_open_dialog
  A1_2.IsRepeatableOpenDialog = L2_2
  L2_2 = A0_2.block_when_async_load
  A1_2.BlockWhenAsyncLoad = L2_2
  L2_2 = A0_2._transition_style
  A1_2.Transition = L2_2
  L2_2 = A0_2._view_cache_type
  A1_2.ViewCacheType = L2_2
  L2_2 = A0_2._priority
  A1_2.Priority = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_switch_zoom_control
  L2_2(L3_2)
end
L0_1.set_native = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._transition_style = A1_2
  L2_2 = A0_2._native
  L3_2 = A0_2._transition_style
  L2_2.Transition = L3_2
end
L0_1.set_transition_style = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui_layer
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_Dialog
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._ui_layer
    L2_2 = G
    L2_2 = L2_2.ImportCsToLua
    L2_2 = L2_2.CS_RPG_Client_UILayer_Page
    if L1_2 ~= L2_2 then
      goto lbl_16
    end
  end
  L1_2 = A0_2._is_focusable
  do return L1_2 end
  goto lbl_27
  ::lbl_16::
  L1_2 = A0_2._ui_layer
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_AboveDialog
  if L1_2 == L2_2 then
    L1_2 = A0_2._is_special_above_dialog
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
  ::lbl_27::
end
L0_1._focusable_by_layer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._native
  L2_2 = A0_2._is_to_next_zoom_by_confirm
  L1_2.IsToNextZoomByConfirm = L2_2
  L1_2 = A0_2._to_next_zoom_left_stick_type
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_to_next_zoom_left_stick_type
    L3_2 = A0_2._to_next_zoom_left_stick_type
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._to_next_zoom_dpad_type
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_to_next_zoom_dpad_type
    L3_2 = A0_2._to_next_zoom_dpad_type
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_switch_zoom_control = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._native
  L2_2.IsToNextZoomByConfirm = A1_2
end
L0_1.setup_to_next_zoom_by_confirm = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._native
  L2_2.ToNextZoomLeftStickType = A1_2
  L2_2 = A0_2._native
  L3_2 = NextZoom2PrevZoomLeftStick
  L3_2 = L3_2[A1_2]
  L2_2.ToPrevZoomLeftStickType = L3_2
end
L0_1.setup_to_next_zoom_left_stick_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._native
  L2_2.ToNextZoomDPadType = A1_2
  L2_2 = A0_2._native
  L3_2 = NextZoom2PrevZoomDPad
  L3_2 = L3_2[A1_2]
  L2_2.ToPrevZoomDPadType = L3_2
end
L0_1.setup_to_next_zoom_dpad_type = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._native
  return L1_2
end
L0_1.get_native = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._ui_layer
  return L1_2
end
L0_1.get_ui_layer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.show
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.show
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.async_show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.add_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.add_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.remove_tick
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.remove_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tickable
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_tick
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._execute_exit_callback
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.exit_controller
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native
  if L1_2 ~= nil then
    L1_2 = A0_2._native
    L2_2 = L1_2
    L1_2 = L1_2.SilentExit
    L1_2(L2_2)
  end
end
L0_1.silent_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native
  if L1_2 ~= nil then
    L1_2 = A0_2._native
    L2_2 = L1_2
    L1_2 = L1_2.Exit
    L1_2(L2_2)
  end
end
L0_1.native_exit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  if L2_2 ~= nil then
    L2_2 = A0_2._native
    L3_2 = L2_2
    L2_2 = L2_2.MuteHandlersRecursive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.mute_handlers_recursive = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.TryPlayEntranceAnim
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._native
    L3_2 = L2_2
    L2_2 = L2_2.TryStopEntranceAnim
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1.play_fade_in_anim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.TryPlayExitAnim
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._native
    L3_2 = L2_2
    L2_2 = L2_2.TryStopExitAnim
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1.play_fade_out_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fade_animation
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2._fade_animation
  L2_2 = L1_2
  L1_2 = L1_2.GetEntranceClipLength
  return L1_2(L2_2)
end
L0_1.fade_in_duration = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fade_animation
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2._fade_animation
  L2_2 = L1_2
  L1_2 = L1_2.GetExitClipLength
  return L1_2(L2_2)
end
L0_1.fade_out_duration = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._blackboard
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.BlackBoard
    L1_2 = L1_2(L2_2)
    A0_2._blackboard = L1_2
  end
  L1_2 = A0_2._blackboard
  return L1_2
end
L0_1.get_blackboard = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_handlers
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._dispose_all_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._unload
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_dispose
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._destroy_view_object
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._resolve_promise
  L3_2 = A0_2._view_set_promise
  L1_2(L2_2, L3_2)
end
L0_1._do_release_asset = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.CurState
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Promises
  L3_2 = L3_2.PromiseState
  L3_2 = L3_2.Pending
  if L2_2 == L3_2 then
    L3_2 = A1_2
    L2_2 = A1_2.Resolve
    L2_2(L3_2)
  end
end
L0_1._resolve_promise = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_unload
  L1_2(L2_2)
end
L0_1._unload = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._disposing = true
  L1_2 = A0_2._children
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._children
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.is_destroyed
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.dispose
      L6_2(L7_2)
      L6_2 = G
      L6_2 = L6_2.delete
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  A0_2._disposing = false
end
L0_1._dispose_all_panels = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._disposing
  return L1_2
end
L0_1.is_disposing = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if nil ~= L1_2 then
    L1_2 = A0_2._binder
    L2_2 = L1_2
    L1_2 = L1_2.get_prefab_path
    return L1_2(L2_2)
  else
    L1_2 = nil
    return L1_2
  end
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L3_2 = A0_2._native
  L3_2 = L3_2.ViewTransform
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_load
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation_zone
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._cache_fade_animation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._wait_all_view_loaded
  L1_2(L2_2)
end
L0_1.on_after_ui2d_loaded = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_ui3d_load
  L1_2(L2_2)
  L1_2 = A0_2._ui3d_controller
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d_controller
    L1_2 = L1_2.config
    L1_2 = L1_2.join_ui_load
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._wait_all_view_loaded
      L1_2(L2_2)
    end
  end
end
L0_1.on_after_ui3d_loaded = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._view_set
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._resolve_promise
  L3_2 = A0_2._view_set_promise
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
  A0_2._view_set = true
end
L0_1.on_view_set = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_reconnect
  L1_2(L2_2)
end
L0_1.on_network_reconnect = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._view_set_promise
  return L1_2
end
L0_1.view_set_promise = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._should_wait_3d_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_all_view_loaded
  L1_2(L2_2)
end
L0_1._wait_all_view_loaded = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui3d_controller
  L1_2 = A0_2._ui3d_controller
  L1_2 = L1_2.config
  L1_2 = L1_2.join_ui_load
  if L1_2 then
    L1_2 = A0_2._ui3d_controller
    L2_2 = L1_2
    L1_2 = L1_2.is_loaded
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 ~= nil and L1_2
  end
  return L1_2
end
L0_1._should_wait_3d_loaded = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native
  L2_2 = L1_2
  L1_2 = L1_2.OnLuaViewLoaded
  L1_2(L2_2)
end
L0_1._on_all_view_loaded = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_loaded = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = UNITY_EDITOR
  if L1_2 then
    L1_2 = A0_2.listen_zooms
    if L1_2 then
      L1_2 = A0_2.listen_zooms
      L1_2 = #L1_2
      if 3 < L1_2 then
        L1_2 = G
        L1_2 = L1_2.SuperDebug
        L1_2 = L1_2.LogErrorFormatWithTag
        L2_2 = G
        L2_2 = L2_2.LogTag
        L2_2 = L2_2.Navigation
        L3_2 = "A maximum of three navigation areas are supported..."
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = A0_2.listen_zooms
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._subscribe_listener
    L3_2 = A0_2.listen_zooms
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._pairs_all_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.listen_zooms
    if L6_2 ~= nil then
      L7_2 = A0_2
      L6_2 = A0_2._subscribe_listener
      L8_2 = L5_2.listen_zooms
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1._init_navigation_zone = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._navigation_zone_mgr
  if L3_2 == nil then
    L3_2 = G
    L3_2 = L3_2.new
    L4_2 = "Base.Ui.NavigationZoomManager"
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._navigation_zone_mgr = L3_2
  end
  L3_2 = A0_2._navigation_zone_mgr
  L4_2 = L3_2
  L3_2 = L3_2.subscribe_listener
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._subscribe_listener = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._navigation_zone_mgr
  L2_2 = L1_2
  L1_2 = L1_2.get_next_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.listen_zooms
  L2_2 = #L2_2
  if L1_2 >= L2_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_in_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._is_can_to_zoom
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1.is_can_to_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._navigation_zone_mgr
  L2_2 = L1_2
  L1_2 = L1_2.get_prev_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 < L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._is_can_back_zoom
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1.is_can_back_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L0_1._is_can_back_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.to_next_zoom
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.to_next_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_in_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    if A1_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_can_leave_special_zoom
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.leave_special_zoom
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._pairs_all_panels
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L8_2 = L6_2
          L7_2 = L6_2.leave_special_zoom
          L7_2(L8_2)
        end
        L2_2 = A0_2._navigation_zone_mgr
        L3_2 = L2_2
        L2_2 = L2_2.refresh_navigation_target
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._on_leave_special_zoom
        L2_2(L3_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2.leave_special_zoom_fail
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._pairs_all_panels
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L8_2 = L6_2
          L7_2 = L6_2.leave_special_zoom_fail
          L7_2(L8_2)
        end
      end
    end
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_can_back_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.to_prev_zoom
    L2_2(L3_2)
  else
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.get_prev_zoom
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.back_zoom_fail
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._pairs_all_panels
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.back_zoom_fail
      L10_2 = L2_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1.to_prev_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._visitor = A1_2
  L2_2 = A0_2.is_all_res_loaded
  if L2_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2._do_accept_visitor
    L2_2(L3_2)
  end
end
L0_1._accept_visitor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.is_all_res_loaded = true
  L2_2 = A0_2
  L1_2 = A0_2._pairs_all_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.all_res_loaded
    L6_2(L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_all_res_loaded
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._do_accept_visitor
  L1_2(L2_2)
end
L0_1.all_resource_loaded = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_all_res_loaded = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._visitor
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._pairs_all_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._visitor
    L7_2 = L6_2
    L6_2 = L6_2.visit
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._do_accept_visitor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "on_start_exit"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_start_exit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_events
  L1_2(L2_2)
end
L0_1.on_start_exit = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_start_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.on_pre_exit_controller
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._do_release_asset
  L1_2(L2_2)
end
L0_1.on_exit_pre_step = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._exit_promise
  L2_2 = L1_2
  L1_2 = L1_2.Resolve
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._execute_exit_callback
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.on_post_exit_controller
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.on_exit_final_step = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.JoinExit
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.join_exit = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._exit_promise
  return L1_2
end
L0_1.exit_promise = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
  end
end
L0_1._destroy_view_object = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_preload = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_ui3d_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_entrance_anim_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_first_child_dialog_open
  L1_2(L2_2)
end
L0_1.on_first_child_dialog_open = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_first_child_dialog_open = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_first_child_dialog_close
  L1_2(L2_2)
end
L0_1.on_first_child_dialog_close = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_first_child_dialog_close = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.remove_handlers
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_easy_touch_handlers
  L1_2(L2_2)
end
L0_1._remove_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIEasyTouchManager
  L1_2 = L1_2.remove_gesture_handlers
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._remove_easy_touch_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._bind_button_events
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.IsEqualsNull
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.RemoveAllListeners
      L6_2(L7_2)
      L7_2 = L5_2
      L6_2 = L5_2.Invoke
      L6_2(L7_2)
    end
  end
  L1_2 = pairs
  L2_2 = A0_2._long_press_buttons
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.IsEqualsNull
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = G
      L6_2 = L6_2.UIButtonEventManager
      L6_2 = L6_2.unbind_press
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L1_2 = {}
  A0_2._bind_button_events = L1_2
  L1_2 = {}
  A0_2._long_press_buttons = L1_2
end
L0_1._unbind_btn_events = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_reconnect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGFadeAnimation
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L4_2 = nil
  L5_2 = false
  L6_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._fade_animation = L1_2
end
L0_1._cache_fade_animation = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._active
  return L1_2
end
L0_1.is_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._do_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_set_view_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_view_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._active = A1_2
  L2_2 = A0_2._view_set
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_tickable
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._on_view_active_change
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._notify_all_panels_view_active_change
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_set_view_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._do_set_active = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._tickable = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_all_panels_tickable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_tickable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._pairs_all_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_tickable
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_all_panels_tickable = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._native
  L1_2 = L1_2.IsFocused
  return L1_2
end
L0_1.is_focused = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui_layer
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_Page
  if L1_2 ~= L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._native
  L2_2 = L1_2
  L1_2 = L1_2.IsTopmost
  L3_2 = false
  return L1_2(L2_2, L3_2)
end
L0_1.is_top_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native
  L2_2 = L1_2
  L1_2 = L1_2.IsTopmost
  return L1_2(L2_2)
end
L0_1.is_top_page_or_dialog = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.enable_async_instantiate = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_view_active_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._pairs_all_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.owner_active_change
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._notify_all_panels_view_active_change = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  if not A3_2 then
    A3_2 = false
  end
  L4_2 = A0_2._native
  L5_2 = L4_2
  L4_2 = L4_2.InstantiateObject
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.instantiate_object = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A2_2
    if L1_3 ~= nil then
      L1_3 = A2_2
      L2_3 = A3_2
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
  end
  L6_2 = A0_2._native
  L7_2 = L6_2
  L6_2 = L6_2.AsyncLoadPrefab
  L8_2 = A1_2
  L9_2 = L5_2
  L10_2 = A4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L0_1.async_load_prefab = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.SyncLoadPrefab
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.sync_load_prefab = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A2_2 then
    A2_2 = false
  end
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.DestroyGameObject
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.destroy_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.AsyncLoadSpriteTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_sprite_to = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.AsyncLoadMaterial
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_material = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.AsyncLoadTextureTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_load_texture = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.LoadSpriteTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_sprite_to = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.LoadTextureTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_texture_to = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.LoadMaterialTo
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.load_material_to = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.ReleaseSpriteIn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.async_release_sprite_in = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.ReleaseMaterialIn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.async_release_material_in = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.ReleaseTextureIn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.async_release_texture_in = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.ReleaseSpriteIn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.release_sprite_in = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.ReleaseMaterialIn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.release_material_in = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.ReleaseTextureIn
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.release_texture_in = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.AsyncPreloadParallel
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_preload_parallel = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._native
  L4_2 = L3_2
  L3_2 = L3_2.AsyncPreload
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.async_preload = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.TimerItemBase
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.add_timer_handle
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
  if A3_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.set_total_time
    L7_2 = A3_2
    L5_2(L6_2, L7_2)
  else
    L4_2.is_infine_loop = true
  end
  if A2_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.set_interval
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
  L6_2 = L4_2
  L5_2 = L4_2.reset
  L5_2(L6_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._timers
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1._add_count_down_timer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._timers
  if nil == L1_2 then
    return
  end
  L2_2 = #L1_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.stop
    L6_2(L7_2)
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.dispose
    L6_2(L7_2)
    L1_2[L5_2] = nil
  end
end
L0_1._remove_timers = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L3_2 = {}
  L3_2.callback = A1_2
  L3_2.obj = A2_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._exit_callbacks
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.set_exit_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._exit_callbacks
  if L1_2 then
    L1_2 = ipairs
    L2_2 = A0_2._exit_callbacks
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.callback
      if L6_2 ~= nil then
        L6_2 = L5_2.callback
        L7_2 = L5_2.obj
        L6_2(L7_2)
      end
    end
    A0_2._exit_callbacks = nil
  end
end
L0_1._execute_exit_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIButtonEventManager
  L2_2 = L2_2.bind
  L3_2 = A1_2
  L4_2 = A0_2
  L5_2 = A0_2.exit
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._bind_button_events
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._bind_exit_btn = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L4_2 = G
    L4_2 = L4_2.UIButtonEventManager
    L4_2 = L4_2.bind
    L5_2 = A1_2
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._bind_button_events
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._bind_btn_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_short_down_click
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_short_down_click = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_short_click
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_short_click = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_long_click
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_long_click = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = G
  L6_2 = L6_2.UIButtonEventManager
  L6_2 = L6_2.bind_long_press_repeat
  L7_2 = A1_2
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = A0_2._long_press_buttons
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
end
L0_1._bind_long_press_repeated = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_release
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_release = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_long_press_exit
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_long_press_exit = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_over_short_click_time
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._owner
  L5_2 = L5_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_over_short_click_time = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_pressing_down
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._owner
  L5_2 = L5_2._long_press_buttons
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1._bind_pressing_down = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.UIEasyTouchManager
  L3_2 = L3_2.add_gesture_handler
  L4_2 = A1_2
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._bind_gesture = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = G
  L6_2 = L6_2.UIButtonEventManager
  L6_2 = L6_2.bind_hold
  L7_2 = A1_2
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._bind_btn_hold = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = G
  L6_2 = L6_2.UIButtonEventManager
  L6_2 = L6_2.unbind_hold
  L7_2 = A1_2
  L8_2 = A0_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._unbind_btn_hold = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.bind_value_change
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._bind_value_change = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UIButtonEventManager
  L4_2 = L4_2.unbind
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._unbind_btn_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.UI
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._add_notify_handler = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.remove_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.UI
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._remove_notify_handler = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.add_packet_handler
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyGroup
  L5_2 = L5_2.UI
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._add_packet_handler = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.remove_packet_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyGroup
  L4_2 = L4_2.UI
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._remove_packet_handler = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A2_2 == nil then
    A2_2 = A1_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UIManager
  L4_2 = L3_2
  L3_2 = L3_2.BlockFixedTime
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = nil
  L8_2 = true
  L9_2 = "LuaUIController"
  L10_2 = tostring
  L11_2 = A0_2.__name
  L10_2 = L10_2(L11_2)
  L9_2 = L9_2 .. L10_2
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.show_full_screen_block = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = false
  end
  if not A2_2 then
    A2_2 = 0
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UIManager
  L4_2 = L3_2
  L3_2 = L3_2.BlockForeverTime
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = true
  L8_2 = "LuaUIController"
  L9_2 = tostring
  L10_2 = A0_2.__name
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 .. L9_2
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.show_full_screen_block_forever = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A2_2 == nil then
    A2_2 = 30
  end
  if A3_2 == nil then
    A3_2 = 2
  end
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_UIManager
  L5_2 = L4_2
  L4_2 = L4_2.BlockWaitNetPacket
  L6_2 = A1_2
  L7_2 = nil
  L8_2 = nil
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = 0
  L12_2 = false
  L13_2 = "LuaUIController"
  L14_2 = tostring
  L15_2 = A0_2.__name
  L14_2 = L14_2(L15_2)
  L15_2 = " cmdID"
  L16_2 = tostring
  L17_2 = A1_2
  L16_2 = L16_2(L17_2)
  L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1.show_full_screen_block_for_packet = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if A3_2 == nil then
    A3_2 = 3
  end
  if A4_2 == nil then
    A4_2 = A3_2
  end
  L5_2 = G
  L5_2 = L5_2.UtilEngineWrap
  L5_2 = L5_2.ConvCsEnumToNum
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UIManager
  L6_2 = L5_2
  L5_2 = L5_2.BlockWaitNetPacket
  L7_2 = A1_2
  L8_2 = nil
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = 0
  L13_2 = false
  L14_2 = "LuaUIController"
  L15_2 = tostring
  L16_2 = A0_2.__name
  L15_2 = L15_2(L16_2)
  L16_2 = " cmdID"
  L17_2 = tostring
  L18_2 = A1_2
  L17_2 = L17_2(L18_2)
  L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L0_1.show_full_screen_block_with_autoclose_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._view_set
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.frameCount
  L2_2 = G
  L2_2 = L2_2.UIButtonEventManager
  L3_2 = L2_2
  L2_2 = L2_2.get_previous_click_frame
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    return
  end
  L3_2 = A0_2._navigation_zone_mgr
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.is_out_most_zoom
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.is_in_special_zoom
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._in_control_exit_click
        L3_2(L4_2)
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.GlobalVars
        L3_2 = L3_2.s_AudioManager
        L4_2 = L3_2
        L3_2 = L3_2.PostEvent
        L5_2 = "Ev_sfx_ui_click_common_cancel"
        L3_2(L4_2, L5_2)
      end
    end
  else
    L4_2 = A0_2
    L3_2 = A0_2._in_control_exit_click
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L4_2 = L3_2
    L3_2 = L3_2.PostEvent
    L5_2 = "Ev_sfx_ui_click_common_cancel"
    L3_2(L4_2, L5_2)
  end
end
L0_1.in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._navigation_zone_mgr
  if L1_2 then
    L1_2 = A0_2._navigation_zone_mgr
    L2_2 = L1_2
    L1_2 = L1_2.is_out_most_zoom
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.is_out_most_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._navigation_zone_mgr
  if L1_2 then
    L1_2 = A0_2._navigation_zone_mgr
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_zoom
    return L1_2(L2_2)
  end
end
L0_1.get_cur_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_return_to_top
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._pairs_all_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.on_return_to_top
    L6_2(L7_2)
  end
end
L0_1.on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIUnLockCameraZoom
  L3_2 = A0_2._allow_camera_zoom_rotation_by_mouse
  if L3_2 then
    L3_2 = A0_2._allow_camera_zoom
  end
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIUnLockCameraRotation
  L3_2 = A0_2._allow_camera_zoom_rotation_by_mouse
  if L3_2 then
    L3_2 = A0_2._allow_camera_rotation
  end
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIEnableCameraZoomByController
  L3_2 = A0_2._allow_camera_zoom_by_gamepad
  L1_2(L2_2, L3_2)
end
L0_1._update_input_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._short_cut_hint_panel
  if L1_2 then
    L1_2 = A0_2._short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_input_state
  L1_2(L2_2)
  L1_2 = A0_2._navigation_zone_mgr
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = A0_2._navigation_zone_mgr
      L2_2 = L1_2
      L1_2 = L1_2.refresh_navigation_target
      L1_2(L2_2)
      L1_2 = G
      L1_2 = L1_2.CS
      L1_2 = L1_2.EventSystem
      L1_2 = L1_2.current
      L1_2 = L1_2.currentSelectedGameObject
      if L1_2 == nil then
        L2_2 = A0_2
        L1_2 = A0_2.to_first_zoom
        L1_2(L2_2)
      end
    else
      L2_2 = A0_2
      L1_2 = A0_2.is_out_most_zoom
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.on_in_control_input_switch
        L1_2(L2_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_got_focus
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._pairs_all_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.on_got_focus
    L6_2(L7_2)
  end
end
L0_1.on_got_focus = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._short_cut_hint_panel
  if L1_2 then
    L1_2 = A0_2._short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_lost_focus
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._pairs_all_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.on_lost_focus
    L6_2(L7_2)
  end
end
L0_1.on_lost_focus = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_got_focus = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_lost_focus = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2.is_focused
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = A0_2._view_set
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._on_enter_zoom
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._pairs_all_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.enter_zoom
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.enter_zoom = L2_1
function L2_1(A0_2, A1_2, A2_2)
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.is_focused
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._view_set
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_leave_zoom
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._pairs_all_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.leave_zoom
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.leave_zoom = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_leave_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.InputActionWhiteListChanged
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_special_zoom
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._pairs_all_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.enter_special_zoom
    L6_2(L7_2)
  end
end
L0_1.enter_special_zoom = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_can_leave_special_zoom
  return L1_2(L2_2)
end
L0_1.is_can_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_can_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_leave_special_zoom_fail
  L1_2(L2_2)
end
L0_1.leave_special_zoom_fail = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_leave_special_zoom_fail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_back_zoom_fail
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.back_zoom_fail = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_back_zoom_fail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L1_2 = L1_2.currentSelectedGameObject
  L3_2 = A0_2
  L2_2 = A0_2._get_cur_navigation_target
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.EventSystem
    L3_2 = L3_2.current
    L4_2 = L3_2
    L3_2 = L3_2.SetSelectedGameObject
    L5_2 = nil
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.create_guide_particles
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_in_special_zoom
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.InputActionWhiteListChanged
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._on_leave_special_zoom
  L3_2(L4_2)
end
L0_1.leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_focused
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = A0_2._navigation_zone_mgr
        L3_2 = L2_2
        L2_2 = L2_2.set_cur_zoom_navigation_target
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
    end
    else
      L3_2 = A0_2
      L2_2 = A0_2.save_navigation_target
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.set_navigation_target = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.save_cur_zoom_navigation_target
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.save_navigation_target = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._navigation_zone_mgr
  if L3_2 then
    L3_2 = A0_2._navigation_zone_mgr
    L4_2 = L3_2
    L3_2 = L3_2.save_navigation_target_by_zoom
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.save_navigation_target_by_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.clear_zoom_navigation_target
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.clear_zoom_navigation_target = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_navigation_target
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.is_active
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return L1_2
  else
    L3_2 = A0_2
    L2_2 = A0_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.save_navigation_target_by_zoom
    L5_2 = NavigationZoneType
    L5_2 = L5_2.Zone1
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
    return L2_2
  end
end
L0_1.get_navigation_target = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._navigation_zone_mgr
  if L1_2 then
    L1_2 = A0_2._navigation_zone_mgr
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_navigation_target
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_cur_navigation_target = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._view_set
  if not L2_2 then
    return
  end
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.to_first_zoom
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.to_first_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._is_loaded
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.leave_special_zoom
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._pairs_all_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.on_in_control_input_switch
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.leave_special_zoom
    L7_2(L8_2)
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L3_2 = L2_2
    L2_2 = L2_2.SetSelectedGameObject
    L4_2 = nil
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.to_first_zoom
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.is_out_most_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.to_first_zoom
      L2_2(L3_2)
    end
  end
  L2_2 = A0_2._view_set
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_in_control_input_switch
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.on_in_control_input_switch = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._on_mouse_wheel_roll
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._pairs_all_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.on_mouse_wheel_roll
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.on_mouse_wheel_roll = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_mouse_wheel_roll = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._in_control_click_callbacks
  L3_2[A1_2] = A2_2
end
L0_1.setup_in_control_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._in_control_press_callbacks
  L3_2[A1_2] = A2_2
end
L0_1.setup_in_control_press_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._in_control_released_callbacks
  L3_2[A1_2] = A2_2
end
L0_1.setup_in_control_released_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._keyboard_click_callbacks
  L3_2[A1_2] = A2_2
end
L0_1.setup_keyboard_click_callbacks = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._in_control_action_click_callbacks
  L3_2[A1_2] = A2_2
end
L0_1.setup_in_control_action_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.is_focused
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._view_set
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_in_control_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._in_control_click_callbacks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 and L6_2 then
      L7_2 = L6_2
      L8_2 = L5_2
      L9_2 = A1_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.on_in_control_click = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_in_control_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2.is_focused
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = A0_2._view_set
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._on_in_control_press
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = pairs
  L4_2 = A0_2._in_control_press_callbacks
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2
    L9_2 = L6_2
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.on_in_control_press = L2_1
function L2_1(A0_2, A1_2, A2_2)
end
L0_1._on_in_control_press = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2.is_focused
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = A0_2._view_set
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._on_in_control_released
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = pairs
  L4_2 = A0_2._in_control_released_callbacks
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2
    L9_2 = L6_2
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.on_in_control_released = L2_1
function L2_1(A0_2, A1_2, A2_2)
end
L0_1._on_in_control_released = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.is_focused
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._view_set
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_in_control_action_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._in_control_action_click_callbacks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2
    L8_2 = L5_2
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.on_in_control_action_click = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._keyboard_click_callbacks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = L6_2
      L8_2 = L5_2
      L9_2 = A1_2
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_keyboard_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_keyboard_click = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._on_keyboard_click = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = G
  L5_2 = L5_2.UIUtils
  L5_2 = L5_2.setup_navigation
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectedGameObject
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_navigation_target
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.force_set_default_navigation_target = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L2_2 = L1_2
  L1_2 = L1_2.SetSelectedGameObject
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.force_set_first_navigation_target = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._navigation_zone_mgr
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_InControlActionsManager
    L1_2 = L1_2.IsBlockByTask
    if L1_2 then
      L1_2 = false
      return L1_2
    end
    L1_2 = A0_2._navigation_zone_mgr
    L2_2 = L1_2
    L1_2 = L1_2.is_can_to_special_zoom
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_can_to_special_zoom
      L1_2 = L1_2(L2_2)
    end
    return L1_2
  end
end
L0_1.is_can_to_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_can_to_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.set_can_to_special_zoom
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_can_to_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._navigation_zone_mgr
  if L1_2 then
    L1_2 = A0_2._navigation_zone_mgr
    L2_2 = L1_2
    L1_2 = L1_2.is_in_special_zoom
    return L1_2(L2_2)
  end
end
L0_1.is_in_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.set_in_special_zoom
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_in_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._navigation_zone_mgr
  if L1_2 then
    L1_2 = A0_2._navigation_zone_mgr
    L2_2 = L1_2
    L1_2 = L1_2.get_special_zoom_navigation_target
    return L1_2(L2_2)
  end
end
L0_1.get_special_zoom_navigation_target = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2.save_special_zoom_navigation_target
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
end
L0_1.save_special_zoom_navigation_target = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._navigation_zone_mgr
  if L3_2 then
    L3_2 = A0_2._navigation_zone_mgr
    L4_2 = L3_2
    L3_2 = L3_2._create_guide_particles
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.create_guide_particles = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_cur_navigation_target
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_guide_particles
    L5_2 = L2_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_in_special_zoom
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._navigation_zone_mgr
    L4_2 = L3_2
    L3_2 = L3_2.set_special_zoom_navigation_target
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.enter_special_zoom
    L3_2(L4_2)
  end
end
L0_1.set_special_zoom_navigation_target = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_or_ps_or_mobile_gamepad_mode
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2._binder
    if L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.root
      if L4_2 then
        if not A3_2 then
          A3_2 = "Contents/DialogFrame/Bottom/KeyMapHintRoot"
        end
        L4_2 = L1_1.SafeFind
        L5_2 = A0_2._binder
        L5_2 = L5_2.root
        L6_2 = A3_2
        L7_2 = false
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L5_2 = L1_1.SafeGetCmpt
        L6_2 = typeof
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.Client
        L7_2 = L7_2.PrefabLoadMeta
        L6_2 = L6_2(L7_2)
        L7_2 = A0_2._binder
        L7_2 = L7_2.root
        L8_2 = A3_2
        L9_2 = false
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L6_2 = L4_2 == nil
        L8_2 = A0_2
        L7_2 = A0_2.create_panel
        L9_2 = G
        L9_2 = L9_2.MazeShortCutHintPanel
        L10_2 = G
        L10_2 = L10_2.MazeShortCutHintPanelBinder
        L11_2 = A1_2
        L12_2 = A2_2
        L13_2 = L6_2
        L14_2 = L5_2
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        A0_2._short_cut_hint_panel = L7_2
        if L6_2 then
          L7_2 = A0_2._short_cut_hint_panel
          L8_2 = L7_2
          L7_2 = L7_2.async_bind
          L9_2 = A0_2._binder
          L9_2 = L9_2.root
          L7_2(L8_2, L9_2)
        else
          L7_2 = A0_2._short_cut_hint_panel
          L8_2 = L7_2
          L7_2 = L7_2.async_bind
          L9_2 = L4_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L4_2 = A0_2._short_cut_hint_panel
  return L4_2
end
L0_1.create_short_cut_hint_panel = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._short_cut_hint_panel
  if L4_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_short_cut_hint_panel
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2._short_cut_hint_panel = L4_2
    return
  end
  L4_2 = A0_2._short_cut_hint_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_short_cut_hint_view
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_short_cut_hint_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._short_cut_hint_panel
  if L1_2 then
    L1_2 = A0_2._short_cut_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.reset_view
    L1_2(L2_2)
  end
end
L0_1.reset_short_cut_hint_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._short_cut_hint_panel
  if L2_2 then
    L2_2 = A0_2._short_cut_hint_panel
    L3_2 = not A1_2
    L2_2.disable_default = L3_2
  end
end
L0_1.enable_default_short_cut_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._navigation_zone_mgr
  if L2_2 then
    L2_2 = A0_2._navigation_zone_mgr
    L3_2 = L2_2
    L2_2 = L2_2._get_zoom_navigation_target
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_zoom_navigation_target = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_focused
  L2_2 = L2_2(L3_2)
  if L2_2 or A1_2 then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L3_2 = L2_2
    L2_2 = L2_2.SetSelectedGameObject
    L4_2 = nil
    L2_2(L3_2, L4_2)
  end
end
L0_1.clear_cur_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._ui_layer
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_Page
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._native
  L1_2 = L1_2.ChildDialogs
  if L1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.Exit
    L6_2(L7_2)
  end
end
L0_1.exit_all_child_dialogs = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.AddHideNodeOnSharing
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_hide_node_on_sharing = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._native
  L3_2 = L2_2
  L2_2 = L2_2.RemoveHideNodeOnSharing
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.remove_hide_node_on_sharing = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = {}
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = ...
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.add_hide_node_on_sharing
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.add_hide_nodes_on_sharing = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.InControlInputModule
  L2_2.navigationControlType = A1_2
end
L0_1.setup_navigation_control_type = L2_1
return L0_1
