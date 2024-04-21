local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingPuzzlePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingPauseDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingCountDownPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingIntegralPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingJoyStickPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingScoreContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingBossHPBarContainerPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingPuzzlePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.WolfBroShootingModule
L2_1 = "MakeFilmMainStart_FadeOut"
L3_1 = "MakeFilmMainStart_FadeOut2"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "WolfBroShootingEndLess_MAX_HP"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
L5_1 = {}
L5_1.Empty = 0
L5_1.Half = 1
L5_1.Full = 2
L6_1 = {}
L6_1.None = ""
L6_1.Ready = "State_Ready"
L6_1.NotReady = "State_NotReady"
L6_1.Active = "State_Actived"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.WolfBroShootingPuzzlePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._is_hide_cursor = true
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._inti_restart_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SwitchAdventureWaypointVisible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._reset_page_field
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._close_transition_ui
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_skill_energy
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_skill_btn_state
  L2_2(L3_2)
  L2_2 = A0_2._wolf_bro_shooting_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_rank_index_immediately
  L4_2 = 5
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._wolf_bro_shooting_count_down_panel
  L3_2 = L2_2
  L2_2 = L2_2.init_count_down
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingPauseGame
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hud_panel
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
  L2_2 = A0_2._mono_wolf_bro_custom_data
  L2_2 = L2_2.GunPlayPuzzleBoard
  L2_2 = L2_2.GunMode
  L3_2 = A0_2._mono_wolf_bro_custom_data
  L3_2 = L3_2.GunPlayPuzzleBoard
  L3_2 = L3_2.GunLevel
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MazePuzzleWolfGunPlayLevelExcelTable
  L4_2 = L4_2.GetData
  L5_2 = #L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_target_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2.TargetScore
  L5_2(L6_2, L7_2)
  if A1_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.animation_count_down
    L7_2 = L3_1
    L5_2(L6_2, L7_2)
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.animation_count_down
    L7_2 = L2_1
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._wolf_bro_shooting_integral_panel
  L6_2 = L5_2
  L5_2 = L5_2.inti_view
  L7_2 = A0_2._mono_wolf_bro_custom_data
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._mono_wolf_bro_custom_data
  L5_2 = L5_2.GunPlayPuzzleBoard
  L5_2 = L5_2.GunMode
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.GunPlayModeType
  L6_2 = L6_2.EndLess
  if L5_2 == L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_life
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2._get_life_state_list
    L8_2 = L4_1
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2.panel_life_list
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._inti_restart_view = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._previous_time = L1_2
  A0_2._is_skill_enable = false
  A0_2._is_in_bullet_time = false
  A0_2._is_need_restart = false
  A0_2._continue_time = 0
  L1_2 = L6_1.None
  A0_2._prev_skill_btn_state_trigger = L1_2
end
L0_1._reset_page_field = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
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
end
L0_1._close_transition_ui = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AdventureBlockInput
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shoot
  L4_2 = A0_2._on_btn_shoot_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skill
  L4_2 = A0_2._on_btn_skill_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pause
  L4_2 = A0_2._on_btn_pause_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WolfBroShootingCountDownPanel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingCountDownPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._wolf_bro_shooting_count_down_panel = L1_2
  L1_2 = A0_2._wolf_bro_shooting_count_down_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_count_down
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WolfBroShootingIntegralPanel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingIntegralPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._wolf_bro_shooting_integral_panel = L1_2
  L1_2 = A0_2._wolf_bro_shooting_integral_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_integral
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WolfBroShootingScoreContainerPanel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingScoreContainerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._wolf_bro_shooting_score_container_panel = L1_2
  L1_2 = A0_2._wolf_bro_shooting_score_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_score_container
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WolfBroShootingBossHPBarContainerPanel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingBossHPBarContainerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._wolf_bro_shooting_boss_hp_bar_container_panel = L1_2
  L1_2 = A0_2._wolf_bro_shooting_boss_hp_bar_container_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_boss_hp_container
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.WolfBroShootingJoyStickPanel
    L4_2 = G
    L4_2 = L4_2.WolfBroShootingJoyStickPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._wolf_bro_shooting_joy_stick_panel = L1_2
    L1_2 = A0_2._wolf_bro_shooting_joy_stick_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_joy_stick
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingCountdownChange
  L4_2 = A0_2._on_wolf_bro_shooting_count_down_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingScoreChange
  L4_2 = A0_2._on_wolf_bro_shooting_score_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingRankChange
  L4_2 = A0_2._on_wolf_bro_shooting_rank_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingSpChange
  L4_2 = A0_2._on_wolf_bro_shooting_sp_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingEnterBulletTime
  L4_2 = A0_2._on_wolf_bro_shooting_enter_bullet_time
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingLeaveBulletTime
  L4_2 = A0_2._on_wolf_bro_shooting_leave_bullet_time
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingSkillEnable
  L4_2 = A0_2._on_wolf_bro_shooting_skill_enable
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingSkillDisable
  L4_2 = A0_2._on_wolf_bro_shooting_skill_disable
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingSuccess
  L4_2 = A0_2._on_wolf_bro_shooting_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingShowScore
  L4_2 = A0_2._on_wolf_bro_shooting_show_score
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingEndLessHPChange
  L4_2 = A0_2._on_wolf_bro_shooting_hp_change
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
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingLifePanel"
  L6_2 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingLifePanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_life_list = L1_2
  L1_2 = A0_2.panel_life_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_life_list
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L1_2 = L1_2.GetLocalPlayer
  L1_2 = L1_2()
  L2_2 = L1_2.UnityGO
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoWolfBroCustomData
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mono_wolf_bro_custom_data = L2_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hud_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_start_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIWolfBroShootingPlayGame
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = "WolfGunPlay_GameStart"
  L1_2(L2_2)
