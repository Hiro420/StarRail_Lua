local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.SelectStrategy.AvatarSelectStrategyBase"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.TeamDataUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonSingleSelectStrategy"
L2_1 = G
L2_1 = L2_1.AvatarSelectStrategyBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._selected_avatar = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2[1]
  L3_2 = A0_2._selected_avatar
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A1_2[1]
  A0_2._selected_avatar = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._mark_selection_changed
  L2_2(L3_2)
end
L0_1._do_select = L1_1
return L0_1
