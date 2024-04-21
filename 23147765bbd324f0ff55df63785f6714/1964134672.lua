local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "SpaceAnchorUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceAnchorModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AvatarModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TeamModule
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = {}
  L1_2 = L1_1.TotalRecoverPercantage
  L1_2 = L1_2 / 100
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.MemberDatas
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = L2_2[L6_2]
      L7_2 = L7_2.AvatarData
      L8_2 = L0_1._generate_one_display_data
      L9_2 = L7_2
      L10_2 = L1_2
      L8_2 = L8_2(L9_2, L10_2)
      L8_2.isInTeam = true
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L0_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = L2_1.AllAvatars
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L0_1._check_display_data_is_exist
    L10_2 = L0_2
    L11_2 = L8_2.ID
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = L0_1._generate_one_display_data
      L10_2 = L8_2
      L11_2 = L1_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L0_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  return L0_2
end
L0_1.generate_display_datas = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = A0_2.ID
  L2_2.id = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAvatarSetting
  L5_2 = A0_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2 / 100
  L2_2.percentage = L3_2
  L2_2.is_dirty = false
  L3_2 = L2_2.percentage
  L3_2 = L3_2 ~= A1_2
  L2_2.is_locked = L3_2
  L2_2.avatar_data = A0_2
  L2_2.isTrial = false
  L3_2 = A0_2.SpecialRow
  if L3_2 ~= nil then
    L3_2 = A0_2.SpecialRow
    L3_2 = L3_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.SpecialAvatarType
    L4_2 = L4_2.TYPE_TRIAL
    L3_2 = L3_2 == L4_2
    L2_2.isTrial = L3_2
  end
  L2_2.isStory = false
  L3_2 = A0_2.SpecialRow
  if L3_2 ~= nil then
    L3_2 = A0_2.SpecialRow
    L3_2 = L3_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.SpecialAvatarType
    L4_2 = L4_2.TYPE_MISSION
    L3_2 = L3_2 == L4_2
    L2_2.isStory = L3_2
  end
  L2_2.isInTeam = false
  return L2_2
end
L0_1._generate_one_display_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_display_data_is_exist = L4_1
return L0_1
