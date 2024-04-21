local L0_1, L1_1
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.TeamDataUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidTeamDataProvider"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._team_data = A1_2
  A0_2._raid_row = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
  A0_2._raid_row = A1_2
end
L0_1.set_raid_row = L1_1
function L1_1(A0_2, A1_2)
  A0_2._team_data = A1_2
end
L0_1.set_team = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._raid_row
  L2_2 = L2_2.TeamType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RaidTeamType
  L3_2 = L3_2.TrialOrPlayer
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.AvatarUtils
    L2_2 = L2_2.get_raid_avatar_data_with_trial
    L4_2 = A0_2
    L3_2 = A0_2.get_trial_avatar_tb
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
  else
    L2_2 = G
    L2_2 = L2_2.AvatarUtils
    L2_2 = L2_2.get_avatars_by_team
    L3_2 = A0_2._team_data
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.get_story_line_avatars
  L2_2 = L2_2()
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.merge_avatar_list
  L4_2 = L2_2
  L5_2 = L1_2
  return L3_2(L4_2, L5_2)
end
L0_1.get_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._raid_row
  L1_2 = L1_2.TeamType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidTeamType
  L2_2 = L2_2.TrialOrPlayer
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_array
    L2_2 = A0_2._raid_row
    L2_2 = L2_2.TrialAvatarList
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = {}
    end
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.Collections
    L2_2 = L2_2.Generic
    L2_2 = L2_2.List
    L3_2 = CS
    L3_2 = L3_2.System
    L3_2 = L3_2.UInt32
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2()
    L3_2 = ipairs
    L4_2 = L1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L2_2
      L8_2 = L2_2.Add
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.AvatarModule
    L4_2 = L3_2
    L3_2 = L3_2.TryGetTrialAvatarsByIDs
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_list
    L5_2 = L3_2
    return L4_2(L5_2)
  else
    L1_2 = {}
    return L1_2
  end
end
L0_1.get_trial_avatar_tb = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_story_line_avatars
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.get_trial_avatar_tb
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.merge_avatar_list
  L4_2 = L1_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L0_1.get_top_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.RaidTeamMemberEditOperation
  L3_2 = A0_2._team_data
  L4_2 = A0_2._raid_row
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.get_operation_provider = L1_1
return L0_1
