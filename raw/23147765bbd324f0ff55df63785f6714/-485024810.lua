local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitGridView
  L4_2 = 0
  L5_2 = A0_2._on_reward_item_change
  L6_2 = nil
  L7_2 = nil
  L8_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTable
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_item_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ItemIconPanel
    L8_2 = G
    L8_2 = L8_2.ItemIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_list
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
return L0_1
