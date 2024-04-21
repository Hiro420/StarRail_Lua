local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PuzzleTriggerCustomStringStrategy"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetMainWorld
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameWorldStatic
  L3_2 = L3_2.TriggerCustomStringEvent
  L4_2 = L2_2
  L5_2 = A0_2.OwnerEntity
  L6_2 = A0_2.CustomEvent
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameWorldStatic
  L3_2 = L3_2.TriggerAdventureGroupCustomEvent
  L4_2 = L2_2
  L5_2 = A0_2.OwnerEntity
  L6_2 = A0_2.CustomEvent
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.execute = L1_1
return L0_1
