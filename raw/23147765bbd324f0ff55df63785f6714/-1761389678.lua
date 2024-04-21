local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateSwitchPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateSwitchComposite"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonActivityStateSwitchPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.CommonActivityStateSwitchComposite
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_switch_composite = L1_2
  L1_2 = A0_2._panel_switch_composite
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_switch_composite
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_condition
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_switch_composite
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_reward
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_switch_composite
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._btn_callback = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._panel_switch_composite
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._btn_callback = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_panel_callback
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2._btn_callback
  L5_2 = {}
  L5_2.CallbackFunc = A2_2
  L5_2.CallbackSelf = A3_2
  L4_2[A1_2] = L5_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_btn_panel_callback
  L4_2(L5_2)
end
L0_1.register_customized_btn_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn
  L2_2 = L1_2
  L1_2 = L1_2.register_customized_btn_callback
  L3_2 = A0_2._btn_callback
  L1_2(L2_2, L3_2)
end
L0_1._refresh_btn_panel_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_condition
  L2_2 = L1_2
  L1_2 = L1_2.is_all_finish
  return L1_2(L2_2)
end
L0_1.is_all_condition_mission_finish = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_condition
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
