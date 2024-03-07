local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingPauseDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingPauseDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MovieRacingModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MovieRacingPauseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_exit_by_restart = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2._exit_call_back_func = A2_2
  A0_2._exit_call_back_object = A1_2
  A0_2._restart_call_back_func = A3_2
  A0_2._continue_call_back_func = A4_2
  A0_2._game_mode_text_id = A5_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Lock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.UI
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._game_mode_text_id
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_game_mode
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._game_mode_text_id
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_give_up
  L4_2 = A0_2._on_btn_give_up_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_restart
  L4_2 = A0_2._on_btn_restart_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = A0_2._on_btn_continue_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_exit_by_restart
  if L1_2 then
    L1_2 = "MakeFilmPauseDialog_FadeOut2"
    return L1_2
  else
    L1_2 = "MakeFilmPauseDialog_FadeOut"
    return L1_2
  end
end
L0_1.get_custom_fade_out_anim_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._exit_call_back_func
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.ReportMovieRacingPuzzleFinishData
    L3_2 = 0
    L4_2 = 3
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._exit_call_back_func
    L2_2 = A0_2._exit_call_back_object
    L1_2(L2_2)
  end
end
L0_1._on_btn_give_up_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ReportMovieRacingPuzzleFinishData
  L3_2 = 0
  L4_2 = 2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ReportMovieRacingPuzzleStartData
  L3_2 = 2
  L1_2(L2_2, L3_2)
  A0_2._is_exit_by_restart = true
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_restart_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._continue_call_back_func
  if L1_2 then
    L1_2 = A0_2._continue_call_back_func
    L2_2 = A0_2._exit_call_back_object
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_continue_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_continue_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Unlock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.UI
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_exit_by_restart
  if L1_2 then
    L1_2 = A0_2._restart_call_back_func
    if L1_2 then
      L1_2 = A0_2._restart_call_back_func
      L2_2 = A0_2._exit_call_back_object
      L1_2(L2_2)
    end
  end
end
L0_1._on_dispose = L2_1
return L0_1
