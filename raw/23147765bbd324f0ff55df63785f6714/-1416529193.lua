local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonFilter"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.count = 0
  L2_2 = A0_2
  L1_2 = A0_2._get_sorted_filter_data
  L1_2 = L1_2(L2_2)
  A0_2._filters = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_filter_type
  L1_2(L2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._filters = nil
  A0_2._locked_data = nil
  A0_2._filter_state_cache = nil
  A0_2._filters_snapshot = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_sorted_filter_data
  L1_2 = L1_2(L2_2)
  A0_2._filters = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.load_cache
  L1_2(L2_2)
end
L0_1._force_rebuild_filter_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_filter_data
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.has_order
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return L1_2
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Order
    L3_3 = A1_3.Order
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._get_sorted_filter_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.has_order
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._filters
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Order
    L3_3 = A1_3.Order
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._refresh_sort = L1_1
function L1_1(A0_2, A1_2)
  A0_2._locked_data = A1_2
end
L0_1.set_locked_datas = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2.load_cache
  L2_2(L3_2)
  L2_2 = A0_2._filter_state_cache
  if L2_2 ~= nil then
    L2_2 = A0_2.count
    if L2_2 ~= 0 then
      goto lbl_10
    end
  end
  do return A1_2 end
  ::lbl_10::
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.accept
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = #L2_2
      L8_2 = L8_2 + 1
      L2_2[L8_2] = L7_2
    end
  end
  return L2_2
end
L0_1.filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._is_data_locked
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._filter
    L4_2 = A1_2
    L5_2 = A0_2._filter_state_cache
    L2_2 = L2_2(L3_2, L4_2, L5_2)
  end
  return L2_2
end
L0_1.accept = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._filters_snapshot = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._filters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._filters_snapshot
    L7_2 = A0_2._filters_snapshot
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L8_2 = L5_2.IsSelected
    L6_2[L7_2] = L8_2
  end
end
L0_1.save = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._filters_snapshot
  if L1_2 == nil then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._filters_snapshot
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._filters
    L6_2 = L6_2[L4_2]
    L6_2.IsSelected = L5_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_filter_type
  L1_2(L2_2)
end
L0_1.load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.count = 0
  L1_2 = A0_2._filter_state_cache
  if L1_2 == nil then
    return
  end
  L1_2 = 1
  L2_2 = A0_2._filters
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._filters
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._filter_state_cache
    L7_2 = L5_2.FilterType
    L6_2 = L6_2[L7_2]
    L5_2.IsSelected = L6_2
    L6_2 = L5_2.IsSelected
    if L6_2 then
      L6_2 = A0_2.count
      L6_2 = L6_2 + 1
      A0_2.count = L6_2
    end
  end
end
L0_1.load_cache = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_filter_type
  L1_2(L2_2)
end
L0_1.clear_cache = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.count
  if L1_2 == 0 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._filters
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._filters
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.IsSelected
    if L7_2 then
      L7_2 = #L1_2
      L7_2 = L7_2 + 1
      L1_2[L7_2] = L6_2
    end
  end
  return L1_2
end
L0_1.get_active_filter_table = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.toggle_filter_state_by_type
  L4_2 = A1_2.FilterType
  L2_2(L3_2, L4_2)
end
L0_1.toggle_filter_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._filter_state_cache
  L2_2 = L2_2[A1_2]
  L2_2 = not L2_2
  L4_2 = A0_2
  L3_2 = A0_2.set_filter_state_by_type
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.toggle_filter_state_by_type = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._check_max_selection
    L3_2 = L3_2(L4_2)
    if L3_2 then
      return
    end
  end
  L3_2 = A0_2._filter_state_cache
  L3_2[A1_2] = A2_2
end
L0_1.set_filter_state_by_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.get_cache
  L4_2 = A1_2.FilterType
  return L2_2(L3_2, L4_2)
end
L0_1.is_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._filter_state_cache
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_cache = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._filter_state_cache
  return L1_2
end
L0_1.get_all_cache = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._filters
  return L1_2
end
L0_1.get_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.count
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.is_filter_on = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A0_2._filter_state_cache
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L6_2 ~= A2_2 then
      L8_2 = A0_2._filter_state_cache
      L8_2[L6_2] = A1_2
    end
  end
end
L0_1.set_all_filter_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2.count = 0
  L1_2 = 1
  L2_2 = A0_2._filters
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._filters
    L5_2 = L5_2[L4_2]
    L5_2.IsSelected = false
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_filter_type
  L1_2(L2_2)
end
L0_1.clear = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.is_multi_select = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.is_must_select = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.is_use_color_img = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.has_order = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = 0
  return L1_2
end
L0_1.get_max_selection = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._locked_data
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._locked_data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_data_locked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._filter_state_cache
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L0_1._get_cache_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_max_selection
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_cache_count
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 <= L2_2
  return L2_2
end
L0_1._check_max_selection = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = true
  return L3_2
end
L0_1._filter = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = ""
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = ...
  L1_2.Order = L7_2
  L1_2.Num = L6_2
  L1_2.IsSelected = L5_2
  L1_2.IconPath = L4_2
  L1_2.Name = L3_2
  L1_2.FilterType = L2_2
  return L1_2
end
L0_1._create_filter_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A1_2.Num = A2_2
end
L0_1._changed_filter_num = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A1_2.Order = A2_2
end
L0_1._change_filter_order = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._filter_state_cache
  if L1_2 == nil then
    L1_2 = {}
    A0_2._filter_state_cache = L1_2
  end
  L1_2 = 1
  L2_2 = A0_2._filters
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._filters
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._filter_state_cache
    L7_2 = L5_2.FilterType
    L8_2 = L5_2.IsSelected
    L6_2[L7_2] = L8_2
  end
end
L0_1._refresh_all_filter_type = L1_1
return L0_1
