local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffSettleFilter"
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
  L1_2 = "MuseumStaffSettle"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = L1_1.MuseumData
  L2_2 = L2_2.MuseumAreaDatas
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.MuseumData
    L5_2 = L5_2.MuseumAreaDatas
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.IsLock
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.HaveStaff
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = G
        L6_2 = L6_2.RedDotModule
        L6_2 = L6_2.Instance
        L7_2 = L6_2
        L6_2 = L6_2.update_reddot
        L8_2 = "MuseumStaffSettle"
        L9_2 = L5_2.ID
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L0_1.refresh = L2_1
return L0_1
