local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingPuzzlePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingLifeItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingIntegralPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingPuzzlePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MovieRacingModule
L2_1 = "MakeFilmMainStart_FadeOut"
L3_1 = "MakeFilmMainStart_FadeOut2"
L4_1 = "EvaluatePanel_FadeIn2"
L5_1 = "MakeFilmTargetPanel_FadeIn"
L6_1 = 10
L7_1 = "6052"
L8_1 = "6101"
L9_1 = "6053"
L10_1 = "6055"
L11_1 = "6054"
L12_1 = "6102"
L13_1 = "6103"
L14_1 = "6104"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MovieRacingPuzzlePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._is_pause_game = false
  A0_2._block_input = true
  L1_2 = {}
  A0_2._movie_racing_life_panel_list = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetGameMode
  L1_2 = L1_2(L2_2)
  A0_2._movie_racing_game_mode = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetStatistics
  L1_2 = L1_2(L2_2)
  A0_2._movie_racing_statistic = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetOperationConfig
  L1_2 = L1_2(L2_2)
  A0_2._movie_racing_config = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLevelConfig
  L1_2 = L1_2(L2_2)
  A0_2._movie_racing_level_config = L1_2
  L1_2 = A0_2._movie_racing_level_config
  L1_2 = L1_2.FeverTimeConfig
  L1_2 = L1_2.Duration
  A0_2._total_fever_duration_time = L1_2
  L1_2 = A0_2._movie_racing_level_config
  L1_2 = L1_2.WarmUpMile
  L2_2 = A0_2._movie_racing_level_config
  L2_2 = L2_2.MileStone
  L1_2 = L1_2 / L2_2
  A0_2._warm_up_progress = L1_2
  L1_2 = A0_2._movie_racing_level_config
  L1_2 = L1_2.Difficulty
  A0_2._movie_racing_difficulty = L1_2
  L1_2 = A0_2._movie_racing_level_config
  L1_2 = L1_2.Life
  A0_2._total_life = L1_2
  A0_2._is_played_target_complete = false
  A0_2._is_evaluate_toast_finnish_fade_in = true
  A0_2._is_in_fever = false
  L1_2 = A0_2._total_fever_duration_time
  A0_2._left_fever_duration_time = L1_2
