local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureChallengeTargetItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
function L2_1(A0_2, A1_2, A2_2)
  A0_2.is_idle = false
  A0_2.target_id = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_data
  L5_2 = A1_2
  L6_2 = false
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_desc
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_setup_progress
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_static_status
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.hide_rewards
  L3_2(L4_2)
end
L0_1.setup_view_in_battle = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._data
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.Status
    L3_2 = A1_2.Status
    if L2_2 ~= L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_static_status
      L2_2(L3_2)
    end
  end
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._try_setup_progress
  L2_2(L3_2)
end
L0_1.refresh_when_progress_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._count_down_timer = nil
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_data
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_desc
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_display_reward
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_setup_progress
  L4_2(L5_2)
  if A3_2 == true then
    L5_2 = A0_2
    L4_2 = A0_2.setup_hint_status
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_static_status
    L4_2(L5_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._update_reward_show_status
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.QuestModule
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.DataRow
  L5_2 = L5_2.QuestTitle
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_progress_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_progress_current
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2.Progress
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.target_progress_total
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2.TotalProgress
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.Status
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L3_2 = L3_2 == L4_2
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._reset_all_animator_trigger
    L4_2(L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.state_animator
    L5_2 = L4_2
    L4_2 = L4_2.SetTrigger
    L6_2 = "Succeed"
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view_by_quest = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.is_idle = false
  A0_2.target_id = A1_2
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._count_down_timer
  if L4_2 ~= nil then
    L4_2 = A0_2._count_down_timer
    L5_2 = L4_2
    L4_2 = L4_2.stop
    L4_2(L5_2)
  end
  A0_2._after_callback_owner = A2_2
  A0_2._after_callback = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  L6_2 = A0_2._on_timer_end
  L7_2 = L1_1
  L8_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2._count_down_timer = L4_2
  L4_2 = A0_2._count_down_timer
  L5_2 = L4_2
  L4_2 = L4_2.reset
  L4_2(L5_2)
  L4_2 = A0_2._count_down_timer
  L5_2 = L4_2
  L4_2 = L4_2.start
  L4_2(L5_2)
end
L0_1.setup_count_down_timer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_rewards = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._data = A1_2
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = A1_2.ShouldShowReward
  end
  A0_2._should_show_reward = L4_2
  if A3_2 == true then
    A0_2._is_progress_hint = true
  else
    A0_2._is_progress_hint = false
  end
end
L0_1._setup_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_progress_hint
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.target_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.TextIDSimple
    L4_2 = A0_2._data
    L4_2 = L4_2.DescParam1
    L5_2 = A0_2._data
    L5_2 = L5_2.DescParam2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.target_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.TextID
    L4_2 = A0_2._data
    L4_2 = L4_2.DescParam1
    L5_2 = A0_2._data
    L5_2 = L5_2.DescParam2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._setup_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._should_show_reward
  if not L1_2 then
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.RewardDisplayData
  if L1_2 then
    A0_2._has_reward = true
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ItemExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._data
    L2_2 = L2_2.RewardDisplayData
    L2_2 = L2_2.ConfigID
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._data
    L2_2 = L2_2.RewardDisplayData
    L2_2 = L2_2.Count
    L4_2 = A0_2
    L3_2 = A0_2._load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.reward_item_icon
    L6_2 = L1_2.ItemIconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.reward_item_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    A0_2._has_reward = false
  end
end
L0_1._setup_display_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.ShouldShowProgress
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.target_progress_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_progress_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_progress_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.CurrentProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_progress_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
end
L0_1._try_setup_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_animator_trigger
  L1_2(L2_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TreasureChallengeTargetStatus
  L2_2 = L2_2.None
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TreasureChallengeTargetStatus
    L2_2 = L2_2.Doing
    if L1_2 == L2_2 then
    else
      L1_2 = A0_2._data
      L1_2 = L1_2.Status
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.TreasureChallengeTargetStatus
      L2_2 = L2_2.Finished
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.state_animator
        L2_2 = L1_2
        L1_2 = L1_2.SetTrigger
        L3_2 = "Succeed"
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._binder
        L1_2 = L1_2.state_animator
        L2_2 = L1_2
        L1_2 = L1_2.SetTrigger
        L3_2 = "Failed"
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._setup_static_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_animator_trigger
  L1_2(L2_2)
  L1_2 = A0_2.should_waiting_fade_in_anim_end
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.state_animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Pending"
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TreasureChallengeTargetStatus
  L2_2 = L2_2.Doing
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.state_animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "ProgressHint"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TreasureChallengeTargetStatus
    L2_2 = L2_2.Finished
    if L1_2 == L2_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.IsFailProgress
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.state_animator
        L2_2 = L1_2
        L1_2 = L1_2.SetTrigger
        L3_2 = "FailProgressHint"
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._binder
        L1_2 = L1_2.state_animator
        L2_2 = L1_2
        L1_2 = L1_2.SetTrigger
        L3_2 = "SuccessHint"
        L1_2(L2_2, L3_2)
      end
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.state_animator
      L2_2 = L1_2
      L1_2 = L1_2.SetTrigger
      L3_2 = "FailHint"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.setup_hint_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "Pending"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "Failed"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "Succeed"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "SuccessHintDelay"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "SuccessHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "FailHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "ProgressHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "FailProgressHint"
  L1_2(L2_2, L3_2)
end
L0_1._reset_all_animator_trigger = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._should_show_reward
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._should_show_reward
    if L3_2 then
      L3_2 = A0_2._has_reward
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._update_reward_show_status = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.ShouldShowEffect
  return L1_2
end
L0_1.can_play_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.ShouldShowEffect
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "SuccessHintDelay"
  L1_2(L2_2, L3_2)
end
L0_1.try_play_first_get_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2.is_idle = true
  L2_2 = A0_2
  L1_2 = A0_2._reset_all_animator_trigger
  L1_2(L2_2)
  L1_2 = A0_2._after_callback
  if L1_2 then
    L1_2 = A0_2._after_callback_owner
    if L1_2 then
      L1_2 = A0_2._after_callback
      L2_2 = A0_2._after_callback_owner
      L3_2 = A0_2.target_id
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_timer_end = L2_1
return L0_1
