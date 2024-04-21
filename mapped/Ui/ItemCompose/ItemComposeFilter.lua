local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._type_id = A1_2
  A0_2.count = 0
  L3_2 = A0_2
  L2_2 = A0_2._get_all_filter_data
  L2_2 = L2_2(L3_2)
  A0_2._filters = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_all_filter_type
  L2_2(L3_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemComposeTagExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.BelongTypeID
    L5_2 = A0_2._type_id
    if L4_2 == L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2._create_filter_data
      L6_2 = L3_2.ItemComposeTagID
      L7_2 = L3_2.TagTextmapID
      L8_2 = nil
      L9_2 = false
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L5_2 = #L1_2
      L5_2 = L5_2 + 1
      L1_2[L5_2] = L4_2
    end
  end
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemComposeTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._type_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemComposeTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.MainTypeID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.TypeTextmapID
  return L3_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 0
  L4_2 = A1_2.Row
  L4_2 = L4_2.ItemComposeTag
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2.Row
    L7_2 = L7_2.ItemComposeTag
    L7_2 = L7_2[L6_2]
    L8_2 = A2_2[L7_2]
    if L8_2 ~= nil then
      L8_2 = A2_2[L7_2]
      if L8_2 == true then
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._filter = L1_1
return L0_1
