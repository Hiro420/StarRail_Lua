local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherMaze.Panels.AetherAdventureTeamMemberListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherMaze.Panels.AetherAdventureWeakPointListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherMaze.Panels.AetherAdventureNpcMonsterInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherMaze.AetherDivideMazeVisitor"
L0_1(L1_1)
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
L1_1 = "Ui.Maze.MazeMechanismBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismBarPanelBinder"
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
L1_1 = "Ui.Maze.MissionTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MissionTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismHintInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismHintInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideMazeMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
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
  L3_2 = L3_2.UIMazeTriggerBattle
  L4_2 = L0_1._on_ui_maze_trigger_battle
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
  L3_2 = L3_2.UIShowMechanismHintInfo
  L4_2 = L0_1._on_ui_show_mechanism_hint_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritGetInfo
  L4_2 = A0_2._on_data_ready
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 102
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mission_panel
  L1_2(L2_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeTargetPanel
  L4_2 = G
  L4_2 = L4_2.MazeTargetPanelBinder
  L5_2 = nil
  L6_2 = G
  L6_2 = L6_2.AetherAdventureNpcMonsterInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
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
  A0_2._history_active = true
  L2_2 = A0_2
  L1_2 = A0_2._on_load_aether
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.HudTemplatePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._hud_template = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_hud_template
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mission_panel
  if L1_2 == nil then
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
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mission
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._mission_panel
    L2_2 = L1_2
    L1_2 = L1_2.disable_mission_click
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurAetherDivideMainMissionData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = A0_2._mission_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_view_active_by_scale
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._mission_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_view_active_by_scale
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.SetTrackingMission
  L4_2 = L1_2.ID
  L2_2(L3_2, L4_2)
end
L0_1._refresh_mission_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._maze_left_top_btnPanel
  L2_2 = L1_2
  L1_2 = L1_2.on_top_page
  L1_2(L2_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_return_to_top_aether
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == false then
    L2_2 = A0_2._history_active
    if L2_2 ~= false then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIStopWayPointAnim
      L2_2(L3_2)
    end
  end
  A0_2._history_active = A1_2
end
L0_1._on_view_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_aether
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Maze.MazeEnCounterHintPageForAD"
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
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.enable_async_instantiate = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_ui_maze_trigger_battle = L2_1
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
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._mechanism_hint_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.show_hint_info
  L4_2 = A1_2.TextContent
  L5_2 = A1_2.Visible
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_ui_show_mechanism_hint_info = L2_1
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
  local L1_2, L2_2
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._on_data_ready = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherAdventureTeamMemberListPanel
  L4_2 = G
  L4_2 = L4_2.AetherAdventureTeamMemberListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._teammember_list_panel = L1_2
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_member_list
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
    local L0_3, L1_3, L2_3
    L0_3 = L1_1.GymData
    L0_3 = L0_3.CurGymDataItem
    if L0_3 == nil then
      return
    end
    L1_3 = G
    L1_3 = L1_3.UIManager
    L1_3 = L1_3.load_and_async_show
    L2_3 = "Ui.AetherDivide.AetherMaze.AetherDivideMazeExitDialog"
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.New
  L2_2 = G
  L2_2 = L2_2.AetherDivideMazeVisitor
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._accept_visitor
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_load_aether = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_view_aether = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._on_return_to_top_aether = L2_1
return L0_1
