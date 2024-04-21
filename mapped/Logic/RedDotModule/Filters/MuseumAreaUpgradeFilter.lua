local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAreaUpgradeFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "MuseumAreaUpgrade"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.IsUpgradeUnlock
  if not L1_2 then
    return
  end
  L1_2 = 0
  L2_2 = L1_1.MuseumData
  L2_2 = L2_2.MuseumAreaDatas
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._refesh_museum_area
    L7_2 = L1_1.MuseumData
    L7_2 = L7_2.MuseumAreaDatas
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
  end
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.AreaRenewPoint
  L2_2 = L2_2.CanUpdate
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.MuseumUtils
    L2_2 = L2_2.is_upgrade_cost_affordable
    L3_2 = A1_2.AreaRenewPoint
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.RedDotModule
      L2_2 = L2_2.Instance
      L3_2 = L2_2
      L2_2 = L2_2.update_reddot
      L4_2 = "MuseumAreaUpgrade"
      L5_2 = A1_2.ID
      L2_2(L3_2, L4_2, L5_2)
      return
    end
  end
end
L0_1._refesh_museum_area = L2_1
return L0_1
