local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BookNewGetFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.NovelModule
function L2_1(A0_2)
  local L1_2
  L1_2 = "BookSeriesNew"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_book
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllBookSeries
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.IsNew
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "BookSeriesNew"
      L10_2 = L6_2.BookSeriesID
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.GetBooks
      L7_2 = L7_2(L8_2)
      L8_2 = 0
      L9_2 = L7_2.Count
      L9_2 = L9_2 - 1
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = L7_2[L11_2]
        L12_2 = L12_2.IsNew
        if L12_2 then
          L12_2 = G
          L12_2 = L12_2.RedDotModule
          L12_2 = L12_2.Instance
          L13_2 = L12_2
          L12_2 = L12_2.update_reddot
          L14_2 = "BookNew"
          L15_2 = L7_2[L11_2]
          L15_2 = L15_2.BookID
          L12_2(L13_2, L14_2, L15_2)
        end
      end
    end
  end
end
L0_1._refresh_new_book = L2_1
return L0_1
