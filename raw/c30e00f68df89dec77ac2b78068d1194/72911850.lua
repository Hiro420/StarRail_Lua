local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyEventOptionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._event_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_title
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._event_data
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_option_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._event_data
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_option_list
  L4_2 = L3_2
  L3_2 = L3_2.register_click_option_finish_callback
  L5_2 = A0_2._on_click_option_finish
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._click_option_finish_callback
  L4_2 = A0_2._click_option_finish_handler
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_click_option_finish = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_option_finish_callback = A1_2
  A0_2._click_option_finish_handler = A2_2
end
L0_1.register_click_option_finish_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_option
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_option_active = L1_1
return L0_1