end
L0_1._finish_cut_count_call_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIWolfBroShootingShootButtonDown
  L1_2(L2_2)
end
L0_1._on_btn_shoot_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_skill_enable
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._check_skill_button_enable
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIWolfBroShootingSkillButtonDown
      L1_2(L2_2)
      L1_2 = CS
      L1_2 = L1_2.UnityEngine
      L1_2 = L1_2.Time
      L1_2 = L1_2.time
      A0_2._previous_time = L1_2
    end
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "MazeText_MazePuzzle_WolfGunPlay_SkillUnavailable"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_skill_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIWolfBroShootingPauseGame
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingPauseDialog"
  L3_2 = A0_2
  L4_2 = A0_2._exit_wolf_bro_shooting_call_back
  L5_2 = A0_2._restart_wolf_bro_shooting_call_back
  L6_2 = A0_2._continue_wolf_bro_shooting_call_back
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_pause_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIWolfBroShootingExitGame
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit_wolf_bro_shooting_call_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._is_need_restart = true
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._restart_wolf_bro_shooting_call_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIWolfBroShootingPlayGame
  L1_2(L2_2)
end
L0_1._continue_wolf_bro_shooting_call_back = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._continue_time = A1_2
  L2_2 = A0_2._wolf_bro_shooting_count_down_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_count_down
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_wolf_bro_shooting_count_down_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._wolf_bro_shooting_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_wolf_bro_shooting_score_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._wolf_bro_shooting_integral_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_rank_index
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_wolf_bro_shooting_rank_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._set_skill_energy
  L4_2 = tonumber
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_wolf_bro_shooting_sp_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._is_in_bullet_time = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill_btn_state
  L1_2(L2_2)
end
L0_1._on_wolf_bro_shooting_enter_bullet_time = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._is_in_bullet_time = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill_btn_state
  L1_2(L2_2)
end
L0_1._on_wolf_bro_shooting_leave_bullet_time = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._is_skill_enable = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill_btn_state
  L1_2(L2_2)
end
L0_1._on_wolf_bro_shooting_skill_enable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._is_skill_enable = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill_btn_state
  L1_2(L2_2)
end
L0_1._on_wolf_bro_shooting_skill_disable = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingResultDialog"
  L4_2 = A0_2
  L5_2 = A0_2._exit_wolf_bro_shooting_call_back
  L6_2 = A0_2._restart_wolf_bro_shooting_call_back
  L7_2 = A1_2
  L8_2 = A0_2._mono_wolf_bro_custom_data
  L9_2 = A0_2._continue_time
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_wolf_bro_shooting_end = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._wolf_bro_shooting_score_container_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_wolf_bro_shooting_show_score = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_life_state_list
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.panel_life_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_wolf_bro_shooting_hp_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mono_wolf_bro_custom_data
  if L1_2 ~= nil then
    L1_2 = A0_2._is_in_bullet_time
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.UnityEngine
      L1_2 = L1_2.Time
      L1_2 = L1_2.time
      L2_2 = A0_2._previous_time
      L1_2 = L1_2 - L2_2
      L2_2 = A0_2._mono_wolf_bro_custom_data
      L2_2 = L2_2.skillCloseCD
      if L1_2 > L2_2 then
        L1_2 = true
        return L1_2
      end
    else
      L1_2 = CS
      L1_2 = L1_2.UnityEngine
      L1_2 = L1_2.Time
      L1_2 = L1_2.time
      L2_2 = A0_2._previous_time
      L1_2 = L1_2 - L2_2
      L2_2 = A0_2._mono_wolf_bro_custom_data
      L2_2 = L2_2.skillRestartCD
      if L1_2 > L2_2 then
        L1_2 = true
        return L1_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._check_skill_button_enable = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A1_2 / 2
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L5_1.Full
    L8_2(L9_2, L10_2)
  end
  L4_2 = math
  L4_2 = L4_2.fmod
  L5_2 = A1_2
  L6_2 = 2
  L4_2 = L4_2(L5_2, L6_2)
  if 0 < L4_2 then
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L2_2
    L7_2 = L5_1.Half
    L5_2(L6_2, L7_2)
  end
  L5_2 = L4_1
  L5_2 = L5_2 / 2
  L6_2 = #L2_2
  if L5_2 > L6_2 then
    L6_2 = #L2_2
    L6_2 = L6_2 + 1
    L7_2 = L5_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L12_2 = L5_1.Empty
      L10_2(L11_2, L12_2)
    end
  end
  return L2_2
end
L0_1._get_life_state_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_need_restart
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIWolfBroShootingReplayGame
    L1_2(L2_2)
  end
  L1_1.IsCanRestartGame = true
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SwitchAdventureWaypointVisible
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_in_bullet_time
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_change_skill_btn_state
    L3_2 = L6_1.Active
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._is_skill_enable
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_change_skill_btn_state
    L3_2 = L6_1.Ready
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_change_skill_btn_state
  L3_2 = L6_1.NotReady
  L1_2(L2_2, L3_2)
end
L0_1._refresh_skill_btn_state = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._prev_skill_btn_state_trigger
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_skill
  L3_2 = pairs
  L4_2 = L6_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.ResetTrigger
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  A0_2._prev_skill_btn_state_trigger = A1_2
  L4_2 = L2_2
  L3_2 = L2_2.SetTrigger
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._try_change_skill_btn_state = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.fill_progress_energy
  L3_2 = 1 - A1_2
  L2_2.fillAmount = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_energy_cursor
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = 0
  L5_2 = 0
  L6_2 = -360 * A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.eulerAngles = L3_2
end
L0_1._set_skill_energy = L7_1
return L0_1
