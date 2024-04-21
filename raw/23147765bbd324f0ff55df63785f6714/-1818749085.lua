local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeSpecialSelectedItemListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._selected_mat_panels = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "panel_selected_mat_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind_click
    L8_2 = A0_2._callback_self
    L9_2 = A0_2._callback
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._selected_mat_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_mat_panels
  L1_2 = L1_2[1]
  L1_2 = L1_2._binder
  L1_2 = L1_2.button
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_owner_dialog_canvas
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_owner_dialog_canvas
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_owner_dialog_canvas
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.TutorialSupportModule
    L6_2 = L5_2
    L5_2 = L5_2.SetNodeDynamicKey
    L7_2 = A0_2._selected_mat_panels
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2._binder
    L7_2 = L7_2.root
    L7_2 = L7_2.gameObject
    L8_2 = "RewardItemIcon"
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.rename_all_panels_name = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._owner
  L2_2.is_grid_item_canvas_alpha_half = A1_2
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.refresh_confirm_btn_and_mat_list_canvas
  L2_2(L3_2)
end
L0_1._set_owner_dialog_canvas = L2_1
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
        L2_2 = A0_2._owner
        L2_2 = L2_2._special_compose_items
        L2_2 = #L2_2
        if L2_2 ~= 0 then
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
end
L0_1._on_in_control_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._special_compose_items = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_material_num
  L3_2(L4_2)
  L3_2 = 1
  L4_2 = L1_1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L8_2 = "node_selected_mat_"
    L9_2 = L6_2
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2[L8_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L6_2 <= A2_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = {}
  A0_2._btn_list = L3_2
  L3_2 = 1
  L4_2 = 1
  L5_2 = A0_2._special_compose_items
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = 1
    L9_2 = A0_2._special_compose_items
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2.count
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = A0_2._selected_mat_panels
      L12_2 = L12_2[L3_2]
      L13_2 = L12_2
      L12_2 = L12_2.setup_view
      L14_2 = A0_2._special_compose_items
      L14_2 = L14_2[L7_2]
      L14_2 = L14_2.id
      L12_2(L13_2, L14_2)
      L3_2 = L3_2 + 1
    end
  end
  while A2_2 >= L3_2 do
    L4_2 = A0_2._selected_mat_panels
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = 2
    L4_2(L5_2, L6_2)
    L3_2 = L3_2 + 1
  end
  L4_2 = 1
  L5_2 = A2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._btn_list
    L10_2 = A0_2._selected_mat_panels
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2._binder
    L10_2 = L10_2.button
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._selected_mat_panels
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.safe_set_active
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L9_2 = "node_panel_selected_mat_"
    L10_2 = L7_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = A0_2._current_selected_materials_count
    L10_2 = L7_2 <= L10_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L9_2 = "node_panel_selected_mat_bg_"
    L10_2 = L7_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = A0_2._current_selected_materials_count
    L10_2 = L7_2 <= L10_2
    L8_2(L9_2, L10_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2.setup_navigation
  L6_2 = A0_2._btn_list
  L7_2 = NavigationType
  L7_2 = L7_2.Horizontal
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._current_selected_materials_count = 0
  L1_2 = 1
  L2_2 = A0_2._special_compose_items
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._current_selected_materials_count
    L6_2 = A0_2._special_compose_items
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.count
    L5_2 = L5_2 + L6_2
    A0_2._current_selected_materials_count = L5_2
  end
end
L0_1._setup_material_num = L2_1
return L0_1
