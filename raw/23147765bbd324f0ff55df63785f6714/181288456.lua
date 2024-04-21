local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnAutoFilterPanelPC"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._choose_filter_type
    L3_3 = A0_3 + 1
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._callback_self = nil
  A0_2._on_btn_filter_type = nil
  A0_2._filter_type_table = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_self = A1_2
  A0_2._on_btn_filter_type = A2_2
end
L0_1.setup_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_ascend
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_descend
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  A0_2._filter_type_table = A2_2
  A0_2._auto_fill_text_id = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._init_drop_down_list
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_type_in_control_button
  L2_2.ActionEnabled = A1_2
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.String
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = 1
  L5_2 = #A2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = L3_2
    L8_2 = L3_2.Add
    L10_2 = A0_2._auto_fill_text_id
    L11_2 = A2_2[L7_2]
    L10_2 = L10_2 .. L11_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.index_of_item
  L5_2 = A2_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = 1
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down
  L6_2 = L5_2
  L5_2 = L5_2.ClearOptions
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down
  L6_2 = L5_2
  L5_2 = L5_2.AddOptions
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down
  L6_2 = L4_2 - 1
  L5_2.value = L6_2
end
L0_1._init_drop_down_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_self
  if L2_2 ~= nil then
    L2_2 = A0_2._on_btn_filter_type
    if L2_2 ~= nil then
      L2_2 = A0_2._on_btn_filter_type
      L3_2 = A0_2._callback_self
      L4_2 = A0_2._filter_type_table
      L4_2 = L4_2[A1_2]
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._choose_filter_type = L1_1
return L0_1
