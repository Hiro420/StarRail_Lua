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
L1_1 = "Ui.Adventure.ChallengeEventMission.ChallengeEventMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.ChallengeEventMission.ChallengeEventMissionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMapPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMapPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeLeftTopBtnPanel"
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
L1_1 = "Ui.Maze.MazeTarget.MazeTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.MazeTargetPanelBinder"
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
L1_1 = "Ui.Maze.MazeBuffListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuffListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayGo.PlayGoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayGo.PlayGoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetsInMazePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
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
  L3_2 = L3_2.UIMissionToastDialogShowed
  L4_2 = L0_1._on_hide_main_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMissionToastDialogClosed
  L4_2 = L0_1._on_recover_main_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITreasureChallengeMazeTargetSuccess
  L4_2 = L0_1._on_challenge_target_progress_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITreasureChallengeMazeTargetFail
  L4_2 = L0_1._on_challenge_target_progress_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITreasureChallengeMazeTargetProgressStep
  L4_2 = L0_1._on_challenge_target_progress_change
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 103
  L1_2(L2_2, L3_2)
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
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.challenge_target_prefab_loader
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.challenge_target_prefab_loader
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.TreasureChallengeTargetsInMazePanel
  L5_2 = G
  L5_2 = L5_2.TreasureChallengeTargetsInMazePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._challenge_targets_panel = L2_2
  L2_2 = A0_2._challenge_targets_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._challenge_targets_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_anim_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_challenge_targets_panel_show_and_hide
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MazeMapPanel
  L5_2 = G
  L5_2 = L5_2.MazeMapPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._maze_map_panel = L2_2
  L2_2 = A0_2._maze_map_panel
  L3_2 = L2_2
  L2_2 = L2_2.async_bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_map
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MazeLeftTopBtnPanel
  L5_2 = G
  L5_2 = L5_2.MazeLeftTopBtnPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._maze_left_top_btnPanel = L2_2
  L2_2 = A0_2._maze_left_top_btnPanel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_left_top_btn
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._maze_left_top_btnPanel
  L3_2 = L2_2
  L2_2 = L2_2.setup_leave
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._maze_left_top_btnPanel
  L3_2 = L2_2
  L2_2 = L2_2.custom_leave_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_exit_dialog
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MazeTargetPanel
  L5_2 = G
  L5_2 = L5_2.MazeTargetPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._maze_target_panel = L2_2
  L2_2 = A0_2._maze_target_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel_without_binder
  L4_2 = G
  L4_2 = L4_2.EditVirtualTeamPanel
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._edit_virtual_team_panel = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MazeBuffListPanel
  L5_2 = G
  L5_2 = L5_2.MazeBuffListPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._maze_buff_list_panel = L2_2
  L2_2 = A0_2._maze_buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.buff_list_panel_root
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MazeHudFuncEntrancePanel
  L5_2 = G
  L5_2 = L5_2.MazeHudFuncEntrancePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._hud_func_entrance_panel = L2_2
  L2_2 = A0_2._hud_func_entrance_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hud_func_entrance
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AppUtils
  L2_2 = L2_2.IsPSPlatform
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.PlayGoPanel
    L5_2 = G
    L5_2 = L5_2.PlayGoPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._playgo_panel = L2_2
    L2_2 = A0_2._playgo_panel
    L3_2 = L2_2
    L2_2 = L2_2.async_bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_netstatus_panel
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.NetStatusPanel
  L5_2 = G
  L5_2 = L5_2.NetStatusPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._netstatus_panel = L2_2
  L2_2 = A0_2._netstatus_panel
  L3_2 = L2_2
  L2_2 = L2_2.async_bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_netstatus_panel
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.AdventureTalkBtnsPanel
  L5_2 = G
  L5_2 = L5_2.AdventureTalkBtnsPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._talk_btns_panel = L2_2
  L2_2 = A0_2._talk_btns_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_talk_btns
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.GuideHintBtnPanel
  L5_2 = G
  L5_2 = L5_2.GuideHintBtnPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._guide_hint_panel = L2_2
  L2_2 = A0_2._guide_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tutorial_guide_hint
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MissionTalkPanel
  L5_2 = G
  L5_2 = L5_2.MissionTalkPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._mission_talk_panel = L2_2
  L2_2 = A0_2._mission_talk_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mission_talk_panel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._mission_talk_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MazeMechanismHintInfoPanel
  L5_2 = G
  L5_2 = L5_2.MazeMechanismHintInfoPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._mechanism_hint_info_panel = L2_2
  L2_2 = A0_2._mechanism_hint_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_maze_mechanism_hint
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MazeMechanismBarPanel
  L5_2 = G
  L5_2 = L5_2.MazeMechanismBarPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._mechanism_bar_panel = L2_2
  L2_2 = A0_2._mechanism_bar_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mechanism_bar
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MazeMonsterTrackPanel
  L5_2 = G
  L5_2 = L5_2.MazeMonsterTrackPanelBinder
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_mission
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._monster_track_panel = L2_2
  L2_2 = A0_2._monster_track_panel
  L3_2 = L2_2
  L2_2 = L2_2.async_bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_monster_track
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel_without_binder
  L4_2 = G
  L4_2 = L4_2.HudTemplatePanel
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._hud_template = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_hud_template
  L2_2(L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.init_short_cut_hint
  L3_2 = 103
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Phone
  L4_2 = A0_2._maze_left_top_btnPanel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Mission
  L4_2 = A0_2._maze_left_top_btnPanel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Message
  L4_2 = A0_2._maze_left_top_btnPanel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Map
  L4_2 = A0_2._maze_map_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Guide
  L4_2 = A0_2._hud_func_entrance_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.QuickEntrance
  L4_2 = A0_2._hud_func_entrance_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Chat
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_chat
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.MissionTrace
  L4_2 = A0_2._mission_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Team
  L4_2 = A0_2._teammember_list_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Joystick
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_joy_stick
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Buff
  L4_2 = A0_2._maze_buff_list_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Attack
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_action_area
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Skill
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_action_area
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.Run
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_action_area
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._hud_template
  L2_2 = L1_2
  L1_2 = L1_2.set_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HudType
  L3_2 = L3_2.ActionNormal
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_action_area
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_hud_template = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
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
L0_1._on_adventure_phase_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._maze_left_top_btnPanel
  L2_2 = L1_2
  L1_2 = L1_2.on_top_page
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
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.play_fade_out_anim
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_hide_main_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.play_fade_in_anim
  L1_2(L2_2)
end
L0_1._on_recover_main_page = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._challenge_targets_panel
  L3_2 = L2_2
  L2_2 = L2_2.show_target_progress
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_challenge_target_progress_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_challenge_event_mission
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_challenge_targets_panel_show_and_hide = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.TreasureChallenge.TreasureChallengeExitDialog"
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_exit_dialog = L2_1
return L0_1
