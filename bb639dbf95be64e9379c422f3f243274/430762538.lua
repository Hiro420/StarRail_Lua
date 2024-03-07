local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardFilter.DefaultRewardFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._use_grid_view = A3_2
  L4_2 = {}
  A0_2._config_ids = L4_2
  L4_2 = {}
  A0_2._reward_item_table = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._use_grid_view
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.SafeInitGridView
    L3_2 = 0
    L4_2 = A0_2._on_reward_item_change
    L5_2 = nil
    L6_2 = nil
    L7_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_item
    L2_2 = L1_2
    L1_2 = L1_2.SafeInitListView
    L3_2 = 0
    L4_2 = A0_2._on_reward_item_change
    L5_2 = nil
    L6_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._current_data = A1_2
  L2_2 = A0_2._current_data
  if L2_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActiveByScale
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._current_data = A1_2
  L2_2 = A0_2.reward_filter
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.New
    L3_2 = G
    L3_2 = L3_2.DefaultRewardFilter
    L2_2 = L2_2(L3_2)
  end
  A0_2.reward_filter = L2_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSortedWithFilter
  L3_2 = A0_2._current_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.DisplayRewardID
  L4_2 = {}
  L5_2 = A0_2.reward_filter
  L4_2[1] = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._reward_item_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_config_id
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_config_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.show_item_dialog = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._reward_item_table
  L1_2 = #L1_2
  return L1_2
end
L0_1.get_reward_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
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
L0_1._on_reward_item_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._use_grid_view
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperScrollViewUtils
    L1_2 = L1_2.DisposeGrid
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_item
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.SuperScrollViewUtils
    L1_2 = L1_2.DisposeList
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_item
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L1_1
return L0_1
