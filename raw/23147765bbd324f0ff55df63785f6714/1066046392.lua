local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.ChallengeEventMission.ChallengeEventMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.ChallengeEventMission.ChallengeEventMissionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTalkBtnsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTalkBtnsPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTeamMemberListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTeamMemberListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuffListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuffListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.MazeTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.MazeTargetPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMapPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMapPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeLeftTopBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeHudFuncEntrancePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeHudFuncEntrancePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideHintBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideHintBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.NetStatus.NetStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.NetStatus.NetStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.EditVirtualTeamPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismHintInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismHintInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MissionTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MissionTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeLeftTopBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeLeftTopBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonExitPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayGo.PlayGoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayGo.PlayGoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Maze.RogueEndlessMazeMainPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Maze.RogueEndlessStatisticsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Maze.RogueEndlessStatisticsPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.RogueMazeMainCommonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.Components.ChessRogueMazeHUDInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMapPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._is_hide_cursor = true
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._during_finish_rogue = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEntered
  L4_2 = L0_1._on_adventure_phase_entered
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = L0_1._on_adventure_phase_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeTriggerBattlePosture
  L4_2 = L0_1._on_show_posture_type_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMazeTriggerBattle
  L4_2 = L0_1._on_ui_maze_trigger_battle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuitRogue
  L4_2 = L0_1._on_rogue_quit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueSeasonFinish
  L4_2 = L0_1._on_rogue_season_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowRogueMenuPage
  L4_2 = L0_1._on_show_rogue_menu_page
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 104
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AdventureMissionPanel
  L4_2 = G
  L4_2 = L4_2.AdventureMissionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_panel = L1_2
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.customize_click_callback
  L3_2 = A0_2._display_disable_hint_dialog
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChallengeEventMissionPanel
  L4_2 = G
  L4_2 = L4_2.ChallengeEventMissionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._challenge_event_panel = L1_2
  L1_2 = A0_2._challenge_event_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_challenge_event_mission
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_event_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_show_mission_component_callback
  L3_2 = A0_2
  L4_2 = A0_2._set_mission_component_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AdventureTeamMemberListPanel
  L4_2 = G
  L4_2 = L4_2.AdventureTeamMemberListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._teammember_list_panel = L1_2
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_member_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeBuffListPanel
  L4_2 = G
  L4_2 = L4_2.MazeBuffListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._maze_buff_list_panel = L1_2
  L1_2 = A0_2._maze_buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_list_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeTargetPanel
  L4_2 = G
  L4_2 = L4_2.MazeTargetPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._maze_target_panel = L1_2
  L1_2 = A0_2._maze_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeMapPanel
  L4_2 = G
  L4_2 = L4_2.MazeMapPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._maze_map_panel = L1_2
  L1_2 = A0_2._maze_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_map
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.EditVirtualTeamPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._edit_virtual_team_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeHudFuncEntrancePanel
  L4_2 = G
  L4_2 = L4_2.MazeHudFuncEntrancePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._hud_func_entrance_panel = L1_2
  L1_2 = A0_2._hud_func_entrance_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hud_func_entrance
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AdventureTalkBtnsPanel
  L4_2 = G
  L4_2 = L4_2.AdventureTalkBtnsPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._talk_btns_panel = L1_2
  L1_2 = A0_2._talk_btns_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_talk_btns
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsPSPlatform
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.PlayGoPanel
    L4_2 = G
    L4_2 = L4_2.PlayGoPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._playgo_panel = L1_2
    L1_2 = A0_2._playgo_panel
    L2_2 = L1_2
    L1_2 = L1_2.async_bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_netstatus_panel
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NetStatusPanel
  L4_2 = G
  L4_2 = L4_2.NetStatusPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._netstatus_panel = L1_2
  L1_2 = A0_2._netstatus_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_netstatus_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GuideHintBtnPanel
  L4_2 = G
  L4_2 = L4_2.GuideHintBtnPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._guide_hint_panel = L1_2
  L1_2 = A0_2._guide_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tutorial_guide_hint
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MissionTalkPanel
  L4_2 = G
  L4_2 = L4_2.MissionTalkPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_talk_panel = L1_2
  L1_2 = A0_2._mission_talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission_talk_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeMechanismHintInfoPanel
  L4_2 = G
  L4_2 = L4_2.MazeMechanismHintInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mechanism_hint_info_panel = L1_2
  L1_2 = A0_2._mechanism_hint_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_maze_mechanism_hint
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeMonsterTrackPanel
  L4_2 = G
  L4_2 = L4_2.MazeMonsterTrackPanelBinder
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_mission
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._monster_track_panel = L1_2
  L1_2 = A0_2._monster_track_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_track
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInRogueEndlessMode
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel_without_binder
    L3_2 = G
    L3_2 = L3_2.RogueEndlessMazeMainPanel
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._endless_maze_main_panel = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueMazeHUDInfoPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueMazeHUDInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._chess_rogue_hud_info_panel = L1_2
  L1_2 = A0_2._chess_rogue_hud_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.chess_rogue_hud_root
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.IsInEndlessCosmicFragmentArea
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.rogue_endless_load_meta
    L1_2 = L1_2.Prefab
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = L1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_rogue_endless_cosmic
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.node_rogue_endless_statistics = L2_2
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.RogueEndlessStatisticsPanel
    L5_2 = G
    L5_2 = L5_2.RogueEndlessStatisticsPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._rogue_endless_statistics_panel = L2_2
    L2_2 = A0_2._rogue_endless_statistics_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2.node_rogue_endless_statistics
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_rogue_endless_cosmic
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._rogue_endless_statistics_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
    L2_2 = A0_2._mission_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_view_active_by_scale
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_load_rogue_map
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeLeftTopBtnPanel
  L4_2 = G
  L4_2 = L4_2.MazeLeftTopBtnPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._maze_left_top_btnPanel = L1_2
  L1_2 = A0_2._maze_left_top_btnPanel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_left_top_btn
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._maze_left_top_btnPanel
  L2_2 = L1_2
  L1_2 = L1_2.setup_leave
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._maze_left_top_btnPanel
  L2_2 = L1_2
  L1_2 = L1_2.custom_leave_callback
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_leave
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._maze_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.customize_click_callback
  function L3_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.RogueUtils
    L0_3 = L0_3.show_rogue_map_page
    L0_3()
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_load_rogue_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.RogueMazeMainCommonPanel
  L1_2(L2_2, L3_2)
