local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.ActivityFeverTimeLevelItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.ActivityFeverTimeRankPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeLevelItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ScheduleModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityFeverTimeModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
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
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityFeverTimeRankPanel
  L4_2 = G
  L4_2 = L4_2.ActivityFeverTimeRankPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rank_panel = L1_2
  L1_2 = A0_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_rank
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._config_row = A1_2
  A0_2._is_un_lock = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.StageName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.image_buff
  L5_2 = A1_2.ImagePath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityFeverTimeLevelUnlock"
  L5_2 = A0_2._config_row
  L5_2 = L5_2.FeverTimeID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tip_state
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByActivityModuleID
  L3_2 = A0_2._config_row
  L3_2 = L3_2.ActivityModuleID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_un_lock_state
      L2_2(L3_2)
    else
      A0_2._is_un_lock = false
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_stage_avatar_contents
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_challenged
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_lock_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.remain_timer
      L3_2 = L2_2
      L2_2 = L2_2.SetTargetTime
      L4_2 = L1_2.BeginTimeDate
      L5_2 = A0_2._expire_call_back
      L6_2 = A0_2
      L7_2 = 2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_un_lock_state
    L2_2(L3_2)
  end
  L2_2 = A0_2._is_un_lock
  if L2_2 then
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.CheckHasPlayLevelUnLockAnimation
    L4_2 = A0_2._config_row
    L4_2 = L4_2.FeverTimeID
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation_root
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "UI_FeverTimeChallengeCover_Unlock"
      L2_2(L3_2, L4_2)
      L2_2 = L2_1
      L3_2 = L2_2
      L2_2 = L2_2.SetHasPlayLevelUnLockAnimation
      L4_2 = A0_2._config_row
      L4_2 = L4_2.FeverTimeID
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_tip_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_un_lock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeBuffSelectPage"
    L3_2 = A0_2._config_row
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_FeverTime_Locked_Tips"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_un_lock = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_stage_avatar_contents
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetHistoryBattleRank
  L3_2 = A0_2._config_row
  L3_2 = L3_2.FeverTimeID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityRank
  L2_2 = L2_2.None
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_challenged
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_no_challenge
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_challenged
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_no_challenge
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.rank_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ActivityRank
    L2_2 = L2_2.SS
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_left_turn
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_left_turn
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetText
      L4_2 = L2_1
      L5_2 = L4_2
      L4_2 = L4_2.GetHistoryTurn
      L6_2 = A0_2._config_row
      L6_2 = L6_2.FeverTimeID
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_left_turn
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_un_lock_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tip_state
  L1_2(L2_2)
end
L0_1._expire_call_back = L3_1
return L0_1
