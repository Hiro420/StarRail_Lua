local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.SpecialOrder.AlleySpecialOrderDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.SpecialOrder.AlleySpecialOrderDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAlleySpecialOrderPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Alley/AlleySpecialOrderPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/TabList/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_btns_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleySpecialOrderDetailPanel
  L4_2 = G
  L4_2 = L4_2.AlleySpecialOrderDetailPanelBinder
  L5_2 = "Root/Contents/RightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_special_order_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/Contents/LeftPanel/TabList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_scroll_rect = L1_2
end
L0_1._on_bind = L1_1
return L0_1
