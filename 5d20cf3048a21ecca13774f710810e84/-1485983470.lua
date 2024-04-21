local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AvatarModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "SwitchHeroBasicTypePageCommand"
L3_1 = "Logic.Goto.BaseCommand"
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A2_2 == nil then
    L3_2 = L1_1.super
    L3_2 = L3_2.get_params
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A2_2 = L3_2
  end
  L3_2 = A2_2[1]
  L4_2 = A2_2[2]
  if L3_2 == nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogError
    L6_2 = G
    L6_2 = L6_2.LogTag
    L6_2 = L6_2.UI
    L7_2 = "Goto\232\183\179\232\189\172\229\164\177\232\180\165, GotoID: "
    L8_2 = A1_2.ID
    L7_2 = L7_2 .. L8_2
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.GetAvatar
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_hero_basic_type_info
  L8_2 = L3_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.GlobalVars
  L9_2 = L9_2.s_UIManager
  L10_2 = L9_2
  L9_2 = L9_2.BeginShowGroup
  L9_2(L10_2)
  if L4_2 then
    L9_2 = G
    L9_2 = L9_2.UIManager
    L9_2 = L9_2.load_and_async_show
    L10_2 = "Ui.Avatar.AvatarMainPage"
    L11_2 = L3_2
    L12_2 = 1
    L13_2 = nil
    L14_2 = L5_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L9_2 = G
  L9_2 = L9_2.UIManager
  L9_2 = L9_2.load_and_async_show
  L10_2 = "Ui.Avatar.SwitchHeroBasicTypePage"
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.GlobalVars
  L9_2 = L9_2.s_UIManager
  L10_2 = L9_2
  L9_2 = L9_2.EndShowGroup
  L9_2(L10_2)
end
L1_1.execute = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.HeroAvatarInfoData
  L4_2 = L2_2
  L3_2 = L2_2.GetCurrentHeroGender
  L3_2 = L3_2(L4_2)
  L5_2 = L2_2
  L4_2 = L2_2.GetCurrentHeroBasicType
  L4_2 = L4_2(L5_2)
  L6_2 = L2_2
  L5_2 = L2_2.GetHeroBasicTypes
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L7_2 = nil
  L8_2 = 0
  L9_2 = L5_2.Count
  L9_2 = L9_2 - 1
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L5_2[L11_2]
    L12_2 = #L12_2
    L13_2 = L1_1._get_gender_by_hero_avatar_id
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 == L3_2 then
      L14_2 = #L6_2
      L14_2 = L14_2 + 1
      L15_2 = L5_2[L11_2]
      L6_2[L14_2] = L15_2
    end
    if L12_2 == A1_2 then
      L7_2 = L5_2[L11_2]
    end
  end
  L8_2 = L4_2
  L9_2 = L6_2
  L10_2 = L7_2
  return L8_2, L9_2, L10_2
end
L1_1._get_hero_basic_type_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeroConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Gender
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogErrorFormat
  L3_2 = "HeroCofig of avatarID %d not exist!"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GenderType
  L2_2 = L2_2.GENDER_NONE
  return L2_2
end
L1_1._get_gender_by_hero_avatar_id = L2_1
return L1_1
