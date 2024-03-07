local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumEntrancePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.MuseumTalkTriggerType
L2_1 = L2_1.EnterOpenDay
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.MuseumTalkTriggerType
L3_1 = L3_1.ReturnOpenDay
L4_1 = "StateMuseum"
L5_1 = 0.2
L6_1 = 0.1
L7_1 = 0.2
L8_1 = G
L8_1 = L8_1.Class
L9_1 = "MuseumEntrancePage"
L10_1 = G
L10_1 = L10_1.BasePage
L8_1 = L8_1(L9_1, L10_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = L2_1
  A0_2._cur_trigger_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PlayScreenTransfer
  L1_2 = L1_2()
  A0_2._play_screen_transfer = L1_2
  L1_2 = A0_2._play_screen_transfer
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ScreenTransferType
  L2_2 = L2_2.Black
  L1_2.Type = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ScreenTransferFullDuration
  L1_2 = L1_2()
  L2_2 = L5_1
  L1_2.PrevDuration = L2_2
  L2_2 = L6_1
  L1_2.KeepDuration = L2_2
  L2_2 = L7_1
  L1_2.PostDuration = L2_2
  L2_2 = A0_2._play_screen_transfer
  L2_2.TransferFullDuration = L1_2
  L2_2 = A0_2._play_screen_transfer
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ScreenTransferMode
  L3_2 = L3_2.FullTransfer
  L2_2.Mode = L3_2
end
L8_1.ctor = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1.MuseumData
  A0_2._museum_data = L2_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetMuseumActivityData
  L2_2 = L2_2(L3_2)
  A0_2._activity_data = L2_2
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = false
  end
  A0_2._auto_open_ui = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  A0_2._current_phase = L2_2
  L2_2 = A0_2._current_phase
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._current_phase
  L3_2 = L2_2
  L2_2 = L2_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._current_phase
  L3_2 = L3_2.CurrentPlayingTeamMember
  A0_2._current_player = L3_2
  L3_2 = L2_2.EntityManagerRef
  A0_2._entity_manager = L3_2
  L3_2 = A0_2._entity_manager
  L4_2 = L3_2
  L3_2 = L3_2.CreateLevelGraphEntity
  L5_2 = "Config/Level/Mission/2011901/ShowMuseumUI.json"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetComponent
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.LevelGraphComponent
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    A0_2._level_graph = L4_2
  end
end
L8_1.init = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumDataRefresh
  L4_2 = A0_2._on_museum_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumDataFinishCurTurn
  L4_2 = A0_2._on_museum_turn_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumExitUI
  L4_2 = A0_2._on_museum_exit_ui
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._add_handlers = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_phase_reward
  L4_2 = A0_2._on_btn_phase_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limited_reward
  L4_2 = A0_2._on_btn_limited_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._on_exit_begin
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.function_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_config_callback
  L3_2 = A0_2._on_btn_config
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.function_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_page_exit_callback
  L3_2 = A0_2._on_panel_exit_page
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumLimitedRewardTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_limited_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumPhaseReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_phase_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L8_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_playing_museum_bgm
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.ForceSave
  L1_2()
  A0_2._museum_data = nil
  A0_2._activity_data = nil
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = "EndMuseumLevelGraph"
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = "EndMuseumPerformance"
  L1_2(L2_2)
end
L8_1._on_dispose = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._start_level_graph
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_playing_museum_bgm
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_open_gameplay_ui
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_talk
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryTriggerTutorialMissionPerformance
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.TryNotifyTargetReward
    L2_2(L3_2)
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.TryNotifyRandomEvent
    L2_2(L3_2)
  end
end
L8_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = "EndMuseumPerformance"
  L1_2(L2_2)
  L1_2 = A0_2._level_graph
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._level_graph
  L2_2 = L1_2
  L1_2 = L1_2.StartLevelGraph
  L1_2(L2_2)
end
L8_1._start_level_graph = L9_1
function L9_1(A0_2, A1_2)
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
L8_1._on_enter_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L8_1._init_ui_navigation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.function_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L8_1.get_first_selected_object = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllUnlockMissionData
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_trigger_talk
  L2_2(L3_2)
end
L8_1._on_return_to_top = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.function_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_limited_reward
  L1_2(L2_2)
end
L8_1._refresh = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_trigger_type
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.trigger_random_talk
  L3_2 = A0_2._cur_trigger_type
  L1_2(L2_2, L3_2)
  A0_2._cur_trigger_type = nil
end
L8_1._try_trigger_talk = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._auto_open_ui
  if L1_2 then
    L1_2 = A0_2._museum_data
    L1_2 = L1_2.RenewPointData
    L2_2 = L1_2
    L1_2 = L1_2.IsMax
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumMainPage"
  L1_2(L2_2)
end
L8_1._try_open_gameplay_ui = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._activity_data
  if L1_2 ~= nil then
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_15
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limited_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_15::
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_limited_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeStamp
  L4_2 = A0_2._on_timer_time_out
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L8_1._setup_limited_reward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L8_1._on_museum_data_refresh = L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = L3_1
  A0_2._cur_trigger_type = L1_2
end
L8_1._on_museum_turn_finish = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L8_1._on_museum_exit_ui = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.OpenScreenTransferDialog
  L3_2 = A0_2._play_screen_transfer
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ScreenTransferReason
  L4_2 = L4_2.Default
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._on_exit_begin = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumMainPage"
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = A0_2.__name
  L4_2 = "Goto_MainPage"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L8_1._on_btn_config = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumPhasePreviewPage"
  L1_2(L2_2)
end
L8_1._on_btn_phase_reward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumQuestPage"
  L1_2(L2_2)
end
L8_1._on_btn_limited_reward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L8_1._on_panel_exit_page = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L8_1._on_timer_time_out = L9_1
function L9_1(A0_2)
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
    L5_2 = L4_1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.SwitchUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L8_1._start_playing_museum_bgm = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
    L4_2 = L2_2
    L3_2 = L2_2.StopUIMenuBGM
    L3_2(L4_2)
  end
end
L8_1._stop_playing_museum_bgm = L9_1
return L8_1
