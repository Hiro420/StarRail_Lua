local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonTeamInfoProvider"
L2_1 = "Ui.Avatar.BaseTeamInfoProvider"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = {}
  A0_2._selected_avatars = L3_2
  L3_2 = {}
  A0_2._avatar_to_team_index = L3_2
  L3_2 = 1
  L4_2 = A2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if L7_2 ~= nil then
      L8_2 = A0_2._selected_avatars
      L9_2 = A0_2._selected_avatars
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L8_2[L9_2] = L7_2
      L8_2 = A0_2._avatar_to_team_index
      L8_2[L7_2] = L6_2
    end
  end
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L0_1.get_avatars_in_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.is_avatar_in_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._avatar_to_team_index
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_avatar_team_index = L1_1
return L0_1
