local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.BaseToastData"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTargetToastData"
L2_1 = G
L2_1 = L2_1.BaseToastData
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = {}
L1_1.TargetChangeParam = 1
L1_1.NewTargets = 2
L1_1.Duration = 3
function L2_1(A0_2)
  local L1_2
  L1_2 = "BattleTarget"
  return L1_2
end
L0_1.get_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.custom_data
  L3_2 = L1_1.NewTargets
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.table_merge
  L5_2 = A0_2.custom_data
  L6_2 = L1_1.NewTargets
  L5_2 = L5_2[L6_2]
  L6_2 = A1_2.custom_data
  L7_2 = L1_1.NewTargets
  L6_2 = L6_2[L7_2]
  L4_2 = L4_2(L5_2, L6_2)
  L2_2[L3_2] = L4_2
end
L0_1.merge = L2_1
return L0_1
