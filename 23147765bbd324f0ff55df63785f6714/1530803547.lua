local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Battle.ActivityFeverTimeBattleResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeBattleResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityFeverTimeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
L3_1 = 3
L4_1 = 5001001
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityFeverTimeBattleResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._block_id = L1_2
  L1_2 = L1_1.BattleFeverTimeID
  A0_2._fever_time_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityFeverTimeConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._fever_time_id
  L1_2 = L1_2(L2_2)
  A0_2._level_config_row = L1_2
  L1_2 = L1_1.BattleCurrentLeftRound
  A0_2._current_left_round = L1_2
  L1_2 = L1_1.BattleHistoryLeftRound
  A0_2._history_left_round = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_in_schedule
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_challenge_target_list_view
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_retry
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.panel_challenge_target_list
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_1.BattleRank
  L3_2 = A0_2.rank_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.new_record_hint_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_1.IsNewRank
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._current_left_round
  if 0 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_left_turn
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_cur_turn
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A0_2._current_left_round
    L3_2(L4_2, L5_2)
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = A0_2._history_left_round
    L5_2 = A0_2._current_left_round
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_history_turn
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.new_turn_record_hint_root
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L1_1.IsNewRank
    L6_2 = not L6_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_left_turn
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.new_turn_record_hint_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityFeverTimeQuestExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._level_config_row
  L2_2 = L2_2.QuestGroupID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.QuestIDList
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.panel_challenge_target_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_challenge_target_list_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_target_list_view
  L1_2(L2_2)
end
L0_1._on_refresh_battle_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_retry
  L4_2 = A0_2._on_btn_retry_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quit
  L4_2 = A0_2._on_btn_quit_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_refresh_battle_target
  L1_2(L2_2, L3_2, L4_2)
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
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeChallengeTargetNormalPanel"
  L6_2 = "Ui.ActivityFeverTime.Buff.ActivityFeverTimeChallengeTargetNormalPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_challenge_target_list = L1_2
  L1_2 = A0_2.panel_challenge_target_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_challenge_target_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "BattleResultDialog_Fadein_Victory"
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_UIManager
    L1_3 = L0_3
    L0_3 = L0_3.TryUnblockFixedTime
    L2_3 = A0_2._block_id
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RestartFeverTimeBattle
  L1_2(L2_2)
end
L0_1._on_btn_retry_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_in_schedule
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.SetAutoShowOnExitBattle
    L4_2 = true
    L5_2 = A0_2._fever_time_id
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.SetAutoShowOnExitBattle
    L4_2 = false
    L5_2 = A0_2._fever_time_id
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleToMazeTransit
  L2_2(L3_2)
end
L0_1._on_btn_quit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByActivityModuleID
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_in_schedule = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L5_1
return L0_1
