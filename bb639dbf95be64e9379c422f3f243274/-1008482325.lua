local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooMultiSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooMultiSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooBreedSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooBreedSlotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCollectCatPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCollectCatPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooBreedDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.RuanMadeCakeChooseDialogIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/SpaceZoo/RuanMadeCakeChooseDialog.prefab"
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
  L3_2 = L3_2.SpaceZooBreedSlotPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooBreedSlotPanelBinder
  L5_2 = A0_2.node_left_slot
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.left_slot_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooBreedSlotPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooBreedSlotPanelBinder
  L5_2 = A0_2.node_right_slot
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.right_slot_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooMultiSelectPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooMultiSelectPanelBinder
  L5_2 = A0_2.node_select
  L6_2 = A0_2._owner
  L6_2 = L6_2.__name
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.select_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.SpaceZooCollectCatPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooCollectCatPanelBinder
  L5_2 = A0_2.node_collection_panel
  L6_2 = false
  L7_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.collection_cat_panel = L1_2
end
L0_1._on_bind = L2_1
return L0_1
