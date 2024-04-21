local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnSortMobilePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnSortPCPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.CommonSortDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnSortPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnSortPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort_pc
  L3_2 = L2_2
  L2_2 = L2_2.setup_in_control_button_enable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort_pc
  L3_2 = L2_2
  L2_2 = L2_2.save_btn_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.save_btn_list = L1_1
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
function L1_1(A0_2, A1_2, A2_2)
  A0_2._sort_type_table = A1_2
  A0_2._sort_type_text_id_table = A2_2
end
L0_1.set_source_data = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._sort_callback_self = A1_2
  A0_2._sort_order_change_callback = A2_2
  A0_2._sort_type_change_callback = A3_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_or_ps_or_mobile_gamepad_mode
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_sort_pc
    L5_2 = L4_2
    L4_2 = L4_2.setup_callback
    L6_2 = A0_2
    L7_2 = A0_2._on_sort_order_change
    L8_2 = A0_2._on_sort_type_change
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_sort_mobile
    L5_2 = L4_2
    L4_2 = L4_2.setup_callback
    L6_2 = A0_2
    L7_2 = A0_2._on_sort_order_change
    L8_2 = A0_2._on_btn_sort_type_click
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.bind_sort_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.CommonSortDialog
  L3_2 = A0_2._sort_type
  L4_2 = A0_2._sort_type_text_id_table
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_confirm_callback
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_sort_type_change
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
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
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._sort_type = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_or_mobile_gamepad_mode
  L3_2 = L3_2()
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._try_force_set_ascend
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_sort_panel
    L3_2(L4_2)
  end
  L3_2 = A0_2._sort_type_change_callback
  if L3_2 then
    L3_2 = A0_2._sort_callback_self
    if L3_2 then
      L3_2 = A0_2._sort_type_change_callback
      L4_2 = A0_2._sort_callback_self
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_sort_type_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._sort_type = A1_2
  A0_2._is_ascend = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_sort_panel
  L3_2(L4_2)
end
L0_1.setup_sort_panel = L1_1
function L1_1(A0_2, A1_2)
  A0_2._owner_is_material = A1_2
end
L0_1.setup_parent_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_sort_pc
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._sort_type
    L4_2 = A0_2._sort_type_table
    L5_2 = A0_2._is_ascend
    function L6_2(A0_3, A1_3)
      local L2_3
      L2_3 = A0_3._sort_type_text_id_table
      L2_3 = L2_3[A1_3]
      return L2_3
    end
    L7_2 = A0_2
    L8_2 = A0_2._owner_is_material
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_sort_mobile
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._sort_type_text_id_table
    L4_2 = A0_2._sort_type
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2._is_ascend
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_sort_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner_is_material
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
  L3_2 = A0_2
  L2_2 = A0_2._on_sort_order_change
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._try_force_set_ascend = L1_1
return L0_1
