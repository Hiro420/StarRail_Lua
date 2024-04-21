local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapRaidProgressItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapRaidProgressItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#FFCF70"
L2_1 = "#676767"
L3_1 = 3
L4_1 = "UIText_Farm_HardLevel"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._reward_item_table = L3_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_scroll_items
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._reward_item_table
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_scroll_items
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_static_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L4_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._reward_item_table = nil
  L2_2 = A1_2.rewards
  if L2_2 then
    L2_2 = A1_2.rewards
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.get_sorted_items_by_item_config_list
      L3_2 = A1_2.rewards
      L2_2 = L2_2(L3_2)
    end
    A0_2._reward_item_table = L2_2
  else
    L2_2 = A1_2.reward_id
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.CreateRewardItemTableSorted
      L3_2 = A1_2.reward_id
      L2_2 = L2_2(L3_2)
      A0_2._reward_item_table = L2_2
    end
  end
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "UIText_Cocoon_WorldLevel_Text_%s"
  L4_2 = A1_2.level
  L4_2 = L4_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.is_locked
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_complete
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_reward
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_star
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_lock
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._reward_item_table
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_reward
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.reward_scroll_items
      L4_2 = L3_2
      L3_2 = L3_2.SetListItemCount
      L5_2 = A0_2._reward_item_table
      L5_2 = #L5_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.reward_scroll_items
      L4_2 = L3_2
      L3_2 = L3_2.RefreshAllShownItem
      L3_2(L4_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_reward
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_star
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_lock
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.is_level_completed
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_reward
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_complete
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_complete
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._reward_item_table
      if L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_reward
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.reward_scroll_items
        L4_2 = L3_2
        L3_2 = L3_2.SetListItemCount
        L5_2 = A0_2._reward_item_table
        L5_2 = #L5_2
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.reward_scroll_items
        L4_2 = L3_2
        L3_2 = L3_2.RefreshAllShownItem
        L3_2(L4_2)
      else
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_reward
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = false
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = A1_2.raidID
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_targets_by_raid_id
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A1_2.heliobus_challenge_group_id
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._setup_targets_by_heliobus_challenge_group
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.RaidModule
  L3_2 = L2_2
  L2_2 = L2_2.GetTreasureChallengeStatus
  L4_2 = A1_2.raidID
  L5_2 = A1_2.level
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = L2_2.TargetStatus
    if L3_2 then
      L3_2 = 1
      L4_2 = 0
      L5_2 = L2_2.TargetStatus
      L6_2 = L5_2
      L5_2 = L5_2.GetEnumerator
      L5_2 = L5_2(L6_2)
      while true do
        L7_2 = L5_2
        L6_2 = L5_2.MoveNext
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          break
        end
        L6_2 = L3_1
        if L3_2 <= L6_2 then
          L6_2 = L5_2.Current
          L6_2 = L6_2.Value
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.Client
          L7_2 = L7_2.TreasureChallengeTargetStatus
          L7_2 = L7_2.Finished
          if L6_2 == L7_2 then
            L4_2 = L4_2 + 1
          end
          L3_2 = L3_2 + 1
        end
      end
      L6_2 = 1
      L7_2 = L3_1
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        if L9_2 <= L4_2 then
          L10_2 = A0_2._binder
          L10_2 = L10_2.img_challenge_star
          L10_2 = L10_2[L9_2]
          L11_2 = G
          L11_2 = L11_2.UIColorUtils
          L11_2 = L11_2.GetColorWithAlpha
          L12_2 = L1_1
          L13_2 = 1
          L11_2 = L11_2(L12_2, L13_2)
          L10_2.color = L11_2
        else
          L10_2 = A0_2._binder
          L10_2 = L10_2.img_challenge_star
          L10_2 = L10_2[L9_2]
          L11_2 = G
          L11_2 = L11_2.UIColorUtils
          L11_2 = L11_2.GetColorWithAlpha
          L12_2 = L2_1
          L13_2 = 1
          L11_2 = L11_2(L12_2, L13_2)
          L10_2.color = L11_2
        end
      end
    end
  end
  L3_2 = A1_2.IsHeliobusRaid
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RaidConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A1_2.raidID
    L5_2 = A1_2.level
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_title_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.RaidName
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_targets_by_raid_id = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.targets
  L3_2 = 0
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = L8_2.IsTargetFinished
    if L9_2 then
      L3_2 = L3_2 + 1
    end
  end
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    if L7_2 <= L3_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_challenge_star
      L8_2 = L8_2[L7_2]
      L9_2 = G
      L9_2 = L9_2.UIColorUtils
      L9_2 = L9_2.GetColorWithAlpha
      L10_2 = L1_1
      L11_2 = 1
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.color = L9_2
    else
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_challenge_star
      L8_2 = L8_2[L7_2]
      L9_2 = G
      L9_2 = L9_2.UIColorUtils
      L9_2 = L9_2.GetColorWithAlpha
      L10_2 = L2_1
      L11_2 = 1
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.color = L9_2
    end
  end
end
L0_1._setup_targets_by_heliobus_challenge_group = L5_1
function L5_1(A0_2, A1_2, A2_2)
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
  L6_2 = L4_2.setup_view_by_reward_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_change = L5_1
return L0_1
