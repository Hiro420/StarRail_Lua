local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoChallengeGamePageCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
L0_1._text_challenge_maze_forbid = "ChallengeMaze_Forbid"
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "GotoChallengeGamePageCommand execute"
  L2_2(L3_2)
  L2_2 = L0_1._can_goto_in_challenge
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2.GotoType
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "Logic.Goto.GotoCommand.Goto%sCommand"
    L5_2 = GotoType2Command
    L5_2 = L5_2[L2_2]
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.GotoManager
    L4_2 = L4_2.get_goto_command_by_path
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L6_2 = L4_2
    L5_2 = L4_2.can_goto
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L4_2
      L5_2 = L4_2.execute
      L7_2 = A1_2
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1.execute = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_goto_condition
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.can_goto = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1._can_goto_in_challenge
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = true
    L3_2 = ""
    return L2_2, L3_2
  end
  L2_2 = false
  L3_2 = ""
  return L2_2, L3_2
end
L0_1._check_goto_condition = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.GotoType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.MazeEnemyDetail
  L2_2 = #L2_2
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._can_goto_in_challenge = L1_1
return L0_1
