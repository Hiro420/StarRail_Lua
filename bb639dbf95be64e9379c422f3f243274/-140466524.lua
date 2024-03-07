local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Material.MaterialDestroyPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemDestroyConfirmDialog"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MaterialDestroyPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MaterialDestroyPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._cur_selected_item = nil
  A0_2._cur_show_item = nil
  L1_2 = {}
  A0_2._all_items_table = L1_2
  L1_2 = {}
  A0_2._display_item_sub_type = L1_2
  L1_2 = {}
  A0_2._cur_sort_type = L1_2
  A0_2._is_ascend = true
  A0_2._min_amount = 0
  A0_2._cur_amount = 0
  A0_2._max_amount = 0
  A0_2._last_destroy_item = nil
  A0_2._last_destroy_item_amount = 0
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._tab_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._init_sort_type_list
  L5_2 = A0_2._tab_data
  L5_2 = L5_2.ItemSortTypeList
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  A0_2._cur_sort_type = L5_2
  A0_2._sort_type_name_table = L4_2
  A0_2._cur_sort_type_list = L3_2
  L3_2 = A0_2._tab_data
  L3_2 = L3_2.DisplayItemSubType
  A0_2._display_item_sub_type = L3_2
  A0_2._sort_func = A2_2
end
L1_1.init = L2_1
function L2_1(A0_2, A1_2)
  A0_2._except_item = A1_2
end
L1_1.set_except_item = L2_1
function L2_1(A0_2, A1_2)
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
      L4_2 = A0_2._binder
      L4_2 = L4_2.inventory_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L1_1._on_enter_zoom = L2_1
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
L1_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = nil
  L3_2 = {}
  if A1_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  else
    L4_2 = G
    L4_2 = L4_2.RelicUtils
    L2_2 = L4_2.supported_sort_type
  end
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = #L9_2
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.InventoryModule
    L11_2 = L11_2.GetSortTypeName
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L3_2[L10_2] = L11_2
    L10_2 = #L4_2
    L10_2 = L10_2 + 1
    L11_2 = #L9_2
    L4_2[L10_2] = L11_2
  end
  L5_2 = L2_2[1]
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.get_sort_type_from_cache
  L7_2 = A0_2.__name
  L8_2 = L5_2
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.InventorySortType
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L6_2
  L6_2 = L4_2
  L7_2 = L3_2
  L8_2 = L5_2
  return L6_2, L7_2, L8_2
