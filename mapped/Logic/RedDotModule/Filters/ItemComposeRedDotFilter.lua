local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRedDotFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._native_filter = nil
  L2_2 = A0_2
  L1_2 = A0_2._init_native_filter
  L1_2(L2_2)
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
    A0_2._native_filter = nil
  end
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "ItemComposeRedDot"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.ItemComposeIsNewList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "ItemComposeIsNew"
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.ItemComposeTypeIsNewList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = G
    L8_2 = L8_2.RedDotModule
    L8_2 = L8_2.Instance
    L9_2 = L8_2
    L8_2 = L8_2.update_reddot
    L10_2 = "ItemComposeTypeIsNew"
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = A0_2._native_filter
  L3_2 = L3_2.ItemComposeNewMainTypeUnlockList
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = G
    L9_2 = L9_2.RedDotModule
    L9_2 = L9_2.Instance
    L10_2 = L9_2
    L9_2 = L9_2.update_reddot
    L11_2 = "ItemComposeNewMainTypeUnlock"
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemComposeRedDotFilter
  L1_2 = L1_2()
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1._init_native_filter = L1_1
return L0_1
