local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeCustomizedSkillPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeCustomizedSkillBtnPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeCustomizedSkillPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = A0_2._get_maze_action_btn_panel
  L1_2.Action = L2_2
  A0_2._btn_to_panel = L1_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleHudType
  L2_2 = L2_2.IsometricView
  L3_2 = {}
  L4_2 = "Action"
  L3_2[1] = L4_2
  L1_2[L2_2] = L3_2
  A0_2._type_to_btn_used = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._type_to_btn_used
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L2_2 = 1
  L3_2 = A0_2._type_to_btn_used
  L3_2 = L3_2[A1_2]
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._type_to_btn_used
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._btn_to_panel
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L9_2 = L7_2
      L8_2 = L7_2.setup_view
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._setup_btn_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._maze_action_btn_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.MazeCustomizedSkillBtnPanel
    L4_2 = G
    L4_2 = L4_2.MazeCustomizedSkillBtnPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._maze_action_btn_panel = L1_2
    L1_2 = A0_2._maze_action_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.sync_loadto
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_action_btn
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._maze_action_btn_panel
  return L1_2
end
L0_1._get_maze_action_btn_panel = L1_1
return L0_1
