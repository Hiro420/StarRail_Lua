local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterTips.BaseMonsterDataProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildMonsterDataProvider"
L2_1 = G
L2_1 = L2_1.BaseMonsterDataProvider
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_show_wave_index = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._monster_waves = L2_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._monster_waves
    L8_2 = L6_2.WaveIndex
    L7_2 = L7_2[L8_2]
    if L7_2 == nil then
      L7_2 = A0_2._monster_waves
      L8_2 = L6_2.WaveIndex
      L9_2 = {}
      L7_2[L8_2] = L9_2
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._monster_waves
    L9_2 = L6_2.WaveIndex
    L8_2 = L8_2[L9_2]
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = 1
  return L1_2
end
L0_1.get_stage_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._monster_waves
  return L2_2
end
L0_1.get_monster_waves_by_stage_idx = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.is_show_boss_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._monster_waves
  L2_2 = A0_2._monster_waves
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2[1]
  return L1_2
end
L0_1.get_boss_monster_data_by_stage_idx = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2._monster_waves
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = ipairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L12_2.TemplateRow
      L13_2 = L13_2.Rank
      L13_2 = #L13_2
      if 3 <= L13_2 then
        L13_2 = L12_2.MonsterID
        L13_2 = L2_2[L13_2]
        if L13_2 == nil then
          L13_2 = L12_2.MonsterID
          L2_2[L13_2] = L12_2
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L1_2
          L15_2 = L12_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_boss_monster_data_by_stage_idx
    L2_3 = L2_3(L3_3)
    if A0_3 == L2_3 then
      L2_3 = true
      return L2_3
    else
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.get_boss_monster_data_by_stage_idx
      L2_3 = L2_3(L3_3)
      if A1_3 == L2_3 then
        L2_3 = false
        return L2_3
      else
        L2_3 = A0_3.TemplateRow
        L2_3 = L2_3.Rank
        L2_3 = #L2_3
        L3_3 = A1_3.TemplateRow
        L3_3 = L3_3.Rank
        L3_3 = #L3_3
        L2_3 = L2_3 > L3_3
        return L2_3
      end
    end
  end
  L3_2(L4_2, L5_2)
  return L1_2
end
L0_1.get_preview_monster_data_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A0_2._monster_waves
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = ipairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L12_2.MonsterID
      L14_2 = A1_2.MonsterID
      if L13_2 == L14_2 then
        L13_2 = L11_2 + L2_2
        return L13_2
      end
    end
    L8_2 = #L7_2
    L2_2 = L2_2 + L8_2
  end
  L3_2 = 1
  return L3_2
end
L0_1.get_index_by_monster_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._monster_waves
  L1_2 = L1_2[1]
  L1_2 = L1_2[1]
  return L1_2
end
L0_1.get_default_monster_data = L1_1
return L0_1
