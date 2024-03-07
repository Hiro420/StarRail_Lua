local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.ItemTip.ItemTipsDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemTip.ItemTipsBottomListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemTip.ItemTipsTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemTip.ItemTipsTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemTipsDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "ItemTipsDialogInfoItem_ToLeft"
L2_1 = "ItemTipsDialogInfoItem_ToRight"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ItemTipsDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._desc_params = L1_2
  A0_2._param_data = nil
  A0_2._hide_lock = false
  A0_2._is_only_display = true
  L1_2 = {}
  A0_2._tab_data_table = L1_2
  A0_2._tab_counts = 0
  A0_2._default_index = 1
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickUp
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadUp
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2.set_param
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_init_index
  L6_2 = 1
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.hide_lock
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.use_param_item = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = {}
  L4_2.Title = A3_2
  L4_2.ParamData = A1_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = false
  end
  L4_2.IsParamItem = L5_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._tab_data_table
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._tab_data_table
  L5_2 = #L5_2
  A0_2._tab_counts = L5_2
end
L0_1.set_param = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 or nil
  if not A1_2 then
    L3_2 = 1
  end
  A0_2._tab_index = L3_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = 1
  end
  A0_2._default_index = L3_2
end
L0_1.set_init_index = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_only_display = A1_2
end
L0_1.set_display_only = L3_1
function L3_1(A0_2, A1_2)
  A0_2._hide_lock = A1_2
end
L0_1.hide_lock = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._desc_params
  L3_2[A1_2] = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_main_panel_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_cut_in_panel_view
  L3_2(L4_2)
end
L0_1.set_desc_text_params = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_first_drop_link_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2.item_tip_cut_in_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_drop_hint_panel_active
    return L2_2(L3_2)
  end
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.bottom_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_object_by_index
  L3_2 = A0_2._default_index
  L3_2 = L3_2 - 1
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.item_tip_cut_in_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_drop_link_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_btn_left_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_btn_right_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemDetailPanel
  L4_2 = G
  L4_2 = L4_2.ItemDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_tip_main_panel = L1_2
  L1_2 = A0_2.item_tip_main_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_tip_main_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.item_tip_main_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_lock
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemDetailPanel
  L4_2 = G
  L4_2 = L4_2.ItemDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_tip_cut_in_panel = L1_2
  L1_2 = A0_2.item_tip_cut_in_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_tip_cut_in_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.item_tip_cut_in_panel
  L2_2 = L1_2
  L1_2 = L1_2.hide_lock
  L3_2 = A0_2._hide_lock
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemTipsBottomListPanel
  L4_2 = G
  L4_2 = L4_2.ItemTipsBottomListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bottom_list_panel = L1_2
  L1_2 = A0_2.bottom_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bottom_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.bottom_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_call_back
  L3_2 = A0_2._on_item_click_call_back
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_btns_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_left_tab
  L4_2 = A0_2._on_tab_select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_right_tab
  L4_2 = A0_2._on_tab_select_next
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  A0_2._default_index = 1
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._is_param_item
    if L2_2 then
      L2_2 = ipairs
      L3_2 = A0_2._param_data
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2.ConfigID
        if L7_2 then
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.Client
          L8_2 = L8_2.GlobalVars
          L8_2 = L8_2.s_ModuleManager
          L8_2 = L8_2.InventoryModule
          L9_2 = L8_2
          L8_2 = L8_2.GetItemCountByConfigID
          L10_2 = L7_2
          L8_2 = L8_2(L9_2, L10_2)
          L6_2.Count = L8_2
        end
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2._get_item_data
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2.item_tip_cut_in_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L6_2 = A0_2._is_only_display
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2.item_tip_cut_in_panel
    L4_2 = L3_2
    L3_2 = L3_2.reset_scroll_pos
    L3_2(L4_2)
  end
end
L0_1._on_view_active_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A1_2.ParamData
    A0_2._param_data = L2_2
    L2_2 = A1_2.IsParamItem
    A0_2._is_param_item = L2_2
    L2_2 = A0_2._default_index
    A0_2._cur_index = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._setup_main_panel_view
    L2_2(L3_2)
    L2_2 = A0_2.bottom_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._param_data
    L5_2 = A0_2._is_param_item
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2.bottom_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A0_2._param_data
    L4_2 = #L4_2
    L4_2 = 1 < L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_left
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._param_data
    L4_2 = #L4_2
    L4_2 = 1 < L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_right
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._param_data
    L4_2 = #L4_2
    L4_2 = 1 < L4_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_cut_in_panel_view
    L2_2(L3_2)
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_index
  if A1_2 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_btn_left_click
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._cur_index
    if A1_2 > L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_btn_right_click
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_item_click_call_back = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = G
    L2_2 = L2_2.MathUtils
    L2_2 = L2_2.get_pre_circular_index
    L3_2 = A0_2._cur_index
    L4_2 = A0_2._param_data
    L4_2 = #L4_2
    L5_2 = true
    L2_2 = L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2._cur_index
  if L2_2 ~= L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L1_1
    L6_2 = 0
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_main_panel_view
    L3_2(L4_2)
    A0_2._cur_index = L2_2
    L4_2 = A0_2
    L3_2 = A0_2._setup_cut_in_panel_view
    L3_2(L4_2)
  end
