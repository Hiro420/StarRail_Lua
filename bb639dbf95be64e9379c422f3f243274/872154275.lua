local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSubPropertyNumFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = 1
L3_1 = 2
L4_1 = 3
L5_1 = 4
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = A0_2._all_set_count
  if L2_2 == nil then
    L2_2 = {}
    A0_2._all_set_count = L2_2
  end
  L2_2 = ipairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._create_filter_data
    L9_2 = L6_2
    L10_2 = "UIText_Relic_Filter_SubProperty_"
    L11_2 = tostring
    L12_2 = L6_2
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 .. L11_2
    L11_2 = nil
    L12_2 = false
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L1_2[L8_2] = L7_2
  end
  return L1_2
end
L0_1._get_all_filter_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.SubAffixPropertyTypeArray
  L3_2 = L3_2.Length
  L3_2 = A2_2[L3_2]
  return L3_2
end
L0_1._filter = L2_1
return L0_1
