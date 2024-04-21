local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Maze.PunkLordNpcMonsterInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Maze.PunkLordNpcMonsterInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.MazeTargetPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordMazeTargetPanel"
L2_1 = G
L2_1 = L2_1.MazeTargetPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_load
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_monster_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_monster_info
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_monster_info
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.PunkLordNpcMonsterInfoPanel
  L5_2 = G
  L5_2 = L5_2.PunkLordNpcMonsterInfoPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._monster_info_panel = L2_2
  L2_2 = A0_2._monster_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._monster_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._monster_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = nil
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._monster_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_monster_hp
  L1_2(L2_2)
end
L0_1.fresh_monster_hp = L1_1
return L0_1
