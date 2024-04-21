local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeMissionInfoRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeMissionInfoRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#ffcf70"
L2_1 = "#7e9da6"
L3_1 = 3
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._reward_item_table = L3_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
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
L0_1._on_load = L4_1
function L4_1(A0_2)
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
L0_1.get_static_list = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._index = A3_2
  L4_2 = A1_2.rewards
  if L4_2 then
    L4_2 = A1_2.rewards
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.RewardUtils
      L4_2 = L4_2.get_sorted_items_by_item_config_list
      L5_2 = A1_2.rewards
      L4_2 = L4_2(L5_2)
    end
    A0_2._reward_item_table = L4_2
  else
    L4_2 = A1_2.reward_id
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.RewardUtils
      L4_2 = L4_2.CreateRewardItemTableSorted
      L5_2 = A1_2.reward_id
      L4_2 = L4_2(L5_2)
      A0_2._reward_item_table = L4_2
    end
  end
  L4_2 = A1_2.is_locked
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_normal
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_complete
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_reward
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_star
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_lock
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._reward_item_table
    if L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_reward
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.reward_scroll_items
      L5_2 = L4_2
      L4_2 = L4_2.SetListItemCount
      L6_2 = A0_2._reward_item_table
      L6_2 = #L6_2
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.reward_scroll_items
      L5_2 = L4_2
      L4_2 = L4_2.RefreshAllShownItem
      L4_2(L5_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_reward
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_star
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_lock
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.is_level_completed
    if L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_normal
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_reward
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_complete
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_normal
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_complete
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._reward_item_table
      if L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_reward
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.reward_scroll_items
        L5_2 = L4_2
        L4_2 = L4_2.SetListItemCount
        L6_2 = A0_2._reward_item_table
        L6_2 = #L6_2
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.reward_scroll_items
        L5_2 = L4_2
        L4_2 = L4_2.RefreshAllShownItem
        L4_2(L5_2)
      else
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_reward
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = false
        L4_2(L5_2, L6_2)
      end
    end
  end
  L4_2 = A1_2.raidID
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_targets_by_raid_id
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A1_2.heliobus_challenge_group_id
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._setup_targets_by_heliobus_challenge_group
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.raidID
  L4_2 = A1_2.level
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.RaidName
  L3_2(L4_2, L5_2)
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "UIText_Cocoon_WorldLevel_Text_%s"
  L5_2 = A0_2._index
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title_num_finished
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.RaidModule
  L5_2 = L4_2
  L4_2 = L4_2.GetTreasureChallengeStatus
  L6_2 = A1_2.raidID
  L7_2 = A1_2.level
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L5_2 = L4_2.TargetStatus
    if L5_2 then
      L5_2 = 1
      L6_2 = 0
      L7_2 = L4_2.TargetStatus
      L8_2 = L7_2
      L7_2 = L7_2.GetEnumerator
      L7_2 = L7_2(L8_2)
      while true do
        L9_2 = L7_2
        L8_2 = L7_2.MoveNext
        L8_2 = L8_2(L9_2)
        if not L8_2 then
          break
        end
        L8_2 = L3_1
        if L5_2 <= L8_2 then
          L8_2 = L7_2.Current
          L8_2 = L8_2.Value
          L9_2 = CS
          L9_2 = L9_2.RPG
          L9_2 = L9_2.Client
          L9_2 = L9_2.TreasureChallengeTargetStatus
          L9_2 = L9_2.Finished
          if L8_2 == L9_2 then
            L6_2 = L6_2 + 1
          end
          L5_2 = L5_2 + 1
        end
      end
      L8_2 = 1
      L9_2 = L3_1
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        if L11_2 <= L6_2 then
          L12_2 = A0_2._binder
          L12_2 = L12_2.img_challenge_star
          L12_2 = L12_2[L11_2]
          L13_2 = G
          L13_2 = L13_2.UIColorUtils
          L13_2 = L13_2.GetColorWithAlpha
          L14_2 = L1_1
          L15_2 = 1
          L13_2 = L13_2(L14_2, L15_2)
          L12_2.color = L13_2
        else
          L12_2 = A0_2._binder
          L12_2 = L12_2.img_challenge_star
          L12_2 = L12_2[L11_2]
          L13_2 = G
          L13_2 = L13_2.UIColorUtils
          L13_2 = L13_2.GetColorWithAlpha
          L14_2 = L2_1
          L15_2 = 1
          L13_2 = L13_2(L14_2, L15_2)
          L12_2.color = L13_2
        end
      end
    end
  end
end
L0_1._setup_targets_by_raid_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title_num_finished
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Heliobus_Challenge_Hard"
  L6_2 = A1_2.level
  L6_2 = L6_2 + 1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.targets
  L4_2 = 0
  L5_2 = 1
  L6_2 = #L3_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2[L8_2]
    L10_2 = L9_2.IsTargetFinished
    if L10_2 then
      L4_2 = L4_2 + 1
    end
  end
  L5_2 = 1
  L6_2 = #L3_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    if L8_2 <= L4_2 then
      L9_2 = A0_2._binder
      L9_2 = L9_2.img_challenge_star
      L9_2 = L9_2[L8_2]
      L10_2 = G
      L10_2 = L10_2.UIColorUtils
      L10_2 = L10_2.GetColorWithAlpha
      L11_2 = L1_1
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L9_2.color = L10_2
    else
      L9_2 = A0_2._binder
      L9_2 = L9_2.img_challenge_star
      L9_2 = L9_2[L8_2]
      L10_2 = G
      L10_2 = L10_2.UIColorUtils
      L10_2 = L10_2.GetColorWithAlpha
      L11_2 = L2_1
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L9_2.color = L10_2
    end
  end
end
L0_1._setup_targets_by_heliobus_challenge_group = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
L0_1._on_reward_item_change = L4_1
return L0_1
