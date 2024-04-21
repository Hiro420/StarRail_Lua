local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.EnvBuffTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeEnvBuffTabItem"
L2_1 = G
L2_1 = L2_1.EnvBuffTabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._init_env_buff_data
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._init_env_buff_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetMainWorld
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.EntityManagerRef
    L6_2 = L4_2
    L5_2 = L4_2.GetLightTeamEntity
    L5_2 = L5_2(L6_2)
    L7_2 = L5_2
    L6_2 = L5_2.GetComponent
    L8_2 = typeof
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AdventureAbilityComponent
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L7_2 = G
    L7_2 = L7_2.BuffUtils
    L7_2 = L7_2.GetMazeBuffData
    L8_2 = A1_2
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.ModifierName
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AdvAbilityJsonTable
    L9_2 = L9_2.GetAdventureModifierConfig
    L10_2 = L7_2.ModifierName
    L9_2 = L9_2(L10_2)
    L10_2 = L6_2
    L11_2 = nil
    L12_2 = A1_2
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.AdventureModifierInitParams
    L13_2 = L13_2.s_Empty
    L14_2 = nil
    L15_2 = CS
    L15_2 = L15_2.RPG
    L15_2 = L15_2.GameCore
    L15_2 = L15_2.AdventureModifierInstance
    L16_2 = L8_2
    L17_2 = L9_2
    L18_2 = L10_2
    L19_2 = L11_2
    L20_2 = L12_2
    L21_2 = L13_2
    L22_2 = L14_2
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    return L15_2
  end
end
L0_1._create_fake_adv_modifier_instance = L1_1
return L0_1