end
L0_1._on_load_rogue_map = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_rogue
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_rogue
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2.transform
  L5_2 = "RogueBuffBtn"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = L2_2
  L6_2 = A0_2._on_buff_btn
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_load_rogue_btns = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._maze_buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._maze_buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._maze_left_top_btnPanel
  L2_2 = L1_2
  L1_2 = L1_2.on_top_page
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIToastMainPage
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.enable_async_instantiate = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._rogue_endless_statistics_panel
  if L2_2 then
    L2_2 = A0_2._rogue_endless_statistics_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    if A1_2 then
      L2_2 = A0_2._rogue_endless_statistics_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2._mission_panel
    L3_2 = L2_2
    L2_2 = L2_2.hide
    L4_2 = not A1_2
    L2_2(L3_2, L4_2)
    L2_2 = not A1_2
    A0_2._hide_mission_panel = L2_2
    if A1_2 then
      L2_2 = A0_2._mission_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L2_2(L3_2)
    end
  end
end
L0_1._update_mission_panel_view_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_leftup_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._mission_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
  end
end
L0_1._update_map_panel_view_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_action_area
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.panel_joy_stick_active
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_joy_stick
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_member_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_right_top_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if not A1_2 then
    L2_2 = A0_2._maze_buff_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_panel_inactive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._maze_buff_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._maze_buff_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_panel_inactive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._maze_buff_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
  end
end
L0_1._update_right_panel_view_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkHint
  L2_2 = "UIText_FuncLock_MapFuncDisable"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  L1_2(L2_2, L3_2)
end
L0_1._display_disable_hint_dialog = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._mission_panel
  L4_2 = L3_2
  L3_2 = L3_2.disable_setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil and A2_2 == true then
    return
  end
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.get_map_waypoint_node
  L3_2 = L3_2(L4_2)
  A0_2.node_map_target_icon = L3_2
  L3_2 = A0_2.node_map_target_icon
  if L3_2 ~= nil then
    L3_2 = A0_2.node_map_target_icon
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not A1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ChallengeEventHideWayPoint
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._set_mission_component_hide = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_adventure_phase_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Maze.MazeEnCounterHintPage"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._EnCounterHintPage = L2_2
end
L0_1._on_show_posture_type_ui = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_ui_maze_trigger_battle = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._finish_rogue_season
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_rogue_season_finish = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_buff_btn
  L1_2(L2_2)
