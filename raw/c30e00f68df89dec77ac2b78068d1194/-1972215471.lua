local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSelect.AetherSpiritTypeFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSortFilterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._ui_name = A3_2
  A0_2._spirit_type_filter = nil
  L4_2 = tonumber
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.get_sort_type_from_cache
  L6_2 = A0_2._ui_name
  L7_2 = AetherSpiritSortType
  L7_2 = L7_2.Promotion
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._sort_type = L4_2
  A0_2._sort_order_is_ascend = false
  L4_2 = {}
  A0_2._all_spirits = L4_2
  L4_2 = {}
  A0_2._filtered_spirits = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_order
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._spirit_type_filter
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._spirit_type_filter
  L1_2(L2_2)
  A0_2._spirit_type_filter = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_sort_changed_callback = A1_2
  A0_2._on_sort_changed_callee = A2_2
end
L0_1.register_sort_change_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._get_locked_spirits_callback = A1_2
  A0_2._get_locked_spirits_callee = A2_2
end
L0_1.register_locked_getter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._all_spirits = L2_2
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._filtered_spirits = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_filters
  L2_2(L3_2)
end
L0_1.setup_sort_spirits = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.filter
  L2_2 = A0_2._all_spirits
  L3_2 = A0_2._spirit_type_filter
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._filtered_spirits = L1_2
  L1_2 = G
  L1_2 = L1_2.AetherSpiritUtils
  L1_2 = L1_2.sort_spirit_table_by_sort_panel
  L2_2 = A0_2._filtered_spirits
  L3_2 = A0_2._sort_type
  L4_2 = A0_2._sort_order_is_ascend
  L6_2 = A0_2
  L5_2 = A0_2._get_locked_spirits
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._filtered_spirits
  return L1_2
end
L0_1.redo_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = AetherSpiritSortType
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2[L6_2] = L6_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort
  L3_2 = L2_2
  L2_2 = L2_2.set_source_data
  L4_2 = L1_2
  L5_2 = AetherSpiritSortTypeTextID
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort
  L3_2 = L2_2
  L2_2 = L2_2.bind_sort_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_btn_sort_ascend_descend
  L6_2 = A0_2._on_sort_type_changed
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort
  L3_2 = L2_2
  L2_2 = L2_2.setup_sort_panel
  L4_2 = A0_2._sort_type
  L5_2 = A0_2._sort_order_is_ascend
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._init_order = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AetherSpiritTypeFilter
  L1_2 = L1_2(L2_2)
  A0_2._spirit_type_filter = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._spirit_type_filter
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._sort_order_is_ascend = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_spirits
  L2_2(L3_2)
end
L0_1._on_btn_sort_ascend_descend = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.save_sort_type_to_cache
  L3_2 = A0_2._ui_name
  L4_2 = A1_2
  L5_2 = AetherSpiritSortType
  L2_2(L3_2, L4_2, L5_2)
  A0_2._sort_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_spirits
  L2_2(L3_2)
end
L0_1._on_sort_type_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.AetherSpiritUtils
  L1_2 = L1_2.sort_spirit_table_by_sort_panel
  L2_2 = A0_2._filtered_spirits
  L3_2 = A0_2._sort_type
  L4_2 = A0_2._sort_order_is_ascend
  L6_2 = A0_2
  L5_2 = A0_2._get_locked_spirits
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._on_sort_changed_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_sort_changed_callback
    L2_2 = A0_2._on_sort_changed_callee
    L3_2 = A0_2._filtered_spirits
    L1_2(L2_2, L3_2)
  end
end
L0_1._sort_spirits = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_locked_spirits
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._spirit_type_filter
  L3_2 = L2_2
  L2_2 = L2_2.set_locked_datas
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_source_data
  L4_2 = A0_2._all_spirits
  L2_2(L3_2, L4_2)
end
L0_1._on_setup_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._get_locked_spirits_callback
  if L1_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = A0_2._get_locked_spirits_callback
  L2_2 = A0_2._get_locked_spirits_callee
  return L1_2(L2_2)
end
L0_1._get_locked_spirits = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._filtered_spirits = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_spirits
  L2_2(L3_2)
end
L0_1._on_finish_filter = L1_1
return L0_1
