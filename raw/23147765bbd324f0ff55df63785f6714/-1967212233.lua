local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "BattleTargetUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L1_2 = L1_2.EntityManagerRef
  L1_2 = L1_2.LevelEntity
  L3_2 = L1_2
  L2_2 = L1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.LevelUIComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.BattleTargetDialogOffset
  if L3_2 then
    L3_2 = A0_2.anchoredPosition
    L4_2 = L2_2.BattleTargetDialogOffset
    L3_2 = L3_2 + L4_2
    A0_2.anchoredPosition = L3_2
  end
end
L0_1.try_set_offset = L1_1
return L0_1
