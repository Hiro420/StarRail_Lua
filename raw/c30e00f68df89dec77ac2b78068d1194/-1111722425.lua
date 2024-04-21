local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.CommonFilterDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnFilterPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnFilterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_filter
  L1_2(L2_2)
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
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_in_control_tip
  L2_2.IsShowTip = A1_2
end
L0_1.enable_in_control_tip = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_filter
  L2_2(L3_2, L4_2)
end
L0_1.save_btn_list = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._on_setup_filter = A1_2
  A0_2._on_filter_finished = A2_2
  A0_2._callback_self = A3_2
end
L0_1.register_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_filter
  L1_2(L2_2)
end
L0_1.reset_filter_panel = L1_1
function L1_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1.set_source_data = L1_1
function L1_1(A0_2, A1_2)
  A0_2._data_list = A1_2
end
L0_1.set_multi_source_data = L1_1
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
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_setup_filter
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._do_filter
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._invoke_callback
  L4_2 = A0_2._on_filter_finished
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.refresh_filters = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_setup_filter
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._all_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    if L1_2 ~= nil then
      goto lbl_14
    end
    L1_2 = A0_2._data_list
    if L1_2 ~= nil then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.CommonFilterDialog
  L3_2 = nil
  L4_2 = A0_2._all_filter
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_is_auto_filter_on_confirm
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_finish_filter_callback
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.do_filter
    L2_2 = A0_2._data
    L3_2 = A0_2._all_filter
    return L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._data_list
    if L1_2 ~= nil then
      L1_2 = {}
      L2_2 = ipairs
      L3_2 = A0_2._data_list
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = #L1_2
        L7_2 = L7_2 + 1
        L8_2 = G
        L8_2 = L8_2.Utils
        L8_2 = L8_2.do_filter
        L9_2 = L6_2
        L10_2 = A0_2._all_filter
        L8_2 = L8_2(L9_2, L10_2)
        L1_2[L7_2] = L8_2
      end
      return L1_2
    end
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
  L3_2 = A0_2
  L2_2 = A0_2._invoke_callback
  L4_2 = A0_2._on_filter_finished
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_finish_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_any_filter_on
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
L0_1.is_any_filter_on = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._callback_self
  if L2_2 ~= nil then
    L2_2 = A1_2
    L3_2 = A0_2._callback_self
    L4_2 = ...
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2
    L3_2, L4_2 = ...
    L2_2(L3_2, L4_2)
  end
end
L0_1._invoke_callback = L1_1
return L0_1
