local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.ChessRogueMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = "StateRogueDLC"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChessRogueMainPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = {}
L2_1[1] = "UI/Rogue/DLC/Dice/Widget/MainPageBG1.prefab"
L2_1[2] = "UI/Rogue/DLC/Dice/Widget/MainPageBG2.prefab"
L2_1[3] = "UI/Rogue/DLC/Dice/Widget/MainPageBG3.prefab"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_OpenWithCut
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_AboveAndBelowBlack
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.return_btn
  L4_2 = A0_2._on_return_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.exit_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.return_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.AFBIOHLMHBK
  L4_2 = A0_2._on_give_up_rogue_rsp
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_start_btn_click_callback
  L3_2 = A0_2._on_start_btn_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChessRogueMainPageExit
  L4_2 = A0_2._on_chess_rogue_main_page_exit
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_normal_view
  L1_2(L2_2)
end
L1_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._is_in_level_panel
    if not L2_2 then
      L2_2 = A0_2._is_in_replay_panel
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._setup_fade_in
        L2_2(L3_2)
      end
    end
  end
end
L1_1._on_view_active_change = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._stop_bgm
  L1_2()
end
L1_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._start_bgm
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._setup_fade_in
  L1_2(L2_2)
end
L1_1._setup_normal_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsFinalGuideFinished
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.ChessRogueMainPageStageThreeSeen
    if L1_2 ~= true then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root_animator
      L2_2 = L1_2
      L1_2 = L1_2.SetTrigger
      L3_2 = "FadeIn_2To3"
      L1_2(L2_2, L3_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.Prefs
      L1_2 = L1_2.User
      L1_2.ChessRogueMainPageStageThreeSeen = true
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "FadeIn"
    L1_2(L2_2, L3_2)
  end
end
L1_1._setup_fade_in = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_tutorial_finish_status
  L1_2(L2_2)
  L1_2 = A0_2._is_stage_one_finished
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_prefab_by_stage
    L3_2 = 1
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._is_stage_two_finished
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._load_prefab_by_stage
      L3_2 = 2
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.Prefs
      L1_2 = L1_2.User
      L1_2 = L1_2.ChessRogueMainPageStageThreeSeen
      if L1_2 ~= true then
        L2_2 = A0_2
        L1_2 = A0_2._load_prefab_by_stage
        L3_2 = 2
        L1_2(L2_2, L3_2)
      end
      L2_2 = A0_2
      L1_2 = A0_2._load_prefab_by_stage
      L3_2 = 3
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_animator
  L2_2 = L1_2
  L1_2 = L1_2.RebindWithPreStatus
  L1_2(L2_2)
end
L1_1._setup_bg = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._instantiated_gameobject_table
  if L3_2 then
    L3_2 = A0_2._instantiated_gameobject_table
    L3_2 = L3_2[A1_2]
    if L3_2 then
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.sync_load_prefab
  L5_2 = L2_1[A1_2]
  L6_2 = A0_2._binder
  L6_2 = L6_2.bg_root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._instantiated_gameobject_table
  if not L4_2 then
    L4_2 = {}
  end
  A0_2._instantiated_gameobject_table = L4_2
  L4_2 = A0_2._instantiated_gameobject_table
  L4_2[A1_2] = true
  L4_2 = "MainPage"
  L5_2 = tostring
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L3_2.name = L4_2
  if A2_2 then
    L4_2 = L3_2.transform
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end
L1_1._load_prefab_by_stage = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsGuideOneFinished
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.IsGuideTwoFinished
    L1_2 = L1_2()
  end
  A0_2._is_stage_one_finished = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsFinalGuideFinished
  L1_2 = L1_2()
  A0_2._is_stage_two_finished = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsFinalGuideFinished
  L1_2 = L1_2()
  A0_2._is_final_stage_finished = L1_2
end
L1_1._get_cur_tutorial_finish_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "StartBtn"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.try_show_quick_settlement_dialog
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogue
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_quick_settlement
    L0_3(L1_3)
  end
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Switch"
  L5_2 = "ActionGroup_Select"
  L6_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
  A0_2._is_in_level_panel = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Switch_BattlePanel"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end
L1_1._on_start_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_RogueNous_ProgressAbandon_HintDesc"
  L3_2 = "Common_ConfirmDialog_Title"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.NIJNBICAPPA
      L3_3 = L3_3.AFBIOHLMHBK
      L1_3(L2_3, L3_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_ModuleManager
      L1_3 = L1_3.ChessRogueModule
      L2_3 = L1_3
      L1_3 = L1_3.SendGiveUpChessRogueReq
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_quick_settlement = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._main_mission_gO_loaded
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.prefab_load_meta
    L1_2 = L1_2.Prefab
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = L1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.prefab_load_meta
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._instance = L2_2
    L2_2 = A0_2._instance
    L2_2.name = "DlcMainStoryPanel"
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.ChessRogueMainMissionReplayPanel
    L5_2 = G
    L5_2 = L5_2.ChessRogueMainMissionReplayPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._main_mission_replay_panel = L2_2
    L2_2 = A0_2._main_mission_replay_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._instance
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._main_mission_replay_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
    A0_2._main_mission_gO_loaded = true
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Switch"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_animator
  L2_2 = L1_2
  L1_2 = L1_2.RebindWithPreStatus
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Switch_StoryPanel"
  L1_2(L2_2, L3_2)
  A0_2._is_in_replay_panel = true
end
L1_1.show_main_mission_replay_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_exit_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_level_panel
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_return_btn_clicked
    L1_2(L2_2)
  else
    L1_2 = A0_2._is_in_replay_panel
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_return_btn_clicked
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._on_exit_btn_clicked
      L1_2(L2_2)
    end
  end
end
L1_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_in_level_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Switch_BattlePanel_Out"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_all_btn_interact_status
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._is_in_replay_panel
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root_animator
      L2_2 = L1_2
      L1_2 = L1_2.SetTrigger
      L3_2 = "Switch_StoryPanel_Out"
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.main_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_all_btn_interact_status
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
  A0_2._is_in_level_panel = false
  A0_2._is_in_replay_panel = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_long_term_reward_view
  L1_2(L2_2)
end
L1_1._on_return_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_level_panel
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_return_btn_clicked
  L1_2(L2_2)
end
L1_1._on_give_up_rogue_rsp = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.GetAdventureAudioManager
    L1_2 = L1_2(L2_2)
  end
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L2_2 = L2_2.AudioConfig
    L2_2 = L2_2.MenuBGMStates
    L3_2 = L2_2
    L2_2 = L2_2.get_Item
    L4_2 = L0_1
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L1_2
    L3_2 = L1_2.SwitchUIMenuBGM
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._start_bgm = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.GetAdventureAudioManager
    L1_2 = L1_2(L2_2)
  end
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.StopUIMenuBGM
    L2_2(L3_2)
  end
end
L1_1._stop_bgm = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "ChessRogueSelectLevelPanel_Active" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.level_select_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_reward_panels
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._init_ui_navigation
    L2_2(L3_2)
  end
end
L1_1._on_ui_animation_event = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_chess_rogue_main_page_exit = L3_1
function L3_1(A0_2, A1_2)
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = nil
      L3_2 = A0_2._is_in_level_panel
      if L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.level_select_panel
        L4_2 = L3_2
        L3_2 = L3_2.get_first_selected_object_zone_2
        L3_2 = L3_2(L4_2)
        L2_2 = L3_2
      end
      if L2_2 ~= nil then
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L1_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_level_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.level_select_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L1_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_in_replay_panel
  return L1_2
end
L1_1.is_in_replay_panel = L3_1
return L1_1
