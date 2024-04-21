local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSubPropertyFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._select_include = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPropertyExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L3_2.SubRelicFilter
    if L4_2 ~= 0 then
      L5_2 = A0_2
      L4_2 = A0_2._create_filter_data
      L6_2 = L3_2.PropertyType
      L7_2 = L3_2.PropertyNameFilter
      L8_2 = L3_2.IconPath
      L9_2 = false
      L10_2 = nil
      L11_2 = L3_2.SubRelicFilter
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = #L1_2
      L5_2 = L5_2 + 1
      L1_2[L5_2] = L4_2
    end
  end
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_Relic_Filter_Label_SubAffix"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.has_order = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._select_include
  if L1_2 then
    L1_2 = 4
    return L1_2
  end
  L1_2 = 0
  return L1_2
end
L0_1.get_max_selection = L1_1
function L1_1(A0_2, A1_2)
  A0_2._select_include = A1_2
end
L0_1.set_select_include = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._select_include
  return L1_2
end
L0_1.get_select_include = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2.SubAffixPropertyTypeArray
  L4_2 = pairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 then
      L9_2 = A0_2._select_include
      if L9_2 then
        L10_2 = A0_2
        L9_2 = A0_2._check_include
        L11_2 = L3_2
        L12_2 = L7_2
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        if not L9_2 then
          L9_2 = false
          return L9_2
        end
      else
        L10_2 = A0_2
        L9_2 = A0_2._check_exclude
        L11_2 = L3_2
        L12_2 = L7_2
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        if not L9_2 then
          L9_2 = false
          return L9_2
        end
      end
    end
  end
  L4_2 = true
  return L4_2
end
L0_1._filter = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_include = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    if L7_2 == A2_2 then
      L7_2 = false
      return L7_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1._check_exclude = L1_1
return L0_1
