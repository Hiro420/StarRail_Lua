local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PuzzleSpecialVisionStrategy"
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
  L2_2 = L1_2.GetSpecialVisionSystem
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.OpenSpecialVision
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.SpecialVisionType
  L5_2 = L5_2.PuppySearchProp
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.execute = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.GetSpecialVisionSystem
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.CloseSpecialVision
  L2_2(L3_2)
end
L0_1.on_hide = L1_1
return L0_1