end
L1_1._init_sort_type_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._item_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_destroy
  L4_2 = A0_2._on_btn_destroy
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_toggle_all
  L4_2 = A0_2._on_btn_toggle_all
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_num
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = nil
    L2_3 = CS
    L2_3 = L2_3.System
    L2_3 = L2_3.String
    L2_3 = L2_3.IsNullOrEmpty
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L1_3 = 1
    else
      L2_3 = tonumber
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      if L2_3 == nil then
        L2_3 = 1
      end
      L3_3 = math
      L3_3 = L3_3.floor
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L1_3 = L3_3
    end
    L2_3 = math
    L2_3 = L2_3.floor
    L3_3 = math
    L3_3 = L3_3.max
    L4_3 = A0_2._min_amount
    L5_3 = math
    L5_3 = L5_3.min
    L6_3 = A0_2._max_amount
    L7_3 = L1_3
    L5_3, L6_3, L7_3 = L5_3(L6_3, L7_3)
    L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    A0_2._cur_amount = L2_3
    L2_3 = A0_2._input_from_slider
    if not L2_3 then
      L2_3 = A0_2._binder
      L2_3 = L2_3.slider_panel
      L3_3 = L2_3
      L2_3 = L2_3.set_amount
      L4_3 = A0_2._cur_amount
      L2_3(L3_3, L4_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_num
  L1_2 = L1_2.onEndEdit
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._binder
    L1_3 = L1_3.input_num
    L2_3 = L1_3
    L1_3 = L1_3.SetTextWithoutNotify
    L3_3 = tostring
    L4_3 = A0_2._cur_amount
    L3_3, L4_3 = L3_3(L4_3)
    L1_3(L2_3, L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_count
  L4_2 = A0_2
  L3_2 = A0_2._is_show_item_count
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_custom_click_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_item_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_navi_in_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_navi_in
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_navigation_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_top_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_drop_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_top_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = _max_selected_num
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_items_in_cur_inventory_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_and_sync_item_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_inventory_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_list_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_destroy_btn_status
  L3_2 = A0_2._cur_selected_item
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_amount_line
  L1_2(L2_2)
end
L1_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._cur_sort_type_list
  L4_2 = A0_2._sort_type_name_table
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_panel
  L3_2 = A0_2._cur_sort_type
  L3_2 = #L3_2
  L4_2 = A0_2._is_descend
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_sort_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_order_switch_btn_click
  L5_2 = A0_2._on_sort_type_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._setup_order_panel = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastPile
  L3_2 = L3_2()
  L4_2 = "UIText_ItemSell_Destroy_Toast"
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = A1_2.Name
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = tostring
  L10_2 = A2_2
  L9_2, L10_2 = L9_2(L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = G
  L7_2 = L7_2.NotifyManager
  L7_2 = L7_2.notify
  L8_2 = G
  L8_2 = L8_2.CS
  L8_2 = L8_2.NotifyType
  L8_2 = L8_2.UIPileToastMessageString
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L1_1._show_result_toast = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._sort_func
  L3_2 = A0_2._all_items_table
  L4_2 = A0_2._cur_sort_type
  L5_2 = A0_2._is_ascend
  L5_2 = not L5_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L1_1._setup_item_list_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetSortTypeName
  L3_2 = A1_2
  return L2_2(L3_2)
end
L1_1._set_sort_type_text_id = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Row
    L8_2 = L8_2.ID
    L9_2 = A1_2.Row
    L9_2 = L9_2.ID
    if L8_2 == L9_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L1_1._item_exist = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_show_item
  L3_2 = L3_2 == nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._cur_show_item
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_show_item
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.inventory_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._cur_show_item
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.inventory_panel
    L2_2 = L1_2
    L1_2 = L1_2.reset_scroll_pos
    L1_2(L2_2)
  end
end
L1_1._setup_inventory_panel = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L1_1._is_show_item_count = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Row
    L8_2 = L8_2.SellType
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemSellType
    L9_2 = L9_2.Destroy
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L2_2
end
L1_1._remove_indestructible_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_destroy
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_destroy_btn_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetInventoryTabItems
  L4_2 = A0_2._tab_data
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._remove_indestructible_item
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._all_items_table = L2_2
end
L1_1._refresh_all_items_in_cur_inventory_tab = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_selected_item
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_selected_item
    L1_2 = L1_2.Count
    if not (L1_2 <= 0) then
      goto lbl_10
    end
  end
  A0_2._cur_show_item = nil
  A0_2._cur_selected_item = nil
  ::lbl_10::
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_item_status
  L3_2 = A0_2._cur_selected_item
  L4_2 = A0_2._cur_show_item
  L5_2 = A0_2._all_items_table
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._refresh_and_sync_item_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_selected_item
  A0_2._cur_show_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_inventory_panel
  L1_2(L2_2)
end
L1_1._set_show_item_to_selected_item_and_set_inventory_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L1_1._item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num_keymap
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_amount_input_field_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_selected_item
  if L1_2 == nil then
    A0_2._min_amount = 0
    A0_2._max_amount = 1
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._min_amount
    L4_2 = A0_2._max_amount
    L5_2 = A0_2._on_slider_value_changed
    L6_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_amount_input_field_status
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_slider_and_btn_interactable
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.input_num
    L2_2 = tostring
    L3_2 = A0_2._min_amount
    L2_2 = L2_2(L3_2)
    L1_2.text = L2_2
    return
  end
  A0_2._min_amount = 1
  L1_2 = A0_2._cur_selected_item
  L1_2 = L1_2.Count
  A0_2._max_amount = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._min_amount
  L4_2 = A0_2._max_amount
  L5_2 = A0_2._on_slider_value_changed
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_amount_input_field_status
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_slider_and_btn_interactable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_amount
  L3_2 = A0_2._min_amount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_max
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_panel
    L1_2 = L1_2._binder
    L1_2 = L1_2.btn_max
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L1_1._setup_amount_line = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_panel
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn_max
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_panel
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_max
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._input_from_slider = true
  L3_2 = A0_2
  L2_2 = A0_2._set_input_field_amount_outside
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._input_from_slider = false
end
L1_1._on_slider_value_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._cur_amount = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_num
  L3_2 = tostring
  L4_2 = A0_2._cur_amount
  L3_2 = L3_2(L4_2)
  L2_2.text = L3_2
end
L1_1._set_input_field_amount_outside = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= false then
    L3_2 = A0_2
    L2_2 = A0_2._show_result_toast
    L4_2 = A0_2._last_destroy_item
    L5_2 = A0_2._last_destroy_item_amount
    L2_2(L3_2, L4_2, L5_2)
  else
  end
end
L1_1._on_item_destroy_success = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_ascend = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_item_list_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_show_item_to_selected_item_and_set_inventory_panel
  L2_2(L3_2)
end
L1_1._on_order_switch_btn_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "number" then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.enum_from_int_str
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.InventorySortType
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A1_2 = L2_2
  end
  A0_2._cur_sort_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_item_list_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_show_item_to_selected_item_and_set_inventory_panel
  L2_2(L3_2)
end
L1_1._on_sort_type_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._cur_show_item = A1_2
  A0_2._cur_selected_item = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_inventory_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_amount_line
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_destroy_btn_status
  L5_2 = A0_2._cur_selected_item
  L5_2 = L5_2 ~= nil
  L3_2(L4_2, L5_2)
end
L1_1._on_item_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_selected_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._cur_selected_item
  A0_2._last_destroy_item = L1_2
  L1_2 = A0_2._cur_amount
  A0_2._last_destroy_item_amount = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ItemDestroyConfirmDialog
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = A0_2._cur_selected_item
  L5_2 = A0_2._cur_amount
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_hint
  L4_2 = hint
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_destroy_succ_callback
  L4_2 = A0_2._on_item_destroy_success
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.show
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L1_1._on_btn_destroy = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Common.CommonIntroduceDialog"
  L3_2 = 60
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_intro = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._cur_show_item = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_inventory_panel
  L3_2(L4_2)
end
L1_1._on_navi_in = L2_1
return L1_1
