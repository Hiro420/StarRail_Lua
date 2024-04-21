local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkGamePlayMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Control.ActivityClockParkGamePlayControlPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Actions.ChallengeActionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ActionQueue"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.State.ActivityClockParkGamePlaySelectStartChapterStatePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.State.ActivityClockParkGamePlayBranchSelectStatePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.State.ActivityClockParkGamePlayRandomEventPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.State.ActivityClockParkGamePlayLittleGamePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.State.ActivityClockParkGamePlayCheckPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.State.ActivityClockParkGamePlayStoryPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.State.ActivityClockParkGamePlaySlotMachinePanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkGameStateEnum
L2_1 = {}
L2_1[10101] = "5304"
L2_1[10102] = "5305"
L2_1[10103] = "5306"
L2_1[10106] = "5308"
L2_1[10107] = "5309"
L2_1[10201] = "5310"
L2_1[10202] = "5322"
L2_1[10204] = "5326"
L2_1[20250] = "5314"
L2_1[30101] = "5319"
L2_1[41002] = "5320"
L2_1[51001] = "5321"
L2_1[20203] = "5323"
L2_1[70101] = "5303"
L3_1 = 175
L4_1 = 176
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ActivityClockParkGamePlayMainPage"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._action_queue = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.story_node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_merge_attribute_progress
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_hardcore
  L4_2 = A0_2._on_btn_switch_hardcore
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_round_finish
  L4_2 = A0_2._on_btn_round_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_state_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_action_queue
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClockParkOnGoingUpdate
  L4_2 = A0_2._on_clock_park_on_going_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClockParkQuit
  L4_2 = A0_2._on_game_quit
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._dispose_action_queue
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2._is_shield_pause
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.recover_pause
    L1_2()
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SetClockParkBGM
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlaySelectStartChapterStatePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_select_chapter_state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayBranchSelectStatePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_branch_select_state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayRandomEventPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_random_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayLittleGamePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_little_game = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayCheckPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_check = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayStoryPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlaySlotMachinePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_slot_machine = L1_2
end
L5_1._init_state_panels = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayControlPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_control = L1_2
  L1_2 = A0_2._panel_control
  L2_2 = L1_2
  L1_2 = L1_2.init_component_panels
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_attribute
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_card
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_dice_choose
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_chapter_progress
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_branch_select
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._panel_random_event
  L2_2 = L1_2
  L1_2 = L1_2.init_control_panel
  L3_2 = A0_2._panel_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_branch_select_state
  L2_2 = L1_2
  L1_2 = L1_2.init_control_panel
  L3_2 = A0_2._panel_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_check
  L2_2 = L1_2
  L1_2 = L1_2.init_attribute_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_attribute
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_card
  L2_2 = L1_2
  L1_2 = L1_2.init_card_list_anim_cmpt
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_card
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_attribute
  L2_2 = L1_2
  L1_2 = L1_2.init_merge_progress_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_merge_attribute_progress
  L1_2(L2_2, L3_2)
end
L5_1._init_panels = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityClockParkModule
  L2_2 = L1_2
  L1_2 = L1_2.GetPlayingClockParkScriptData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_endless_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L0_1.ClockParkInstance
  L4_2 = L4_2.ScriptInfo
  L4_2 = L4_2.IsInEndless
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_panel_endless_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.SetClockParkBGM
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_script_logo
  L5_2 = L1_2.Row
  L5_2 = L5_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.smooth_mask_script_logo
  L3_2 = G
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.SyncLoadAsset
  L4_2 = L1_2.Row
  L4_2 = L4_2.ScriptResultLogoMaskPath
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Sprite
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.sprite = L3_2
  L3_2 = A0_2
  L2_2 = A0_2._show_page_setup_view_action
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_cur_state_exit_action
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_cur_state_refresh_action
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_cur_state_enter_action
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.ActivityClockParkUtils
  L2_2 = L2_2.set_use_simplified_value
  L3_2 = true
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_switch_hardcore
  L2_2(L3_2)
