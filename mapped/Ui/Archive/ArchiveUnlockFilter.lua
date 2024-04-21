local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ArchiveUnlockFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L4_2 = A0_2
  L3_2 = A0_2._create_filter_data
  L5_2 = true
  L6_2 = "UIText_Filter_Obtained"
  L7_2 = nil
  L8_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2[L2_2] = L3_2
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L4_2 = A0_2
  L3_2 = A0_2._create_filter_data
  L5_2 = false
  L6_2 = "UIText_Filter_Not_Obtained"
  L7_2 = nil
  L8_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2[L2_2] = L3_2
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_Filter_Tiltle_Obtain"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.IsUnlock
  L3_2 = A2_2[L3_2]
  return L3_2
end
L0_1._filter = L1_1
return L0_1
