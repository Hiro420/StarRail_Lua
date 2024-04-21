local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.MaterialTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.InventoryTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.LightConeTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.LightConeTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.RelicTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.RelicTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.DestructibleMaterialTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.DestructibleMaterialTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.FoodTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.InventoryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_zoom_1
  L2_2.alpha = A1_2
end
L0_1.setup_zoom_1_canvas_alpha = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
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
      L4_2 = A0_2._binder
      L4_2 = L4_2.inventory_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_zoom_1
  L1_2.alpha = 1
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.inventory_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 ~= nil
    return L3_2
  end
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 then
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = L1_2.can_exit
      if L2_2 then
        L3_2 = L1_2
        L2_2 = L1_2.can_exit
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L3_2 = L1_2
          L2_2 = L1_2.in_control_exit_click
          L2_2(L3_2)
          return
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2.create_panel_without_binder
  L6_2 = G
  L6_2 = L6_2.TabControl
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._tab_control = L4_2
  L4_2 = A1_2
  if L4_2 == nil or L4_2 == 0 then
    L4_2 = 1
  end
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.enum_from_int_str
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.InventoryType
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._inventory_type = L5_2
  if A2_2 then
    L6_2 = A0_2
    L5_2 = A0_2._convert_goto_to_tab_index
    L7_2 = A0_2._inventory_type
    L8_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    A0_2._goto_choosed_type = L5_2
  end
  A0_2._focus_item_id = A3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.clear_zoom_navigation_target
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L1_2(L2_2)
  end
end
L0_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.clear_zoom_navigation_target
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L1_2(L2_2)
  end
end
L0_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_auto_update_gamepad_hint_mark
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_type_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar_area
  L4_2 = A0_2
  L3_2 = A0_2._get_resource_bar_key
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._res_bar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._on_inventory_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnItemExpired
  L4_2 = L0_1._on_item_expired
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2._mono_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.SetScrollRect
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_inventory_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_default_tab_index
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_expired_dialog
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._sort_type_lists = nil
  A0_2._inventory_tab_table = nil
  A0_2._cur_select_tab_data = nil
  A0_2._cur_tab_index = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_tab_index
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._inventory_tab_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._cur_tab_index
    if L6_2 == L4_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_cur_tab_index_valid = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._goto_choosed_type
  if not L1_2 then
    L1_2 = L1_1.LastOpenTabIndex
  end
  A0_2._cur_tab_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._is_cur_tab_index_valid
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    A0_2._cur_tab_index = 1
  end
end
L0_1._set_default_tab_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = A0_2._cur_tab_index
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_control = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventoryTabExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.DisplayInventoryType
    if L8_2 == A0_2 then
      L8_2 = #L1_2
      L8_2 = L8_2 + 1
      L1_2[L8_2] = L7_2
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.TabSortWeight
    L3_3 = A1_3.TabSortWeight
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  return L1_2
end
L0_1._get_sorted_tabs = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._get_sorted_tabs
  L2_2 = A0_2._inventory_type
  L1_2 = L1_2(L2_2)
  A0_2._inventory_tab_table = L1_2
  L1_2 = pairs
  L2_2 = A0_2._inventory_tab_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._init_tabitem
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_inventory_tabs = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._create_tab_item_by_display_type
  L4_2 = A1_2.DisplayItemSubType
  L5_2 = A1_2.SellType
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_item_tab_root
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_tab_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_inventory_panel
  L5_2 = A0_2._binder
  L5_2 = L5_2.inventory_panel
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_tabitem = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._res_bar_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_top_bar_area_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_tab_index
  L1_1.LastOpenTabIndex = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryShowExpiredItems
  L1_2(L2_2)
end
L0_1._try_show_expired_dialog = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cur_tab_index = A1_2
  L2_2 = A0_2._inventory_tab_table
  L2_2 = L2_2[A1_2]
  A0_2._cur_select_tab_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_tab_select = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._focus_item_id
  return L1_2
end
L0_1.get_focus_item_id = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._focus_item_id = nil
end
L0_1.clear_focus_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2.refresh_all_shown_item
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 then
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = L1_2
      L1_2 = L1_2.on_item_changed
      L1_2(L2_2)
    end
  end
end
L0_1._on_inventory_sync = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_select_tab_data
  L3_2 = L3_2.TabName
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2[0]
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemSubType
  L4_2 = L4_2.Equipment
  if L3_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.LightConeTabItem
    L7_2 = G
    L7_2 = L7_2.LightConeTabItemBinder
    return L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemSubType
    L4_2 = L4_2.Relic
    if L3_2 == L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2.create_panel
      L6_2 = G
      L6_2 = L6_2.RelicTabItem
      L7_2 = G
      L7_2 = L7_2.RelicTabItemBinder
      return L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ItemSubType
      L4_2 = L4_2.Food
      if L3_2 == L4_2 then
        L5_2 = A0_2
        L4_2 = A0_2.create_panel
        L6_2 = G
        L6_2 = L6_2.FoodTabItem
        L7_2 = G
        L7_2 = L7_2.FoodTabItemBinder
        return L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = false
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.ItemSellType
        L5_2 = L5_2.Destroy
        if A2_2 == L5_2 then
          L4_2 = true
        end
        if L4_2 then
          L6_2 = A0_2
          L5_2 = A0_2.create_panel
          L7_2 = G
          L7_2 = L7_2.DestructibleMaterialTabItem
          L8_2 = G
          L8_2 = L8_2.DestructibleMaterialTabItemBinder
          return L5_2(L6_2, L7_2, L8_2)
        else
          L6_2 = A0_2
          L5_2 = A0_2.create_panel
          L7_2 = G
          L7_2 = L7_2.MaterialTabItem
          L8_2 = G
          L8_2 = L8_2.InventoryTabItemBinder
          return L5_2(L6_2, L7_2, L8_2)
        end
      end
    end
  end
end
L0_1._create_tab_item_by_display_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._inventory_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventoryType
  L2_2 = L2_2.Rogue
  if L1_2 == L2_2 then
    L1_2 = "InventoryPage_Rogue"
    return L1_2
  else
    L1_2 = "InventoryPage"
    return L1_2
  end
end
L0_1._get_resource_bar_key = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._get_sorted_tabs
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.ID
    if L9_2 == A2_2 then
      return L7_2
    end
  end
  L4_2 = 1
  return L4_2
end
L0_1._convert_goto_to_tab_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_expired_dialog
  L1_2(L2_2)
end
L0_1._on_item_expired = L2_1
return L0_1
