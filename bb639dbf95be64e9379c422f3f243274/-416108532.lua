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
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.ChessRogueExitPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayGo.PlayGoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayGo.PlayGoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.RogueMazeMainCommonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.Components.ChessRogueMazeHUDInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMazeMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChessRogueLayerFinishCheck
  L4_2 = L0_1._on_check_rogue_layer_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastQueueEmpty
  L4_2 = L0_1._try_do_rogue_layer_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.QuitChessRogue
  L4_2 = L0_1._on_chess_rogue_quit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayScreenTransfer
  L4_2 = L0_1._on_play_screen_transfer
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
  L1_2 = L1_2.set_block_hud_go_to_type
  L3_2 = G
  L3_2 = L3_2.ChessRogueUtils
  L3_2 = L3_2.get_block_hud_go_to_type
  L3_2, L4_2, L5_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2)
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
  L3_2 = L3_2.MazeMechanismBarPanel
  L4_2 = G
  L4_2 = L4_2.MazeMechanismBarPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mechanism_bar_panel = L1_2
  L1_2 = A0_2._mechanism_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mechanism_bar
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
  L2_2 = A0_2
  L1_2 = A0_2._on_load_rogue_map
  L1_2(L2_2)
end
L0_1._on_load = L2_1
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
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._maze_buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._hide_mission_panel
  if not L1_2 then
    L1_2 = A0_2._mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.hide
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._hud_func_entrance_panel
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
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Mode
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ScreenTransferMode
    L3_2 = L3_2.SwitchIn
    if L2_2 == L3_2 then
      L2_2 = L1_1
      L3_2 = L2_2
      L2_2 = L2_2.TryShowAreaNameAfterTelepot
      L2_2 = L2_2(L3_2)
      if L2_2 == true then
        L2_2 = G
        L2_2 = L2_2.NotifyManager
        L2_2 = L2_2.notify
        L3_2 = G
        L3_2 = L3_2.CS
        L3_2 = L3_2.NotifyType
        L3_2 = L3_2.UIToastMainPage
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_play_screen_transfer = L2_1
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
  L2_2 = L2_2.ChessRogue
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
  L2_2 = L2_2.ChessRogueExitPage
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
    L0_3 = L0_3.LeaveChessRogueAndSave
    L0_3(L1_3)
  end
  L5_2 = "UIText_Rogue_Btn_Leave"
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_btn2
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_1.ChessRogueData
    L0_3 = L0_3.IsFinished
    if L0_3 then
      L0_3 = L1_1
      L1_3 = L0_3
      L0_3 = L0_3.LeaveChessRogueAndSave
      L0_3(L1_3)
    else
      L0_3 = L1_1
      L1_3 = L0_3
      L0_3 = L0_3.LeaveChessRogue
      L0_3(L1_3)
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
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.LeaveChessRogue
  L1_2(L2_2)
end
L0_1._on_chess_rogue_quit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._need_show_rogue_layer_finish = true
  L2_2 = A0_2
  L1_2 = A0_2._try_do_rogue_layer_finish
  L1_2(L2_2)
end
L0_1._on_check_rogue_layer_finish = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._need_show_rogue_layer_finish
  if L1_2 ~= true then
    return
  end
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.has_toast_in_queue
  L3_2 = "FullScreenToast"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  A0_2._need_show_rogue_layer_finish = nil
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ChessRogueLayerFinishDoFlow
  L1_2(L2_2)
end
L0_1._try_do_rogue_layer_finish = L2_1
return L0_1
