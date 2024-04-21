local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Common.FilterSort.QuickSelectDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.BtnQuickSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnQuickSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = 2
L3_1 = 3
L4_1 = 4
L5_1 = 5
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.quick_select_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.quick_select_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_quick_select
  L2_2(L3_2, L4_2)
end
L0_1.save_btn_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_select
  L4_2 = A0_2._on_btn_quick_select_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quick_select
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_special_zoom_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_quick_select
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  A0_2._option_list = A1_2
end
L0_1.setup_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_select_finished = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.QuickSelectDialog
  L3_2 = L1_1
  L4_2 = A0_2._option_list
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_confirm_callback
  L4_2 = A0_2._on_select_finished
  L5_2 = A0_2._callback_self
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_quick_select_click = L2_1
return L0_1
