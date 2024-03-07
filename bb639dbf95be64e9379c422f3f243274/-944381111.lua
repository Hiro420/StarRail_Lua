local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Battle.PauseDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.PauseStageTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.PauseStageTabPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.Pause.PauseCustomDetailTab"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.Pause.PauseCustomDetailTabBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.SettingTitleItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Graphics.GraphicsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Audio.AudioPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeysPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Other.OtherSettingPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PauseDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_GamePhaseManager
L2_1 = "/"
L3_1 = "ChallengeMaze_Button_Exit"
L4_1 = "UIText_Cocoon_Battle_Exit"
L5_1 = "UIText_Rogue_Battle_Exit"
L6_1 = "UIText_Battle_PauseDialog_ExitInfo"
L7_1 = "UIText_FuncLock_MapFuncDisable"
L8_1 = "HintInfoDialogFadeOut"
L9_1 = "HintInfoDialogFadeIn"
L10_1 = CS
L10_1 = L10_1.RPG
L10_1 = L10_1.Client
L10_1 = L10_1.GlobalVars
L10_1 = L10_1.s_ModuleManager
L10_1 = L10_1.ChallengeModule
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PauseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._current_select_tab_idx = 1
  L1_2 = {}
  A0_2._stage_detail_data = L1_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CloudUtils
  L1_2 = L1_2.KeepAliveByAutoBattle
  L2_2 = false
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.SettingModule
  L3_2 = L2_2
  L2_2 = L2_2.init
  L2_2(L3_2)
  L2_2 = A1_2.IsExitBattleBtnShow
  A0_2._is_exit_battle_btn_show = L2_2
  L2_2 = A1_2.IsExitBattleBtnDisable
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_rogue_newbie
    L2_2 = L2_2(L3_2)
  end
  A0_2._is_exit_battle_btn_disable = L2_2
  L2_2 = A1_2.ModeType
  A0_2._mode = L2_2
  L2_2 = A1_2.StageType
  A0_2._stage_type = L2_2
end
L0_1.init = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1.get_first_selected_object = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_show_exit_battle_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_show_restart_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_wave_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._override_btn_action
  L1_2(L2_2)
end
L0_1._setup_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_prev = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_next = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = A0_2._on_btn_continue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit_battle
  L4_2 = A0_2._on_btn_exit_battle_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_restart
  L4_2 = A0_2._on_btn_restart
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._stage_detail_data
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_dialog_title
  L1_2.text_dialog_title = L2_2
  L1_2 = A0_2._stage_detail_data
  L2_2 = A0_2._mode
  L1_2._mode = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_hint_fade_in_timer
  L4_2 = 1.8
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._hint_fade_in_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_hint_fade_out_timer
  L4_2 = 0.7
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._hint_fade_out_timer = L1_2
end
L0_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._stage_detail_data = nil
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIGameEntityUtils
  L1_2 = L1_2.IsAutoBattle
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CloudUtils
  L2_2 = L2_2.KeepAliveByAutoBattle
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_dispose = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.keymap_tip_btn_left
    L2_2 = L1_2
    L1_2 = L1_2.SetInControlTipKey
    L3_2 = "Menu_UnchangeX"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.keymap_tip_btn_mid
    L2_2 = L1_2
    L1_2 = L1_2.SetInControlTipKey
    L3_2 = "Menu_UnchangeOption"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.keymap_tip_btn_right
    L2_2 = L1_2
    L1_2 = L1_2.SetInControlTipKey
    L3_2 = "Menu_UnchangeY"
    L1_2(L2_2, L3_2)
  end
end
L0_1._override_btn_action = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.EODKBOHELPJ
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_rogue_newbie = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_continue = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_exit_battle
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_exit_battle_disable
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_exit_battle
    L1_2(L2_2)
  end
end
L0_1._on_btn_exit_battle_click = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.EODKBOHELPJ
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RogueUtils
    L1_2 = L1_2.GetRogueBattleManualExitConfirmHint
    L1_2 = L1_2()
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowOkCancelHint
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    function L5_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._exit_battle
        L1_3(L2_3)
      end
    end
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L1_2 = A0_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._leave_challenge
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._stage_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.TelevisionActivity
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._second_confirm_quit_battle
    L3_2 = "UIText_ActivityTelevision_BattleResult_Run_Tip1"
    L4_2 = "UIText_ActivityTelevision_BattleResult_Run_Title1"
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._exit_battle
  L1_2(L2_2)
