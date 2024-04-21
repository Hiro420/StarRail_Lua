local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.SelectStrategy.AvatarSelectStrategyBase"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.TeamDataUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonMultiSelectClickTeamStrategy"
L2_1 = G
L2_1 = L2_1.AvatarSelectStrategyBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._selection = A1_2
end
L0_1.set_init_selection = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._selection
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._selection
  L3_2 = L2_2
  L2_2 = L2_2.is_selection_equal_editing_team
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "PreTeam_Toast_TeamUsed"
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._mark_selection_changed
  L2_2(L3_2)
  L2_2 = A0_2._selection
  L3_2 = L2_2
  L2_2 = L2_2.get_max_member_count_each_team
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = A0_2._selection
    L9_2 = L8_2
    L8_2 = L8_2.remove_avatar
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._selection
    L9_2 = L8_2
    L8_2 = L8_2.set_avatar
    L10_2 = L7_2
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._do_select = L1_1
return L0_1
