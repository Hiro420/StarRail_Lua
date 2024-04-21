local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerSelectFilterNode"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._filter_type = nil
  A0_2._callback = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tag_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_on_tag_click_callback
  L3_2 = A0_2._on_btn_root_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._callback = A2_2
  A0_2._callback_self = A4_2
  L5_2 = A1_2.FilterType
  A0_2._filter_type = L5_2
  A0_2._data = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.tag_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A1_2.Tag
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.set_selected
  L7_2 = A1_2.IsSelected
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.tag_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Filter
  return L1_2
end
L0_1.get_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tag_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_root_btn
  return L1_2(L2_2)
end
L0_1.get_root_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._filter_type
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root_click = L1_1
return L0_1
