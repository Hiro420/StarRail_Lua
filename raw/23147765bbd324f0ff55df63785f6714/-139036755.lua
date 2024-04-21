local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterTips.BaseMonsterDataProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FeverTimeMonsterDataProvider"
L2_1 = G
L2_1 = L2_1.BaseMonsterDataProvider
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_show_wave_index = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  A0_2._monster_waves = L4_2
  A0_2._preview_monster_id_list = A2_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AdventureStatic
  L4_2 = L4_2.GetStageIDByEventID
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.StageExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.Level
  A0_2._monster_level = L6_2
  L6_2 = ipairs
  L7_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = A0_2._monster_waves
    L12_2 = L10_2.WaveIndex
    L11_2 = L11_2[L12_2]
    if L11_2 == nil then
      L11_2 = A0_2._monster_waves
      L12_2 = L10_2.WaveIndex
      L13_2 = {}
      L11_2[L12_2] = L13_2
    end
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._monster_waves
    L13_2 = L10_2.WaveIndex
    L12_2 = L12_2[L13_2]
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._monster_waves
  return L2_2
end
L0_1.get_monster_waves_by_stage_idx = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_monster_datas
  return L1_2(L2_2)
end
L0_1.get_preview_monster_data_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._preview_monster_id_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._get_monster_levels
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.MonsterData
    L9_2 = L6_2
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L1_2[L9_2] = L8_2
  end
  return L1_2
end
L0_1._get_monster_datas = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._monster_level
  if L2_2 ~= nil then
    L2_2 = A0_2._monster_level
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.Level
    return L3_2
  end
end
L0_1._get_monster_levels = L1_1
return L0_1
