local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PuzzleIsometricViewStrategy"
L0_1 = L0_1(L1_1)
L1_1 = "IsometricCustomString_OnViewButtonPressed"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetIsometricViewModule
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.SwitchIsometricView
  L3_2(L4_2)
  L4_2 = L1_2
  L3_2 = L1_2.GetMainWorld
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GameWorldStatic
  L4_2 = L4_2.TriggerCustomStringEvent
  L5_2 = L3_2
  L6_2 = nil
  L7_2 = L1_1
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.execute = L2_1
return L0_1
