local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BookCollectStateFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = "UIText_ChooseBook_AllUnfound"
L3_1 = "UIText_ChooseBook_AllFinding"
L4_1 = "UIText_ChooseBook_AllFound"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.BookSeries
L2_1 = L2_1.CollectStateEnum
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = A0_2._all_collect_state_count
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._all_collect_state_count = L2_2
  L2_2 = 1
  L3_2 = L2_1.Count
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1[L5_2]
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.enum_from_int_str
    L8_2 = L2_1
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = A0_2
    L8_2 = A0_2._create_filter_data
    L10_2 = L7_2
    L11_2 = L6_2
    L12_2 = nil
    L13_2 = false
    L14_2 = A0_2._all_collect_state_count
    L14_2 = L14_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L1_2[L9_2] = L8_2
  end
  return L1_2
end
L0_1._get_all_filter_data = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "UIText_Book_FilterType_CollectState"
  return L1_2
end
L0_1.get_title_text_id = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.CollectState
  L3_2 = A2_2[L3_2]
  return L3_2
end
L0_1._filter = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  A0_2._all_collect_state_count = L2_2
  L2_2 = 1
  L3_2 = L2_1.Count
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.enum_from_int_str
    L7_2 = L2_1
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._all_collect_state_count
    L7_2[L6_2] = 0
  end
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._all_collect_state_count
    L8_2 = L6_2.CollectState
    L9_2 = A0_2._all_collect_state_count
    L10_2 = L6_2.CollectState
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2 + 1
    L7_2[L8_2] = L9_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_all_filter_state
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._force_rebuild_filter_data
  L2_2(L3_2)
end
L0_1.count_book_collect_state = L3_1
return L0_1
