local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MessageContactTypeFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_dict
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MessageContactsTypeExcelTable
  L3_2 = L3_2.dataDict
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.SortID
    L3_3 = A1_3.SortID
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.SortID
      L3_3 = A1_3.SortID
      L2_3 = L2_3 < L3_3
      return L2_3
    else
      L2_3 = A0_3.ContactsType
      L3_3 = A1_3.ContactsType
      L2_3 = L2_3 < L3_3
      return L2_3
    end
  end
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._create_filter_data
    L10_2 = L7_2.ContactsType
    L11_2 = L7_2.Name
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L1_2[L9_2] = L8_2
  end
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_PhoneMessage_Contacts_Filter_Type"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.ShownRow
  L3_2 = L3_2.ContactsType
  L3_2 = A2_2[L3_2]
  return L3_2
end
L0_1._filter = L1_1
return L0_1
