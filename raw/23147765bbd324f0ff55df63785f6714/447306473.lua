local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = MuseumStaffSortType
L2_1 = L2_1.PropertyTotal
L1_1[1] = L2_1
L2_1 = MuseumStaffSortType
L2_1 = L2_1.PropertyA
L1_1[2] = L2_1
L2_1 = MuseumStaffSortType
L2_1 = L2_1.PropertyB
L1_1[3] = L2_1
L2_1 = MuseumStaffSortType
L2_1 = L2_1.PropertyC
L1_1[4] = L2_1
L2_1 = MuseumStaffSortType
L2_1 = L2_1.PropertyTotal
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._is_descend = true
  L1_2 = L2_1
  A0_2._cur_sort_type = L1_2
  L1_2 = {}
  L2_2 = MuseumStaffSortType
  L2_2 = L2_2.PropertyTotal
  L3_2 = MuseumStaffSortType
  L3_2 = L3_2.PropertyA
  L4_2 = MuseumStaffSortType
  L4_2 = L4_2.PropertyB
  L5_2 = MuseumStaffSortType
  L5_2 = L5_2.PropertyC
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2._cur_sort_type_list = L1_2
  L1_2 = {}
  A0_2._sort_type_name_table = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._cur_sort_type_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._sort_type_name_table
    L8_2 = MuseumStaffSortTypeTextID
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_staff_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_staff_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_dict
  L4_2 = A1_2.Staffs
  L3_2 = L3_2(L4_2)
  A0_2._all_staffs = L3_2
  L3_2 = G
  L3_2 = L3_2.MuseumUtils
  L3_2 = L3_2.generate_random_rotation_angles
  L4_2 = A0_2._all_staffs
  L5_2 = A0_2._all_staff_random_angles
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._all_staff_random_angles = L3_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._hide_area_when_selected = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_order_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._get_index_by_museum_staff_data
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_staff_list
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.UserObjectData
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A1_2
  L8_2 = A0_2._hide_area_when_selected
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._selected_checker
  if L5_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.set_selected
    L7_2 = A0_2._selected_checker
    L8_2 = A0_2._selected_checker_owner
    L9_2 = A1_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1.on_staff_change = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.set_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._selected_checker = A1_2
  A0_2._selected_checker_owner = A2_2
end
L0_1.set_selected_checker = L3_1
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
  L3_2 = tonumber
  L4_2 = A0_2._cur_sort_type
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._is_descend
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_sort_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_order
  L5_2 = A0_2._on_sort_type_refresh
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_order_panel = L3_1
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
  local L2_2, L3_2
  A0_2._cur_sort_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_sort_type_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._all_staffs
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = G
    L2_3 = L2_3.MuseumUtils
    L2_3 = L2_3.compare_sort_staff
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = A0_2._cur_sort_type
    L6_3 = A0_2._is_descend
    return L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort_staffs = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._all_staffs
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._all_staffs
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      return L5_2
    end
  end
end
L0_1._get_index_by_museum_staff_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._sort_staffs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_staff_list
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_staff_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._all_staffs
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_staff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_staff_list = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MuseumStaffItemPanel
    L8_2 = G
    L8_2 = L8_2.MuseumStaffItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._all_staffs
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._hide_area_when_selected
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_click_callback
  L8_2 = A0_2._click_callback
  L9_2 = A0_2._click_listener
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_avatar_head_rotation
  L8_2 = A0_2._all_staff_random_angles
  L9_2 = L5_2.ID
  L8_2 = L8_2[L9_2]
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_gamepad_select_callback
  L8_2 = A0_2._gamepad_select_callback
  L9_2 = A0_2._gamepad_select_callback_self
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._selected_checker
  if L6_2 ~= nil then
    L7_2 = L4_2
    L6_2 = L4_2.set_selected
    L8_2 = A0_2._selected_checker
    L9_2 = A0_2._selected_checker_owner
    L10_2 = L5_2
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  return L3_2
end
L0_1._on_staff_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_staff_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._gamepad_select_callback = A1_2
  A0_2._gamepad_select_callback_self = A2_2
end
L0_1.set_gamepad_select_callback = L3_1
return L0_1
