local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeStageBtnBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeTeamSetupPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeConst"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeUtil"
L1_1 = L1_1(L2_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityStrongChallengeModule
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "StrongChallengeStageBtn"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter
  L4_2 = A0_2._enter_team_setup_page
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_enter
  return L1_2
end
L3_1.get_unity_btn = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.index_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%02d"
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1.set_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._stage_data = A1_2
  L2_2 = nil
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.BattleType
  L4_2 = L0_1.HARD
  if L3_2 == L4_2 then
    L2_2 = "ActivityStrongChallengeHardStage"
  else
    L2_2 = "ActivityStrongChallengeNormalStage"
  end
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = L2_2
  L6_2 = A0_2._stage_data
  L6_2 = L6_2.StageID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_view
  L3_2(L4_2)
end
L3_1.set_stage_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._stage_data
  L1_2 = L1_2.PreStage
  if L1_2 then
    L2_2 = L1_2.ClearScoreLine
    return L2_2
  else
    L2_2 = 0
    return L2_2
  end
end
L3_1._get_prestage_clear_score_line = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._stage_data
  L2_2.ShouldPlayUnlockAnim = A1_2
end
L3_1.set_should_play_unlock_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._stage_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._stage_data
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.avatar_icon
  L5_2 = L1_2.MonsterFigurePath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.avatar_icon_gray
  L5_2 = L1_2.MonsterGrayFigurePath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.avatar_icon_back
  L5_2 = L1_2.MonsterBgFigurePath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.rank_bg
  L5_2 = L1_1.rank_bg
  L6_2 = L1_2.HistoryHighScore
  L7_2 = L1_2.ScoreInterval
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rank_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_1.rank_text
  L5_2 = L1_2.HistoryHighScore
  L6_2 = L1_2.ScoreInterval
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.score_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.HistoryHighScore
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.name_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.lock_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Strong_Challenge_UnLock_Tip1"
  L6_2 = A0_2
  L5_2 = A0_2._get_prestage_clear_score_line
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.unlock_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.victory_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.IsOpen
  L3_2 = L1_2.IsLocked
  if not L3_2 then
    L3_2 = L1_2.BattleType
    L4_2 = L0_1.HARD
    L3_2 = L2_1.IsHardModeUnlocked
    L3_2 = L3_2 == L4_2 and L3_2
  end
  L4_2 = L1_2.IsChallenged
  L4_2 = not L3_2 and L4_2
  L5_2 = not L3_2 and L5_2
  L6_2 = L1_2.IsChallenged
  L6_2 = not L3_2 and L6_2 and L6_2
  L7_2 = not L3_2 and L7_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.unopened_panel
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = not L2_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.remain_time_to_open
  L9_2 = L8_2
  L8_2 = L8_2.SetTargetTimeByTimeStamp
  L10_2 = L1_2.ScheduleData
  L10_2 = L10_2.BeginTimeStamp
  L11_2 = A0_2._on_open
  L12_2 = A0_2
  L13_2 = 2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.lock_panel
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L3_2 or L10_2
  if L3_2 then
    L10_2 = L1_2.BattleType
    L11_2 = L0_1.NORMAL
    L10_2 = L10_2 == L11_2
  end
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.lock_text
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L2_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.lock_mask
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L3_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.avatar_icon_gray
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L3_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.avatar_icon
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = not L3_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.empty_rank_panel
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.unchallenged_hint
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.rank_panel
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.score_panel
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.clear_mark
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.victory_mark
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L1_2.ShouldPlayUnlockAnim
  if L8_2 then
    L8_2 = L1_2.IsOpen
    if L8_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.lock_panel
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = L1_2.BattleType
      L11_2 = L0_1.NORMAL
      L10_2 = L10_2 == L11_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.lock_text
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.avatar_icon_gray
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.avatar_icon
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.unlock_effect
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.anim
      L9_2 = L8_2
      L8_2 = L8_2.PlayQueued
      L10_2 = "ActivityStrongChallengeEnterItem_Unlock"
      L8_2(L9_2, L10_2)
      L1_2.ShouldPlayUnlockAnim = false
    end
  end
  L8_2 = L1_2.ShouldPlayVictoryAnim
  if L8_2 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.victory_effect
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.anim
    L9_2 = L8_2
    L8_2 = L8_2.Play
    L10_2 = "ActivityStrongChallengeEnterItem_Clear"
    L8_2(L9_2, L10_2)
    L1_2.ShouldPlayVictoryAnim = false
  end
end
L3_1.refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._stage_data
  L1_2 = L1_2.PreStage
  if L1_2 ~= nil then
    L1_2 = A0_2._stage_data
    L1_2 = L1_2.PreStage
    L1_2 = L1_2.IsCleared
    if not L1_2 then
      goto lbl_12
    end
  end
  L1_2 = A0_2._stage_data
  L1_2.ShouldPlayUnlockAnim = true
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2.refresh_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L3_1._on_open = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._stage_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._stage_data
  L1_2 = L1_2.IsOpen
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageString
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_ActivityExpedition_Unlock"
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    return
  end
  L1_2 = A0_2._stage_data
  L1_2 = L1_2.IsLocked
  if L1_2 then
    L1_2 = A0_2._stage_data
    L1_2 = L1_2.BattleType
    L2_2 = L0_1.NORMAL
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageString
      L3_2 = G
      L3_2 = L3_2.TextmapStatic
      L3_2 = L3_2.GetText
      L4_2 = "UIText_Strong_Challenge_UnLock_Tip1"
      L6_2 = A0_2
      L5_2 = A0_2._get_prestage_clear_score_line
      L5_2, L6_2 = L5_2(L6_2)
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageString
      L3_2 = G
      L3_2 = L3_2.TextmapStatic
      L3_2 = L3_2.GetText
      L4_2 = "UIText_Raid_MainPage_Label_Unlock"
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = G
  L2_2 = L2_2.StrongChallengeTeamSetupPage
  L3_2 = A0_2._stage_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stage_data
  L1_2.IsClicked = true
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L3_1._enter_team_setup_page = L4_1
return L3_1
