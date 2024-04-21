local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "TreasureDungeonUtils"
L0_1 = L0_1(L1_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.TreasureDungeonGridBuffType
L2_1 = L2_1.CostExploreAfterAction
L1_1[L2_1] = true
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.TreasureDungeonGridBuffType
L2_1 = L2_1.SummonAfterAction
L1_1[L2_1] = true
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.TreasureDungeonGridBuffType
L2_1 = L2_1.EnhanceAfterAction
L1_1[L2_1] = true
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.TreasureDungeonGridBuffType
L2_1 = L2_1.ReplaceAfterAction
L1_1[L2_1] = true
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.TreasureDungeonGridBuffType
L3_1 = L3_1.None
L2_1[L3_1] = true
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.TreasureDungeonGridBuffType
L3_1 = L3_1.CostExploreAfterAction
L2_1[L3_1] = true
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.TreasureDungeonGridBuffType
L3_1 = L3_1.SummonAfterAction
L2_1[L3_1] = true
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.TreasureDungeonGridBuffType
L3_1 = L3_1.EnhanceAfterAction
L2_1[L3_1] = true
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.TreasureDungeonGridBuffType
L3_1 = L3_1.ReplaceAfterAction
L2_1[L3_1] = true
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.TreasureDungeonGridBuffType
L3_1 = L3_1.AuraAroundMazeBuff
L2_1[L3_1] = true
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.TreasureDungeonGridBuffType
L3_1 = L3_1.EnhanceByAroundUnopenGrid
L2_1[L3_1] = true
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.TreasureDungeonGridBuffType
L4_1 = L4_1.EnhanceAfterAction
L3_1[L4_1] = true
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.TreasureDungeonGridBuffType
L4_1 = L4_1.EnhanceByAroundUnopenGrid
L3_1[L4_1] = true
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.TreasureDungeonGridBuffType
L5_1 = L5_1.AuraAroundMazeBuff
L4_1[L5_1] = true
L5_1 = {}
L5_1.Item = 0
L5_1.MonsterBase = 1
L5_1.MonsterRemote = 2
L5_1.MonsterCall = 3
L5_1.MonsterStronger = 4
L5_1.MonsterDefence = 5
L5_1.MonsterSupport = 6
L5_1.MonsterTrotterGold = 7
L5_1.MonsterTrotterSilver = 8
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2.BuffType
  L1_2 = L1_1[L1_2]
  L1_2 = L1_2 == true
  return L1_2
end
L0_1.is_countdown_buff = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2.BuffType
  L1_2 = L2_1[L1_2]
  L1_2 = L1_2 == true
  return L1_2
end
L0_1.is_effect_buff = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2.BuffType
  L1_2 = L3_1[L1_2]
  L1_2 = L1_2 == true
  return L1_2
end
L0_1.is_enhance_buff_type = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2.BuffType
  L1_2 = L4_1[L1_2]
  L1_2 = L1_2 == true
  return L1_2
end
L0_1.is_aura_buff_type = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.GridBuffs
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = 0
  L2_2 = A0_2.GridBuffs
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.GridBuffs
    L5_2 = L5_2[L4_2]
    L6_2 = L0_1.is_effect_buff
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      return L5_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_grid_effect_buff = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.BuffRow
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.TypeParam
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = L1_2.GridBuffMaxLevel
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = A0_2.BuffLevel
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1.get_buff_desc_params = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.GridBuffs
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = 0
  L2_2 = A0_2.GridBuffs
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.GridBuffs
    L5_2 = L5_2[L4_2]
    L6_2 = L0_1.is_enhance_buff_type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L5_2.BuffLevel
      if 0 < L6_2 then
        return L5_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_grid_enhance_buff = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = nil
  L3_2 = L0_1.get_neighbor_indexes
  L4_2 = A0_2.GridIndex
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if 0 < L8_2 then
      L10_2 = A1_2
      L9_2 = A1_2.GetGridByIndex
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 ~= nil then
        L10_2 = L9_2.GridBuffs
        if L10_2 ~= nil then
          L10_2 = 0
          L11_2 = L9_2.GridBuffs
          L11_2 = L11_2.Count
          L11_2 = L11_2 - 1
          L12_2 = 1
          for L13_2 = L10_2, L11_2, L12_2 do
            L14_2 = L9_2.GridBuffs
            L14_2 = L14_2[L13_2]
            L15_2 = L0_1.is_aura_buff_type
            L16_2 = L14_2
            L15_2 = L15_2(L16_2)
            if L15_2 then
              if L2_2 ~= nil then
                L15_2 = L2_2.MazeBuffID
                L16_2 = L14_2.BuffRow
                L16_2 = L16_2.DisplayMazeBuffID
                if L15_2 == L16_2 then
                  L15_2 = L2_2.Count
                  L15_2 = L15_2 + 1
                  L2_2.Count = L15_2
                end
              else
                L15_2 = {}
                L16_2 = L14_2.BuffRow
                L16_2 = L16_2.DisplayMazeBuffID
                L15_2.MazeBuffID = L16_2
                L15_2.Count = 1
                L2_2 = L15_2
              end
            end
          end
        end
      end
    end
  end
  return L2_2
end
L0_1.get_grid_aura_enhance_buff = L6_1
L6_1 = 5
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L6_1
  L1_2 = A0_2 > L1_2
  L2_2 = L6_1
  L3_2 = L6_1
  L2_2 = L2_2 * L3_2
  L3_2 = L6_1
  L2_2 = L2_2 - L3_2
  L2_2 = A0_2 <= L2_2
  L3_2 = L6_1
  L3_2 = A0_2 % L3_2
  L3_2 = L3_2 ~= 1
  L4_2 = L6_1
  L4_2 = A0_2 % L4_2
  L4_2 = L4_2 ~= 0
  L5_2 = {}
  if L1_2 then
    if L3_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L5_2
      L8_2 = L6_1
      L8_2 = A0_2 - L8_2
      L8_2 = L8_2 - 1
      L6_2(L7_2, L8_2)
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L5_2
    L8_2 = L6_1
    L8_2 = A0_2 - L8_2
    L6_2(L7_2, L8_2)
    if L4_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L5_2
      L8_2 = L6_1
      L8_2 = A0_2 - L8_2
      L8_2 = L8_2 + 1
      L6_2(L7_2, L8_2)
    end
  end
  if L3_2 then
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L5_2
    L8_2 = A0_2 - 1
    L6_2(L7_2, L8_2)
  end
  if L4_2 then
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L5_2
    L8_2 = A0_2 + 1
    L6_2(L7_2, L8_2)
  end
  if L2_2 then
    if L3_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L5_2
      L8_2 = L6_1
      L8_2 = A0_2 + L8_2
      L8_2 = L8_2 - 1
      L6_2(L7_2, L8_2)
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L5_2
    L8_2 = L6_1
    L8_2 = A0_2 + L8_2
    L6_2(L7_2, L8_2)
    if L4_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L5_2
      L8_2 = L6_1
      L8_2 = A0_2 + L8_2
      L8_2 = L8_2 + 1
      L6_2(L7_2, L8_2)
    end
  end
  return L5_2
end
L0_1.get_neighbor_indexes = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil or A0_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.GridType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TreasureDungeonGridType
  L3_2 = L3_2.Enemy
  if L2_2 ~= L3_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L0_1.get_grid_aura_enhance_buff
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = true
    return L3_2
  end
  L3_2 = A0_2.GridBuffs
  if L3_2 ~= nil then
    L3_2 = 0
    L4_2 = A0_2.GridBuffs
    L4_2 = L4_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2.GridBuffs
      L7_2 = L7_2[L6_2]
      L8_2 = L0_1.show_buff_enhance
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1.is_grid_enhanced = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TreasureDungeonGridBuffType
  L2_2 = L1_2.CostExploreAfterAction
  L2_2 = A0_2 == L2_2
  return L2_2
end
L0_1.show_buff_count_down = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TreasureDungeonGridBuffType
  L2_2 = A0_2.BuffType
  L3_2 = L1_2.EnhanceAfterAction
  if L2_2 ~= L3_2 then
    L3_2 = L1_2.EnhanceByAroundUnopenGrid
    if L2_2 ~= L3_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = A0_2.BuffLevel
  L3_2 = 0 < L3_2
  return L3_2
end
L0_1.show_buff_enhance = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TreasureDungeonItemConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = L1_2.Name
    return L2_2(L3_2)
  end
  L2_2 = ""
  return L2_2
end
L0_1.get_treasuredungeon_item_name_by_id = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.GridType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonGridType
  L2_2 = L2_2.Enemy
  if L1_2 == L2_2 then
    L1_2 = A0_2.GridBuffs
    if L1_2 == nil then
      L1_2 = L5_1.MonsterBase
      return L1_2
    end
    L1_2 = 0
    L2_2 = A0_2.GridBuffs
    L2_2 = L2_2.Count
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2.GridBuffs
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2.BuffType
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.TreasureDungeonGridBuffType
      L7_2 = L7_2.CostExploreAfterAction
      if L6_2 == L7_2 then
        L6_2 = L5_1.MonsterRemote
        return L6_2
      else
        L6_2 = L5_2.BuffType
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.TreasureDungeonGridBuffType
        L7_2 = L7_2.SummonAfterAction
        if L6_2 == L7_2 then
          L6_2 = L5_1.MonsterCall
          return L6_2
        else
          L6_2 = L5_2.BuffType
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.GameCore
          L7_2 = L7_2.TreasureDungeonGridBuffType
          L7_2 = L7_2.EnhanceAfterAction
          if L6_2 == L7_2 then
            L6_2 = L5_1.MonsterStronger
            return L6_2
          else
            L6_2 = L5_2.BuffType
            L7_2 = CS
            L7_2 = L7_2.RPG
            L7_2 = L7_2.GameCore
            L7_2 = L7_2.TreasureDungeonGridBuffType
            L7_2 = L7_2.EnhanceByAroundUnopenGrid
            if L6_2 == L7_2 then
              L6_2 = L5_1.MonsterDefence
              return L6_2
            else
              L6_2 = L5_2.BuffType
              L7_2 = CS
              L7_2 = L7_2.RPG
              L7_2 = L7_2.GameCore
              L7_2 = L7_2.TreasureDungeonGridBuffType
              L7_2 = L7_2.AuraAroundMazeBuff
              if L6_2 == L7_2 then
                L6_2 = L5_1.MonsterSupport
                return L6_2
              else
                L6_2 = L5_2.BuffType
                L7_2 = CS
                L7_2 = L7_2.RPG
                L7_2 = L7_2.GameCore
                L7_2 = L7_2.TreasureDungeonGridBuffType
                L7_2 = L7_2.ReplaceAfterAction
                if L6_2 == L7_2 then
                  L6_2 = A0_2.Row
                  L6_2 = L6_2.GridSubType
                  if L6_2 == 2 then
                    L6_2 = L5_1.MonsterTrotterGold
                    return L6_2
                  else
                    L6_2 = L5_1.MonsterTrotterSilver
                    return L6_2
                  end
                end
              end
            end
          end
        end
      end
    end
    L1_2 = L5_1.MonsterBase
    return L1_2
  else
    L1_2 = L5_1.Item
    return L1_2
  end
end
L0_1.get_content_type_id = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = L5_1.Item
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1.is_content_type_item = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = L5_1.MonsterTrotterGold
  L1_2 = A0_2 == L1_2
  return L1_2
end
L0_1.is_content_type_trotter = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = L5_1.MonsterBase
  if A0_2 == L1_2 then
    L1_2 = "UI/UI3D/TreasureDungeon/_dependencies/Materials/Eff_MonsterElite_Base.mat"
    return L1_2
  else
    L1_2 = L5_1.MonsterRemote
    if A0_2 == L1_2 then
      L1_2 = "UI/UI3D/TreasureDungeon/_dependencies/Materials/Eff_MonsterElite_ADC.mat"
      return L1_2
    else
      L1_2 = L5_1.MonsterCall
      if A0_2 == L1_2 then
        L1_2 = "UI/UI3D/TreasureDungeon/_dependencies/Materials/Eff_MonsterElite_Call.mat"
        return L1_2
      else
        L1_2 = L5_1.MonsterStronger
        if A0_2 == L1_2 then
          L1_2 = "UI/UI3D/TreasureDungeon/_dependencies/Materials/Eff_MonsterElite_Stronger.mat"
          return L1_2
        else
          L1_2 = L5_1.MonsterDefence
          if A0_2 == L1_2 then
            L1_2 = "UI/UI3D/TreasureDungeon/_dependencies/Materials/Eff_MonsterElite_Defence.mat"
            return L1_2
          else
            L1_2 = L5_1.MonsterSupport
            if A0_2 == L1_2 then
              L1_2 = "UI/UI3D/TreasureDungeon/_dependencies/Materials/Eff_MonsterElite_Sup.mat"
              return L1_2
            else
              L1_2 = L5_1.MonsterTrotterGold
              if A0_2 ~= L1_2 then
                L1_2 = L5_1.MonsterTrotterSilver
                if A0_2 ~= L1_2 then
                  goto lbl_45
                end
              end
              L1_2 = "UI/UI3D/TreasureDungeon/_dependencies/Materials/Eff_MonsterElite_Pig.mat"
              return L1_2
            end
          end
        end
      end
    end
  end
  ::lbl_45::
  L1_2 = nil
  return L1_2
end
L0_1.get_content_type_effect_path = L7_1
return L0_1
