local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ArchiveNounFilter"
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
  L1_2 = "NounArchive"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2, L6_2)
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L1_2[5] = L6_2
    L1_2[6] = L7_2
    L1_2[7] = L8_2
    L1_2[8] = L9_2
    L1_2[9] = L10_2
    L1_2[10] = L11_2
    L1_2[11] = L12_2
    L1_2[12] = L13_2
    L1_2[13] = L14_2
    A0_2._noun_archive_data = L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2._noun_archive_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.AllEntriesList
    L7_2 = 0
    L8_2 = L6_2.Count
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L6_2[L10_2]
      L11_2 = L11_2.IsNew
      if L11_2 then
        L11_2 = G
        L11_2 = L11_2.RedDotModule
        L11_2 = L11_2.Instance
        L12_2 = L11_2
        L11_2 = L11_2.update_reddot
        L13_2 = "NounArchive"
        L14_2 = L6_2[L10_2]
        L14_2 = L14_2.RedDotKey
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
end
L0_1.refresh = L2_1
return L0_1
