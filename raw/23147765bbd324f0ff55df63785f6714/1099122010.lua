local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamDataUtils"
L0_1 = L0_1(L1_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = "Ui.Team.TeamDataProviders.DefaultTeamDataProvider"
  return L0_2(L1_2)
end
L0_1.fetch_team_data_provider = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.IsVirtual
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.VirtualTeamMemberEditOperation
    L3_2 = A0_2
    return L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.DefaultTeamMemberEditOperation
    L3_2 = A0_2
    return L1_2(L2_2, L3_2)
  end
end
L0_1.get_default_operation_provider = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2.MemberDatas
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 ~= nil then
      L8_2 = L6_2 + 1
      L9_2 = L7_2.AvatarData
      L1_2[L8_2] = L9_2
    else
      L8_2 = L6_2 + 1
      L1_2[L8_2] = nil
    end
  end
  return L1_2
end
L0_1.get_avatar_list_from_team_data = L1_1
return L0_1
