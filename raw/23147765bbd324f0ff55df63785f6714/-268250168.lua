local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingMainEntrancePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingMainEntrancePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "MovieRacing_CloseEntrancePage"
L2_1 = "MovieRacing_EnterLevelPage"
L3_1 = "MovieShooting_CloseEntrancePage"
L4_1 = "MovieShooting_EnterLevelPage"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.MovieRacingModule
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MovieRacingMainEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._block_input = true
  A0_2._movie_racing_game_mode = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_list_vertical
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    A0_2._movie_racing_game_mode = L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.LittleGame
    L2_2 = L2_2.MovieGameMode
    L2_2 = L2_2.Shooting
    L2_2 = #L2_2
    A0_2._movie_racing_game_mode = L2_2
  end
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_sub_title_text_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_shoot_mode
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L5_1
    L3_2 = L2_2
    L2_2 = L2_2.CheckMovieBossLevelIsLock
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.LGHMHEKNADJ
  L1_2(L2_2)
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.InitModuleRelatedMainMissionData
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge_mode
  L4_2 = A0_2._on_btn_challenge_mode_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_end_less_mode
  L4_2 = A0_2._on_btn_end_less_mode_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_list_vertical
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_challenge_mode
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_challenge_mode
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_end_less_mode
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_end_less_mode
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2._is_shoot_mode
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.LittleGame
    L2_2 = L2_2.MovieGameMode
    L1_2 = L2_2.Shooting
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.trigger_custom_string
    L3_2 = L4_1
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.LittleGame
    L2_2 = L2_2.MovieGameMode
    L1_2 = L2_2.OverTake
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.trigger_custom_string
    L3_2 = L2_1
    L2_2(L3_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Puzzle.MovieRacing.MovieRacingEnterPuzzlePage"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_challenge_mode_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2._is_shoot_mode
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.LittleGame
    L2_2 = L2_2.MovieGameMode
    L1_2 = L2_2.ShootingEndless
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.trigger_custom_string
    L3_2 = L4_1
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.LittleGame
    L2_2 = L2_2.MovieGameMode
    L1_2 = L2_2.OverTakeEndless
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.trigger_custom_string
    L3_2 = L2_1
    L2_2(L3_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Puzzle.MovieRacing.MovieRacingEnterPuzzlePage"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_end_less_mode_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_shoot_mode
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "MazeText_Maze_GamePlay_Movie_SubTitle_2"
    return L1_2
  else
    L1_2 = "MazeText_Maze_GamePlay_Movie_SubTitle_1"
    return L1_2
  end
end
L0_1._get_sub_title_text_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._movie_racing_game_mode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LittleGame
  L2_2 = L2_2.MovieGameMode
  L2_2 = L2_2.Shooting
  L2_2 = #L2_2
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_shoot_mode = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_shoot_mode
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.trigger_custom_string
    L2_2 = L3_1
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.trigger_custom_string
    L2_2 = L1_1
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L6_1
return L0_1
