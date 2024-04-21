local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Book.BookSelectInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BookSelectInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._click_event_listner = nil
  A0_2._on_click_item = nil
  A0_2._book = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.FilterState
  A0_2._filter_state = L3_2
  A0_2._call_back = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.button
  L6_2 = A0_2._on_click
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.TextExtensions
  L3_2 = L3_2.SafeSetTextID
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_name
  L5_2 = A1_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.TextExtensions
  L3_2 = L3_2.SafeSetText_Num
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_count
  L5_2 = A1_2.Count
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_selected
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._call_back
  if nil ~= L1_2 then
    L1_2 = A0_2._call_back
    L2_2 = A0_2._filter_state
    L1_2(L2_2)
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.button
    L3_2 = L2_2
    L2_2 = L2_2.Select
    L2_2(L3_2)
  end
end
L0_1.set_selected = L1_1
return L0_1
