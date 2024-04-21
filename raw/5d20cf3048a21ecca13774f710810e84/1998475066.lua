local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoNoticePageCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.NoticeBgPage"
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AccountManager
  L3_2 = L2_2
  L2_2 = L2_2.ShowNotice
  L2_2(L3_2)
end
L0_1.execute = L1_1
return L0_1
