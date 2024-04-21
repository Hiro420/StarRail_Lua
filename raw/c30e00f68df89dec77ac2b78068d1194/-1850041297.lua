local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Reward.CumulativeRewardRowTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Reward.CumulativeRewardRowTitlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeCumulativeRewardRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_btn
  L4_2 = A0_2._on_click_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.title_star_text_prefab_meta
  L3_2 = L3_2.MultiPrefabList
  L3_2 = L3_2[0]
  L4_2 = A0_2._binder
  L4_2 = L4_2.title_star_text_root
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.CumulativeRewardRowTitlePanel
  L5_2 = G
  L5_2 = L5_2.CumulativeRewardRowTitlePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._title_panel = L2_2
  L2_2 = A0_2._title_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.get_in_control_button
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.get_in_control_tip
    L2_2.IsShowTip = A1_2
  end
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._title_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.title_text_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A2_2.ID
  A0_2._group_id = L3_2
  A0_2._challenge_group_data = A2_2
  L3_2 = A1_2.StarCount
  A0_2._need_star_count = L3_2
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateRewardItemTableSorted
  L4_2 = A1_2.RewardID
  L3_2 = L3_2(L4_2)
  A0_2._reward_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_title
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rewards_looplistview
  L3_2(L4_2)
  L3_2 = A0_2._challenge_group_data
  L4_2 = L3_2
  L3_2 = L3_2.IsCumulativeRewardReached
  L5_2 = A0_2._need_star_count
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._challenge_group_data
  L5_2 = L4_2
  L4_2 = L4_2.IsCumulativeRewardTaken
  L6_2 = A0_2._need_star_count
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_rewards_claim_btn
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateConfigIDList
  L6_2 = A1_2.RewardID
  L5_2 = L5_2(L6_2)
  A0_2._config_id_list = L5_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2._title_panel
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.title_text_root
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateRewardItemTableSorted
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A0_2._reward_table = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_rewards_looplistview
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_rewards_claim_btn
  L7_2 = A3_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateConfigIDList
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A0_2._config_id_list = L5_2
end
L0_1.setup_view_level_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._title_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._need_star_count
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._reward_table
  L1_2(L2_2, L3_2)
end
L0_1._setup_rewards_looplistview = L1_1
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
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ConfigID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count
  L7_2 = A0_2._reward_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.Count
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == true and A2_2 == true then
    L3_2 = A0_2._binder
    L3_2 = L3_2.reward_btn
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.complete_info_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.in_progress_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  elseif A1_2 == true and A2_2 == false then
    L3_2 = A0_2._binder
    L3_2 = L3_2.reward_btn
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.complete_info_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.in_progress_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.reward_btn
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.complete_info_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.in_progress_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_rewards_claim_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L2_2 = L1_2
  L1_2 = L1_2.TakeCumulativeReward
  L3_2 = A0_2._group_id
  L1_2(L2_2, L3_2)
end
L0_1._on_click_get_reward = L1_1
return L0_1
