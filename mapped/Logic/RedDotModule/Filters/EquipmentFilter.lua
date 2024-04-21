local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EquipmentFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "EquipmentTag"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.EquipmentRedDotFilter
    L1_2 = L1_2()
    A0_2._native_filter = L1_2
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Init
    L1_2(L2_2)
  end
  L1_2 = A0_2._native_filter
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.UpdateRedDot
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.is_relic_two_set_unlock
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = A0_2._native_filter
  L1_2 = L1_2.EquipmentTagAvatarIDs
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
    L9_2 = "EquipmentTag"
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2._native_filter
  L2_2 = L2_2.RelicQuickDressAvatarIDs
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
    L10_2 = "AvatarRelic_QuickDress"
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.refresh = L1_1
return L0_1