end
L0_1._on_btn_exit_battle = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L2_2 = A0_2._mode
  L3_2 = CS
  L3_2 = L3_2.NNHMNDEADHC
  L3_2 = L3_2.BOAMFLLMJIN
  if L2_2 == L3_2 then
    L1_2 = true
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_restart
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_challenge_btn_retreat"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_restart
  L3_2 = L1_2 or L3_2
  if L1_2 then
    L3_2 = A0_2._is_exit_battle_btn_disable
    L3_2 = not L3_2
  end
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_restart
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_show_restart_btn = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_confirm_restart
    L3_2 = "UIText_challenge_dialog_desc_retreat"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_restart = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = A1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._exit_battle
      L3_3 = true
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_confirm_restart = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ConfirmDialogUtil
  L3_2 = L3_2.ShowOkCancelHint
  L4_2 = A1_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextID
    L5_2 = L5_2.empty
  end
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_GamePhaseManager
      L2_3 = L1_3
      L1_3 = L1_3.GetCurrentPhase
      L1_3 = L1_3(L2_3)
      if L1_3 ~= nil then
        L2_3 = G
        L2_3 = L2_3.UtilEngineWrap
        L2_3 = L2_3.IsCsType
        L3_3 = L1_3
        L4_3 = CS
        L4_3 = L4_3.RPG
        L4_3 = L4_3.Client
        L4_3 = L4_3.BattleGamePhase
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = G
          L2_3 = L2_3.UtilEngineWrap
          L2_3 = L2_3.IsCsType
          L3_3 = L1_3
          L4_3 = CS
          L4_3 = L4_3.RPG
          L4_3 = L4_3.Client
          L4_3 = L4_3.ReplayGamePhase
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            goto lbl_42
          end
        end
        L2_3 = L1_3.BattleInstanceRef
        L2_3 = L2_3.TurnBasedGameModeRef
        L4_3 = L2_3
        L3_3 = L2_3.TryQuitBattle
        L5_3 = false
        L3_3(L4_3, L5_3)
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3.exit
        L3_3(L4_3)
      end
    end
    ::lbl_42::
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._second_confirm_quit_battle = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChallengeModule
  L2_2 = L2_2.CurrentChallengeInstance
  L3_2 = L2_2.GroupType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeGroupType
  L4_2 = L4_2.Story
  if L3_2 == L4_2 then
    L1_2 = "UIText_ChallengeStory_ReturnConfirm"
  else
    L3_2 = L2_2.GroupType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ChallengeGroupType
    L4_2 = L4_2.Memory
    if L3_2 == L4_2 then
      L1_2 = "UIText_challenge_desc_Exit"
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ConfirmDialogUtil
  L3_2 = L3_2.ShowOkCancelHint
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if A0_3 then
      L1_3 = L10_1.CurrentChallengeInstance
      if L1_3 ~= nil then
        L1_3 = true
        L2_3 = false
        L3_3 = false
        L4_3 = L10_1.CurrentChallengeInstance
        L4_3 = L4_3.ChallengeDataRef
        L4_3 = L4_3.GroupID
        L5_3 = L10_1
        L6_3 = L5_3
        L5_3 = L5_3.SetContinueChallengeData
        L7_3 = L1_3
        L8_3 = L2_3
        L9_3 = L3_3
        L10_3 = L4_3
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
      end
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_GamePhaseManager
      L2_3 = L1_3
      L1_3 = L1_3.GetCurrentPhase
      L1_3 = L1_3(L2_3)
      if L1_3 ~= nil then
        L2_3 = G
        L2_3 = L2_3.UtilEngineWrap
        L2_3 = L2_3.IsCsType
        L3_3 = L1_3
        L4_3 = CS
        L4_3 = L4_3.RPG
        L4_3 = L4_3.Client
        L4_3 = L4_3.BattleGamePhase
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = G
          L2_3 = L2_3.UtilEngineWrap
          L2_3 = L2_3.IsCsType
          L3_3 = L1_3
          L4_3 = CS
          L4_3 = L4_3.RPG
          L4_3 = L4_3.Client
          L4_3 = L4_3.ReplayGamePhase
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            goto lbl_57
          end
        end
        L2_3 = L1_3.BattleInstanceRef
        L2_3 = L2_3.TurnBasedGameModeRef
        L4_3 = L2_3
        L3_3 = L2_3.TryQuitBattle
        L5_3 = false
        L6_3 = false
        L7_3 = false
        L3_3(L4_3, L5_3, L6_3, L7_3)
      end
      ::lbl_57::
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.exit
      L2_3(L3_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._leave_challenge = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  L2_2 = A0_2._mode
  L3_2 = CS
  L3_2 = L3_2.NNHMNDEADHC
  L3_2 = L3_2.BOAMFLLMJIN
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.ChallengeModule
    L3_2 = true
    L4_2 = false
    L5_2 = false
    L6_2 = L2_2.CurrentChallengeInstance
    L6_2 = L6_2.ChallengeDataRef
    L6_2 = L6_2.GroupID
    L8_2 = L2_2
    L7_2 = L2_2.SetContinueChallengeData
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = L5_2
    L12_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.UtilEngineWrap
    L3_2 = L3_2.IsCsType
    L4_2 = L2_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.BattleGamePhase
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = G
      L3_2 = L3_2.UtilEngineWrap
      L3_2 = L3_2.IsCsType
      L4_2 = L2_2
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.ReplayGamePhase
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        goto lbl_67
      end
    end
    L3_2 = L2_2.BattleInstanceRef
    L3_2 = L3_2.TurnBasedGameModeRef
    L5_2 = L3_2
    L4_2 = L3_2.TryQuitBattle
    L6_2 = false
    L7_2 = false
    L8_2 = A1_2 or L8_2
    if not A1_2 then
      L8_2 = false
    end
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  ::lbl_67::
end
L0_1._exit_battle = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_rogue_newbie
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_hint
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_hint
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._hint_fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._hint_fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_btn_exit_battle_disable = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._hint_fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_hint
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._hint_fade_out_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._hint_fade_out_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_hint_fade_in_timer = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._hint_fade_out_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_hint_fade_out_timer = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_hint
  L3_2 = L8_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_hint = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mode
  L2_2 = CS
  L2_2 = L2_2.NNHMNDEADHC
  L2_2 = L2_2.BOAMFLLMJIN
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ChallengeModule
    L1_2 = L1_2.CurrentChallengeInstance
    L2_2 = L1_2.GroupType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ChallengeGroupType
    L3_2 = L3_2.Story
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_btn_exit
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ChallengeStory_Return"
      L2_2(L3_2, L4_2)
    else
      L2_2 = L1_2.GroupType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ChallengeGroupType
      L3_2 = L3_2.Memory
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_btn_exit
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L3_1
        L2_2(L3_2, L4_2)
      end
    end
  else
    L1_2 = A0_2._mode
    L2_2 = CS
    L2_2 = L2_2.NNHMNDEADHC
    L2_2 = L2_2.FADKCMHPFNJ
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_btn_exit
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L4_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._mode
      L2_2 = CS
      L2_2 = L2_2.NNHMNDEADHC
      L2_2 = L2_2.EODKBOHELPJ
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_btn_exit
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = L5_1
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_exit_battle
  L2_2 = A0_2._is_exit_battle_btn_disable
  L1_2.IsInFakeDisableState = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_exit_battle
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_exit_battle_btn_show
  L1_2(L2_2, L3_2)
end
L0_1._setup_show_exit_battle_btn = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_btn_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_load_custom_detail_tab
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_custom_detail_tab
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._init_stage_detail_tab
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_audio_tab_item
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_hotkeys_tab_item
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_other_setting_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._current_select_tab_idx
  L1_2(L2_2, L3_2)
end
L0_1._init_tabs = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PauseStageTabPanel
  L4_2 = G
  L4_2 = L4_2.PauseStageTabPanelBinder
  L5_2 = A0_2._stage_detail_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_stage_detail_tab = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PauseCustomDetailTab
  L4_2 = G
  L4_2 = L4_2.PauseCustomDetailTabBinder
  L5_2 = A0_2._stage_detail_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_stage_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._init_custom_detail_tab = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_battle_stage_type
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.TelevisionActivity
  if L1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.FeverTimeActivity
  if L1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._is_load_custom_detail_tab = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GraphicsPanel
  L4_2 = G
  L4_2 = L4_2.GraphicsPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_graphics_tab_item = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AudioPanel
  L4_2 = G
  L4_2 = L4_2.AudioPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_audio_tab_item = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HotkeysPanel
  L4_2 = G
  L4_2 = L4_2.HotkeysPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_hotkeys_tab_item = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.OtherSettingPanel
  L4_2 = G
  L4_2 = L4_2.OtherSettingPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = {}
  L3_2 = OtherSettingType
  L3_2 = L3_2.EmergencyExit
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.AutoTalk
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.WalkSwitch
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.MouseFov
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.MouseRotation
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.GamepadFov
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.GamepadRotation
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.FastRunSwitch
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.LightConeAutoLock
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.CameraYAxisInversion
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.CameraXAxisInversion
  L2_2[L3_2] = true
  L3_2 = OtherSettingType
  L3_2 = L3_2.AvatarLookAt
  L2_2[L3_2] = true
  L4_2 = L1_2
  L3_2 = L1_2.remove_items
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L1_2.button_prefab_index = 0
  L4_2 = L1_2
  L3_2 = L1_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_content
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._init_other_setting_tab_item = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._is_show_wave_info
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.TurnBasedGameModeRef
  L2_2 = L1_2.MonsterWaveTextInfo
  L2_2 = L2_2.MaxWaveCount
  L3_2 = L1_2.MonsterWaveTextInfo
  L3_2 = L3_2.CurrentWaveCount
  L4_2 = L3_2
  L5_2 = L2_1
  L6_2 = L2_2
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_wave_info
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_left_turn
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L1_2.ChallengeTurnLeft
  L5_2(L6_2, L7_2)
end
L0_1._setup_wave_info = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._stage_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.FantasticStory
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._stage_type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.StageType
    L2_2 = L2_2.BattleCollege
    if L1_2 ~= L2_2 then
      goto lbl_19
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_19::
  L1_2 = A0_2._stage_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageType
  L2_2 = L2_2.TelevisionActivity
  if L1_2 == L2_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.BattleInstanceRef
    L1_2 = L1_2.TurnBasedGameModeRef
    L2_2 = L1_2.MonsterWaveTextInfo
    L3_2 = L2_2
    L2_2 = L2_2.HasOverrideInfo
    return L2_2(L3_2)
  end
  L1_2 = true
  return L1_2
end
L0_1._is_show_wave_info = L11_1
return L0_1