end
L5_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_state_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_state_panel
    L1_2 = L1_2.on_btn_round_finish
    if L1_2 ~= nil then
      L1_2 = A0_2._cur_state_panel
      L2_2 = L1_2
      L1_2 = L1_2.override_on_btn_round_finish
      L1_2(L2_2)
      return
    end
  end
  L1_2 = L0_1.ClockParkInstance
  L2_2 = L1_2
  L1_2 = L1_2.FinishRound
  L1_2(L2_2)
end
L5_1._on_btn_round_finish = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.set_use_simplified_value
  L2_2 = G
  L2_2 = L2_2.ActivityClockParkUtils
  L2_2 = L2_2.is_use_simplified_value
  L2_2 = L2_2()
  L2_2 = not L2_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_attribute
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_card
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_switch_hardcore
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.is_use_simplified_value
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SDKLuaReportAdapter
    L2_2 = L2_2.ReportActivityClockParkButtonClick
    L3_2 = A0_2.__name
    L4_2 = "SwitchDetailMode"
    L5_2 = "True"
    L6_2 = A0_2.guid
    L7_2 = L0_1.ClockParkInstance
    L7_2 = L7_2.ScriptTransNo
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SDKLuaReportAdapter
    L2_2 = L2_2.ReportActivityClockParkButtonClick
    L3_2 = A0_2.__name
    L4_2 = "SwitchDetailMode"
    L5_2 = "False"
    L6_2 = A0_2.guid
    L7_2 = L0_1.ClockParkInstance
    L7_2 = L7_2.ScriptTransNo
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L5_1._on_btn_switch_hardcore = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_switch_hardcore
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkUtils
  L3_2 = L3_2.is_use_simplified_value
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L5_1._refresh_btn_switch_hardcore = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L1_1.Story
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  end
end
L5_1._refresh_gamepad_short_cut = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.ChapterInfo
  L1_2 = L1_2.RoundInfo
  L2_2 = L1_2.RoundID
  L2_2 = L2_1[L2_2]
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L4_2 = L1_2.RoundID
    L4_2 = L2_1[L4_2]
    L2_2(L3_2, L4_2)
  end
end
L5_1._try_trigger_tutorial = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.ActionQueue
    L1_2 = L1_2(L2_2)
    A0_2._action_queue = L1_2
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.init
    L1_2(L2_2)
  end
end
L5_1._init_action_queue = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._action_queue = nil
  end
end
L5_1._dispose_action_queue = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    A0_2._is_wait_start_doing_action = true
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._do_start_action
  L1_2(L2_2)
end
L5_1._start_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.is_doing
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._action_queue
      L2_2 = L1_2
      L1_2 = L1_2.start_do_action
      L1_2(L2_2)
    end
  end
  A0_2._is_wait_start_doing_action = false
