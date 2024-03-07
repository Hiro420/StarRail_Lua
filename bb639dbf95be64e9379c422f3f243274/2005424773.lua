local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityCardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityDetailPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityRewardDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityUnlockHintDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FightActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.TimeManager
L1_1 = L1_1.Instance
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "FightActivityCardPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
L3_1 = {}
L3_1[1] = "UIText_ActivityFight_Easy"
L3_1[2] = "UIText_ActivityFight_Mid"
L3_1[3] = "UIText_ActivityFight_Hard"
L4_1 = {}
L4_1[1] = "UIText_Roman_Number_Text_1"
L4_1[2] = "UIText_Roman_Number_Text_2"
L4_1[3] = "UIText_Roman_Number_Text_3"
L5_1 = {}
L5_1[1] = "#6d8bd9"
L5_1[2] = "#D871F3"
L5_1[3] = "#F5AC52"
L6_1 = {}
L6_1[1] = "#6d8bd9"
L6_1[2] = "#D871F3"
L6_1[3] = "#F5AC52"
L7_1 = "#8ca2ca"
L8_1 = "#ffffff"
L9_1 = "UIText_ActivityFight_NoChallengeYet"
L10_1 = "UIText_ActivityFight_Locked"
L11_1 = "UIText_ActivityFight_HistoryResult"
function L12_1(A0_2, A1_2, A2_2)
  A0_2._parent = A1_2
end
L2_1.ctor = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.reward_in_control_button
    L2_2.ActionEnabled = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.reward_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L2_1.setup_in_control_button_enable = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
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
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._is_group_begin
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
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
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FightActivityDataUpdated
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2
  A0_2._group_row_info = nil
  A0_2._group_info = nil
end
L2_1._on_dispose = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._group_row_info = A1_2
  L2_2 = A0_2._group_row_info
  L2_2 = L2_2.GroupRow
  L2_2 = L2_2.ActivityFightGroupID
  A0_2._group_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFightConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._group_id
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.LevelDifficulty
  L4_2 = L4_2.Hard
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._endless_fight_config_row = L2_2
  A0_2._group_info = nil
  L2_2 = A0_2._group_row_info
  L2_2 = L2_2.ScheduleData
  L2_2 = L2_2.BeginTimeStamp
  A0_2._begin_time_stamp = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_unlock_timer
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_group_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
end
L2_1.setup_view = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 % 2
  if L2_2 == 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.empty_box_card
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.empty_box_reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.empty_box_card
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.empty_box_reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L2_1.setup_height = L12_1
function L12_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.interactable = A1_2
end
L2_1.setup_btn_interactable = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._group_row_info
  L3_2 = L3_2.GroupRow
  L3_2 = L3_2.FightStageTitle
  L1_2(L2_2, L3_2)
end
L2_1._setup_title = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._group_row_info
  L3_2 = L3_2.ScheduleData
  L3_2 = L3_2.BeginTimeDate
  L4_2 = A0_2._refresh
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_unlock_timer = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_box_icon
  L4_2 = A0_2._group_row_info
  L4_2 = L4_2.GroupRow
  L4_2 = L4_2.ActivityFightGroupIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_group_icon = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.NowDateTime
  L2_2 = A0_2._group_row_info
  L2_2 = L2_2.ScheduleData
  L2_2 = L2_2.BeginTimeDate
  L1_2 = L1_2 >= L2_2
  return L1_2
end
L2_1._is_group_begin = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFightActivityGroupInfo
  L3_2 = A0_2._group_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._group_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bottom_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_lock_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_group_begin
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_reward
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_level
    L1_2(L2_2)
  end
end
L2_1._refresh = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_group_begin
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlock_mask
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.difficulty_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.lock_bg
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlock_bg
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L11_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlock_time_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlock_mask
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.difficulty_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.lock_bg
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlock_bg
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_sub_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L10_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_box_icon
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L7_1
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlock_time_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_wave
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.line
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L2_1._refresh_lock_state = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._group_info
  L1_2 = L1_2.EndlessMaxWave
  L2_2 = A0_2._endless_fight_config_row
  L2_2 = L2_2.TotalWave
  L1_2 = L1_2 >= L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_endless_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_endless_wave
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityFight_MaxWave"
    L2_2(L3_2, L4_2)
  end