end
L0_1.ctor = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_shoot
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_shoot_mode
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hamster_integral_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_over_take_mode
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hanu_integral_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_shoot_mode
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hamster_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_over_take_mode
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hanu_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_shoot_mode
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.JMHDPIHOMCN
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mile_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_end_less_mode
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_end_less_mode
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_game_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_end_less_mode
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_game_target_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._movie_racing_config
  L3_2 = L3_2.LevelTargetScore
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L1_2 = L1_2.TransitionUIController
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L1_2 = L1_2.TransitionUIController
    L2_2 = L1_2
    L1_2 = L1_2.Exit
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L1_2.TransitionUIController = nil
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_movie_racing_life_panel_list
  L3_2 = A0_2._total_life
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ReportMovieRacingPuzzleStartData
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._inti_restart_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_evaluate_toast
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_hud_panel
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "MakeFilmHudPanelFabout"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_game_target_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_start_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_target_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._movie_racing_config
  L4_2 = L4_2.LevelTargetScore
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = L6_1
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.block_id = L2_2
  L2_2 = A0_2._movie_racing_integral_panel
  if L2_2 then
    L2_2 = A0_2._movie_racing_integral_panel
    L3_2 = L2_2
    L2_2 = L2_2.init_integral_panel
    L2_2(L3_2)
  end
  L2_2 = A0_2._movie_racing_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_integral_panel_animator
  L4_2 = false
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_full_energy
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  A0_2._is_evaluate_toast_finnish_fade_in = true
  A0_2._is_in_fever = false
  A0_2._is_played_target_complete = false
  A0_2._is_pause_game = false
  L3_2 = A0_2
  L2_2 = A0_2.add_tick
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameCountDown
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_count_down
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_count_down
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
  L2_2 = 1
  L3_2 = A0_2._movie_racing_life_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._movie_racing_life_panel_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_state
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
end
L0_1._inti_restart_view = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_in_fever
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._tick_fever_progress
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_tick = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._is_in_fever
  if L2_2 then
    L2_2 = A0_2._is_pause_game
    if not L2_2 then
      L2_2 = A0_2._left_fever_duration_time
      L2_2 = L2_2 - A1_2
      A0_2._left_fever_duration_time = L2_2
      L2_2 = A0_2._left_fever_duration_time
      if 0 < L2_2 then
        L2_2 = A0_2._left_fever_duration_time
        L3_2 = A0_2._total_fever_duration_time
        L2_2 = L2_2 / L3_2
        L3_2 = A0_2._binder
        L3_2 = L3_2.image_energy_add
        L3_2 = L3_2.material
        L4_2 = L3_2
        L3_2 = L3_2.SetFloat
        L5_2 = "_SDFEdge"
        L6_2 = L2_2
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._tick_fever_progress = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_hud_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MakeFilmHudPanelFabin"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_start_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TryUnblockFixedTime
  L3_2 = A0_2.block_id
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMovieRacingGamePlayGame
  L1_2(L2_2)
  L1_2 = A0_2._movie_racing_difficulty
  if 1 < L1_2 then
    L1_2 = A0_2._movie_racing_difficulty
    if L1_2 == 6 then
      L2_2 = A0_2
      L1_2 = A0_2._is_shoot_mode
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L13_1
        L1_2(L2_2, L3_2)
      else
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L9_1
        L1_2(L2_2, L3_2)
      end
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._is_end_less_mode
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_shoot_mode
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L11_1
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L13_1
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L14_1
        L1_2(L2_2, L3_2)
      else
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L7_1
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L9_1
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L10_1
        L1_2(L2_2, L3_2)
      end
    else
      L2_2 = A0_2
      L1_2 = A0_2._is_shoot_mode
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L11_1
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L12_1
        L1_2(L2_2, L3_2)
      else
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L7_1
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._trigger_tutorial_task_unlock_string
        L3_2 = L8_1
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._finish_cut_count_call_back = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pause
  L4_2 = A0_2._on_btn_pause_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shoot
  L4_2 = A0_2._on_btn_shoot_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shoot
  L4_2 = A0_2._on_btn_shoot_short_down_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.LongPressEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_overturn
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  A0_2._long_press_event_overturn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_overturn
  L4_2 = A0_2._on_btn_overturn_down_click
  L5_2 = nil
  L6_2 = 0.01
  L7_2 = 0.02
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_release
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_overturn
  L4_2 = A0_2._on_btn_overturn_up_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_overturn
  L1_2.SubmitEnabled = false
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICloseMovieRacingPuzzlePage
  L4_2 = A0_2._on_close_movie_racing_puzzle_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRestartMovieRacingPuzzlePage
  L4_2 = A0_2._on_restart_movie_racing_puzzle_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameLifeChange
  L4_2 = A0_2._on_movie_racing_game_life_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameSpChange
  L4_2 = A0_2._on_movie_racing_game_sp_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameMileStoneChange
  L4_2 = A0_2._on_movie_racing_game_mile_stone_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameNicePass
  L4_2 = A0_2._on_movie_racing_game_nice_pass
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameHitEnemy
  L4_2 = A0_2._on_movie_racing_game_hit_enemy
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameHitProp
  L4_2 = A0_2._on_movie_racing_game_hit_prop
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameEnterFever
  L4_2 = A0_2._on_movie_racing_game_enter_fever
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameScoreChange
  L4_2 = A0_2._on_movie_racing_game_score_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameLeaveFever
  L4_2 = A0_2._on_movie_racing_game_leave_fever
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGameOnPlayerHit
  L4_2 = A0_2._on_movie_racing_game_player_hint
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._finish_cut_count_call_back
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._finish_cut_count_call_back
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event_evaluate_toast
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L4_1
  function L4_2()
    local L0_3, L1_3
    A0_2._is_evaluate_toast_finnish_fade_in = true
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MovieRacingIntegralPanel
  L4_2 = G
  L4_2 = L4_2.MovieRacingIntegralPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._movie_racing_integral_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._is_shoot_mode
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._movie_racing_integral_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_hanu_integral_panel
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._movie_racing_integral_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_hamster_integral_panel
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetLuaCallback
  L4_2 = A0_2._tick_energy_panel_position
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._long_press_event_overturn
  if L1_2 then
    L1_2 = A0_2._long_press_event_overturn
    L2_2 = L1_2
    L1_2 = L1_2.InvokPointerUpByReset
    L1_2(L2_2)
  end
