local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeSellPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemSellConfirmDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeSellPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.UIColorUtils
L1_1 = L1_1.GetColor
L2_1 = "#EB4D3D"
L1_1 = L1_1(L2_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "Item_Sell_Max_Count"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeSellPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_descend = false
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
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._init_sort_type_list
  L4_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  A0_2._cur_sort_type = L4_2
  A0_2._sort_type_name_table = L3_2
  A0_2._cur_sort_type_list = L2_2
  A0_2._cur_tab_index = 1
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
  A0_2._except_item = A1_2
end
L0_1.set_except_item = L3_1
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
      L4_2 = A0_2._binder
      L4_2 = L4_2.inventory_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
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
    L2_2 = A0_2._binder
    L2_2 = L2_2.inventory_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 ~= nil
    return L3_2
  end
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sell_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
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
  L5_2 = G
  L5_2 = L5_2.InventoryUtils
  L5_2 = L5_2.redefine_ergodic_lua_dict_table
  L6_2 = L3_2
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
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
L0_1._init_sort_type_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 128
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
  L3_2 = L3_2.btn_sell
  L4_2 = A0_2._on_btn_sell
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
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_intro
  L4_2 = A0_2._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lock_setting
  L4_2 = A0_2._on_btn_lock_setting
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sell_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_except_item
  L3_2 = A0_2._except_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sell_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_material_changed_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_selected_material_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sell_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sell_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_detail_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.inventory_panel
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty_tip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_order_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_setting_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.attach_btn_navigation
  L3_2 = {}
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_lock_setting
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_ui_show
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
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_top_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.inventory_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._custom_setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sell_panel
  L2_2 = L1_2
  L1_2 = L1_2.sort_items
  L3_2 = A0_2._cur_sort_type
  L4_2 = A0_2._is_descend
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
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
  L4_2 = A0_2._on_btn_order
  L5_2 = A0_2._sort_items
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_order_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_lock_setting
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_lock_setting_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L1_2.FromSellPage = true
  L2_2 = A0_2.__name
  L1_2.ReportPageName = L2_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.LightCone.LockSetting.LightConeLockSettingDialog"
  L4_2 = L1_2
  L5_2 = A0_2._on_lock_setting
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_lock_setting = L3_1
function L3_1(A0_2, A1_2)
  A0_2._refresh_flag = true
end
L0_1._on_lock_setting = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = #A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_select_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.preview_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_sell
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L2_1
  if L2_2 >= L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_select_num
    L4_2 = L1_1
    L3_2.color = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_select_num
    L4_2 = A0_2._binder
    L4_2 = L4_2.color_cur_num
    L3_2.color = L4_2
  end
  if L2_2 == 0 then
    A0_2._is_toggle_all_on = false
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_toggle_all
    L4_2 = L3_2
    L3_2 = L3_2.SetChecked
    L5_2 = A0_2._is_toggle_all_on
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_selected_material_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = not A1_2
  A0_2._is_descend = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_btn_order = L3_1
function L3_1(A0_2, A1_2)
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
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._sort_items = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetSortTypeName
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1._set_sort_type_text_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Inventory.InventorySortDialog"
  L3_2 = A0_2._cur_sort_type
  L4_2 = A0_2._cur_sort_type_list
  L5_2 = A0_2
  L6_2 = A0_2._sort_items
  L7_2 = "UIText_TeamMemberOrderDialog_Title"
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_btn_sort_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sell_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_selected_materials
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_26
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastPile
  L2_2 = L2_2()
  L2_2.DescTextID = "UIText_ItemSell_Hint_Choose"
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageStruct
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_26::
  L2_2 = L1_2[1]
  L2_2 = L2_2.item
  L2_2 = L2_2.Rarity
  L2_2 = 4 <= L2_2
  A0_2._has_high_rarity = L2_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_2._has_high_rarity
    if not L2_3 then
      L2_3 = A0_3.item
      L2_3 = L2_3.Rarity
      L2_3 = 4 <= L2_3
    end
    A0_2._has_high_rarity = L2_3
    L2_3 = A0_3.item
    L2_3 = L2_3.Rarity
    L3_3 = A1_3.item
    L3_3 = L3_3.Rarity
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._has_high_rarity
  if L2_2 then
    L2_2 = "UIText_ItemSell_Dailog_Rare_Lightcone"
    if L2_2 then
      goto lbl_46
    end
  end
  L2_2 = "UIText_ItemSell_Dailog_Equipment"
  ::lbl_46::
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.ItemSellConfirmDialog
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = L1_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_hint
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_sell_title
  L6_2 = "UIText_ItemSell_ConfirmList_Equipment"
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_sell_succ_callback
  L6_2 = A0_2._on_item_sell_success
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.show
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
end
L0_1._on_btn_sell = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_toggle_all_on
  L1_2 = not L1_2
  A0_2._is_toggle_all_on = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_toggle_all
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_toggle_all_on
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_toggle_all_on
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.sell_panel
    L2_2 = L1_2
    L1_2 = L1_2.select_all
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.sell_panel
    L2_2 = L1_2
    L1_2 = L1_2.clear_all
    L1_2(L2_2)
  end
end
L0_1._on_btn_toggle_all = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_toggle_all_on = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_toggle_all
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_toggle_all_on
  L1_2(L2_2, L3_2)
end
L0_1._reset_toggle_all = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Common.CommonIntroduceDialog"
  L3_2 = 46
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_intro = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._refresh_flag
  if L1_2 then
    A0_2._refresh_flag = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.sell_panel
    L2_2 = L1_2
    L1_2 = L1_2.clear_and_sort
    L3_2 = A0_2._cur_sort_type
    L4_2 = A0_2._is_descend
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.sell_panel
    L2_2 = L1_2
    L1_2 = L1_2.try_clear_lock_item
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = A1_2
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._reset_toggle_all
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.sell_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_item_sell_success = L3_1
return L0_1
