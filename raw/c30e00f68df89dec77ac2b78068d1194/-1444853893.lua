local L0_1, L1_1
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.TeamDataUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TrialAvatarTeamDataProvider"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  A0_2._trial_avatar_tb = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
  A0_2._team_data = A1_2
end
L0_1.set_team = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_all_avatars_with_custom_trial_avatar_table
  L2_2 = A0_2._trial_avatar_tb
  return L1_2(L2_2)
end
L0_1.get_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.TeamDataUtils
  L1_2 = L1_2.get_default_operation_provider
  L2_2 = A0_2._team_data
  return L1_2(L2_2)
end
L0_1.get_operation_provider = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._trial_avatar_tb
  return L1_2
end
L0_1.get_top_avatars = L1_1
return L0_1
