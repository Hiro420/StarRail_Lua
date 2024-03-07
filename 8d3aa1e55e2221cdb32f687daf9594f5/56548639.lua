local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ArchiveEntryFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
function L2_1(A0_2)
  local L1_2
  L1_2 = "ArchiveEntry"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._noun_archive_data
  if L1_2 == nil then
    L1_2 = {}
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetArchiveDataByType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ArchiveType
    L4_2 = L4_2.Aeons
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetArchiveDataByType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ArchiveType
    L5_2 = L5_2.ProperNoun
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetArchiveDataByType
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ArchiveType
    L6_2 = L6_2.Factions
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L1_2[5] = L6_2
    L1_2[6] = L7_2
    L1_2[7] = L8_2
    L1_2[8] = L9_2
    A0_2._noun_archive_data = L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2._noun_archive_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.HasNewEntry
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = "ArchiveEntry"
      L9_2 = L5_2.ReddotKey
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1.refresh = L2_1
return L0_1
