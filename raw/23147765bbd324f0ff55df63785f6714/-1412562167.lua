local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.MultiOrderOptionSortDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnMultiOrderOptionSortPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnMultiOrderOptionSortPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort
  L3_2 = L2_2
  L2_2 = L2_2.save_btn_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.save_btn_list = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.safe_set_active = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._sort_type_table = A1_2
  A0_2._type_list_data_table = A2_2
  A0_2._sort_type_text_id_table = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._init_sort_type_name_table
  L4_2(L5_2)
end
L0_1.set_source_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._sort_type_name_table = L1_2
  L1_2 = pairs
  L2_2 = A0_2._sort_type_text_id_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._sort_type_name_table
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2[L4_2] = L7_2
  end
end
L0_1._init_sort_type_name_table = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._sort_callback_self = A1_2
  A0_2._sort_order_change_callback = A2_2
  A0_2._sort_type_change_callback = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_sort
  L5_2 = L4_2
  L4_2 = L4_2.setup_callback
  L6_2 = A0_2
  L7_2 = A0_2._on_sort_order_change
  L8_2 = A0_2._on_btn_sort_type_click
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_sort_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._sort_type_list = A1_2
  A0_2._is_ascend = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_sort_panel
  L3_2(L4_2)
end
L0_1.setup_sort_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.MultiOrderOptionSortDialog
  L3_2 = A0_2._sort_type_list
  L4_2 = A0_2._type_list_data_table
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_confirm_callback
  L4_2 = A0_2._on_sort_type_change
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_sort_type_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_ascend = A1_2
  L2_2 = A0_2._sort_order_change_callback
  if L2_2 then
    L2_2 = A0_2._sort_callback_self
    if L2_2 then
      L2_2 = A0_2._sort_order_change_callback
      L3_2 = A0_2._sort_callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_sort_order_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._sort_type_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_sort_panel
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort
  L3_2 = L2_2
  L2_2 = L2_2.set_single_line_ellipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._sort_type_change_callback
  if L2_2 then
    L2_2 = A0_2._sort_callback_self
    if L2_2 then
      L2_2 = A0_2._sort_type_change_callback
      L3_2 = A0_2._sort_callback_self
      L4_2 = A0_2._sort_type_list
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_sort_type_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_sort
  L2_2 = L1_2
  L1_2 = L1_2.setup_order_view_by_list
  L4_2 = A0_2
  L3_2 = A0_2._get_sort_type_name_table
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._is_ascend
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_sort_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._sort_type_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L8_2 = A0_2._sort_type_name_table
    L8_2 = L8_2[L6_2]
    L1_2[L7_2] = L8_2
  end
  return L1_2
end
L0_1._get_sort_type_name_table = L1_1
return L0_1
