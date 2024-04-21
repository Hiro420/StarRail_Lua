local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ChallengeMazeUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.GetMainWorld
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.EntityManagerRef
    L5_2 = L3_2
    L4_2 = L3_2.GetLightTeamEntity
    L4_2 = L4_2(L5_2)
    L6_2 = L4_2
    L5_2 = L4_2.GetComponent
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AdventureAbilityComponent
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L6_2 = G
    L6_2 = L6_2.BuffUtils
    L6_2 = L6_2.GetMazeBuffData
    L7_2 = A0_2
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2.ModifierName
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AdvAbilityJsonTable
    L8_2 = L8_2.GetAdventureModifierConfig
    L9_2 = L6_2.ModifierName
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2
    L10_2 = nil
    L11_2 = A0_2
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.GameCore
    L12_2 = L12_2.AdventureModifierInitParams
    L12_2 = L12_2.s_Empty
    L13_2 = nil
    L14_2 = CS
    L14_2 = L14_2.RPG
    L14_2 = L14_2.GameCore
    L14_2 = L14_2.AdventureModifierInstance
    L15_2 = L7_2
    L16_2 = L8_2
    L17_2 = L9_2
    L18_2 = L10_2
    L19_2 = L11_2
    L20_2 = L12_2
    L21_2 = L13_2
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    return L14_2
  end
end
L0_1.create_fake_adv_modifier_instance = L1_1
return L0_1
