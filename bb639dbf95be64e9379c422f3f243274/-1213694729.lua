local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeMapNamePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMapNamePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.JoyStickPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeActionAreaPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeActionAreaPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.ChatHudPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.ChatHudPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeToastPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeToastPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMonsterTrackPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.HudWidget.PuzzleHudPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.HudWidget.PuzzleHudPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.HudTemplatePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MazeMainPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeMapNamePanel
  L4_2 = G
  L4_2 = L4_2.MazeMapNamePanelBinder
  L5_2 = "LeftUpInfo/AdeventureSpotPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_map_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "LeftUpInfo/AdventureMissionPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftUpInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_leftup_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftUpInfo/Map"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftUpInfo/FunctionBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_top_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftUpInfo/AdventureMissionPanel/AdventureMissionListNew"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_challenge_event_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftUpInfo/MonsterTrackPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_monster_track = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftUpInfo/TrailRoleMissionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_role_trial_mission = L1_2
  L1_2 = A0_2.node_role_trial_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "LeftUpInfo/ChallengeTargetPanelMaze"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.challenge_target_prefab_loader = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hud_func_entrance = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "RightUpArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_member_list = L1_2
  L1_2 = A0_2.node_member_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightTopArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_top_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightTopArea/NetStatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_netstatus_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "BuffList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.buff_list_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.JoyStickPanel
  L4_2 = G
  L4_2 = L4_2.JoyStickPanelBinder
  L5_2 = "JoystickRoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_joy_stick = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChatHudPanel
  L4_2 = G
  L4_2 = L4_2.ChatHudPanelBinder
  L5_2 = "LeftBotoom/BtnFriendChat"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_chat = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "RightButtomArea/TalkButton"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_talk_btns = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeActionAreaPanel
  L4_2 = G
  L4_2 = L4_2.MazeActionAreaPanelBinder
  L5_2 = "RightButtomArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_action_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterBottomArea/MissionTalkDialog"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission_talk_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CenterBottomArea/MechanismBar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mechanism_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "GuideHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tutorial_guide_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "MazeChallengeInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_challenge_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "LeftUpInfo/RogueBattleEventPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_rogue = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "LeftUpInfo/AntiVirusPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_punklord = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "HintInfoContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_maze_mechanism_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DiceMiniGameHUDPage"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.chess_rogue_hud_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "LeftUpInfo/RogueEndlessStatisticsPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rogue_endless_load_meta = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftUpInfo/RogueEndlessStatisticsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rogue_endless_cosmic = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PuzzleHudPanel
  L4_2 = G
  L4_2 = L4_2.PuzzleHudPanelBinder
  L5_2 = "PuzzleUI"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_puzzle = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeToastPanel
  L4_2 = G
  L4_2 = L4_2.MazeToastPanelBinder
  L5_2 = "ToastContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_maze_toast = L1_2
  L1_2 = A0_2.buff_list_panel_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L1_2 = A0_2.panel_joy_stick
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2.panel_joy_stick_active = true
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L1_2 = A0_2.panel_joy_stick
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2.panel_joy_stick_active = false
end
L0_1._on_pc_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftUpInfo/UnmaskedRoot/UnmaskedIcons"
  L4_2 = false
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.get_map_waypoint_node = L1_1
return L0_1
