local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
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
    A0_2._native_filter = nil
  end
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "ExpeditionGroup_All"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._init_native_filter
    L1_2(L2_2)
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    return
  end
  L1_2 = false
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.ExpeditionCompleteGroupIDs
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
    L10_2 = "ExpeditionGroupCompleted"
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L1_2 = true
  end
  L3_2 = A0_2._native_filter
  L3_2 = L3_2.ExpeditionCompleteIDs
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
    L11_2 = "ExpeditionCompleted"
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    L1_2 = true
  end
  L4_2 = A0_2._native_filter
  L4_2 = L4_2.HasActivityComplete
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.RedDotModule
    L4_2 = L4_2.Instance
    L5_2 = L4_2
    L4_2 = L4_2.update_reddot
    L6_2 = "ExpeditionActivityGroupCompleted"
    L4_2(L5_2, L6_2)
    L1_2 = true
  end
  L4_2 = A0_2._native_filter
  L4_2 = L4_2.NewExpeditionsList
  L5_2 = 0
  L6_2 = L4_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L10_2 = G
    L10_2 = L10_2.RedDotModule
    L10_2 = L10_2.Instance
    L11_2 = L10_2
    L10_2 = L10_2.update_reddot
    L12_2 = "ExpeditionIsNew"
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L5_2 = A0_2._native_filter
  L5_2 = L5_2.NewExpeditionGroupsList
  L6_2 = 0
  L7_2 = L5_2.Count
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L5_2[L9_2]
    L11_2 = G
    L11_2 = L11_2.RedDotModule
    L11_2 = L11_2.Instance
    L12_2 = L11_2
    L11_2 = L11_2.update_reddot
    L13_2 = "ExpeditionGroupIsNew"
    L14_2 = L10_2
    L11_2(L12_2, L13_2, L14_2)
  end
  L6_2 = A0_2._native_filter
  L6_2 = L6_2.HasActivityNew
  if L6_2 then
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "ExpeditionActivityGroupNew"
    L6_2(L7_2, L8_2)
  end
  if L1_2 then
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "ExpeditionGroup_All"
    L6_2(L7_2, L8_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ExpeditionRedDotFilter
  L1_2 = L1_2()
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1._init_native_filter = L1_1
return L0_1
