local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.ArchiveFilterItemListDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ArchiveFilterItemListDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ArchiveFilterItemListDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._prefab_index = 0
  A0_2._allow_lock_interact = false
  A0_2._lock_hint = ""
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._panel_class = A1_2
  A0_2._panel_binder_class = A2_2
  A0_2._cur_data = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._load_data
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetArchiveDataByType
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._archive_data = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._archive_data
  L4_2 = L3_2
  L3_2 = L3_2.GetAllArchiveEntries
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._archive_entries = L2_2
end
L0_1._load_data = L2_1
function L2_1(A0_2, A1_2)
  A0_2._prefab_index = A1_2
end
L0_1.set_prefab_index = L2_1
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = ...
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  A0_2._filters = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._filters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear
    L6_2(L7_2)
  end
end
L0_1.setup_filter = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = #A2_2
  A0_2._cur_sort_type = L6_2
  A0_2._is_descend = A3_2
  A0_2._sort_func = A4_2
  A0_2._sort_func_self = A5_2
  L6_2 = {}
  A0_2._sort_type_textid_list = L6_2
  L6_2 = {}
  A0_2._sort_type_list = L6_2
  L6_2 = ipairs
  L7_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = #L10_2
    L12_2 = A0_2._sort_type_list
    L13_2 = A0_2._sort_type_list
    L13_2 = #L13_2
    L13_2 = L13_2 + 1
    L12_2[L13_2] = L11_2
    L12_2 = A0_2._sort_type_textid_list
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.Client
    L13_2 = L13_2.InventoryModule
    L13_2 = L13_2.GetSortTypeName
    L14_2 = L10_2
    L13_2 = L13_2(L14_2)
    L12_2[L11_2] = L13_2
  end
end
L0_1.setup_sort = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  A0_2._allow_lock_interact = A1_2
end
L0_1.set_can_interact_when_entry_lock = L2_1
function L2_1(A0_2, A1_2)
  A0_2._lock_hint = A1_2
end
L0_1.set_lock_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._filters
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_filter
    L1_2(L2_2)
  end
  L1_2 = A0_2._sort_type_list
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_sort
    L1_2(L2_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
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
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_list
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._sort_type_list
  L4_2 = A0_2._sort_type_textid_list
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_panel
  L3_2 = A0_2._cur_sort_type
  L4_2 = A0_2._is_descend
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_sort_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_order
  L5_2 = A0_2._on_sort_type_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_sort = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cur_sort_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort
  L2_2(L3_2)
end
L0_1._on_sort_type_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = not A1_2
  A0_2._is_descend = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._sort
  L2_2(L3_2)
end
L0_1._on_btn_order = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.enum_from_int_str
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L3_2 = A0_2._cur_sort_type
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._sort_func
  L3_2 = A0_2._sort_func_self
  L4_2 = A0_2._archive_entries
  L5_2 = L1_2
  L6_2 = A0_2._is_descend
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._sort = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._archive_entries
  L3_2 = A0_2._cur_data
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByIndex
  L4_2 = L1_2 - 1
  L2_2(L3_2, L4_2)
end
L0_1._move_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_order_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = A0_2._filters
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._archive_entries
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = nil
  L4_2 = A0_2._on_filter_finished
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_filters
  L1_2(L2_2)
end
L0_1._init_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._archive_entries
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  A0_2._is_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_empty
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_empty
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_empty
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._archive_entries
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_list = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = A0_2._prefab_index
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = A0_2._panel_class
    L8_2 = A0_2._panel_binder_class
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._archive_entries
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L4_2.register_click_callback
  if L6_2 ~= nil then
    L7_2 = L4_2
    L6_2 = L4_2.register_click_callback
    L8_2 = A0_2._on_item_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = A0_2._cur_data
  if L5_2 == L6_2 then
    A0_2._cur_selected_panel = L4_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_data
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._archive_entries = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_filter_finished = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._allow_lock_interact
  if not L3_2 then
    L3_2 = A1_2.IsUnlock
    if not L3_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessageTextID
      L5_2 = A0_2._lock_hint
      L3_2(L4_2, L5_2)
      return
    end
  end
  L3_2 = A0_2._cur_selected_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_selected_panel
    L4_2 = L3_2
    L3_2 = L3_2.is_equal
    L5_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_cur_selected_panel
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cur_selected_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._cur_data = A1_2
  L3_2 = A0_2._archive_data
  L4_2 = L3_2
  L3_2 = L3_2.OnEntryClick
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._callback
  L5_2 = A0_2._callback_self
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_item_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_selected_panel = A1_2
end
L0_1._set_cur_selected_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
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
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_selected_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
return L0_1
