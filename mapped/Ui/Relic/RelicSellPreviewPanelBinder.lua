local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSellPreviewPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  A0_2.node_material_list = L1_2
  L1_2 = {}
  A0_2.return_item_panel = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "Item"
    L6_2 = tostring
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L6_2 = A0_2.node_material_list
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2[L4_2] = L7_2
    L6_2 = A0_2.return_item_panel
    L8_2 = A0_2
    L7_2 = A0_2._create_panel
    L9_2 = G
    L9_2 = L9_2.RewardItemIconLite
    L10_2 = G
    L10_2 = L10_2.RewardItemIconLiteBinder
    L11_2 = L5_2
    L12_2 = "/RewardItemIconLite"
    L11_2 = L11_2 .. L12_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L6_2[L4_2] = L7_2
  end
end
L0_1._on_bind = L1_1
return L0_1
