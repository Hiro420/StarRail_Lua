local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityExpeditionRankCountPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ExpeditionModule
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_rank3_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityExpeditionExcelTable
  L3_2 = L3_2.GetExpeditionIDsByRank
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityExpeditionRank
  L4_2 = L4_2.High
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_rank3_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetActivityExpeditionRankFinishedCount
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActivityExpeditionRank
  L5_2 = L5_2.High
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_rank2_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityExpeditionExcelTable
  L3_2 = L3_2.GetExpeditionIDsByRank
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityExpeditionRank
  L4_2 = L4_2.Middle
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_rank2_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetActivityExpeditionRankFinishedCount
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActivityExpeditionRank
  L5_2 = L5_2.Middle
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_rank1_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityExpeditionExcelTable
  L3_2 = L3_2.GetExpeditionIDsByRank
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ActivityExpeditionRank
  L4_2 = L4_2.Low
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_rank1_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetActivityExpeditionRankFinishedCount
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActivityExpeditionRank
  L5_2 = L5_2.Low
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.setup_view = L2_1
return L0_1
