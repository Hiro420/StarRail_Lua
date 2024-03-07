local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftResultItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftResultItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PenaconyGiftItemInfoPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate/PenaconyGiftInfoPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/PenaconyGift/PenaconyGiftInfoPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.PenaconyGiftResultItemPanel
  L4_2 = G
  L4_2 = L4_2.PenaconyGiftResultItemPanelBinder
  L5_2 = A0_2.node_penacony_gift
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_gift = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = A0_2.node_material
  L6_2 = "Ui.Common.RewardItemIconLite"
  L7_2 = "Ui.Common.RewardItemIconLiteBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.material_node_list = L1_2
end
L0_1._on_bind = L2_1
return L0_1
