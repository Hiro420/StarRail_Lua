local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerFilterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_filter
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tags
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_filter_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_special_zoom_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_filter
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._on_setup_filter = A1_2
  A0_2._on_filter_finished = A2_2
  A0_2._callback_self = A3_2
end
L0_1.register_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1.set_source_data = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = ...
  L1_2[1] = L2_2
  A0_2._all_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_filter
  L1_2(L2_2)
end
L0_1.set_filters = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_filter
  return L1_2
end
L0_1.get_filters = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._all_filter
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear
    L6_2(L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_filter
  L1_2(L2_2)
end
L0_1.reset_filters = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_setup_filter
  L3_2 = A0_2._callback_self
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._do_filter
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._on_filter_finished
  L4_2 = A0_2._callback_self
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.refresh_filters = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_setup_filter
  L3_2 = A0_2._callback_self
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._all_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    if L1_2 ~= nil then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.DrinkMaker.Filter.DrinkMakerFilterDialog"
  L3_2 = A0_2._all_filter
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_finish_filter_callback
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.do_filter
    L2_2 = A0_2._data
    L3_2 = A0_2._all_filter
    return L1_2(L2_2, L3_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1._do_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._do_filter
  return L1_2(L2_2)
end
L0_1.get_filter_result = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._do_filter
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_filter
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._on_filter_finished
  L4_2 = A0_2._callback_self
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_finish_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_any_filter_on
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_no_filter
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_no_filter
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_fitler_on
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_fitler_on
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_filter_list
  L2_2(L3_2)
end
L0_1._refresh_btn_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._all_filter
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._all_filter
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_filter_on
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_any_filter_on = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._all_filter
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear
    L6_2(L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_finish_filter
  L1_2(L2_2)
end
L0_1._on_btn_clear = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._all_filter
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  A0_2._selected_filter_datas = L1_2
  L1_2 = pairs
  L2_2 = A0_2._all_filter
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_filter_data
    L6_2 = L6_2(L7_2)
    L7_2 = ipairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L11_2.IsSelected
      if L12_2 then
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = A0_2._selected_filter_datas
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
      end
    end
    L8_2 = L5_2
    L7_2 = L5_2.load_cache
    L7_2(L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tags
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._selected_filter_datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tags
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._selected_filter_datas
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_filter_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerSelectFilterNode
    L8_2 = G
    L8_2 = L8_2.DrinkMakerSelectFilterNodeBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._selected_filter_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._on_filter_click
  L10_2 = A2_2 + 1
  L11_2 = A0_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L0_1._on_filter_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A2_2
  L3_2 = A2_2.get_filter
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.is_must_select
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L3_2
    L4_2 = L3_2.get_cache
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      return
    end
  end
  L5_2 = L3_2
  L4_2 = L3_2.toggle_filter_state_by_type
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.is_multi_select
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._unselect_all_except
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._on_finish_filter
  L4_2(L5_2)
end
L0_1._on_filter_click = L1_1
return L0_1
