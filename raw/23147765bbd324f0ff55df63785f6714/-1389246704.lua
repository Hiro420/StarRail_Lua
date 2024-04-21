local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnSortPCPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnSortPCPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._is_ascend = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_special_zoom_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.drop_down
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_order
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_special_zoom_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_order
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._callback_self = nil
  A0_2._on_btn_order = nil
  A0_2._on_btn_sort_type = nil
  A0_2._sort_type_table = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.sort_type_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.order_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.order_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.sort_type_in_control_button
  L2_2.ActionEnabled = A1_2
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.drop_down
  L2_2(L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_order
  L2_2(L3_2, L4_2)
end
L0_1.save_btn_list = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_self = A1_2
  A0_2._on_btn_order = A2_2
  A0_2._on_btn_sort_type = A3_2
end
L0_1.setup_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._sort_type_table = A2_2
  A0_2._is_owned_by_material = A6_2
  A0_2._is_ascend = A3_2
  L8_2 = A0_2
  L7_2 = A0_2._set_ascend_display
  L7_2(L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._init_drop_down_list
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A4_2
  L12_2 = A5_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = A0_2
  L7_2 = A0_2._bind_btn_callback
  L9_2 = A0_2._binder
  L9_2 = L9_2.btn_order
  L10_2 = A0_2._on_btn_order_click
  L7_2(L8_2, L9_2, L10_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down
  L2_2 = L1_2
  L1_2 = L1_2.Hide
  L1_2(L2_2)
end
L0_1.hide_drop_down = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback_func = A1_2
  A0_2._click_callback_obj = A2_2
end
L0_1.setup_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      return L6_2
    end
  end
end
L0_1._get_sort_type_index = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down
  L5_2 = L5_2.onValueChanged
  L6_2 = L5_2
  L5_2 = L5_2.RemoveAllListeners
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down
  L5_2 = L5_2.onValueChanged
  L6_2 = L5_2
  L5_2 = L5_2.AddListener
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._choose_sort_type
    L3_3 = A0_3 + 1
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.System
  L5_2 = L5_2.Collections
  L5_2 = L5_2.Generic
  L5_2 = L5_2.List
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.TextID
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2()
  L6_2 = pairs
  L7_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L5_2
    L11_2 = L5_2.Add
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = L10_2
    L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
    L11_2(L12_2, L13_2, L14_2, L15_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.drop_down
  L7_2 = L6_2
  L6_2 = L6_2.ClearOptions
  L6_2(L7_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.drop_down
  L7_2 = L6_2
  L6_2 = L6_2.AddOptions
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.drop_down
  L8_2 = A0_2
  L7_2 = A0_2._get_sort_type_index
  L9_2 = A1_2
  L10_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L7_2 = L7_2 - 1
  L6_2.value = L7_2
end
L0_1._init_drop_down_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._callback_self
  if L2_2 ~= nil then
    L2_2 = A0_2._on_btn_sort_type
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._try_force_set_ascend
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._on_btn_sort_type
      L3_2 = A0_2._callback_self
      L4_2 = A0_2._sort_type_table
      L4_2 = L4_2[A1_2]
      L5_2 = A0_2._is_ascend
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._choose_sort_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback_self
  if L1_2 ~= nil then
    L1_2 = A0_2._on_btn_order
    if L1_2 ~= nil then
      L1_2 = A0_2._is_ascend
      L1_2 = not L1_2
      A0_2._is_ascend = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._set_ascend_display
      L1_2(L2_2)
      L1_2 = A0_2._on_btn_order
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._is_ascend
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_order_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2._node_ascend
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_ascend
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2._node_descend
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_ascend
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._set_ascend_display = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_owned_by_material
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L2_2 = L2_2.Rarity
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    return
  end
  A0_2._is_ascend = false
  L3_2 = A0_2
  L2_2 = A0_2._set_ascend_display
  L2_2(L3_2)
end
L0_1._try_force_set_ascend = L1_1
return L0_1