end
L0_1._on_show_rogue_menu_page = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_buff_list_page
  L1_2()
end
L0_1._on_buff_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.RogueExplore
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.CanGotoPhonePage
  L2_2 = L2_2()
  if L2_2 == false then
    return
  end
  L2_2 = G
  L2_2 = L2_2.RogueUtils
  L2_2 = L2_2.is_rogue_newbie
  L2_2 = L2_2()
  if L2_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2._show_newbie_exit_page
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.IsInRogueEndlessMode
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_rogue_endless_exit_page
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_rogue_exit_page
  L2_2(L3_2)
end
L0_1._on_btn_leave = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.CommonExitPage
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_desc
  L4_2 = "UIText_Rogue_Exit_Explore_Desc3"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_btn1
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L1_3 = L0_3
    L0_3 = L0_3.LeaveRogue
    L0_3(L1_3)
  end
  L5_2 = "UIText_Rogue_Exit_Explore_Comfirm3"
  L6_2 = "UIText_Rogue_Exit_Explore_Desc_Tip3"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_btn2
  L4_2 = nil
  L5_2 = "UIText_Rogue_Exit_Explore_Cancel3"
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._show_newbie_exit_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.CommonExitPage
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_desc
  L4_2 = "UIText_Rogue_Exit_Explore_Desc1"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_btn1
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L1_3 = L0_3
    L0_3 = L0_3.LeaveRogue
    L0_3(L1_3)
  end
  L5_2 = "UIText_Common_Confirm"
  L6_2 = "UIText_Rogue_Exit_Explore_Desc_Tip1"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_btn2
  L4_2 = nil
  L5_2 = "UIText_Common_Cancel"
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._show_aeon_exit_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.CommonExitPage
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_desc
  L4_2 = "UIText_Rogue_Exit_Explore_Desc"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_btn1
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L1_3 = L0_3
    L0_3 = L0_3.LeaveRogue
    L0_3(L1_3)
  end
  L5_2 = "UIText_Rogue_Btn_Leave"
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_btn2
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_1
    L1_3 = L0_3
    L0_3 = L0_3.GetRogueData
    L0_3 = L0_3(L1_3)
    L0_3 = L0_3.CurrentStatus
    L0_3 = #L0_3
    L1_3 = G
    L1_3 = L1_3.UtilEngineWrap
    L1_3 = L1_3.ConvCsEnumToNum
    L2_3 = CS
    L2_3 = L2_3.MLCDPMIBLBK
    L2_3 = L2_3.MIKAMDENMMJ
    L1_3 = L1_3(L2_3)
    if L0_3 == L1_3 then
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.LeaveRogue
      L1_3(L2_3)
    else
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.QuitCurrentRogue
      L1_3(L2_3)
    end
  end
  L5_2 = "UIText_Rogue_Btn_Quit"
  L6_2 = "UIText_Rogue_Exit_Explore_Desc_Tip_6"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._show_rogue_exit_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._endless_maze_main_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_exit_page
  L1_2(L2_2)
end
L0_1._show_rogue_endless_exit_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.LeaveRogue
  L1_2(L2_2)