end
L0_1._on_lost_focus = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_MainCamera
  L2_2 = L1_2
  L1_2 = L1_2.WorldToScreenPoint
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetPlayerSpAnchorPosition
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransformUtility
  L3_2 = L3_2.ScreenPointToLocalPointInRectangle
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hud_panel
  L4_2 = L4_2.transform
  L5_2 = L2_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_UICamera
  L7_2 = nil
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_energy_panel
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.localPosition = L6_2
end
L0_1._tick_energy_panel_position = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._get_life_item_index
    L6_2 = L6_2(L7_2)
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._binder
    L9_2 = L9_2.chance_prefab_loader
    L9_2 = L9_2.MultiPrefabList
    L9_2 = L9_2[L6_2]
    L10_2 = A0_2._binder
    L10_2 = L10_2.chance_prefab_loader
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.MovieRacingLifeItemPanel
    L11_2 = G
    L11_2 = L11_2.MovieRacingLifeItemPanelBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._movie_racing_life_panel_list
    L9_2[L5_2] = L8_2
  end
end
L0_1._init_movie_racing_life_panel_list = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit_movie_racing_call_back
  L1_2(L2_2)
end
L0_1._on_close_movie_racing_puzzle_page = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._restart_movie_racing_call_back
  L1_2(L2_2)
end
L0_1._on_restart_movie_racing_puzzle_page = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = A0_2._movie_racing_life_panel_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 <= A1_2
    L7_2 = A0_2._movie_racing_life_panel_list
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_state
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_movie_racing_game_life_change = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._is_in_fever
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.image_energy_add
    L3_2 = L3_2.material
    L4_2 = L3_2
    L3_2 = L3_2.SetFloat
    L5_2 = "_SDFEdge"
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_movie_racing_game_sp_change = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_mile_progress
  L2_2.value = A1_2
  L2_2 = G
  L2_2 = L2_2.MathUtils
  L2_2 = L2_2.float_equal
  L3_2 = A1_2
  L4_2 = A0_2._warm_up_progress
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_end_mile
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "MakeFilmMainProgres_EndDeco"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_movie_racing_game_mile_stone_change = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_show_evaluate_toast
  L4_2 = "MazeText_Maze_GamePlay_Movie_Perfect"
  L2_2(L3_2, L4_2)
end
L0_1._on_movie_racing_game_nice_pass = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_show_evaluate_toast
  L4_2 = "MazeText_Maze_GamePlay_Movie_HitEnemy"
  L2_2(L3_2, L4_2)
end
L0_1._on_movie_racing_game_hit_enemy = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_show_evaluate_toast
  L4_2 = "MazeText_Maze_GamePlay_Movie_Eat"
  L2_2(L3_2, L4_2)
end
L0_1._on_movie_racing_game_hit_prop = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_full_energy
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._movie_racing_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_integral_panel_animator
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_shoot_mode
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_show_evaluate_toast
    L4_2 = "MazeText_Maze_GamePlay_Movie_Highlight2"
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_show_evaluate_toast
    L4_2 = "MazeText_Maze_GamePlay_Movie_Highlight"
    L2_2(L3_2, L4_2)
  end
  A0_2._is_in_fever = true
  L2_2 = A0_2._total_fever_duration_time
  A0_2._left_fever_duration_time = L2_2
