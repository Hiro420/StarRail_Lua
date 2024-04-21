local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = 609
L1_1 = 501
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RogueEntranceDLCSysPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shop
  L4_2 = A0_2._on_btn_shop_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HasNewShopGoodTab"
  L4_2 = L1_1
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_shop_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = L0_1
  L1_2(L2_2)
end
L2_1._on_btn_shop_click = L3_1
return L2_1
