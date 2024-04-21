local L0_1, L1_1, L2_1, L3_1
L0_1 = "DailyMissionPage_TopBarFadeIn"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TopBarAreaPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_res_bar
  L2_2 = L1_2
  L1_2 = L1_2.enable_navi_reaction
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_res_bar
  L2_2 = L1_2
  L1_2 = L1_2.register_refresh_callback
  L3_2 = A0_2._on_res_refreshed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_navigation
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayToEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L1_1.show_with_anim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_res_bar
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.enable_res_area = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_res_bar
  L3_2 = not A1_2
  L2_2.block_auto_refresh = L3_2
end
L1_1.enable_auto_refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_res_bar
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_navigation
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_pre_res_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_navigation
  L3_2 = A0_2._pre_res_targets
  L1_2(L2_2, L3_2)
end
L1_1.refresh_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._custom_first_object = nil
  L1_2 = {}
  A0_2._pre_res_targets = L1_2
  L1_2 = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_pre_res
  L2_2 = L2_2.childCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_pre_res
    L6_2 = L5_2
    L5_2 = L5_2.GetChild
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = L5_2.gameObject
    L6_2 = L5_2.activeSelf
    if L6_2 then
      L6_2 = A0_2._custom_first_object
      if L6_2 == nil then
        A0_2._custom_first_object = L5_2
      end
      L7_2 = L5_2
      L6_2 = L5_2.GetComponent
      L8_2 = typeof
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.AnimatorButton
      L8_2, L9_2 = L8_2(L9_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      function L7_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.save_navigation_target
        L2_3 = L6_2.gameObject
        L0_3(L1_3, L2_3)
      end
      L6_2.onSelectTrigger = L7_2
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._pre_res_targets
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L1_1._refresh_pre_res_btns = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_navigation
  L1_2(L2_2)
end
L1_1._on_res_refreshed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 ~= nil then
    L2_2 = #A1_2
    if L2_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_res_bar
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_btn
  L3_2 = L3_2(L4_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_navigation
  L6_2 = L2_2
  L7_2 = NavigationType
  L7_2 = L7_2.Horizontal
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L1_1._set_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._custom_first_object
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_res_bar
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L1_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L1_1._on_got_focus = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_in_special_zoom
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.RightStickButton
        L2_2 = #L2_2
        if A1_2 == L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.get_first_selected_object
          L2_2 = L2_2(L3_2)
          L4_2 = A0_2
          L3_2 = A0_2.set_special_zoom_navigation_target
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L1_1._on_in_control_click = L2_1
return L1_1
