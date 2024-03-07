local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.TeamBuffDetailDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.TeamBuffDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Maze.ChallengeEnvBuffTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeTeamBuffDetailDialog"
L2_1 = G
L2_1 = L2_1.TeamBuffDetailDialog
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChallengeEnvBuffTabItem
  L4_2 = G
  L4_2 = L4_2.EnvBuffTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._env_buff_tab_item = L1_2
  L1_2 = A0_2._env_buff_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._env_buff_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_env_buff
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._env_buff_tab_item
  L1_2(L2_2, L3_2)
end
L0_1._init_env_buff_tab_item = L1_1
return L0_1
