local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnFilterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnMultiSortPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnSortPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnQuickSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnMultiOrderOptionSortPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnFilterSortSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnFilterSortSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A3_2 or nil
  if not A3_2 then
    L4_2 = {}
  end
  A0_2._show_type_list = L4_2
  L4_2 = {}
  A0_2._btn_list = L4_2
  A0_2._enable = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_ui_show
  L1_2(L2_2)
end
L0_1.update_ui_show = L1_1
function L1_1(A0_2, A1_2)
  A0_2._enable = A1_2
end
L0_1.setup_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = FilterSortSelectEnum
  L2_2 = L2_2.Filter
  if A1_2 == L2_2 then
    L2_2 = A0_2.panel_filter
    return L2_2
  else
    L2_2 = FilterSortSelectEnum
    L2_2 = L2_2.MultiSort
    if A1_2 == L2_2 then
      L2_2 = A0_2.panel_multi_sort
      return L2_2
    else
      L2_2 = FilterSortSelectEnum
      L2_2 = L2_2.CommonSort
      if A1_2 == L2_2 then
        L2_2 = A0_2.panel_sort
        return L2_2
      else
        L2_2 = FilterSortSelectEnum
        L2_2 = L2_2.QuickSelect
        if A1_2 == L2_2 then
          L2_2 = A0_2.panel_quick_select
          return L2_2
        else
          L2_2 = FilterSortSelectEnum
          L2_2 = L2_2.MultiOrderOptionSort
          if A1_2 == L2_2 then
            L2_2 = A0_2.panel_multi_order_option_sort
            return L2_2
          end
        end
      end
    end
  end
end
L0_1.get_panel_by_enum = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._btn_list
    L1_2 = L1_2[1]
    L1_2 = L1_2.gameObject
    return L1_2
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._show_type_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = FilterSortSelectEnum
    L6_2 = L6_2.Filter
    if L5_2 == L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.BtnFilterPanel
      L9_2 = G
      L9_2 = L9_2.BtnFilterPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      A0_2.panel_filter = L6_2
      L6_2 = A0_2.panel_filter
      L7_2 = L6_2
      L6_2 = L6_2.bind
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_list
      L9_2 = FilterSortSelectEnum
      L9_2 = L9_2.Filter
      L8_2 = L8_2[L9_2]
      L6_2(L7_2, L8_2)
    else
      L6_2 = FilterSortSelectEnum
      L6_2 = L6_2.MultiSort
      if L5_2 == L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.create_panel
        L8_2 = G
        L8_2 = L8_2.BtnMultiSortPanel
        L9_2 = G
        L9_2 = L9_2.BtnMultiSortPanelBinder
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        A0_2.panel_multi_sort = L6_2
        L6_2 = A0_2.panel_multi_sort
        L7_2 = L6_2
        L6_2 = L6_2.bind
        L8_2 = A0_2._binder
        L8_2 = L8_2.root
        L6_2(L7_2, L8_2)
      else
        L6_2 = FilterSortSelectEnum
        L6_2 = L6_2.CommonSort
        if L5_2 == L6_2 then
          L7_2 = A0_2
          L6_2 = A0_2.create_panel
          L8_2 = G
          L8_2 = L8_2.BtnSortPanel
          L9_2 = G
          L9_2 = L9_2.BtnSortPanelBinder
          L6_2 = L6_2(L7_2, L8_2, L9_2)
          A0_2.panel_sort = L6_2
          L6_2 = A0_2.panel_sort
          L7_2 = L6_2
          L6_2 = L6_2.bind
          L8_2 = A0_2._binder
          L8_2 = L8_2.root
          L6_2(L7_2, L8_2)
        else
          L6_2 = FilterSortSelectEnum
          L6_2 = L6_2.QuickSelect
          if L5_2 == L6_2 then
            L7_2 = A0_2
            L6_2 = A0_2.create_panel
            L8_2 = G
            L8_2 = L8_2.BtnQuickSelectPanel
            L9_2 = G
            L9_2 = L9_2.BtnQuickSelectPanelBinder
            L6_2 = L6_2(L7_2, L8_2, L9_2)
            A0_2.panel_quick_select = L6_2
            L6_2 = A0_2.panel_quick_select
            L7_2 = L6_2
            L6_2 = L6_2.bind
            L8_2 = A0_2._binder
            L8_2 = L8_2.node_list
            L9_2 = FilterSortSelectEnum
            L9_2 = L9_2.QuickSelect
            L8_2 = L8_2[L9_2]
            L6_2(L7_2, L8_2)
          else
            L6_2 = FilterSortSelectEnum
            L6_2 = L6_2.MultiOrderOptionSort
            if L5_2 == L6_2 then
              L7_2 = A0_2
              L6_2 = A0_2.create_panel
              L8_2 = G
              L8_2 = L8_2.BtnMultiOrderOptionSortPanel
              L9_2 = G
              L9_2 = L9_2.BtnMultiOrderOptionSortPanelBinder
              L6_2 = L6_2(L7_2, L8_2, L9_2)
              A0_2.panel_multi_order_option_sort = L6_2
              L6_2 = A0_2.panel_multi_order_option_sort
              L7_2 = L6_2
              L6_2 = L6_2.bind
              L8_2 = A0_2._binder
              L8_2 = L8_2.root
              L6_2(L7_2, L8_2)
            end
          end
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_ui_show
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
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
end
L0_1._on_got_focus = L1_1
function L1_1(A0_2)
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
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._enable
  if L2_2 == false then
    return
  end
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
        L2_2 = L2_2.LeftStickButton
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
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._btn_list = L1_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._show_type_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = FilterSortSelectEnum
    L6_2 = L6_2.CommonSort
    if L5_2 == L6_2 then
      L6_2 = G
      L6_2 = L6_2.Utils
      L6_2 = L6_2.is_pc_or_ps_or_mobile_gamepad_mode
      L6_2 = L6_2()
      if L6_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.node_list
        L7_2 = FilterSortSelectEnum
        L7_2 = L7_2.CommonSort
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = true
        L6_2(L7_2, L8_2)
      else
        L6_2 = A0_2._binder
        L6_2 = L6_2.node_list
        L7_2 = FilterSortSelectEnum
        L7_2 = L7_2.MultiSort
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActive
        L8_2 = true
        L6_2(L7_2, L8_2)
      end
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_list
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
    L7_2 = A0_2
    L6_2 = A0_2.get_panel_by_enum
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L8_2 = L6_2
      L7_2 = L6_2.setup_in_control_button_enable
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.save_btn_list
      L9_2 = A0_2._btn_list
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = A0_2.attach_btn_list
  if L1_2 ~= nil then
    L1_2 = ipairs
    L2_2 = A0_2.attach_btn_list
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._btn_list
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_navigation
    L3_2 = A0_2._btn_list
    L4_2 = NavigationType
    L4_2 = L4_2.Horizontal
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._update_ui_show = L1_1
function L1_1(A0_2, A1_2)
  A0_2.attach_btn_list = A1_2
end
L0_1.attach_btn_navigation = L1_1
return L0_1
