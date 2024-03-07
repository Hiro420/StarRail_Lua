local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.BaseToastData"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerExpToastData"
L2_1 = G
L2_1 = L2_1.BaseToastData
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = {}
L1_1.CurLevel = 1
L1_1.CurExp = 2
L1_1.AddExp = 3
function L2_1(A0_2)
  local L1_2
  L1_2 = "PlayerExp"
  return L1_2
end
L0_1.get_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.custom_data
  L3_2 = L1_1.CurLevel
  L2_2 = L2_2[L3_2]
  L3_2 = A1_2.custom_data
  L4_2 = L1_1.CurLevel
  L3_2 = L3_2[L4_2]
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2.custom_data
  L3_2 = L1_1.CurExp
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = A0_2.custom_data
  L6_2 = L1_1.CurExp
  L5_2 = L5_2[L6_2]
  L6_2 = A1_2.custom_data
  L7_2 = L1_1.CurExp
  L6_2 = L6_2[L7_2]
  L4_2 = L4_2(L5_2, L6_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2.custom_data
  L3_2 = L1_1.AddExp
  L4_2 = A0_2.custom_data
  L5_2 = L1_1.AddExp
  L4_2 = L4_2[L5_2]
  L5_2 = A1_2.custom_data
  L6_2 = L1_1.AddExp
  L5_2 = L5_2[L6_2]
  L4_2 = L4_2 + L5_2
  L2_2[L3_2] = L4_2
end
L0_1.merge = L2_1
return L0_1
