local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageContactFilterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageContactTypeFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageContactCampFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MessageContactFilterPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.MessageContactTypeFilter
  L1_2 = L1_2(L2_2)
  A0_2._filter_type = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.MessageContactCampFilter
  L1_2 = L1_2(L2_2)
  A0_2._filter_camp = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_filter
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._filter_type
  L4_2 = A0_2._filter_camp
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_filter
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._init_filter = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._filtered_callback = A1_2
  A0_2._filtered_handler = A2_2
end
L1_1.register_filtered_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._filtered_callback
  L4_2 = A0_2._filtered_handler
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L1_1._on_finish_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_filter
  L2_2 = L1_2
  L1_2 = L1_2._refresh_btn_filter
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllContacts
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._all_contacts = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_filter
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._all_contacts
  L1_2(L2_2, L3_2)
end
L1_1._on_setup_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_filter
  L2_2 = L1_2
  L1_2 = L1_2.refresh_filters
  L1_2(L2_2)
end
L1_1.refresh_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._filter_type
  L2_2 = L1_2
  L1_2 = L1_2.set_all_filter_state
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._filter_camp
  L2_2 = L1_2
  L1_2 = L1_2.set_all_filter_state
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L1_1.clear_filter_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_filter
  L3_2 = L2_2
  L2_2 = L2_2.enable_in_control_tip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.enable_in_control_tip = L2_1
return L1_1
