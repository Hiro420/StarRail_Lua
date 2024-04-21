local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSelectDialogListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.loop_gridview_spirit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnList/OrderPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_sort_filter_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
