local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Reward.ChallengeCumulativeRewardRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Reward.ChallengeCumulativeRewardRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.ChallengeFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeTargetRewardTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._challenge_group_data = A3_2
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L6_2 = A3_2
  L5_2 = A3_2.GetCumulativeRewardInfos
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._rewards_data = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_btn_unselect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_btn_select
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakeChallengeCumulativeReward
  L4_2 = A0_2._on_take_challenge_target_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reddot
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rewards
  L1_2(L2_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ChallengeMazeReward"
    L4_2 = A0_2._challenge_group_data
    L4_2 = L4_2.ID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot
    L6_2 = L6_2.transform
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._sort_rewards
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 0
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._rewards_data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_rewards = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._rewards_data
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = A0_2._challenge_group_data
    L3_3 = L2_3
    L2_3 = L2_3.IsCumulativeRewardTaken
    L4_3 = A0_3.StarCount
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2._challenge_group_data
    L4_3 = L3_3
    L3_3 = L3_3.IsCumulativeRewardTaken
    L5_3 = A1_3.StarCount
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      return L3_3
    else
      L4_3 = A0_2._challenge_group_data
      L5_3 = L4_3
      L4_3 = L4_3.IsCumulativeRewardReached
      L6_3 = A0_3.StarCount
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = A0_2._challenge_group_data
      L6_3 = L5_3
      L5_3 = L5_3.IsCumulativeRewardReached
      L7_3 = A1_3.StarCount
      L5_3 = L5_3(L6_3, L7_3)
      if L4_3 ~= L5_3 then
        return L4_3
      else
        L6_3 = A0_3.StarCount
        L7_3 = A1_3.StarCount
        L8_3 = L6_3 < L7_3
        return L8_3
      end
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort_rewards = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._state
  L3_2 = L0_1.SelectState
  L3_2 = L3_2.Selected
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.show_reward_dialog
  L4_2 = L2_2
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rewards
  L3_2(L4_2)
end
L0_1._on_take_challenge_target_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L0_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
end
L0_1._on_got_focus = L1_1
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
    L7_2 = L7_2.ChallengeCumulativeRewardRowPanel
    L8_2 = G
    L8_2 = L8_2.ChallengeCumulativeRewardRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._rewards_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._challenge_group_data
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_item_change = L1_1
return L0_1
