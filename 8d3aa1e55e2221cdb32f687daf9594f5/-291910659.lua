local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoBattlePassGamePageCommand"
L2_1 = "Logic.Goto.GotoCommand.GotoGamePageCommand"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.GotoType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.BattlePassModule
  L5_2 = L3_2
  L4_2 = L3_2.HasSeenCurrentBattlePass
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.PayModule
  L6_2 = L5_2
  L5_2 = L5_2.ContainsBattlePassProduct
  L5_2 = L5_2(L6_2)
  if not L4_2 and L5_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_UIManager
    L7_2 = L6_2
    L6_2 = L6_2.BeginShowGroup
    L6_2(L7_2)
    L6_2 = G
    L6_2 = L6_2.UIManager
    L6_2 = L6_2.load_and_async_show
    L7_2 = GotoType2Page
    L7_2 = L7_2[L2_2]
    L6_2(L7_2)
    L6_2 = G
    L6_2 = L6_2.UIManager
    L6_2 = L6_2.load_and_async_show
    L7_2 = "Ui.BattlePass.BattlePassPosterPage"
    L6_2(L7_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_UIManager
    L7_2 = L6_2
    L6_2 = L6_2.EndShowGroup
    L6_2(L7_2)
  else
    L6_2 = G
    L6_2 = L6_2.UIManager
    L6_2 = L6_2.load_and_async_show
    L7_2 = GotoType2Page
    L7_2 = L7_2[L2_2]
    L6_2(L7_2)
  end
end
L0_1.execute = L1_1
return L0_1
