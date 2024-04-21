local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeSkillBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeSkillBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeSkillMPPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeSkillMPPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeEventPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeEventPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeRushBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeRushBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeSkillPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = "UI/Maze/Widget/PcMazeSkillPanel.prefab"
    return L1_2
  else
    L1_2 = "UI/Maze/Widget/MazeSkillPanel.prefab"
    return L1_2
  end
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeSkillBtnPanel
  L4_2 = G
  L4_2 = L4_2.MazeSkillBtnPanelBinder
  L5_2 = "MazeActionBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_attack_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeSkillBtnPanel
  L4_2 = G
  L4_2 = L4_2.MazeSkillBtnPanelBinder
  L5_2 = "MazeSkillBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_skill_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeSkillMPPanel
  L4_2 = G
  L4_2 = L4_2.MazeSkillMPPanelBinder
  L5_2 = "MazeSkillBtn/MpDetailPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_mp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeRushBtnPanel
  L4_2 = G
  L4_2 = L4_2.MazeRushBtnPanelBinder
  L5_2 = "RushBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_rush_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeEvent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_maze_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation = L1_2
end
L0_1._on_bind = L1_1
return L0_1
