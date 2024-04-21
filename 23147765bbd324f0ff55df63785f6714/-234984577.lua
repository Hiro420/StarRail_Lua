local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HandbookModule
L1_1 = 0.3
L2_1 = {}
L2_1.normal = "#979898"
L2_1.reached = "#3c3c3b"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "HandbookDailyActivePanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._active_reward_datas = L1_2
  A0_2._reward_count = 0
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchDown
  L4_2 = A0_2._on_touch_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.TouchUp
  L4_2 = A0_2._on_touch_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._on_swipe
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  A0_2._should_hide = true
end
L3_1._on_touch_down = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._should_hide
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._hide_reward
    L1_2(L2_2)
  end
end
L3_1._on_touch_up = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._should_hide
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._hide_reward
    L1_2(L2_2)
  end
end
L3_1._on_swipe = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_reward
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L3_1.on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_zero_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_view
  L1_2(L2_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ActivePoint
  L1_2 = L1_2 <= 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_not_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_0
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  if L1_2 then
    L4_2 = L2_1.normal
    if L4_2 then
      goto lbl_22
    end
  end
  L4_2 = L2_1.reached
  ::lbl_22::
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
end
L3_1._setup_zero_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L0_1.ActivePoint
  L3_2 = L0_1.MaxActivePoint
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_active_point
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1._setup_info_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDailyActiveRewards
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._active_reward_datas = L1_2
  L1_2 = A0_2._active_reward_datas
  L1_2 = #L1_2
  A0_2._reward_count = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._active_reward_datas
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._reward_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_reward
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_callback_index
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = A0_2._on_reward_clicked
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_select_callback
    L9_2 = A0_2._on_reward_selected
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._reward_count
    L7_2 = L5_2 == L7_2
    L6_2.is_last = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L10_2 = L6_2
    L9_2 = L6_2.get_first_selected_btn
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1._setup_item_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_zero_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_item_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_point_up
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1.setup_view_with_point_up = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = L0_1.ActivePoint
    if not (A1_2 >= L2_2) then
      L3_2 = A0_2
      L2_2 = A0_2.is_active_in_hierarchy
      L2_2 = L2_2(L3_2)
      if L2_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  A0_2._current_point = A1_2
  L2_2 = L0_1.ActivePoint
  L2_2 = L2_2 - A1_2
  A0_2._to_add_point = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tick
  L3_2 = L2_2
  L2_2 = L2_2.SetTickCallback
  L4_2 = A0_2._tick_point_bar
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._play_point_up = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = A0_2._reward_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_reward
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_point_process
    L9_2 = A0_2._current_point
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._current_point
  L3_2 = L0_1.ActivePoint
  if L2_2 >= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_tick
    L3_2 = L2_2
    L2_2 = L2_2.ClearTickCallback
    L2_2(L3_2)
    L2_2 = 1
    L3_2 = A0_2._reward_count
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._binder
      L6_2 = L6_2.list_reward
      L7_2 = L6_2
      L6_2 = L6_2.get_panel_by_index
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L8_2 = L6_2
      L7_2 = L6_2.setup_point_process
      L9_2 = L0_1.ActivePoint
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2._current_point
  L3_2 = A0_2._to_add_point
  L3_2 = L3_2 * A1_2
  L4_2 = L1_1
  L3_2 = L3_2 / L4_2
  L2_2 = L2_2 + L3_2
  A0_2._current_point = L2_2
end
L3_1._tick_point_bar = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_reward
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._showing_reward
    if L3_2 then
      L3_2 = A0_2._showing_reward_index
      if L3_2 == A1_2 then
        L4_2 = A0_2
        L3_2 = A0_2._hide_reward
        L3_2(L4_2)
    end
    else
      L4_2 = A0_2
      L3_2 = A0_2._show_reward
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1._on_reward_clicked = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._showing_reward
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_reward
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L3_1._on_reward_selected = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._showing_reward = true
  A0_2._should_hide = false
  A0_2._showing_reward_index = A1_2
  L2_2 = 1
  L3_2 = A0_2._reward_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_reward
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.show_reward
    L9_2 = A0_2._showing_reward_index
    L9_2 = L5_2 == L9_2
    L7_2(L8_2, L9_2)
  end
end
L3_1._show_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._showing_reward = false
  L2_2 = 1
  L3_2 = A0_2._reward_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_reward
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.show_reward
    L9_2 = false
    L10_2 = A1_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L3_1._hide_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = 1
  L3_2 = A0_2._reward_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.list_reward
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.has_reached
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.is_taken
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L1_2 = L5_2
          break
        end
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_reward
  L3_2 = L2_2
  L2_2 = L2_2.get_panel_by_index
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.get_first_selected_object
  return L3_2(L4_2)
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._showing_reward
    L2_2 = not L2_2
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L3_1._is_can_back_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._hide_reward
    L2_2(L3_2)
  end
end
L3_1._on_back_zoom_fail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._hide_reward
    L1_2(L2_2)
  end
end
L3_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_reward
  L1_2(L2_2)
end
L3_1._on_in_control_input_switch = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._hide_reward
    L2_2(L3_2)
  end
end
L3_1._on_enter_zoom = L4_1
return L3_1
