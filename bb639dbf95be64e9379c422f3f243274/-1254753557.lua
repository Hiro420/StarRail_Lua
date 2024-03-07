local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeGachaBoxPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.MazeGachaBoxPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MazeGachaBoxPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogError
    L2_2 = G
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "[RollShop] MazeGachaBoxPageBinder: auto_bind Failed."
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L5_2 = A0_2.top_bar_area
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.top_bar_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.InventoryItemIconPanel
  L4_2 = G
  L4_2 = L4_2.InventoryItemIconPanelBinder
  L5_2 = A0_2.reward_item
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.reward_item = L1_2
  L1_2 = {}
  L2_2 = A0_2.gacha_group4_mask1
  L3_2 = A0_2.gacha_group3_mask1
  L4_2 = A0_2.gacha_group2_mask1
  L5_2 = A0_2.gacha_group1_mask1
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.gacha_groups_mask1 = L1_2
  L1_2 = {}
  L2_2 = A0_2.gacha_group4_mask2
  L3_2 = A0_2.gacha_group3_mask2
  L4_2 = A0_2.gacha_group2_mask2
  L5_2 = A0_2.gacha_group1_mask2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.gacha_groups_mask2 = L1_2
  L1_2 = {}
  L2_2 = A0_2.gacha_group4_focus
  L3_2 = A0_2.gacha_group3_focus
  L4_2 = A0_2.gacha_group2_focus
  L5_2 = A0_2.gacha_group1_focus
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.gacha_groups_focus = L1_2
  L1_2 = {}
  L2_2 = A0_2.gacha_group4_anim
  L3_2 = A0_2.gacha_group3_anim
  L4_2 = A0_2.gacha_group2_anim
  L5_2 = A0_2.gacha_group1_anim
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.gacha_groups_anim = L1_2
  L1_2 = {}
  L2_2 = A0_2.gacha_reward_list4
  L3_2 = A0_2.gacha_reward_list3
  L4_2 = A0_2.gacha_reward_list2
  L5_2 = A0_2.gacha_reward_list1
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.gacha_reward_lists = L1_2
  L1_2 = {}
  L2_2 = A0_2.reward_rank4
  L3_2 = A0_2.reward_rank3
  L4_2 = A0_2.reward_rank2
  L5_2 = A0_2.reward_rank1
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.reward_ranks = L1_2
end
L0_1._on_bind = L2_1
return L0_1
