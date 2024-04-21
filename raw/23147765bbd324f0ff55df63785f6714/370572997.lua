local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubResonanceMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubExitConfirmDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BoxingClubModule
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.BoxingClubResonanceUIStageEnum
L3_1 = L3_1.SelectResonanceBuff
L3_1 = #L3_1
L2_1.SelectResonanceBuff = L3_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.BoxingClubResonanceUIStageEnum
L3_1 = L3_1.EditTeamMode
L3_1 = #L3_1
L2_1.EditTeamMode = L3_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.BoxingClubResonanceUIStageEnum
L3_1 = L3_1.SelectOptionalBuff
L3_1 = #L3_1
L2_1.SelectOptionalBuff = L3_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.BoxingClubResonanceUIStageEnum
L3_1 = L3_1.WaitingBattle
L3_1 = #L3_1
L2_1.WaitingBattle = L3_1
L3_1 = {}
L3_1.first_enter_buff = "QuestFistClubPaperPage_Frist_FadeIn_Resonance"
L3_1.enter_buff = "QuestFistClubPaperPage_FadeIn_Resonance"
L3_1.enter_battle = "QuestFistClubPaperPage_FadeIn_Regain_Resonance"
L3_1.out = "QuestFistClubPaperPage_Frist_FadeOut"
L3_1.buff_to_roll = "QuestFistClubPaperPage_Switch_Roll_Resonance"
L3_1.roll_to_main = "QuestFistClubPaperPage_Roll_Switch_Ready_Resonance"
L3_1.ready_to_fight = "QuestFistClubPaperPage_Frist_Ready_Resonance"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BoxingClubResonanceMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._can_react_to_input = true
  A0_2._before_select_buff = false
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._cur_stage = A2_2
  A0_2._challenge_id = A1_2
  L3_2 = L1_1.BoxingClubLevelDict
  L4_2 = A0_2._challenge_id
  L3_2 = L3_2[L4_2]
  A0_2._level_instance = L3_2
  A0_2._round = 0
  L3_2 = A0_2._level_instance
  if L3_2 ~= nil then
    L3_2 = A0_2._level_instance
    L3_2 = L3_2.BattleRecord
    if L3_2 ~= nil then
      L3_2 = A0_2._level_instance
      L3_2 = L3_2.BattleRecord
      L3_2 = L3_2.CurrentStageIndex
      A0_2._round = L3_2
    end
  end
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_action_group_table_by_stage
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_short_cut_hint_panel
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.player_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_team_edit_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_player_set_team
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_challenge_id
  L4_2 = A0_2._challenge_id
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.enemy_talk_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.player_talk_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIAnimationEvent
  L5_2 = A0_2._on_animation_event_str_notify
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIBoxingClubTrialAvatarExpired
  L5_2 = A0_2._on_trial_expired
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIBoxingClubDataFetched
  L5_2 = A0_2._on_boxing_club_data_fetched
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.exit_btn
  L5_2 = A0_2._on_try_exit
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_rpg_animation_event
  L2_2(L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.ClearEvent
  L1_2(L2_2)
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_playing_boxing_club_bgm
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_try_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_round_num
  L1_2(L2_2)
  L1_2 = A0_2._cur_stage
  L2_2 = L2_1.SelectResonanceBuff
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_effect_based_on_stage
    L3_2 = L3_1.first_enter_buff
    L1_2(L2_2, L3_2)
    A0_2._before_select_buff = true
    L2_2 = A0_2
    L1_2 = A0_2._setup_challenge_num
    L1_2(L2_2)
  else
    L1_2 = A0_2._cur_stage
    L2_2 = L2_1.SelectOptionalBuff
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._play_effect_based_on_stage
      L3_2 = L3_1.enter_buff
      L1_2(L2_2, L3_2)
      A0_2._before_select_buff = true
      L2_2 = A0_2
      L1_2 = A0_2._setup_challenge_num
      L1_2(L2_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.player_panel
      L2_2 = L1_2
      L1_2 = L1_2.mute_player_detail
      L3_2 = true
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.setup_short_cut_hint_panel
      L3_2 = {}
      L4_2 = "ActionGroup_Cancel"
      L3_2[1] = L4_2
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_challenge_num
      L3_2 = 1
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._play_effect_based_on_stage
      L3_2 = L3_1.enter_battle
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._try_force_recover_info_by_stage
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.player_panel
      L2_2 = L1_2
      L1_2 = L1_2.switch_display_mode
      L3_2 = A0_2._cur_stage
      L4_2 = A0_2._level_instance
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.enemy_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._cur_stage
      L4_2 = A0_2._round
      L5_2 = A0_2._level_instance
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.CoroutineUtils
      L1_2 = L1_2.InvokeAfterFrames
      L2_2 = 2
      function L3_2()
        local L0_3, L1_3
        L0_3 = A0_2._binder
        if L0_3 then
          L0_3 = A0_2._binder
          L0_3 = L0_3.enemy_panel
          L1_3 = L0_3
          L0_3 = L0_3.force_rebuild_layout
          L0_3(L1_3)
        end
      end
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_round_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_playing_boxing_club_bgm
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_num
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_force_recover_info_by_stage
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_panel
  L2_2 = L1_2
  L1_2 = L1_2.switch_display_mode
  L3_2 = A0_2._cur_stage
  L4_2 = A0_2._level_instance
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_stage
  L4_2 = A0_2._round
  L5_2 = A0_2._level_instance
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_round_info
  L1_2(L2_2)
end
L0_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_panel
  L2_2 = L1_2
  L1_2 = L1_2.switch_view_when_effect
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.performance_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._round
  L4_2 = A0_2._challenge_id
  L5_2 = A0_2._level_instance
  L6_2 = A0_2._on_random_process_finished
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._perform_random_progress = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_panel
  L2_2 = L1_2
  L1_2 = L1_2.switch_display_mode
  L3_2 = A0_2._cur_stage
  L4_2 = A0_2._level_instance
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_stage
  L4_2 = A0_2._round
  L5_2 = A0_2._level_instance
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._refresh_view_by_display_mode = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_stage
  L2_2 = L2_1.EditTeamMode
  if L1_2 >= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.player_panel
    L2_2 = L1_2
    L1_2 = L1_2.recover_stage
    L3_2 = A0_2._level_instance
    L3_2 = L3_2.AvatarIDList
    L1_2(L2_2, L3_2)
  end
end
L0_1._try_force_recover_info_by_stage = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_stage
  L2_2 = L2_1.SelectOptionalBuff
  if L1_2 < L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.current_turn_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.current_turn_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.current_turn_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._level_instance
    L3_2 = L3_2.BattleRecord
    L3_2 = L3_2.CurrentRoundNum
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._level_instance
  L1_2 = L1_2.BestRoundRecord
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.history_best_record_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.history_best_record_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.history_best_record_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_BoxingClub_Challenge_Record"
    L4_2 = A0_2._level_instance
    L4_2 = L4_2.BestRoundRecord
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_round_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_stage
  L2_2 = L2_1.SelectResonanceBuff
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._cur_stage
    L2_2 = L2_1.SelectOptionalBuff
    if L1_2 ~= L2_2 then
      goto lbl_14
    end
  end
  L1_2 = {}
  L2_2 = "ActionGroup_Cancel"
  L1_2[1] = L2_2
  do return L1_2 end
  goto lbl_47
  ::lbl_14::
  L1_2 = A0_2._cur_stage
  L2_2 = L2_1.WaitingBattle
  if L1_2 == L2_2 then
    L1_2 = {}
    L2_2 = "ActionGroup_BoxingClub_TeamDetail"
    L3_2 = "ActionGroup_BoxingClub_StageDetail"
    L4_2 = "ActionGroup_Cancel"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    return L1_2
  else
    L1_2 = A0_2._cur_stage
    L2_2 = L2_1.EditTeamMode
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.player_panel
      L2_2 = L1_2
      L1_2 = L1_2.is_any_avatar_selected
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = {}
        L2_2 = "ActionGroup_BoxingClub_TeamDetail"
        L3_2 = "ActionGroup_BoxingClub_StageDetail"
        L4_2 = "ActionGroup_Cancel"
        L1_2[1] = L2_2
        L1_2[2] = L3_2
        L1_2[3] = L4_2
        return L1_2
      else
        L1_2 = {}
        L2_2 = "ActionGroup_BoxingClub_StageDetail"
        L3_2 = "ActionGroup_Cancel"
        L1_2[1] = L2_2
        L1_2[2] = L3_2
        return L1_2
      end
    end
  end
  ::lbl_47::
  L1_2 = {}
  L2_2 = "ActionGroup_Cancel"
  L1_2[1] = L2_2
  return L1_2
end
L0_1._generate_action_group_table_by_stage = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_action_group_table_by_stage
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_gamepad_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_cmpt
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._can_react_to_input = false
end
L0_1._play_effect_based_on_stage = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1.roll_to_main
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_animation_end
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.player_panel
    L1_3 = L0_3
    L0_3 = L0_3.mute_player_detail
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1.enter_buff
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_animation_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1.first_enter_buff
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_animation_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_rpg_animation_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.get_Item
    L5_2 = "StateBoxingClub"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.SwitchUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._start_playing_boxing_club_bgm = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.get_Item
    L5_2 = "StateBoxingClub"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.StopUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._stop_playing_boxing_club_bgm = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_cmpt
  L3_2 = L2_2
  L2_2 = L2_2.Stop
  L2_2(L3_2)
  if not A1_2 then
    L2_2 = 2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_eff
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_eff
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._on_view_active_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._can_react_to_input = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_hint
  L1_2(L2_2)
end
L0_1._on_animation_end = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._before_select_buff = false
end
L0_1._on_enter_animation_end = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view_by_display_mode
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_gamepad_hint
  L2_2(L3_2)
end
L0_1._on_player_set_team = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cur_round_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.total_round_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.ChallengeMaxRoundNum
  L1_2(L2_2, L3_2)
end
L0_1._init_round_num = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = A0_2._cur_stage
  L3_2 = L2_1.EditTeamMode
  if L2_2 >= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.cur_round_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._level_instance
    L4_2 = L4_2.BattleRecord
    L4_2 = L4_2.CurrentStageIndex
    L4_2 = L4_2 + A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.total_round_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._level_instance
    L4_2 = L4_2.ChallengeMaxRoundNum
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.cur_round_txt2
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._level_instance
    L4_2 = L4_2.BattleRecord
    L4_2 = L4_2.CurrentStageIndex
    L4_2 = L4_2 + 1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.total_round_txt2
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._level_instance
    L4_2 = L4_2.ChallengeMaxRoundNum
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.cur_round_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.total_round_txt
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._level_instance
    L4_2 = L4_2.ChallengeMaxRoundNum
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.cur_round_txt2
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.total_round_txt2
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._level_instance
    L4_2 = L4_2.ChallengeMaxRoundNum
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_challenge_num = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cur_round_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.BattleRecord
  L3_2 = L3_2.CurrentStageIndex
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
end
L0_1._on_finish_enter_process = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._before_select_buff
  if L1_2 then
    return
  end
  L1_2 = A0_2._cur_stage
  L2_2 = L2_1.EditTeamMode
  if L1_2 < L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_effect_based_on_stage
    L3_2 = L3_1.out
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.BoxingClub.BoxingClubExitConfirmDialog"
  L3_2 = "UIText_BoxingClub_Challenge_GiveUpTitle"
  L4_2 = "UIText_BoxingClub_Challenge_GiveUpDesc"
  L5_2 = "UIText_BoxingClub_Challenge_ReStart"
  L6_2 = "UIText_BoxingClub_Challenge_Leave"
  L7_2 = A0_2._on_giveup_result_confirm
  L8_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_try_exit = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.BoxingClubModule
  L3_2 = L2_2
  L2_2 = L2_2.GiveUpMatch
  L4_2 = A0_2._challenge_id
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_effect_based_on_stage
  L4_2 = L3_1.out
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_giveup_result_confirm = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_effect_based_on_stage
  L3_2 = L3_1.roll_to_main
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.refresh
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L0_1._on_random_process_finished = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._can_react_to_input = true
  if A1_2 == "ShowBuffSelect" then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.BoxingClub.BoxingClubResonanceBuffSelectDialog"
    L4_2 = A0_2._level_instance
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.register_on_btn_confirm_callback
    L5_2 = A0_2._on_buff_select_confirm
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_exit_callback
    L5_2 = A0_2._on_buff_select_exit
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    A0_2._buff_select_dialog = L2_2
  elseif A1_2 == "BoxingClub_Unlock_Input" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.enemy_panel
    L3_2 = L2_2
    L2_2 = L2_2.update_node_by_stage
    L2_2(L3_2)
  elseif A1_2 == "PlayTalk" then
    L3_2 = A0_2
    L2_2 = A0_2._play_talk_anim
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.player_panel
    L3_2 = L2_2
    L2_2 = L2_2.mute_player_detail
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_gamepad_hint
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._has_selected_avatar
  L2_2 = L2_2(L3_2)
  if L2_2 and (A1_2 == "BoxingClub_First_Fade_In" or A1_2 == "BoxingClub_Roll_Switch_Ready" or A1_2 == "BoxingClub_First_Roll_Switch_Ready") then
    L3_2 = A0_2
    L2_2 = A0_2._play_talk_anim
    L2_2(L3_2)
  end
end
L0_1._on_animation_event_str_notify = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.enemy_talk_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_talk_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.talk_anim_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "QuestFistClubPaperPage_Talk_02"
  L1_2(L2_2, L3_2)
end
L0_1._play_talk_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_effect_based_on_stage
  L3_2 = L3_1.ready_to_fight
  L1_2(L2_2, L3_2)
end
L0_1.play_start_battle_anim = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._level_instance
  if L1_2 then
    L1_2 = A0_2._level_instance
    L1_2 = L1_2.AvatarIDList
    if L1_2 then
      L1_2 = A0_2._level_instance
      L1_2 = L1_2.AvatarIDList
      L1_2 = L1_2.Count
      L1_2 = 0 < L1_2
    end
  end
  return L1_2
end
L0_1._has_selected_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._perform_random_progress
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_panel
  L2_2 = L1_2
  L1_2 = L1_2.mute_player_detail
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Cancel"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_stage
  L2_2 = L2_1.SelectResonanceBuff
  if L1_2 == L2_2 then
    L1_2 = L2_1.EditTeamMode
    A0_2._cur_stage = L1_2
  else
    L1_2 = A0_2._cur_stage
    L2_2 = L2_1.SelectOptionalBuff
    if L1_2 == L2_2 then
      L1_2 = L2_1.WaitingBattle
      A0_2._cur_stage = L1_2
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1.buff_to_roll
  function L4_2()
    local L0_3, L1_3
    A0_2._can_react_to_input = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.performance_panel
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_effect_based_on_stage
  L3_2 = L3_1.buff_to_roll
  L1_2(L2_2, L3_2)
end
L0_1._on_buff_select_exit = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_boxing_club_choose_resonance_buff_finish = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_boxing_club_choose_optional_buff_finish = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 == 1 then
    L3_2 = A0_2._level_instance
    L4_2 = L3_2
    L3_2 = L3_2.SendChooseBoxingClubResonanceReq
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.show_full_screen_block_for_packet
    L5_2 = CS
    L5_2 = L5_2.PBIBDHBOIGI
    L5_2 = L5_2.DKDDOOEJDPO
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._level_instance
    L4_2 = L3_2
    L3_2 = L3_2.SendChooseBoxingClubResonanceOptionalBuffReq
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.show_full_screen_block_for_packet
    L5_2 = CS
    L5_2 = L5_2.PBIBDHBOIGI
    L5_2 = L5_2.LACPAHMBAKF
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_buff_select_confirm = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1._on_trial_expired = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_boxing_club_data_fetched = L4_1
return L0_1
