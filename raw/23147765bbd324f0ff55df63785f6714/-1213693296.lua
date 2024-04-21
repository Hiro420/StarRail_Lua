local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "LevelRewardUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.init_table
  L1_2()
  L1_2 = L0_1.reverse_table
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    L2_2 = nil
    L3_2 = nil
    return L2_2, L3_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.WorldLevelExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.Level
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2.Level
  L3_2 = L3_2 + 1
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.WorldLevelExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L0_1.get_world_level_row_by_level = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L0_1.reverse_table
  if L0_2 == nil then
    L0_2 = {}
    L1_2 = 0
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.WorldLevelExcelTable
    L2_2 = L2_2.dataDict
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.MaxPlayerLevel
      L0_2[L8_2] = L7_2
      L8_2 = L7_2.MaxPlayerLevel
      if L1_2 < L8_2 then
        L8_2 = L7_2.MaxPlayerLevel
        L1_2 = L8_2 or L1_2
        if not L8_2 then
        end
      end
    end
    L0_1.reverse_table = L0_2
    L0_1.max_level = L1_2
  end
end
L0_1.init_table = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1.init_table
  L0_2()
  L0_2 = L0_1.max_level
  return L0_2
end
L0_1.get_max_level = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1.get_max_level
  return L0_2()
end
L0_1.get_show_count = L1_1
return L0_1
