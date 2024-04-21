local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "ShootingResultSuccessDialog_FadeIn"
L2_1 = "ShootingResultFailDialog_FadeIn"
L3_1 = 3
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.WolfBroShootingModule
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.WolfBroShootingResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2
  A0_2._exit_call_back_func = A2_2
  A0_2._exit_call_back_object = A1_2
  A0_2._restart_call_back_func = A3_2
  A0_2._statistic_data = A4_2
  A0_2._mono_wolf_bro_custom_data = A5_2
  L7_2 = A6_2 or L7_2
  if not A6_2 then
    L7_2 = 0
  end
  A0_2._continue_time = L7_2
  L8_2 = A0_2
  L7_2 = A0_2._get_is_success
  L7_2 = L7_2(L8_2)
  A0_2._is_success = L7_2
  L7_2 = A0_2._binder
  L8_2 = L7_2
  L7_2 = L7_2.init_result
  L9_2 = A0_2._is_success
  L7_2(L8_2, L9_2)
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._statistic_data
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block
    L3_2 = L3_1
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._block_id = L1_2
    L1_2 = A0_2._mono_wolf_bro_custom_data
    L1_2 = L1_2.GunPlayPuzzleBoard
    L1_2 = L1_2.GunMode
    L2_2 = A0_2._mono_wolf_bro_custom_data
    L2_2 = L2_2.GunPlayPuzzleBoard
    L2_2 = L2_2.GunLevel
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GunPlayModeType
    L3_2 = L3_2.EndLess
    if L1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._setup_end_less_collect
      L3_2(L4_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._setup_normal_collect
      L3_2(L4_2)
    end
    L3_2 = tonumber
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "%.0f"
    L6_2 = A0_2._statistic_data
    L6_2 = L6_2.Score
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = L4_1
    L5_2 = L4_2
    L4_2 = L4_2.GetWolfBroShootingBestScore
    L6_2 = #L1_2
    L7_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_score
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_score_new
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = L3_2 > L4_2
    L5_2(L6_2, L7_2)
    L5_2 = math
    L5_2 = L5_2.max
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_history_max_score
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = G
    L6_2 = L6_2.UIUtils
    L6_2 = L6_2.set_children_visible
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_rank
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._statistic_data
    L6_2 = L6_2.ScoreRank
    if 0 < L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_rank_list
      L7_2 = A0_2._statistic_data
      L7_2 = L7_2.ScoreRank
      L6_2 = L6_2[L7_2]
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_restart
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L4_1.IsCanRestartGame
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_collect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_end_less_collect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = tostring
  L4_2 = A0_2._statistic_data
  L4_2 = L4_2.KillTargetCount
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_shoot
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = tostring
  L4_2 = A0_2._statistic_data
  L4_2 = L4_2.SpawnTargetCount
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_addition_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A0_2._statistic_data
  L5_2 = L5_2.AdditionScore
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_top_kill
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = tostring
  L4_2 = A0_2._statistic_data
  L4_2 = L4_2.TopKillCount
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_count_down_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A0_2._statistic_data
  L5_2 = L5_2.CountdownScore
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_normal_collect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_collect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_end_less_collect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_end_less_hint_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = tostring
  L4_2 = A0_2._statistic_data
  L4_2 = L4_2.KillTargetCount
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_end_less_shoot_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = tostring
  L4_2 = A0_2._statistic_data
  L4_2 = L4_2.SpawnTargetCount
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_count_down
  L3_2 = A0_2._continue_time
  L1_2(L2_2, L3_2)
end
L0_1._setup_end_less_collect = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L2_2 / 60
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.ceil
  L5_2 = L2_2 % 60
  L4_2 = L4_2(L5_2)
  if L4_2 == 60 then
    L3_2 = L3_2 + 1
    L4_2 = 0
  end
  L5_2 = nil
  L6_2 = nil
  if L3_2 < 10 then
    L7_2 = "0"
    L8_2 = tostring
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L5_2 = L7_2 .. L8_2
  else
    L7_2 = tostring
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  end
  if L4_2 < 10 then
    L7_2 = "0"
    L8_2 = tostring
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L6_2 = L7_2 .. L8_2
  else
    L7_2 = tostring
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_end_less_minute
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_end_less_second
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L0_1._setup_count_down = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_restart
  L4_2 = A0_2._on_btn_restart_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._is_success
  if L1_2 then
    L1_2 = L1_1
    if L1_2 then
      goto lbl_18
    end
  end
  L1_2 = L2_1
  ::lbl_18::
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_anim_event
  L3_2 = L2_2
  L2_2 = L2_2.AddAnimationEvent
  L4_2 = L1_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = A0_2._statistic_data
    if L0_3 then
      L0_3 = L4_1.IsCanRestartGame
      if L0_3 then
        L0_3 = A0_2._mono_wolf_bro_custom_data
        L0_3 = L0_3.GunPlayPuzzleBoard
        L0_3 = L0_3.GunMode
        L1_3 = A0_2._mono_wolf_bro_custom_data
        L1_3 = L1_3.GunPlayPuzzleBoard
        L1_3 = L1_3.GunLevel
        L2_3 = CS
        L2_3 = L2_3.RPG
        L2_3 = L2_3.Client
        L2_3 = L2_3.NetworkManager
        L2_3 = L2_3.FFOMLPONIFB
        L3_3 = L2_3
        L2_3 = L2_3.CPGBBGPLAHJ
        L4_3 = #L0_3
        L5_3 = L1_3
        L6_3 = A0_2._statistic_data
        L6_3 = L6_3.Score
        L7_3 = A0_2._statistic_data
        L7_3 = L7_3.SpawnTargetCount
        L7_3 = 0 < L7_3
        L8_3 = A0_2._statistic_data
        L8_3 = L8_3.SerialNumber
        L9_3 = A0_2._statistic_data
        L9_3 = L9_3.ContinueTime
        L10_3 = A0_2._statistic_data
        L10_3 = L10_3.GroupID
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      end
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._exit_call_back_func
  if L1_2 then
    L1_2 = A0_2._exit_call_back_func
    L2_2 = A0_2._exit_call_back_object
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._restart_call_back_func
  if L1_2 then
    L1_2 = A0_2._restart_call_back_func
    L2_2 = A0_2._exit_call_back_object
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_restart_click = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mono_wolf_bro_custom_data
  L1_2 = L1_2.GunPlayPuzzleBoard
  L1_2 = L1_2.GunMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GunPlayModeType
  L2_2 = L2_2.EndLess
  if L1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._statistic_data
  L2_2 = L2_2.IsSuccess
  return L2_2
end
L0_1._get_is_success = L5_1
return L0_1
