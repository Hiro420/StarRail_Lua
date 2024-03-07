local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyCheckCheatDicePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L2_1 = "Monopoly_Activity_BubbleTalk_Case_NoDiceButSpDice"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_show_hint
  if L1_2 then
    return
  end
  L1_2 = L1_1.SystemInfo
  L1_2 = L1_2.DiceNum
  if L1_2 == 0 then
    L1_2 = L1_1.SystemInfo
    L1_2 = L1_2.CheatDiceNum
    if L1_2 ~= 0 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.MonopolyUtils
      L1_2 = L1_2.ShowPlayerBubble
      L2_2 = L2_1
      L1_2(L2_2)
      A0_2._has_show_hint = true
    end
  end
end
L0_1.do_check = L3_1
return L0_1
