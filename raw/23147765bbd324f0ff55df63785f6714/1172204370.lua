local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResBarAreaPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._refresh_by_scale = A1_2
end
L0_1.set_fresh_list_by_scale = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Common.ResBarPanel"
  L6_2 = "Ui.Common.ResBarPanelBinder"
  L7_2 = A0_2._refresh_by_scale
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._res_bar_list = L1_2
  L1_2 = A0_2._res_bar_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_root
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._data_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  A0_2._custom_enable_navi_reaction = true
  A0_2.block_auto_refresh = false
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._res_bar_list
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._custom_enable_navi_reaction = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._custom_enable_navi_reaction
  if L2_2 then
    L2_2 = A0_2._data_list
    L2_2 = #L2_2
    L2_2 = 0 < L2_2
  end
  A0_2._enable_navi_reaction = L2_2
end
L0_1.enable_navi_reaction = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_in_control_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_navi_reaction
  if not L1_2 then
    return
  end
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
  L1_2 = A0_2._enable_navi_reaction
  if not L1_2 then
    return
  end
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
  L1_2 = A0_2._enable_navi_reaction
  if not L1_2 then
    return
  end
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
  L1_2 = A0_2._enable_navi_reaction
  if not L1_2 then
    return
  end
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
  L2_2 = A0_2._enable_navi_reaction
  if not L2_2 then
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
L0_1._on_in_control_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._refresh_callback = A1_2
  A0_2._refresh_handler = A2_2
end
L0_1.register_refresh_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  A0_2._data_list = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ResourceOverallExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = 0
    L6_2 = L4_2.CurrencyIDList
    L6_2 = L6_2.Length
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.CurrencyDisplayExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L4_2.CurrencyIDList
      L10_2 = L10_2[L8_2]
      L9_2 = L9_2(L10_2)
      L10_2 = L9_2.UnlockID
      if L10_2 ~= 0 then
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.Client
        L10_2 = L10_2.SystemOpenModule
        L10_2 = L10_2.IsOpen
        L11_2 = L9_2.UnlockID
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          goto lbl_51
        end
      end
      L10_2 = {}
      L11_2 = L4_2.CurrencyIDList
      L11_2 = L11_2[L8_2]
      L10_2.currency_id = L11_2
      L11_2 = L4_2.IsDetailButton
      L10_2.is_show_detail = L11_2
      L10_2.disable_goto = A2_2
      L10_2.ban_click = A3_2
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2._data_list
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
      ::lbl_51::
    end
  end
  L5_2 = A0_2._custom_enable_navi_reaction
  if L5_2 then
    L5_2 = A0_2._data_list
    L5_2 = #L5_2
    L5_2 = 0 < L5_2
  end
  A0_2._enable_navi_reaction = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._on_got_focus
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  A0_2._data_list = L3_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.currency_id = L7_2
    L9_2 = A2_2 or L9_2
    if not A2_2 then
      L9_2 = false
    end
    L8_2.is_show_detail = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._data_list
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = A0_2._custom_enable_navi_reaction
  if L3_2 then
    L3_2 = A0_2._data_list
    L3_2 = #L3_2
    L3_2 = 0 < L3_2
  end
  A0_2._enable_navi_reaction = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view_by_currency_id_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._res_bar_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data_list
  L4_2 = nil
  L5_2 = nil
  L6_2 = NavigationType
  L6_2 = L6_2.Horizontal
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._refresh_callback
  L3_2 = A0_2._refresh_handler
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.block_auto_refresh
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._res_bar_list = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data_list
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._res_bar_list
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_index
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_first_selected_btn
  return L2_2(L3_2)
end
L0_1.get_first_selected_btn = L1_1
return L0_1