end
L0_1._on_btn_left_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = G
    L2_2 = L2_2.MathUtils
    L2_2 = L2_2.get_next_circular_index
    L3_2 = A0_2._cur_index
    L4_2 = A0_2._param_data
    L4_2 = #L4_2
    L5_2 = true
    L2_2 = L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2._cur_index
  if L2_2 ~= L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L2_1
    L6_2 = 0
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_main_panel_view
    L3_2(L4_2)
    A0_2._cur_index = L2_2
    L4_2 = A0_2
    L3_2 = A0_2._setup_cut_in_panel_view
    L3_2(L4_2)
  end
end
L0_1._on_btn_right_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.item_tip_main_panel
  L3_2 = L2_2
  L2_2 = L2_2.disable_all_control
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.item_tip_cut_in_panel
  L3_2 = L2_2
  L2_2 = L2_2.disable_all_control
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_detail_btn_interactable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.item_tip_main_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2._is_only_display
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.item_tip_main_panel
  L3_2 = L2_2
  L2_2 = L2_2.reset_scroll_pos
  L2_2(L3_2)
  L2_2 = A0_2.item_tip_main_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_detail_btn_interactable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._desc_params
  L3_2 = A0_2._cur_index
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L2_2 = A0_2.item_tip_main_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_desc_text_params
    L4_2 = A0_2._desc_params
    L5_2 = A0_2._cur_index
    L4_2 = L4_2[L5_2]
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_main_panel_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.item_tip_cut_in_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2._is_only_display
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.item_tip_cut_in_panel
  L3_2 = L2_2
  L2_2 = L2_2.reset_scroll_pos
  L2_2(L3_2)
  L2_2 = A0_2.bottom_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_checked
  L4_2 = A0_2._cur_index
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._desc_params
  L3_2 = A0_2._cur_index
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L2_2 = A0_2.item_tip_cut_in_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_desc_text_params
    L4_2 = A0_2._desc_params
    L5_2 = A0_2._cur_index
    L4_2 = L4_2[L5_2]
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = {}
    L1_3 = A0_2._binder
    if L1_3 ~= nil then
      L1_3 = A0_2.item_tip_cut_in_panel
      if L1_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = L0_3
    L3_3 = "ActionGroup_SwitchTarget"
    L1_3(L2_3, L3_3)
    L1_3 = A0_2._binder
    L1_3 = L1_3.node_item_tip_cut_in_panel_scroll_rect
    if L1_3 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L0_3
      L3_3 = "ActionGroup_Scroll"
      L1_3(L2_3, L3_3)
    end
    L1_3 = A0_2.item_tip_cut_in_panel
    L2_3 = L1_3
    L1_3 = L1_3.has_drop_hint
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L0_3
      L3_3 = "Menu_Confirm"
      L1_3(L2_3, L3_3)
    end
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = L0_3
    L3_3 = "ActionGroup_Return"
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.setup_short_cut_hint_panel
    L3_3 = L0_3
    L4_3 = A0_2._binder
    L4_3 = L4_3.node_item_tip_cut_in_panel_scroll_rect
    L1_3(L2_3, L3_3, L4_3)
  end
  L2_2(L3_2)
end
L0_1._setup_cut_in_panel_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_param_item
  if L1_2 then
    L1_2 = A0_2._param_data
    L2_2 = A0_2._cur_index
    L1_2 = L1_2[L2_2]
    return L1_2
  else
    L1_2 = A0_2._param_data
    L2_2 = A0_2._cur_index
    L1_2 = L1_2[L2_2]
    L3_2 = A0_2
    L2_2 = A0_2._get_item_data_by_config_id
    L4_2 = L1_2
    return L2_2(L3_2, L4_2)
  end
end
L0_1._get_item_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ItemMainType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemMainType
  L4_2 = L4_2.Equipment
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ItemFactory
    L3_2 = L3_2.CreateEquipmentItemData
    L4_2 = A1_2
    return L3_2(L4_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetItemDataByConfigID
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    return L3_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateItemData
  L5_2 = A1_2
  return L4_2(L5_2)
end
L0_1._get_item_data_by_config_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._tab_counts
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_tabs = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._tab_counts
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ItemTipsTabItem
    L8_2 = G
    L8_2 = L8_2.ItemTipsTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_tab_title
    L8_2 = A0_2._tab_data_table
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.Title
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_tab_items = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L4_2 = A0_2._tab_data_table
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
end
L0_1._on_tab_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L0_1._on_tab_select_prev = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L0_1._on_tab_select_next = L3_1
return L0_1
