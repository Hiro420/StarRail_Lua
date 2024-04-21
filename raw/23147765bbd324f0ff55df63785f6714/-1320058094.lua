local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceCardPanelBinder"
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
L1_1 = "BoxingClubResonanceCardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BoxingClubModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.BoxingClubChallengeConfigExcelTable
L3_1 = 0.08
L4_1 = 0.2
L5_1 = 0.08
L6_1 = 0.3
L7_1 = 1.0
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_current_panel_clicked
  L1_2(L2_2, L3_2, L4_2)
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
    A0_2._is_panel_selected = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    A0_2._is_panel_selected = false
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._challenge_id = A1_2
  L2_2 = L2_1.GetData
  L3_2 = A0_2._challenge_id
  L2_2 = L2_2(L3_2)
  A0_2._challenge_row = L2_2
  L2_2 = L1_1.BoxingClubLevelDict
  L3_2 = A0_2._challenge_id
  L2_2 = L2_2[L3_2]
  A0_2._level_instance = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_challenge_icon
  L5_2 = A0_2._challenge_row
  L5_2 = L5_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_text_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_lock_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_img
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._store_unread_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_alpha
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock_eff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "BoxingClubResonanceChallengeNew"
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_place_holder
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_is_top = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_text_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._store_unread_status
  L1_2(L2_2)
end
L0_1.refresh = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._click_listener = A1_2
  A0_2._click_callback = A2_2
end
L0_1.register_click_callback = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.ScheduleData
  L1_2 = L1_2 ~= nil
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_unlock_time
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_challenge_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._challenge_row
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
end
L0_1._setup_title = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.BoxingClubUtils
  L1_2 = L1_2.get_schedule_by_level_instance
  L2_2 = A0_2._level_instance
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_remain_timer_unlock
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2
  L5_2 = A0_2.setup_view
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_unlock_time = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.IsUnlocked
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.HasTakenReward
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.BestRoundRecord
  L4_2 = A0_2._challenge_row
  L4_2 = L4_2.PerfectTurn
  L3_2 = L3_2 <= L4_2
  L4_2 = A0_2._level_instance
  L4_2 = L4_2.HasUnFinishedBattleRecord
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_perfect_finish
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L2_2 or L7_2
  L7_2 = L3_2 or L7_2
  if L2_2 and L3_2 then
    L7_2 = not L4_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_normal_finish
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L2_2 or L7_2
  L7_2 = L2_2 and not L3_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_unchallenge
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2 and not L2_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_in_progress
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L2_2 and not L3_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_level_turn
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = A0_2._level_instance
    L7_2 = L7_2.BestRoundRecord
    L5_2(L6_2, L7_2)
  end
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_cur_round
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = A0_2._level_instance
    L7_2 = L7_2.BattleRecord
    L7_2 = L7_2.CurrentStageIndex
    L7_2 = L7_2 + 1
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_total_round
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = A0_2._level_instance
    L7_2 = L7_2.BattleRecord
    L7_2 = L7_2.Row
    L7_2 = L7_2.EventIDList
    L7_2 = L7_2.Length
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_text_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ScheduleModule
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByActivityModuleID
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.Row
  L3_2 = L3_2.ActivityModuleID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.IsUnlocked
  if not L2_2 then
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L2_2 = L1_2.BeginTimeStamp
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_TimeManager
      L3_2 = L3_2.NowTimeStamp
      L2_2 = L2_2 > L3_2
    end
    if L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.mono_remain_timer_unlock
      L4_2 = L3_2
      L3_2 = L3_2.SetTargetTimeByTimeStamp
      L5_2 = L1_2.BeginTimeStamp
      L6_2 = A0_2.refresh
      L7_2 = A0_2
      L8_2 = 2
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_lock_text
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_lock_timer
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_lock_state = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._challenge_row
  L2_2 = L2_2.DamageType
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.BoxingClubNatureConfigExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._challenge_row
    L6_2 = L6_2.DamageType
    L6_2 = L6_2[L4_2]
    L5_2 = L5_2(L6_2)
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_nature_bg
    L9_2 = L4_2 + 1
    L8_2 = L8_2[L9_2]
    L9_2 = L5_2.NatureIconBackGround
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_nature_icon
    L9_2 = L4_2 + 1
    L8_2 = L8_2[L9_2]
    L9_2 = L5_2.BoxingBuffIcon
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._challenge_row
  L1_2 = L1_2.DamageType
  L1_2 = L1_2.Length
  L1_2 = L1_2 + 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff_items
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_buff_items
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_buff_img = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.IsNewLevel
  if L1_2 then
    L1_2 = A0_2._level_instance
    L1_2 = L1_2.HasTakenReward
    if not L1_2 then
      A0_2._should_play_eff = true
  end
  else
    A0_2._should_play_eff = false
  end
end
L0_1._store_unread_status = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.HasTakenReward
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.HasUnFinishedBattleRecord
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.BestRoundRecord
  L4_2 = A0_2._challenge_row
  L4_2 = L4_2.PerfectTurn
  L3_2 = L3_2 <= L4_2
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = not L2_2
  end
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.canvas_group_contentbg_light
    if L3_2 then
      L6_2 = L5_1
      if L6_2 then
        goto lbl_26
      end
    end
    L6_2 = L4_1
    ::lbl_26::
    L5_2.alpha = L6_2
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.canvas_group_contentbg_light
    L6_2 = L3_1
    L5_2.alpha = L6_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.canvas_group_starline
  if L4_2 then
    L6_2 = L7_1
    if L6_2 then
      goto lbl_40
    end
  end
  L6_2 = L6_1
  ::lbl_40::
  L5_2.alpha = L6_2
end
L0_1._setup_alpha = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._should_play_eff
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_unlock
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1.setup_new_hint = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_BoxingClub_Challenge_Locked"
    L1_2(L2_2, L3_2)
    return
  end
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
L0_1._on_current_panel_clicked = L8_1
return L0_1