end
L5_1._do_start_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._action_queue
  L2_2 = L1_2
  L1_2 = L1_2.add_action
  L3_2 = G
  L3_2 = L3_2.ChallengeActionUtils
  L3_2 = L3_2.create_immediate_action
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_state_node
    L2_3 = L1_1.Story
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_prefab_switcher
    L1_3 = L0_3
    L0_3 = L0_3.SwitchState
    L2_3 = "PageFadeIn"
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.btn_round_finish
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.story_btn_skip
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_first_open_page
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._action_queue
  L2_2 = L1_2
  L1_2 = L1_2.add_action
  L3_2 = G
  L3_2 = L3_2.ChallengeActionUtils
  L3_2 = L3_2.create_anim_action
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_bg
  L5_2 = "ClockParkGamePlayPageFirstOpen_Fadein"
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L1_1.SelectStartChapter
  if L1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.ChallengeActionUtils
    L2_2 = L2_2.create_dialog_action
    L3_2 = "Ui.ActivityClockPark.InSideGame.StoryLine.ChooseChapter.ActivityClockParkStoryLineChooseChapterDialog"
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_sysc_load
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.add_action
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.add_action
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_anim_action
  L5_2 = A0_2._binder
  L5_2 = L5_2.anim_bg
  L6_2 = "ClockParkGamePlayPageFirstOpen_Fadeout"
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.add_action
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_immediate_action
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_state_node
    L2_3 = L0_1.ClockParkInstance
    L2_3 = L2_3.CurGameStateEnum
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_first_open_page
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_1.SelectStartChapter
  if L1_2 ~= L2_2 then
    L2_2 = L1_1.Story
    if L1_2 ~= L2_2 then
      L2_2 = A0_2._action_queue
      L3_2 = L2_2
      L2_2 = L2_2.add_action
      L4_2 = G
      L4_2 = L4_2.ChallengeActionUtils
      L4_2 = L4_2.create_immediate_action
      function L5_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._binder
        L0_3 = L0_3.panel_chapter_progress
        L1_3 = L0_3
        L0_3 = L0_3.safe_set_active
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.panel_dice_choose
        L1_3 = L0_3
        L0_3 = L0_3.set_dice_panel_visible
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.panel_merge_attribute_progress
        L1_3 = L0_3
        L0_3 = L0_3.safe_set_active
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.panel_endless
        L1_3 = L0_3
        L0_3 = L0_3.safe_set_active
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.btn_round_finish
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetActive
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = A0_2._action_queue
      L3_2 = L2_2
      L2_2 = L2_2.add_action
      L4_2 = G
      L4_2 = L4_2.ChallengeActionUtils
      L4_2 = L4_2.create_anim_action
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_bg
      L6_2 = "ClockParkGamePlayPageBack_Fadein"
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._start_action
  L2_2(L3_2)
end
L5_1._show_page_setup_view_action = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.story_node_first_open
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.story_text_first_open_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L0_1.ClockParkInstance
    L4_2 = L4_2.ScriptInfo
    L4_2 = L4_2.DataRef
    L4_2 = L4_2.Row
    L4_2 = L4_2.ScriptTitle
    L2_2(L3_2, L4_2)
  end
end
L5_1._show_first_open_page = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_state_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_state_panel
    L1_2 = L1_2.get_exit_action
    if L1_2 ~= nil then
      L1_2 = G
      L1_2 = L1_2.ChallengeActionUtils
      L1_2 = L1_2.append_actions
      L2_2 = A0_2._action_queue
      L3_2 = A0_2._cur_state_panel
      L4_2 = L3_2
      L3_2 = L3_2.get_exit_action
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2._start_action
      L1_2(L2_2)
    end
  end
end
L5_1._show_cur_state_exit_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ImmediateAction
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_cur_state
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.force_set_first_navigation_target
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._action_queue
  L3_2 = L2_2
  L2_2 = L2_2.add_action
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._start_action
  L2_2(L3_2)
end
L5_1._show_cur_state_refresh_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_state_panel
  L3_2 = L0_1.ClockParkInstance
  L3_2 = L3_2.CurGameStateEnum
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.get_enter_action
    if L2_2 ~= nil then
      L2_2 = G
      L2_2 = L2_2.ChallengeActionUtils
      L2_2 = L2_2.append_actions
      L3_2 = A0_2._action_queue
      L5_2 = L1_2
      L4_2 = L1_2.get_enter_action
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L3_2 = A0_2
      L2_2 = A0_2._start_action
      L2_2(L3_2)
    end
  end
end
L5_1._show_cur_state_enter_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L3_2 = A0_2
  L2_2 = A0_2._refresh_state_node
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._panel_control
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
  L2_2 = A0_2._cur_state_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_state_panel
    L2_2 = L2_2.on_exit_state
    if L2_2 ~= nil then
      L2_2 = A0_2._cur_state_panel
      L3_2 = L2_2
      L2_2 = L2_2.on_exit_state
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_state_panel
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._cur_state_panel = L2_2
  L2_2 = A0_2._cur_state_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_state_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
  end
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.IsInEndless
  if L2_2 then
    L2_2 = L1_1.Story
    if L1_2 ~= L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_endless
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_gamepad_short_cut
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_trigger_tutorial
  L2_2(L3_2)
