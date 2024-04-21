local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Talk.SimpleTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.SimpleTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.CutSceneTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.CutSceneTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.OptionTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.OptionTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.ImageDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.ImageDisplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.FigureDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.FigureDisplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MissionTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MissionTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.PrefabDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.PrefabDisplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkVideoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkVideoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkDebate.TalkDebatePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkDebate.TalkDebatePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TalkDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Talk/TalkDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TalkContainer/SimpleTalk"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_simple_talk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CutSceneTalkPanel
  L4_2 = G
  L4_2 = L4_2.CutSceneTalkPanelBinder
  L5_2 = "CutSceneTalk"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_cutscene_talk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TalkContainer/OptionDialogue"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_option_talk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ImageContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_background = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AlphaImgContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_figure = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "VideoContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bg_video = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MissionTalkPanel
  L4_2 = G
  L4_2 = L4_2.MissionTalkPanelBinder
  L5_2 = "MissionTalkDialog"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_mission_talk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PrefabDisplayPanel
  L4_2 = G
  L4_2 = L4_2.PrefabDisplayPanelBinder
  L5_2 = "UIPrefabRoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_prefab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "CloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_undo_hide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TalkContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_to_hide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "TalkContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_content = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BlackMask"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.blackMask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TalkContainer/TalkButton/FunctionButtonWidget"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TalkContainer/TalkButton/FunctionButtonWidget/Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TalkContainer/TalkButton/FunctionButtonWidget/SkipBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_skip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ToggleButton
  L4_2 = "TalkContainer/TalkButton/FunctionButtonWidget/AutoBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_auto = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TalkContainer/TalkButton/FunctionButtonWidget/HideBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_hide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TalkContainer/TalkButton/LeftBtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TalkContainer/TalkButton/LeftBtnPanel/Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_func_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TalkContainer/TalkButton/LeftBtnPanel/BacklogBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_history = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DebuteContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_debate = L1_2
end
L0_1._on_bind = L1_1
return L0_1
