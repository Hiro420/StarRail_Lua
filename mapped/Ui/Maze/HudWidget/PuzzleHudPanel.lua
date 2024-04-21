local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeAction.MazeDroneActionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeAction.MazeDroneActionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeAction.MazeWolfBroActionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeAction.MazeWolfBroActionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeSkill.MazeCustomizedSkillPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PuzzleHudPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PuzzleHudType
  L1_2 = L1_2.None
  A0_2._current_type = L1_2
  L1_2 = {}
  A0_2._type_to_panel = L1_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleHudType
  L2_2 = L2_2.Drone
  L3_2 = A0_2._create_drone_panel
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleHudType
  L2_2 = L2_2.WolfBro
  L3_2 = A0_2._create_wolfbro_panel
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PuzzleHudType
  L2_2 = L2_2.IsometricView
  L3_2 = A0_2._create_customized_skill_panel
  L1_2[L2_2] = L3_2
  A0_2._type_to_create = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleHudDroneShow
  L4_2 = A0_2._on_puzzle_hud_drone_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleHudDroneHide
  L4_2 = A0_2._on_puzzle_hud_drone_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleHudWolfBroShow
  L4_2 = A0_2._on_puzzle_hud_wolfbro_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleHudWolfBroHide
  L4_2 = A0_2._on_puzzle_hud_wolfbro_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleHudIsometricViewShow
  L4_2 = A0_2._on_puzzle_hud_isometric_view_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PuzzleHudIsometricViewHide
  L4_2 = A0_2._on_puzzle_hud_isometric_view_hide
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A0_2._current_type
    if A1_2 ~= L2_2 then
      return
    end
  end
  L2_2 = A0_2._type_to_panel
  L3_2 = A0_2._current_type
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = L2_2.on_enable_changed
    if L3_2 then
      L4_2 = L2_2
      L3_2 = L2_2.on_enable_changed
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PuzzleHudType
  L3_2 = L3_2.None
  A0_2._current_type = L3_2
end
L0_1._hide_hud_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._type_to_panel
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2._current_type
  if L4_2 ~= A1_2 then
    L5_2 = A0_2
    L4_2 = A0_2._hide_hud_panel
    L4_2(L5_2)
    if L3_2 == nil then
      L4_2 = A0_2._type_to_create
      L4_2 = L4_2[A1_2]
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
      L4_2 = A0_2._type_to_panel
      L4_2[A1_2] = L3_2
    end
    L5_2 = L3_2
    L4_2 = L3_2.safe_set_active
    L6_2 = true
    L4_2(L5_2, L6_2)
    A0_2._current_type = A1_2
  end
  L4_2 = L3_2.setup_view
  if L4_2 then
    L5_2 = L3_2
    L4_2 = L3_2.setup_view
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = L3_2.on_enable_changed
  if L4_2 then
    L5_2 = L3_2
    L4_2 = L3_2.on_enable_changed
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end
L0_1._show_hud_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._show_hud_panel
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PuzzleHudType
  L4_2 = L4_2.Drone
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_puzzle_hud_drone_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PuzzleHudType
  L3_2 = L3_2.Drone
  L1_2(L2_2, L3_2)
end
L0_1._on_puzzle_hud_drone_hide = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeDroneActionPanel
  L4_2 = G
  L4_2 = L4_2.MazeDroneActionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.sync_loadto
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hud_root
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._create_drone_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._show_hud_panel
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PuzzleHudType
  L4_2 = L4_2.WolfBro
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_puzzle_hud_wolfbro_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PuzzleHudType
  L3_2 = L3_2.WolfBro
  L1_2(L2_2, L3_2)
end
L0_1._on_puzzle_hud_wolfbro_hide = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeWolfBroActionPanel
  L4_2 = G
  L4_2 = L4_2.MazeWolfBroActionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.sync_loadto
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hud_root
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._create_wolfbro_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._customized_skill_panel
  if L1_2 then
    L1_2 = A0_2._customized_skill_panel
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeCustomizedSkillPanel
  L4_2 = G
  L4_2 = L4_2.MazeCustomizedSkillPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._customized_skill_panel = L1_2
  L1_2 = A0_2._customized_skill_panel
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hud_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._customized_skill_panel
  return L1_2
end
L0_1._create_customized_skill_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._show_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PuzzleHudType
  L3_2 = L3_2.IsometricView
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PuzzleHudType
  L4_2 = L4_2.IsometricView
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_puzzle_hud_isometric_view_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_hud_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PuzzleHudType
  L3_2 = L3_2.IsometricView
  L1_2(L2_2, L3_2)
end
L0_1._on_puzzle_hud_isometric_view_hide = L1_1
return L0_1
