local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.MazeTargetPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordMazeTargetPanelBinder"
L2_1 = G
L2_1 = L2_1.MazeTargetPanelBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_bind
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "TopCenterArea/OtherMonsterInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_monster_info = L1_2
end
L0_1._on_bind = L1_1
return L0_1
