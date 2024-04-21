local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubEntrancePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubEntrancePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/UI/Quest/FistClub/FistClubTaskCardBg1.png"
L2_1 = "SpriteOutput/UI/Quest/FistClub/FistClubTaskCardBg2.png"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.BoxingClubModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.BoxingClubChallengeConfigExcelTable
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_current_panel_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.root_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    A0_2._is_panel_selected = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    A0_2._is_panel_selected = false
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_data
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_title
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_img
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reward
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_round_txt
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_bg
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reddot
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reward_config_id_table
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._store_unread_status
  L3_2(L4_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_img
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_round_txt
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._store_unread_status
  L1_2(L2_2)
end
L0_1.refresh = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._click_listener = A1_2
  A0_2._click_callback = A2_2
end
L0_1.register_click_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_panel_selected
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = {}
    L3_2 = A0_2._reward_config_id_table
    L2_2.items = L3_2
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1._on_in_control_action_click = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._challenge_id = A1_2
  L3_2 = L4_1.GetData
  L4_2 = A0_2._challenge_id
  L3_2 = L3_2(L4_2)
  A0_2._challenge_row = L3_2
  L3_2 = L3_1.BoxingClubLevelDict
  L4_2 = A0_2._challenge_id
  L3_2 = L3_2[L4_2]
  A0_2._level_instance = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.CreateDisplayItemDataFromReward
  L4_2 = A0_2._challenge_row
  L4_2 = L4_2.FirstPassRewardID
  L3_2 = L3_2(L4_2)
  A0_2._item_display_data_lst = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._item_display_data_lst
  L3_2 = L3_2(L4_2)
  A0_2._item_display_data_table = L3_2
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = A0_2._item_display_data_table
  L3_2(L4_2)
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.HasTakenReward
  A0_2._is_reward_taken = L3_2
  if A2_2 ~= nil then
    L3_2 = L4_1.GetData
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.Name
    A0_2._pre_challenge_title = L4_2
    L4_2 = L3_1.BoxingClubLevelDict
    L4_2 = L4_2[A2_2]
    L5_2 = L4_2.HasTakenReward
    A0_2._is_pre_level_reward_taken = L5_2
  else
    A0_2._is_pre_level_reward_taken = true
  end
end
L0_1._setup_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.challenge_figure
  L4_2 = A0_2._challenge_row
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_img = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._item_display_data_table
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.round_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._is_pre_level_reward_taken
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.round_txt
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_BoxingClub_Challenge_Turn"
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.round_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_BoxingClub_Challenge_Unlock"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_round_txt = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_pre_level_reward_taken
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2 or L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_pre_level_reward_taken
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_level_lock
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_unlock_time
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.HasTakenReward
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_completed
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_current_progress
  L1_2(L2_2)
end
L0_1._setup_status_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.time_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.done_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pre_cond_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_mask_canvas
  L1_2.alpha = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.pre_cond_lock_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_BoxingClub_Challenge_PreChallenge"
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = A0_2._pre_challenge_title
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_level_lock = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.time_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.done_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pre_cond_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_mask_canvas
  L1_2.alpha = 1
  L1_2 = G
  L1_2 = L1_2.BoxingClubUtils
  L1_2 = L1_2.get_schedule_by_level_instance
  L2_2 = A0_2._level_instance
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.unlock_time
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2
  L5_2 = A0_2.setup_view
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_unlock_time = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.time_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.done_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pre_cond_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_mask_canvas
  L1_2.alpha = 0
  L1_2 = 0
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.BattleRecord
  if L2_2 ~= nil then
    L2_2 = A0_2._level_instance
    L2_2 = L2_2.BattleRecord
    L1_2 = L2_2.CurrentStageIndex
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.cur_round_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_BoxingClub_Challenge_TurnProgress"
  L5_2 = L1_2 + 1
  L6_2 = A0_2._level_instance
  L6_2 = L6_2.ChallengeMaxRoundNum
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_current_progress = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.time_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.done_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.round_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pre_cond_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_mask_canvas
  L1_2.alpha = 0
end
L0_1._setup_completed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_row
  L1_2 = L1_2.IsSpecialChallenge
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.bg
    L4_2 = L2_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.bg
    L4_2 = L1_1
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_bg = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._reward_config_id_table = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._item_display_data_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._reward_config_id_table
    L8_2 = L5_2.ConfigID
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_reward_config_id_table = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityBoxingClubChallenge"
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_reddot = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.IsNewLevel
  if L1_2 then
    A0_2._should_play_eff = true
    L1_2 = A0_2._binder
    L1_2 = L1_2.eff_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    A0_2._should_play_eff = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.eff_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._store_unread_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.eff_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.force_close_eff_root = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._should_play_eff
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.unlock_anim
  L3_2 = ""
  L1_2(L2_2, L3_2)
end
L0_1.setup_new_hint = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
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
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_by_display_data
  L7_2 = A0_2._item_display_data_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_attachment_getted
  L7_2 = A0_2._is_reward_taken
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_reward_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._is_pre_level_reward_taken
    if L1_2 then
      goto lbl_18
    end
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_BoxingClub_Challenge_Locked"
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_18::
  L1_2 = A0_2._click_callback
  if L1_2 then
    L1_2 = A0_2._click_listener
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.SDKLuaReportAdapter
      L1_2 = L1_2.ReportUIButtonClick
      L2_2 = A0_2._owner
      L2_2 = L2_2.__name
      L3_2 = A0_2.__name
      L4_2 = tostring
      L5_2 = A0_2._challenge_id
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2._owner
      L5_2 = L5_2.guid
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_listener
      L3_2 = A0_2._challenge_id
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_current_panel_clicked = L5_1
return L0_1
