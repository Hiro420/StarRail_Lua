local L0_1, L1_1, L2_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ItemExcelTable
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "Currency"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2.ConfigID = A1_2
  A0_2.Cost = A2_2
  L3_2 = L0_1.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ItemCurrencyIconPath
  A0_2.ItemIconPath = L4_2
end
L1_1.ctor = L2_1
return L1_1
