local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeRaidPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeRaidPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
function L4_1(A0_2, A1_2, A2_2)
  A0_2._should_play_unlock_anim = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._owner
    L1_3 = A0_2
    L0_3.cur_select_panel = L1_3
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_in_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._config_ids
  if L1_2 then
    L1_2 = A0_2._config_ids
    L1_2 = L1_2[1]
    if L1_2 then
      L1_2 = {}
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L1_2
      L4_2 = A0_2._config_ids
      L4_2 = L4_2[1]
      L2_2(L3_2, L4_2)
      L2_2 = {}
      L2_2.items = L1_2
      L3_2 = G
      L3_2 = L3_2.InventoryUtils
      L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end
L0_1.show_reward_info_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_unlocked
  L2_2 = A0_2._is_finished
  return L1_2, L2_2
end
L0_1.get_panel_state = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusChallengeRaidExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._heliobus_raid_row = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTreasureChallengeStatus
  L4_2 = A0_2._heliobus_raid_row
  L4_2 = L4_2.RaidID
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._raid_challenge_data = L2_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._heliobus_raid_row
  L4_2 = L4_2.UnlockQuestID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil
  A0_2._is_unlocked = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_basic_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_raid_progress_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_panel_state
  L3_2(L4_2)
  L3_2 = A0_2._is_unlocked
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "HeliobusChallengeRaidNew"
    L6_2 = A0_2._heliobus_raid_row
    L6_2 = L6_2.RaidID
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_callback = A1_2
  A0_2._on_btn_root_callback_owner = A2_2
end
L0_1.register_on_click_callback = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._should_play_unlock_anim = true
end
L0_1.mark_should_play_unlock_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._should_play_unlock_anim
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_unlock
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "HeliobusChallengeInstanceList_Unlock"
    L1_2(L2_2, L3_2)
  end
end
L0_1.try_play_unlock_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._raid_challenge_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.RaidName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._raid_challenge_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.RewardList
  if L1_2 ~= nil then
    L2_2 = L1_2.Length
    if 0 < L2_2 then
      L2_2 = L1_2[0]
      A0_2._reward_id = L2_2
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.CreateConfigIDList
      L3_2 = A0_2._reward_id
      L2_2 = L2_2(L3_2)
      A0_2._config_ids = L2_2
      L3_2 = A0_2
      L2_2 = A0_2.create_panel
      L4_2 = G
      L4_2 = L4_2.RewardItemIconLite
      L5_2 = G
      L5_2 = L5_2.RewardItemIconLiteBinder
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._reward_panel = L2_2
      L2_2 = A0_2._reward_panel
      L3_2 = L2_2
      L2_2 = L2_2.bind
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_reward
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._reward_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._config_ids
      L4_2 = L4_2[1]
      L2_2(L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.get_item_count
      L3_2 = A0_2._reward_id
      L4_2 = A0_2._config_ids
      L4_2 = L4_2[1]
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = A0_2._reward_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_count
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._reward_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_attachment_getted
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.IsTreasureChallengeRewardTaken
      L7_2 = A0_2._heliobus_raid_row
      L7_2 = L7_2.RaidID
      L8_2 = 0
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L0_1._setup_basic_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = A0_2._raid_challenge_data
  L2_2 = L2_2.TargetStatus
  L4_2 = L2_2
  L3_2 = L2_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L4_2 = L4_2.Value
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TreasureChallengeTargetStatus
    L5_2 = L5_2.Finished
    if L4_2 == L5_2 then
      L1_2 = L1_2 + 1
    end
  end
  L4_2 = 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_active_stars
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_active_stars
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L7_2 <= L1_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_unactive_stars
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L7_2 > L1_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_active_stars
  L4_2 = #L4_2
  L4_2 = L1_2 == L4_2
  A0_2._is_finished = L4_2
end
L0_1._setup_raid_progress_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlocked
  L3_2 = not L3_2 or L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlocked
  if L3_2 then
    L3_2 = A0_2._is_finished
    L3_2 = A0_2._should_play_unlock_anim
    L3_2 = not L3_2 and L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlocked
  if L3_2 then
    L3_2 = A0_2._is_finished
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_panel_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_unlocked
  if L1_2 then
    L1_2 = A0_2._on_btn_root_callback
    if L1_2 then
      L1_2 = A0_2._on_btn_root_callback_owner
      if L1_2 then
        L1_2 = A0_2._on_btn_root_callback
        L2_2 = A0_2._on_btn_root_callback_owner
        L3_2 = A0_2._raid_challenge_data
        L4_2 = A0_2._heliobus_raid_row
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UICenterToastMessageTextID
    L3_2 = A0_2._heliobus_raid_row
    L3_2 = L3_2.UnlockTips
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root = L4_1
return L0_1
