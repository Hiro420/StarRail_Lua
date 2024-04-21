local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityGuessTheSilhouetteModule
L1_1 = G
L1_1 = L1_1.StaticClass
L2_1 = "PuzzleMarch7thGuessTheSilhouetteStrategy"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.is_enable_identify
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = L1_1._check_is_in_progress
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogWarningFormat
      L3_2 = "PuzzleMarch7thGuessTheSilhouetteStrategy : \229\189\147\229\137\141\230\180\187\229\138\168\228\184\141\229\173\152\229\156\168\230\173\163\229\156\168\232\191\155\232\161\140\231\154\132\229\137\170\229\189\177\230\139\141\231\133\167\230\180\187\229\138\168"
      L2_2(L3_2)
    end
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_GamePhaseManager
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentPhase
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.GetMainWorld
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.GameWorldStatic
    L4_2 = L4_2.TriggerCustomStringEvent
    L5_2 = L3_2
    L6_2 = A0_2.OwnerEntity
    L7_2 = A0_2.CustomEvent
    L4_2(L5_2, L6_2, L7_2)
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_PhotoGraph_Forbid"
    L2_2(L3_2, L4_2)
  end
end
L1_1.execute = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.CurrentInProgressGuessId
  L0_2 = L0_2 ~= 0
  return L0_2
end
L1_1._check_is_in_progress = L2_1
return L1_1
