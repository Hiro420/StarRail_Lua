local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.NpcMonsterInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordNpcMonsterInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.NpcMonsterInfoPanelBinder
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
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "HpProgressBar/Bar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.punklord_hp_progress_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "HpProgressBar/Bar2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.punklord_hp_progress_bar2 = L1_2
end
L0_1._on_bind = L1_1
return L0_1
