local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultTeamInfoProvider"
L2_1 = "Ui.Avatar.BaseTeamInfoProvider"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._team_data = A1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_all_avatars
  L2_2 = true
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.get_story_line_avatars
  L2_2 = L2_2()
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.merge_avatar_list
  L4_2 = L1_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L0_1.get_all_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_avatars_in_team
  L2_2 = A0_2._team_data
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.get_story_line_avatars
  L2_2 = L2_2()
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.merge_avatar_list
  L4_2 = L1_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L0_1.get_avatars_in_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.is_avatar_in_team
  L3_2 = A1_2
  L4_2 = A0_2._team_data
  return L2_2(L3_2, L4_2)
end
L0_1.is_avatar_in_team = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._team_data
  return L1_2
end
L0_1.get_team_data = L1_1
return L0_1