end
L2_1._refresh_bottom_tips = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L2_2 = A0_2._group_info
  if L2_2 ~= nil then
    L2_2 = A0_2._group_info
    L2_2 = L2_2.TakenDifficultyLevelRewardList
    L2_2 = L2_2.Count
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.FightActivityUtils
    L2_2 = L2_2.EndlessExtraRewardAllReceive
    L3_2 = A0_2._group_id
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2 == 3 and L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_to_get
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_got
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._refresh_reward = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._group_info
  if L1_2 then
    L1_2 = A0_2._group_info
    L1_2 = L1_2.PassedMaxDifficultyLevel
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = 0
  ::lbl_9::
  if 0 < L1_2 then
    L2_2 = A0_2._group_info
    L2_2 = L2_2.EndlessMaxWave
    if 0 < L2_2 then
      L2_2 = L5_1
      L1_2 = #L2_2
    end
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L6_1[L1_2]
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.difficulty_icon
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level_icon
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L4_1[L1_2]
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.card_challenge_bg
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.card_unchallenge_bg
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L3_1[L1_2]
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_glow
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColorWithAlpha
    L5_2 = L6_1[L1_2]
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_glow
    L6_2 = L6_2.color
    L6_2 = L6_2.a
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.color = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_card_outline
    L3_2.color = L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_box_icon
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColor
    L5_2 = L8_1
    L4_2 = L4_2(L5_2)
    L3_2.color = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_wave
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L5_1
    L5_2 = #L5_2
    L5_2 = L1_2 == L5_2
    L3_2(L4_2, L5_2)
    L3_2 = L5_1
    L3_2 = #L3_2
    if L1_2 == L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_wave
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_ActivityFight_Wave"
      L6_2 = A0_2._group_info
      L6_2 = L6_2.EndlessMaxWave
      L3_2(L4_2, L5_2, L6_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.line
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_level
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L9_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_level
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_sub_title
    L3_2 = L3_2.color
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.card_challenge_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.card_unchallenge_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.difficulty_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_box_icon
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L7_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_wave
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.line
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L2_1._refresh_level = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "StarBoxItem_Loop"
  L2_2 = "StarBoxItem_Shine"
  L3_2 = A0_2._anim_played
  if L3_2 == nil then
    A0_2._anim_played = true
    L3_2 = A0_2._group_id
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2 = L4_2.FightActivityEndlessPassAnimGroupID
    if L3_2 == L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.animation_endless_root
      L4_2 = L3_2
      L3_2 = L3_2.Play
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.Prefs
      L3_2 = L3_2.User
      L3_2.FightActivityEndlessPassAnimGroupID = 0
    else
      L3_2 = A0_2._group_info
      L3_2 = L3_2.EndlessMaxWave
      L4_2 = A0_2._endless_fight_config_row
      L4_2 = L4_2.TotalWave
      if L3_2 >= L4_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.animation_endless_root
        L4_2 = L3_2
        L3_2 = L3_2.Play
        L5_2 = L1_2
        L3_2(L4_2, L5_2)
      end
    end
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromEnd
    L4_2 = A0_2._binder
    L4_2 = L4_2.animation_endless_root
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
end
L2_1.try_play_anim = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_feature_switch_close
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_feature_close_toast
    L1_2(L2_2)
    return
  end
  L1_2 = L1_1.NowDateTime
  L2_2 = A0_2._group_row_info
  L2_2 = L2_2.ScheduleData
  L2_2 = L2_2.BeginTimeDate
  if L1_2 < L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_unlock_btn_root
    L1_2(L2_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = ""
  L4_2 = A0_2._group_id
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SeenFightActivityGroupIDs
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._group_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.SeenFightActivityGroupIDs
    L2_2 = L1_2
    L1_2 = L1_2.Add
    L3_2 = A0_2._group_id
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.ActivityUpdated
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.FightActivityDetailPage
  L3_2 = A0_2._group_row_info
  L3_2 = L3_2.GroupRow
  L4_2 = A0_2._parent
  L4_2 = L4_2.is_from_activity_panel
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_root = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FightActivityUtils
  L1_2 = L1_2.GetFightGroupScheduleData
  L2_2 = A0_2._group_id
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == nil
  return L1_2
end
L2_1._is_feature_switch_close = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkHint
  L2_2 = "UIText_Toast_System_Off_Tips_1"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  L1_2(L2_2, L3_2)
end
L2_1._show_feature_close_toast = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = ""
  L4_2 = A0_2._group_id
  L5_2 = "_RewardBtn"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = G
  L2_2 = L2_2.FightActivityRewardDialog
  L3_2 = A0_2._group_row_info
  L3_2 = L3_2.GroupRow
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_reward = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = "UIText_ActivityFight_Locked_Tips"
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessage
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L2_1._on_unlock_btn_root = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "FightActivityReward"
    L4_2 = A0_2._group_id
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reward_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "FightActivityGroupNew"
    L4_2 = A0_2._group_id
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.reddot_new
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L2_1._bind_reddot = L12_1
return L2_1
