local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceSurfaceTagFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = A0_2._all_set_count
  if L2_2 == nil then
    L2_2 = {}
    A0_2._all_set_count = L2_2
  end
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueNousSurfaceTagExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L6_2 = A0_2
    L5_2 = A0_2._create_filter_data
    L7_2 = L4_2.TagID
    L8_2 = L4_2.TagName
    L9_2 = nil
    L10_2 = false
    L11_2 = nil
    L12_2 = L4_2.Sort
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L1_2[L6_2] = L5_2
  end
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_RogueNous_SurfaceEditor_Filter_Title"
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.is_use_color_img = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = 2
  return L1_2
end
L0_1.get_max_selection = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = pairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 then
      L9_2 = A0_2
      L8_2 = A0_2._is_tag_id_in_tag_list
      L10_2 = A1_2.TagList
      L11_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if not L8_2 then
        L8_2 = false
        return L8_2
      end
    end
  end
  L3_2 = true
  return L3_2
end
L0_1._filter = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil then
    L3_2 = A1_2.Length
    if L3_2 ~= 0 then
      goto lbl_8
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_8::
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = #L7_2
    if A2_2 == L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._is_tag_id_in_tag_list = L1_1
return L0_1
