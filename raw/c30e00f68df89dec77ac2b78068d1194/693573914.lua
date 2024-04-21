local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicNormalSuitFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.get_all_relic_set_ids
  L3_2 = L3_2()
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L2_2[L8_2]
    if L9_2 == nil then
      L2_2[L8_2] = true
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.RelicSetConfigExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = L9_2.IsPlanarSuit
      if not L10_2 then
        L11_2 = A0_2
        L10_2 = A0_2._create_filter_data
        L12_2 = L8_2
        L13_2 = L9_2.SetName
        L14_2 = L9_2.SetIconPath
        L15_2 = false
        L16_2 = 0
        L17_2 = 0
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L11_2 = #L1_2
        L11_2 = L11_2 + 1
        L1_2[L11_2] = L10_2
      end
    end
  end
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._all_set_count
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = 0
  end
  if 0 < L2_2 then
    L3_2 = -A1_2
    return L3_2
  end
  L3_2 = 0
  return L3_2
end
L0_1._get_filter_data_order = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.has_order = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_RelicType_4Set"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.is_use_color_img = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.RelicRow
  L3_2 = L3_2.SetID
  L3_2 = A2_2[L3_2]
  return L3_2
end
L0_1._filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  A0_2._all_set_count = L2_2
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.get_all_relic_set_ids
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._all_set_count
    L8_2[L7_2] = 0
  end
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.RelicRow
    L8_2 = L8_2.SetID
    L9_2 = A0_2._all_set_count
    L10_2 = A0_2._all_set_count
    L10_2 = L10_2[L8_2]
    L10_2 = L10_2 + 1
    L9_2[L8_2] = L10_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_filter_datas
  L3_2(L4_2)
end
L0_1.count_relic_set = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ipairs
  L2_2 = A0_2._filters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.FilterType
    L8_2 = A0_2
    L7_2 = A0_2._changed_filter_num
    L9_2 = L5_2
    L10_2 = A0_2._all_set_count
    L10_2 = L10_2[L6_2]
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._change_filter_order
    L9_2 = L5_2
    L11_2 = A0_2
    L10_2 = A0_2._get_filter_data_order
    L12_2 = L6_2
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_sort
  L1_2(L2_2)
end
L0_1._refresh_filter_datas = L1_1
return L0_1
