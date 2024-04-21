local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicMainPropertyFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._available_property_types = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._force_rebuild_filter_data
  L2_2(L3_2)
end
L0_1.set_available_property_types = L1_1
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
    L5_2 = A0_2
    L4_2 = A0_2._accept_row
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._create_filter_data
      L6_2 = L3_2.PropertyType
      L7_2 = L3_2.PropertyNameFilter
      L8_2 = L3_2.IconPath
      L9_2 = false
      L10_2 = nil
      L11_2 = L3_2.MainRelicFilter
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = #L1_2
      L5_2 = L5_2 + 1
      L1_2[L5_2] = L4_2
    end
  end
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.MainRelicFilter
  if L2_2 == 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._available_property_types
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.index_of_item
    L3_2 = A0_2._available_property_types
    L4_2 = A1_2.PropertyType
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2 ~= nil
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L0_1._accept_row = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.has_order = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_AvatarRelic_Filter_MainAffix"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.MainAffixPropertyType
  L3_2 = A2_2[L3_2]
  return L3_2
end
L0_1._filter = L1_1
return L0_1
