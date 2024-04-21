local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingLifeItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingLifeItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "NormalState"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "LoseState"
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_state = L1_1
return L0_1
