local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialGuideFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "TutorialOverview"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_all_guides
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.status
    L8_2 = G
    L8_2 = L8_2.TutorialModule
    L8_2 = L8_2.Instance
    L8_2 = L8_2.TutorialStatus
    L8_2 = L8_2.TutorialUnlock
    if L7_2 == L8_2 then
      L8_2 = L6_2
      L7_2 = L6_2.get_row
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.CanReview
      if L7_2 then
        L7_2 = G
        L7_2 = L7_2.RedDotModule
        L7_2 = L7_2.Instance
        L8_2 = L7_2
        L7_2 = L7_2.update_reddot
        L10_2 = L6_2
        L9_2 = L6_2.get_reddot_key
        L9_2 = L9_2(L10_2)
        L10_2 = L6_2.id
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L0_1.refresh = L1_1
return L0_1