end
L5_1._refresh_cur_state = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1.Story
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_prefab_switcher
    L3_2 = L2_2
    L2_2 = L2_2.SwitchState
    L4_2 = "story"
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_1.Check
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.mono_prefab_switcher
      L3_2 = L2_2
      L2_2 = L2_2.SwitchState
      L4_2 = "check"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.mono_prefab_switcher
      L3_2 = L2_2
      L2_2 = L2_2.SwitchState
      L4_2 = "event"
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = L0_1.ClockParkInstance
  L3_2 = L2_2
  L2_2 = L2_2.IsShowDicePlacement
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_dice_choose
  L4_2 = L3_2
  L3_2 = L3_2.set_dice_panel_visible
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_hardcore
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_card
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_attribute
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L0_1.ClockParkInstance
  L6_2 = L5_2
  L5_2 = L5_2.IsShowAttributeInfo
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L5_1._refresh_state_node = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = L1_1.SelectStartChapter
  if A1_2 == L2_2 then
    L2_2 = A0_2._panel_select_chapter_state
    return L2_2
  else
    L2_2 = L1_1.BranchSelect
    if A1_2 == L2_2 then
      L2_2 = A0_2._panel_branch_select_state
      return L2_2
    else
      L2_2 = L1_1.RandomEvent
      if A1_2 == L2_2 then
        L2_2 = A0_2._panel_random_event
        return L2_2
      else
        L2_2 = L1_1.Story
        if A1_2 == L2_2 then
          L2_2 = A0_2._panel_story
          return L2_2
        else
          L2_2 = L1_1.Check
          if A1_2 == L2_2 then
            L2_2 = A0_2._panel_check
            return L2_2
          else
            L2_2 = L1_1.MovieGame
            if A1_2 == L2_2 then
              L2_2 = A0_2._panel_little_game
              return L2_2
            else
              L2_2 = L1_1.SlotMachine
              if A1_2 == L2_2 then
                L2_2 = A0_2._panel_slot_machine
                return L2_2
              end
            end
          end
        end
      end
    end
  end
end
L5_1._get_state_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    A0_2._wait_return_top_refresh = true
    return
  end
  A0_2._wait_return_top_refresh = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_on_going
  L1_2(L2_2)
end
L5_1._on_clock_park_on_going_update = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._show_cur_state_exit_action
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_cur_state_refresh_action
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_cur_state_enter_action
  L1_2(L2_2)
end
L5_1._refresh_on_going = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._wait_return_top_refresh
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_on_going
    L1_2(L2_2)
    A0_2._wait_return_top_refresh = false
  end
  L1_2 = A0_2._is_wait_start_doing_action
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._do_start_action
    L1_2(L2_2)
  end
end
L5_1._on_return_to_top = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._dispose_action_queue
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_exit_after_transition
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.IsInEndless
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.ActivityClockPark.InSideGame.Endless.ActivityClockParkEndlessResultDialog"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.IsFailed
    if L2_2 then
      L2_2 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkFailResultDialog"
      if L2_2 then
        goto lbl_25
      end
    end
    L2_2 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkResultDialog"
    ::lbl_25::
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L5_1._on_game_quit = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.LHJHKKFHMBK
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.ClockParkInstance
  L3_2 = L2_2
  L2_2 = L2_2.QuitCurGame
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L5_1._on_confirm_quit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkQuitConfirmDialog"
  L3_2 = A0_2._on_confirm_quit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_btn_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L5_1.exit_gameplay_page = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L6_2 = A0_2
  L5_2 = A0_2.get_first_selected_object
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L5_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L5_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_control
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L5_1.get_first_selected_object = L6_1
return L5_1
