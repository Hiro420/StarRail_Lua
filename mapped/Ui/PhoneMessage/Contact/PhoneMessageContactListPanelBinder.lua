local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageContactFilterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageContactFilterPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhoneMessageContactListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "BoxContactList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_view_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxContactList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_contact = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ContactListEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_contact_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MessageContactFilterPanel
  L4_2 = G
  L4_2 = L4_2.MessageContactFilterPanelBinder
  L5_2 = "BtnOrderPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_filter = L1_2
end
L0_1._on_bind = L1_1
return L0_1
