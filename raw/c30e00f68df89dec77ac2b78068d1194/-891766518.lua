local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterTips.BaseMonsterDataProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeMonsterDataProvider"
L2_1 = G
L2_1 = L2_1.BaseMonsterDataProvider
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_show_wave_index = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = {}
  A0_2._monster_stages = L3_2
  A0_2._boss_data_list = A2_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L9_2 = ipairs
    L10_2 = L7_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L13_2.WaveIndex
      L14_2 = L8_2[L14_2]
      if L14_2 == nil then
        L14_2 = L13_2.WaveIndex
        L15_2 = {}
        L8_2[L14_2] = L15_2
      end
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L13_2.WaveIndex
      L15_2 = L8_2[L15_2]
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L9_2 = A0_2._monster_stages
    L10_2 = A0_2._monster_stages
    L10_2 = #L10_2
    L10_2 = L10_2 + 1
    L9_2[L10_2] = L8_2
  end
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._monster_stages
  L1_2 = #L1_2
  return L1_2
end
L0_1.get_stage_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._monster_stages
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_monster_waves_by_stage_idx = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.is_show_boss_info = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._boss_data_list
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_boss_monster_data_by_stage_idx = L1_1
return L0_1
