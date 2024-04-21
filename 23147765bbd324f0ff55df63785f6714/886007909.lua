local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterTips.BaseMonsterDataProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MultiWaveMonsterDataProvider"
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
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._monster_waves
  return L2_2
end
L0_1.get_monster_waves_by_stage_idx = L1_1
return L0_1