end
L0_1._on_rogue_quit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._rogue_season_finish_info = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AdventureModule
  L2_2 = L2_2.MapDef
  L2_2 = L2_2.CurrentGameMode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.RogueExplore
  if L2_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._finish_season_rogue_explore
    L3_2(L4_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GameModeType
    L3_2 = L3_2.RogueChallenge
    if L2_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._finish_season_rogue_challenge
      L3_2(L4_2)
    end
  end
end
L0_1._finish_rogue_season = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.CurrentStatus
  L1_2 = #L1_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.ConvCsEnumToNum
  L3_2 = CS
  L3_2 = L3_2.MLCDPMIBLBK
  L3_2 = L3_2.MIKAMDENMMJ
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L2_2 = A0_2._rogue_season_finish_info
    L3_2 = L2_2
    L2_2 = L2_2.QuitRogueMap
    L2_2(L3_2)
  else
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.LeaveRogue
    L2_2(L3_2)
  end
  return
end
L0_1._finish_season_rogue_explore = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_season_finish_info
  L2_2 = L1_2
  L1_2 = L1_2.QuitRogueMap
  L1_2(L2_2)
end
L0_1._finish_season_rogue_challenge = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_season_finish_info
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_season_finish_info
    L2_2 = L1_2
    L1_2 = L1_2.QuitRogueMap
    L1_2(L2_2)
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end
L0_1._check_season_finish_and_quit_map = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ProgressInfo
    if L2_2 ~= nil then
      L2_2 = L1_2.MapData
      if L2_2 ~= nil then
        goto lbl_18
      end
    end
  end
  do return end
  ::lbl_18::
  L2_2 = L1_2.ProgressInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetCurAreaData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.AreaProgressID
    if L3_2 == 0 then
      goto lbl_27
    end
  end
  do return end
  ::lbl_27::
  L3_2 = L1_2.MapData
  L4_2 = L3_2.MapID
  L6_2 = L3_2
  L5_2 = L3_2.GetRogueSiteData
  L7_2 = L3_2.CurSiteID
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 ~= nil then
    L7_2 = L5_2
    L6_2 = L5_2.HasNextSite
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = L5_2.RoomStatus
      L6_2 = #L6_2
      L7_2 = G
      L7_2 = L7_2.UtilEngineWrap
      L7_2 = L7_2.ConvCsEnumToNum
      L8_2 = CS
      L8_2 = L8_2.NHCLJLJBNAC
      L8_2 = L8_2.MIKAMDENMMJ
      L7_2 = L7_2(L8_2)
      if L6_2 == L7_2 then
        goto lbl_50
      end
    end
  end
  do return end
  ::lbl_50::
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ConstValueClientExcelTable
  L6_2 = L6_2.GetData
  L7_2 = "Rogue_Alpha_MapID"
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.Value
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.ConstValueClientExcelTable
  L7_2 = L7_2.GetData
  L8_2 = "Rogue_Beta_MapID"
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.Value
  if L6_2 ~= nil then
    L8_2 = L6_2.UintValue
    if L8_2 == L4_2 then
      L9_2 = A0_2
      L8_2 = A0_2._check_mission_unknow_to_quit_rogue
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.ConstValueClientExcelTable
      L10_2 = L10_2.GetData
      L11_2 = "Rogue_Alpha_LastSite_SubMissionIDList"
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.Value
      L10_2 = L10_2.ArrayValue
      L8_2(L9_2, L10_2)
  end
  elseif L7_2 ~= nil then
    L8_2 = L7_2.UintValue
    if L8_2 == L4_2 then
      L9_2 = A0_2
      L8_2 = A0_2._check_mission_unknow_to_quit_rogue
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.ConstValueClientExcelTable
      L10_2 = L10_2.GetData
      L11_2 = "Rogue_Beta_LastSite_SubMissionIDList"
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.Value
      L10_2 = L10_2.ArrayValue
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._on_adventure_phase_entered = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = L2_2
    L7_2 = L2_2.Add
    L9_2 = A1_2[L6_2]
    L9_2 = L9_2.UintValue
    L7_2(L8_2, L9_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionDataWithPromise
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaActionOneParam
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._is_all_sub_mission_unknow
    L3_3 = A0_3
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.ConfirmDialogUtil
      L1_3 = L1_3.ShowConfirmDialog
      function L2_3(A0_4)
        local L1_4, L2_4
        L1_4 = CS
        L1_4 = L1_4.RPG
        L1_4 = L1_4.Client
        L1_4 = L1_4.GlobalVars
        L1_4 = L1_4.s_ModuleManager
        L1_4 = L1_4.RogueModule
        L2_4 = L1_4
        L1_4 = L1_4.QuitRogue
        L1_4(L2_4)
      end
      L1_3 = L1_3(L2_3)
      L2_3 = DialogBtnMode
      L2_3 = L2_3.eOk
      L1_3.Mode = L2_3
      L1_3.IsRespEsc = false
      L3_3 = L1_3
      L2_3 = L1_3.GetComponentContent
      L2_3 = L2_3(L3_3)
      L3_3 = L2_3
      L2_3 = L2_3.SafeSetTextID
      L4_3 = "UIText_Rogue_ResetTips"
      L2_3(L3_3, L4_3)
    end
  end
  L3_2(L4_2, L5_2)
end
L0_1._check_mission_unknow_to_quit_rogue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L6_2 = L6_2.IsUnknow
    if L6_2 == false then
      L6_2 = false
      return L6_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._is_all_sub_mission_unknow = L2_1
return L0_1