end
L0_1._on_movie_racing_game_enter_fever = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetStatistics
  L2_2 = L2_2(L3_2)
  A0_2._movie_racing_statistic = L2_2
  L2_2 = A0_2._movie_racing_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._movie_racing_statistic
  L4_2 = L4_2.Score
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._movie_racing_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_add_integral
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._movie_racing_statistic
  L2_2 = L2_2.Score
  L3_2 = A0_2._movie_racing_config
  L3_2 = L3_2.LevelTargetScore
  if L2_2 >= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_game_target_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._is_end_less_mode
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._movie_racing_statistic
    L2_2 = L2_2.Score
    L3_2 = A0_2._movie_racing_config
    L3_2 = L3_2.LevelTargetScore
    if L2_2 >= L3_2 then
      L2_2 = A0_2._is_played_target_complete
      if not L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.animation_target_panel
        L3_2 = L2_2
        L2_2 = L2_2.Play
        L4_2 = L5_1
        L2_2(L3_2, L4_2)
        A0_2._is_played_target_complete = true
      end
    end
  end
end
L0_1._on_movie_racing_game_score_change = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_full_energy
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._movie_racing_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_integral_panel_animator
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  A0_2._is_in_fever = false
end
L0_1._on_movie_racing_game_leave_fever = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_player_hit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_player_hit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_movie_racing_game_player_hint = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_hud_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MakeFilmHudPanelFabout"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_game_mode_text_id
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Puzzle.MovieRacing.MovieRacingPauseDialog"
  L4_2 = A0_2
  L5_2 = A0_2._exit_movie_racing_call_back
  L6_2 = A0_2._restart_movie_racing_call_back
  L7_2 = A0_2._continue_movie_racing_call_back
  L8_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMovieRacingGamePauseGame
  L2_2(L3_2)
  A0_2._is_pause_game = true
end
L0_1._on_btn_pause_click = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_overturn
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Pressed"
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMovieRacingGameFlipButtonDown
  L1_2(L2_2)
end
L0_1._on_btn_overturn_down_click = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_overturn
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMovieRacingGameFlipButtonUp
  L1_2(L2_2)
end
L0_1._on_btn_overturn_up_click = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIMovieRacingGameShootButtonDown
    L1_2(L2_2)
  end
end
L0_1._on_btn_shoot_click = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIMovieRacingGameShootButtonDown
    L1_2(L2_2)
  end
end
L0_1._on_btn_shoot_short_down_click = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMovieRacingGameExitGame
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit_movie_racing_call_back = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMovieRacingGameReplayGame
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._inti_restart_view
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._restart_movie_racing_call_back = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_hud_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MakeFilmHudPanelFabin"
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMovieRacingGamePlayGame
  L1_2(L2_2)
  A0_2._is_pause_game = false
end
L0_1._continue_movie_racing_call_back = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_end_less_mode
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "MazeText_Maze_GamePlay_Movie_ArcadeMode"
    return L1_2
  else
    L1_2 = "MazeText_Maze_GamePlay_Movie_LevelMode"
    return L1_2
  end
end
L0_1._get_game_mode_text_id = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_shoot_mode
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = 0
    return L1_2
  else
    L1_2 = 1
    return L1_2
  end
end
L0_1._get_life_item_index = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._movie_racing_game_mode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LittleGame
  L2_2 = L2_2.MovieGameMode
  L2_2 = L2_2.Shooting
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_shoot_mode = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._movie_racing_game_mode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LittleGame
  L2_2 = L2_2.MovieGameMode
  L2_2 = L2_2.OverTake
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_over_take_mode = L15_1
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._movie_racing_game_mode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LittleGame
  L2_2 = L2_2.MovieGameMode
  L2_2 = L2_2.ShootingEndless
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_end_less_mode = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._trigger_tutorial_task_unlock_string = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_evaluate_toast_finnish_fade_in
  if L2_2 then
    A0_2._is_evaluate_toast_finnish_fade_in = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_evaluate_toast
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_evaluate_toast
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_evaluate_toast
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_show_evaluate_toast = L15_1
function L15_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L15_1
return L0_1
