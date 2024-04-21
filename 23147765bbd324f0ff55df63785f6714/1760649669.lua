local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeBuffListPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeMazeBuffListPanel"
L2_1 = G
L2_1 = L2_1.MazeBuffListPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._get_buff_datas
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.ChallengeModule
    L2_2 = L2_2.CurrentChallengeInstance
    if L2_2 ~= nil then
      L3_2 = A0_2._env_buff_count
      L3_2 = L3_2 + 1
      A0_2._env_buff_count = L3_2
    end
  end
end
L0_1._get_buff_datas = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Challenge.Maze.ChallengeTeamBuffDetailDialog"
  L1_2(L2_2)
end
L0_1._on_btn_buff_click = L1_1
return L0_1
