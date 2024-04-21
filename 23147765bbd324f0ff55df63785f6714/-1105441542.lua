local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.MemberEdit.BaseTeamMemberEditOperation"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultTeamMemberEditOperation"
L2_1 = G
L2_1 = L2_1.BaseTeamMemberEditOperation
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._can_leave_trial = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._team_data
  L1_2 = L1_2.LockedAvatarIDs
  return L1_2
end
L0_1._get_locked_avatar_id_list = L1_1
return L0_1
