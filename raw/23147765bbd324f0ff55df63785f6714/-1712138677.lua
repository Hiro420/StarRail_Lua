local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueBoardTeamMemberPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueBoardTeamMemberPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardTeamListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.panels_team_member = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueBoardTeamMemberPanel
    L8_2 = G
    L8_2 = L8_2.ChessRogueBoardTeamMemberPanelBinder
    L9_2 = "PropagtionTeamItem"
    L10_2 = tostring
    L11_2 = L4_2
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 .. L10_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.panels_team_member
    L8_2 = A0_2.panels_team_member
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
