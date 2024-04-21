local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.BaseToastData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RewardListToastData"
L2_1 = G
L2_1 = L2_1.BaseToastData
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = {}
L1_1.RewardList = 1
function L2_1(A0_2)
  local L1_2
  L1_2 = "RewardList"
  return L1_2
end
L0_1.get_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L6_2 = A0_2
  L5_2 = A0_2._merge_to_dict
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = A0_2.custom_data
  L10_2 = L1_1.RewardList
  L9_2 = L9_2[L10_2]
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._merge_to_dict
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = A1_2.custom_data
  L10_2 = L1_1.RewardList
  L9_2 = L9_2[L10_2]
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.sort_reward_item
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = A0_2.custom_data
  L6_2 = L1_1.RewardList
  L5_2[L6_2] = L2_2
end
L0_1.merge = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = ipairs
  L5_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.isExtra
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2._add_to_dict
      L11_2 = A2_2
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._add_to_dict
      L11_2 = A1_2
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L0_1._merge_to_dict = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A2_2.id
  L3_2 = A1_2[L3_2]
  if L3_2 == nil then
    L3_2 = A2_2.id
    A1_2[L3_2] = A2_2
  else
    L3_2 = A2_2.id
    L3_2 = A1_2[L3_2]
    L4_2 = L3_2.num
    L5_2 = A2_2.num
    L4_2 = L4_2 + L5_2
    L3_2.num = L4_2
  end
end
L0_1._add_to_dict = L2_1
return L0_1
