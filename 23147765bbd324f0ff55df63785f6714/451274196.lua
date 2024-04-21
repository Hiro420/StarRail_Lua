local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MaterialItemIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._inventory_item_icon_panel = A1_2
end
L0_1.set_inventory_item_icon_panel = L1_1
function L1_1(A0_2, A1_2)
  A0_2._item = A1_2
end
L0_1.setup_view_by_item = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._item = nil
  A0_2._inventory_item_icon_panel = nil
end
L0_1._on_dispose = L1_1
return L0_1
