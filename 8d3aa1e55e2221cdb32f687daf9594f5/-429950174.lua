local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.BaseToastData"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InteractRewardToastData"
L2_1 = G
L2_1 = L2_1.BaseToastData
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = {}
L1_1.RewardRows = 1
function L2_1(A0_2)
  local L1_2
  L1_2 = "InteractReward"
  return L1_2
end
L0_1.get_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2.custom_data
  L5_2 = L1_1.RewardRows
  L4_2 = L4_2[L5_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = ipairs
  L4_2 = A1_2.custom_data
  L5_2 = L1_1.RewardRows
  L4_2 = L4_2[L5_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2.custom_data
  L4_2 = L1_1.RewardRows
  L3_2[L4_2] = L2_2
end
L0_1.merge = L2_1
return L0_1
