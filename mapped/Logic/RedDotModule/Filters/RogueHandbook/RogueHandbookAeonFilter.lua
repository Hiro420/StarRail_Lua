local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookAeonFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._native_filter = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
  end
  A0_2._native_filter = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "RogueHandbookAeon"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_init_native_filter
  L1_2(L2_2)
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.UpdateRedDots
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_aeon
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = pairs
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.NewAeonIDs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "RogueHandbookAeon"
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = 0
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.NewAeonDocSubKeysCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._native_filter
    L5_2 = L5_2.NewAeonDocSubKeysAeonID
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._native_filter
    L6_2 = L6_2.NewAeonDocSubKeysAeonStoryID
    L6_2 = L6_2[L4_2]
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "RogueHandbookAeonDoc"
    L10_2 = tostring
    L11_2 = L5_2
    L10_2 = L10_2(L11_2)
    L11_2 = "#"
    L12_2 = tostring
    L13_2 = L6_2
    L12_2 = L12_2(L13_2)
    L10_2 = L10_2 .. L11_2 .. L12_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._refresh_aeon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueHandbookAeonRedDotFilter
  L1_2 = L1_2()
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1._try_init_native_filter = L1_1
return L0_1
