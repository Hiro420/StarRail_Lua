local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.BaseTeamInfoProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTeamInfoProvider"
L2_1 = G
L2_1 = L2_1.BaseTeamAvatarInfoProvider
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._team_data = A1_2
  A0_2._to_pick_avatars = A2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = A0_2._to_pick_avatars
  if L2_2 ~= nil then
    L2_2 = A0_2._to_pick_avatars
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = pairs
      L3_2 = A0_2._to_pick_avatars
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = #L1_2
        L9_2 = L9_2 + 1
        L10_2 = L6_2
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.get_avatars_in_team
  L3_2 = A0_2._team_data
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = #L2_2
    if 0 < L3_2 then
      L3_2 = ipairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = #L1_2
        L10_2 = L10_2 + 1
        L11_2 = L7_2
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.AvatarModule
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.RogueStatic
  L4_2 = L4_2.GetCurModeRogueAvatarInfo
  L4_2 = L4_2()
  if L4_2 ~= nil then
    L5_2 = L4_2.PickAvatarIDs
    L6_2 = 0
    L7_2 = L5_2.Count
    L7_2 = L7_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L11_2 = L3_2
      L10_2 = L3_2.GetAvatar
      L12_2 = L5_2[L9_2]
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 ~= nil then
        L11_2 = G
        L11_2 = L11_2.AvatarUtils
        L11_2 = L11_2.find_avatar_key
        L12_2 = L10_2
        L13_2 = L1_2
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 == nil then
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L1_2
          L13_2 = #L1_2
          L13_2 = L13_2 + 1
          L14_2 = L10_2
          L11_2(L12_2, L13_2, L14_2)
        end
      end
    end
    L6_2 = L4_2.PickTrialAvatarIDs
    L7_2 = 0
    L8_2 = L6_2.Count
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L12_2 = L3_2
      L11_2 = L3_2.GetTrialAvatar
      L13_2 = L6_2[L10_2]
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 ~= nil then
        L12_2 = G
        L12_2 = L12_2.AvatarUtils
        L12_2 = L12_2.find_avatar_key
        L13_2 = L11_2
        L14_2 = L1_2
        L12_2 = L12_2(L13_2, L14_2)
        if L12_2 == nil then
          L12_2 = table
          L12_2 = L12_2.insert
          L13_2 = L1_2
          L14_2 = #L1_2
          L14_2 = L14_2 + 1
          L15_2 = L11_2
          L12_2(L13_2, L14_2, L15_2)
        end
      end
    end
  end
  return L1_2
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
return L0_1
