local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingSuccessResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingSuccessResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MovieRacingModule
L2_1 = "MakeFilmResultSuccessDialog_FadeIn"
L3_1 = 3
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MovieRacingSuccessResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._movie_racing_success = true
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
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._movie_racing_success = false
end
L0_1._setup_movie_racing_fail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._block_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_over_take_text_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_over_take
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_shoot_mode
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_high_light_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "MazeText_Maze_GamePlay_Movie_Highlight2"
    L2_2(L3_2, L4_2)
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "%.0f"
    L4_2 = A0_2._movie_racing_config
    L4_2 = L4_2.HitEnemyScore
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = "x"
    L4_2 = A0_2._movie_racing_statistic
    L4_2 = L4_2.HitEnemy
    L2_2 = L2_2 .. L3_2 .. L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_over_take_score
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_high_light_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "MazeText_Maze_GamePlay_Movie_Highlight"
    L2_2(L3_2, L4_2)
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "%.0f"
    L4_2 = A0_2._movie_racing_config
    L4_2 = L4_2.NicePassScore
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = "x"
    L4_2 = A0_2._movie_racing_statistic
    L4_2 = L4_2.NicePass
    L2_2 = L2_2 .. L3_2 .. L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_over_take_score
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%.0f"
  L4_2 = A0_2._movie_racing_config
  L4_2 = L4_2.FeverTimeScore
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = "x"
  L4_2 = A0_2._movie_racing_statistic
  L4_2 = L4_2.FeverTime
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_high_light_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A0_2._movie_racing_config
  L5_2 = L5_2.HitPropScore
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = "x"
  L5_2 = A0_2._movie_racing_statistic
  L5_2 = L5_2.HitProp
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_eat_prop_score
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_cur_score
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._movie_racing_statistic
  L6_2 = L6_2.Score
  L4_2(L5_2, L6_2)
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.0f"
  L6_2 = A0_2._movie_racing_config
  L6_2 = L6_2.LevelTargetScore
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._is_end_less_mode
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_cur_target_score
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_cur_target_score
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = "/"
    L6_2 = L4_2
    L5_2 = L5_2 .. L6_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_cur_target_score
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L5_2 = A0_2._movie_racing_level_config
  L5_2 = L5_2.Difficulty
  L6_2 = A0_2._movie_racing_game_mode
  L6_2 = #L6_2
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.GetMovieRacingBestScore
  L9_2 = L6_2
  L10_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = math
  L8_2 = L8_2.max
  L9_2 = L7_2
  L10_2 = A0_2._movie_racing_statistic
  L10_2 = L10_2.Score
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.text_history_max_score
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetText
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_new_record
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = A0_2._movie_racing_statistic
  L11_2 = L11_2.Score
  L11_2 = L7_2 < L11_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_hanu
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L12_2 = A0_2
  L11_2 = A0_2._is_shoot_mode
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_hamster
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L12_2 = A0_2
  L11_2 = A0_2._is_shoot_mode
  L11_2 = L11_2(L12_2)
  L11_2 = not L11_2
  L9_2(L10_2, L11_2)
  L9_2 = G
  L9_2 = L9_2.NotifyManager
  L9_2 = L9_2.notify
  L10_2 = G
  L10_2 = L10_2.CS
  L10_2 = L10_2.NotifyType
  L10_2 = L10_2.UIMovieRacingGameResult
  L11_2 = A0_2._movie_racing_success
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._movie_racing_success
  if L9_2 then
    L10_2 = A0_2
    L9_2 = A0_2._is_end_less_mode
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.ReportMovieRacingPuzzleFinishData
      L11_2 = 1
      L12_2 = 1
      L9_2(L10_2, L11_2, L12_2)
    else
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.ReportMovieRacingPuzzleFinishData
      L11_2 = 1
      L12_2 = 0
      L9_2(L10_2, L11_2, L12_2)
    end
  else
    L10_2 = A0_2
    L9_2 = A0_2._is_end_less_mode
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.ReportMovieRacingPuzzleFinishData
      L11_2 = 0
      L12_2 = 1
      L9_2(L10_2, L11_2, L12_2)
    else
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.GlobalVars
      L9_2 = L9_2.s_ModuleManager
      L9_2 = L9_2.MovieRacingModule
      L10_2 = L9_2
      L9_2 = L9_2.GetGameModeComponent
      L9_2 = L9_2(L10_2)
      L10_2 = L9_2 or L10_2
      if L9_2 then
        L10_2 = L9_2.LifeLeft
        L10_2 = 0 < L10_2
      end
      if L10_2 then
        L11_2 = L1_1
        L12_2 = L11_2
        L11_2 = L11_2.ReportMovieRacingPuzzleFinishData
        L13_2 = 0
        L14_2 = 0
        L11_2(L12_2, L13_2, L14_2)
      else
        L11_2 = L1_1
        L12_2 = L11_2
        L11_2 = L11_2.ReportMovieRacingPuzzleFinishData
        L13_2 = 0
        L14_2 = 1
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
  L9_2 = A0_2._binder
  L9_2 = L9_2.btn_restart
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L1_1.IsCanRestartGame
  L9_2(L10_2, L11_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_restart
  L4_2 = A0_2._on_btn_restart_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2._movie_racing_success
    if L0_3 then
      L0_3 = A0_2._movie_racing_level_config
      L0_3 = L0_3.Difficulty
      L1_3 = A0_2._movie_racing_game_mode
      L1_3 = #L1_3
      if 0 < L0_3 then
        L2_3 = L1_1.IsCanRestartGame
        if L2_3 then
          L2_3 = CS
          L2_3 = L2_3.RPG
          L2_3 = L2_3.Client
          L2_3 = L2_3.NetworkManager
          L2_3 = L2_3.FFOMLPONIFB
          L3_3 = L2_3
          L2_3 = L2_3.IECGJPNKCPB
          L4_3 = L1_3
          L5_3 = L0_3
          L6_3 = A0_2._movie_racing_statistic
          L6_3 = L6_3.Score
          L2_3(L3_3, L4_3, L5_3, L6_3)
        end
      end
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICloseMovieRacingPuzzlePage
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._movie_racing_success
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.ReportMovieRacingPuzzleStartData
    L3_2 = 3
    L1_2(L2_2, L3_2)
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.ReportMovieRacingPuzzleStartData
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIRestartMovieRacingPuzzlePage
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_restart_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_shoot_mode
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "MazeText_Maze_GamePlay_Movie_HitEnemy"
    return L1_2
  else
    L1_2 = "MazeText_Maze_GamePlay_Movie_Perfect"
    return L1_2
  end
end
L0_1._get_over_take_text_id = L4_1
function L4_1(A0_2)
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
L0_1._is_shoot_mode = L4_1
function L4_1(A0_2)
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
L0_1._is_end_less_mode = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
